Unit uModulo;

interface

uses
  WinApi.Windows, Vcl.Forms, Vcl.Controls, System.Classes, System.SysUtils, System.DateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.DApt, Vcl.ExtCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Dialogs, JSON,
  uDWConstsData, uRESTDWPoolerDB, uDWAbout, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Vcl.AppEvnts, UDWJSONObject, uDWConsts, UDWDatamodule, REST.Json, REST.Response.Adapter;

type

  TFrModulo = class(TDataModule)
    DBCon_Local: TFDConnection;
    DBCon_Remoto: TFDConnection;
    DBConfigServer: TFDMemTable;
    Sql_Remoto: TFDQuery;
    Sql_Local: TFDQuery;
    QueryL: TFDQuery;
    QueryR: TFDQuery;
    IdTCPClient1: TIdTCPClient;
    Query: TFDQuery;
    aQuery: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DBCon_RemotoError(ASender, AInitiator: TObject; var AException: Exception);
    procedure IdTCPClient1Connected(Sender: TObject);

  private
   procedure Checa_Configura_Conexoes_Servidores;

  public
   function ImportarDadosEmitente : Boolean;
  end;

var
  FrModulo  : TFrModulo;

  IP_Host_Remoto : String;
  IP_Host_Local  : String;

implementation

uses
   Classe.Caixa, uConfigConexoes, Classe.Empresa, Classe.Operador, Classe.Configuracoes, uPrincipal, Classe.Cupom;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TFrModulo.Checa_Configura_Conexoes_Servidores;
begin
   // Carrega as configurações dos servidores
   if not FileExists('ConfigConections.dat') then
   begin
      Application.MessageBox('É necessário configurar os servidores de bancos de dados antes de iniciar o sistema.','TechCore-PDV',mb_IconWarning or mb_Ok);

      Application.CreateForm(TFrConfigServer, FrConfigServer);
      try
         FrConfigServer.ShowModal;
      finally
         FreeAndNil( FrConfigServer );
      end;

   end;

   // Após a abertura da janela de configuração, se o aqrquivoa ainda não existe, fecha a aplicação
   if not FileExists('ConfigConections.dat') then
   begin
      Application.Terminate;
      Abort;
   end;

   // Se chegou até aqui, checa se foram cadastrados os 2 servidores
   DBConfigServer.LoadFromFile('ConfigConections.dat',sfBinary);
   DBConfigServer.Open;

   // Efetua a leitura dos dados do servidor [local]
   if ( not DBConfigServer.Locate('CON_DESTINO', 1, [] ) ) or ( not DBConfigServer.Locate('CON_DESTINO', 2, [] ) ) then
   begin
      if Application.MessageBox('Parâmetros das conexões com os servidores não encontrados, Deseja configurar agora?','TechCore-PDV',mb_IconQuestion or mb_YesNo) = mrNo then
      begin
         Application.Terminate;
         Abort;
      end;

      Application.CreateForm(TFrConfigServer, FrConfigServer);
      try
         FrConfigServer.ShowModal;
      finally
         FreeAndNil( FrConfigServer );
      end;
   end;

   // Se chegou até aqui, carrega os dados de conexão com o servidor
   DBConfigServer.LoadFromFile('ConfigConections.dat',sfBinary);
   DBConfigServer.Open;

   // Configura a conexão com o servidor [local]
   DBConfigServer.Locate('CON_DESTINO',1,[]);
   With DBCon_Local do
   begin
      Params.Clear;
      Params.Values['DriverID']  := 'FB';
      Params.Values['Server']    := DBConfigServer.FieldByName('con_host_ip').AsString;
      Params.Values['Port']      := DBConfigServer.FieldByName('con_porta').AsString;
      Params.Values['Protocol']  := DBConfigServer.FieldByName('con_protocolo').AsString;
      Params.Values['Database']  := DBConfigServer.FieldByName('con_database').AsString;
      Params.Values['User_name'] := DBConfigServer.FieldByName('con_usuario').AsString;
      Params.Values['Password']  := DBConfigServer.FieldByName('con_senha').AsString;
      Connected := True;

      IP_Host_Local := DBConfigServer.FieldByName('con_host_ip').AsString;
   end;

   // Configura a conexão com o servidor [remoto]
   DBConfigServer.Locate('CON_DESTINO',2,[]);
   With DBCon_Remoto do
   begin
      Params.Clear;
      Params.Values['DriverID']  := 'FB';
      Params.Values['Server']    := DBConfigServer.FieldByName('con_host_ip').AsString;
      Params.Values['Port']      := DBConfigServer.FieldByName('con_porta').AsString;
      Params.Values['Protocol']  := DBConfigServer.FieldByName('con_protocolo').AsString;
      Params.Values['Database']  := DBConfigServer.FieldByName('con_database').AsString;
      Params.Values['User_name'] := DBConfigServer.FieldByName('con_usuario').AsString;
      Params.Values['Password']  := DBConfigServer.FieldByName('con_senha').AsString;
      Connected := True;
   end;
end;

procedure TFrModulo.DataModuleCreate(Sender: TObject);
var
   aQuery : TFDQuery;
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        17/02/2019
      Descrição:  Antes de inciar o sistema verifica se foram informado os parâmetros
                  de conexões com os bancos de dados, tanto local como remoto
   ------------------------------------------------------------------------------------- }
   Checa_Configura_Conexoes_Servidores;


   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        05/03/2019
      Descrição:  Checa se já foi efetuado a carga das empresas
   ------------------------------------------------------------------------------------- }
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT 1 FROM C000501');
   Query.Open();

   vr_existem_empresas := not ( Query.IsEmpty );


   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        05/03/2019
      Descrição:  Checa se foi efetuado a carga dos caixas
   ------------------------------------------------------------------------------------- }
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT 1 FROM C000017');
   Query.Open();

   vr_existem_caixas := not ( Query.IsEmpty );


   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        05/03/2019
      Descrição:  Checa se já foi efetuado a carga dos operadores
   ------------------------------------------------------------------------------------- }
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT 1 FROM C000060');
   Query.Open();

   vr_existem_operadores := not ( Query.IsEmpty );

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        05/03/2019
      Descrição:  Checa se já foi efetuada alguma venda
   ------------------------------------------------------------------------------------- }
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT 1 FROM C000050');
   Query.Open();

   vr_existem_vendas := not ( Query.IsEmpty );

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        05/03/2019
      Descrição:  Checa se já foi configurado o caixa para funcionamento
   ------------------------------------------------------------------------------------- }
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT 1 FROM C000016');
   Query.Open();

   vr_caixa_configurados := not ( Query.IsEmpty );

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        17/02/2019
      Descrição:  Verifica se já foram importado os dados do emitente, se não efetua
                  a importação da empresa ativa;
   ------------------------------------------------------------------------------------- }
   try
      QueryL.Close;
      QueryL.SQL.Clear;
      QueryL.SQL.Add('select 1 from C000501');
      QueryL.Open();

      if QueryL.IsEmpty then
         if DBCon_Remoto.Connected then
            ImportarDadosEmitente
         else
            Application.MessageBox('Não será possível importar os dados do Emitente; O servidor do Retaguarda está offline ','TechCore-PDV',mb_IconStop or mb_Ok);

      // Carrega os dados do emitente para a memória
      FEmpresaClass := TEmpresa.Create;

   except
      on e:Exception do
         Application.MessageBox('Erro a importar os dados do emitente.','TechCore-PDV',mb_IconStop or mb_Ok);
   end;


   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       07/03/2019
      Descrição:  Cria o objeto caixa que será usado durante todo o processo
   ------------------------------------------------------------------------------------- }
   if Assigned( ObjCaixa ) then
      FreeAndNil( ObjCaixa );

   if vr_caixa_configurados then
      ObjCaixa := TObjCaixa.Create;

end;

procedure TFrModulo.DBCon_RemotoError(ASender, AInitiator: TObject; var AException: Exception);
var
   A,B : pChar;
begin
   A := pChar('Não foi possível conectar no servidor retaguarda, as informações do caixa poderão ficar desatualizadas');
   B := pChar(AException.Message);
   Application.MessageBox(pChar(A + #13#10 + B),'TechCore-RTG',mb_IconStop or mb_Ok);
end;

procedure TFrModulo.IdTCPClient1Connected(Sender: TObject);
begin
   IdTCPClient1.Disconnect;
end;

function TFrModulo.ImportarDadosEmitente: Boolean;
var
   aQuery : TFDQuery;
begin
   QueryR.Close;
   QueryR.SQL.Clear;
   QueryR.SQL.Add('select * from C000501 where emp_ativa_caixa = 1');
   QueryR.Open();

   if not QueryR.IsEmpty then
   begin

      aQuery            := TFDQuery.Create(self);
      aQuery.Connection := DBCon_Local;
      try

         aQuery.SQL.Add('select * from C000501');
         aQuery.Open();

         // Posiciona o cursor
         QueryR.First;

         // Ajusta a Query de Inserção
         aQuery.CachedUpdates := true;

         repeat
            aQuery.Insert;
            aQuery.FieldByName('ID').AsInteger                   := QueryR.FieldByName('ID').AsInteger;
            aQuery.FieldByName('EMP_CODIGO').AsInteger           := QueryR.FieldByName('EMP_CODIGO').AsInteger;
            aQuery.FieldByName('EMP_DATA_REG').AsDateTime        := QueryR.FieldByName('EMP_DATA_REG').AsDateTime;
            aQuery.FieldByName('EMP_RAZAO').AsString             := QueryR.FieldByName('EMP_RAZAO').AsString;
            aQuery.FieldByName('EMP_FANTASIA').AsString          := QueryR.FieldByName('EMP_FANTASIA').AsString;
            aQuery.FieldByName('EMP_CNPJ').AsString              := QueryR.FieldByName('EMP_CNPJ').AsString;
            aQuery.FieldByName('EMP_IESTADUAL').AsString         := QueryR.FieldByName('EMP_IESTADUAL').AsString;
            aQuery.FieldByName('EMP_IMUNicipal').AsString        := QueryR.FieldByName('EMP_IMUNICiPAL').AsString;
            aQuery.FieldByName('EMP_CEP').AsString               := QueryR.FieldByName('EMP_CEP').AsString;
            aQuery.FieldByName('EMP_ENDERECO').AsString          := QueryR.FieldByName('EMP_ENDERECO').AsString;
            aQuery.FieldByName('EMP_NUMERO').AsInteger           := QueryR.FieldByName('EMP_NUMERO').AsInteger;
            aQuery.FieldByName('EMP_COMPLEMENTO').AsString       := QueryR.FieldByName('EMP_COMPLEMENTO').AsString;
            aQuery.FieldByName('EMP_BAIRRO').AsString            := QueryR.FieldByName('EMP_BAIRRO').AsString;
            aQuery.FieldByName('EMP_CIDADE').AsString            := QueryR.FieldByName('EMP_CIDADE').AsString;
            aQuery.FieldByName('EMP_CODIGO_CIDADE').AsInteger    := QueryR.FieldByName('EMP_CODIGO_CIDADE').AsInteger;
            aQuery.FieldByName('EMP_UF').AsString                := QueryR.FieldByName('EMP_UF').AsString;
            aQuery.FieldByName('EMP_CODIGO_UF').AsInteger        := QueryR.FieldByName('EMP_CODIGO_UF').AsInteger;
            aQuery.FieldByName('EMP_PAIS').AsString              := QueryR.FieldByName('EMP_PAIS').AsString;
            aQuery.FieldByName('EMP_CODIGO_PAIS').AsInteger      := QueryR.FieldByName('EMP_CODIGO_PAIS').AsInteger;
            aQuery.FieldByName('EMP_FONEFIXO').AsString          := QueryR.FieldByName('EMP_FONEFIXO').AsString;
            aQuery.FieldByName('EMP_FONEMOVEL').AsString         := QueryR.FieldByName('EMP_FONEMOVEL').AsString;
            aQuery.FieldByName('EMP_EMAIL').AsString             := QueryR.FieldByName('EMP_EMAIL').AsString;
            aQuery.FieldByName('EMP_SITE').AsString              := QueryR.FieldByName('EMP_SITE').AsString;
            aQuery.FieldByName('EMP_CRT').AsInteger              := QueryR.FieldByName('EMP_CRT').AsInteger;
            aQuery.FieldByName('EMP_NFE_PROXY_HOST').AsString    := QueryR.FieldByName('EMP_NFE_PROXY_HOST').AsString;
            aQuery.FieldByName('EMP_NFE_PROXY_PORTA').AsInteger  := QueryR.FieldByName('EMP_NFE_PROXY_PORTA').AsInteger;
            aQuery.FieldByName('EMP_NFE_PROXY_USUARIO').AsString := QueryR.FieldByName('EMP_NFE_PROXY_USUARIO').AsString;
            aQuery.FieldByName('EMP_NFE_PROXY_SENHA').AsString   := QueryR.FieldByName('EMP_NFE_PROXY_SENHA').AsString;
            aQuery.FieldByName('EMP_NFE_EMAIL_HOST').AsString    := QueryR.FieldByName('EMP_NFE_EMAIL_HOST').AsString;
            aQuery.FieldByName('EMP_NFE_EMAIL_PORTA').AsInteger  := QueryR.FieldByName('EMP_NFE_EMAIL_PORTA').AsInteger;
            aQuery.FieldByName('EMP_NFE_EMAIL_USUARIO').AsString := QueryR.FieldByName('EMP_NFE_EMAIL_USUARIO').AsString;
            aQuery.FieldByName('EMP_NFE_EMAIL_SENHA').AsString   := QueryR.FieldByName('EMP_NFE_EMAIL_SENHA').AsString;
            aQuery.FieldByName('EMP_NFE_EMAIL_SEGURO').AsInteger := QueryR.FieldByName('EMP_NFE_EMAIL_SEGURO').AsInteger;
            aQuery.FieldByName('EMP_NFE_EMAIL_ASSUNTO').AsString := QueryR.FieldByName('EMP_NFE_EMAIL_ASSUNTO').AsString;
            aQuery.FieldByName('EMP_NFE_EMAIL_MESSAGE').AsString := QueryR.FieldByName('EMP_NFE_EMAIL_MESSAGE').AsString;
            aQuery.FieldByName('EMP_NCM_FONTE').AsString         := QueryR.FieldByName('EMP_NCM_FONTE').AsString;
            aQuery.FieldByName('EMP_NCM_CHAVE').AsString         := QueryR.FieldByName('EMP_NCM_CHAVE').AsString;
            aQuery.Post;

            // Avança para o próximo registro
            QueryR.Next;
         until ( QueryR.Eof );

         // Grava os dados na tabela
         aQuery.ApplyUpdates(0);
         aQuery.CommitUpdates;

      finally
         QueryR.Close;
         if Assigned( aQuery ) then FreeAndNil( aQuery );
      end;

   end;
end;

end.
