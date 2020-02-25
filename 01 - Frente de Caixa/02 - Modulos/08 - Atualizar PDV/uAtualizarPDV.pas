unit uAtualizarPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, JvExExtCtrls, JvImage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus;

type
  TFrAtualizarPDV = class(TForm)
    Panel1: TPanel;
    JvImage3: TJvImage;
    Label7: TLabel;
    Panel2: TPanel;
    lbAguarde: TLabel;
    Timer1: TTimer;
    lbMensagem: TLabel;
    QueryR: TFDQuery;
    dsQueryR: TDataSource;
    QueryL: TFDQuery;
    dsQueryL: TDataSource;
    tCarga: TTimer;
    Pop00: TPopupMenu;
    s1: TMenuItem;
    tClose: TTimer;
    JvImage1: TJvImage;
    aQueryL: TFDQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure tCargaTimer(Sender: TObject);
    procedure s1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure JvImage1Click(Sender: TObject);
  private
    { Private declarations }


    Const
      lb_Aguarde : String = 'Aguarde...';

    procedure Atualizar_Dados_Do_Emitente;
    procedure Atualizar_Tabela_De_Produtos;
    procedure Atualizar_Tabela_De_kits_Produtos;
    procedure Atualizar_Lista_De_Caixas;
    procedure Atualizar_Lista_De_Operadores;
    procedure Atualizar_Lista_De_Vendedores;
    procedure Atualizar_Formas_De_Pagtos;
    procedure Atualizar_Contas_Caixas;

  public
    { Public declarations }
    ReloadOperador : boolean;
    Id_Operador    : Integer;
  end;

var
  FrAtualizarPDV: TFrAtualizarPDV;

implementation

uses
   uModulo, Classe.Empresa, Classe.Operador;

{$R *.dfm}
procedure TFrAtualizarPDV.Atualizar_Contas_Caixas;
var
   aQuery, bQuery : TFDQuery;
begin
   // Define nulo para os objetos
   aQuery := nil;
   bQuery := nil;

   bQuery            := TFDQuery.Create(self);
   bQuery.Connection := FrModulo.DBCon_Remoto;

   bQuery.SQL.Clear;
   bQuery.SQL.Add('Select * from C000050');
   bQuery.Open();

   {Se não foi retornado nehum resultado}
   if bQuery.IsEmpty then
   begin
      Application.MessageBox('Erro ao atualizar a tabela de Contas Caixas, verifique se existem:'
                              + #13#10
                              + '1 - Contas Caixas cadastradas.'
                              ,'TechCore-PDV',mb_IconExclamation or mb_ok);
      Abort;
   end;

   lbMensagem.Caption := 'Contas Caixas...';
   Application.ProcessMessages;

   aQuery            := TFDQuery.Create(self);
   aQuery.Connection := FrModulo.DBCon_Local;

   // Exclue as contas caixas
   aQuery.SQL.Add('Delete from C000040');
   aQuery.ExecSQL;

   try
      aQuery.SQL.Clear;
      aQuery.SQL.Add('Select * from C000040');
      aQuery.Open();

      // Posiciona o cursor
      bQuery.First;

      // Ajusta a Query de Inserção
      aQuery.CachedUpdates := true;

      repeat
         aQuery.Insert;
         aQuery.FieldByName('id').AsInteger            := bQuery.FieldByName('ID').AsInteger;
         aQuery.FieldByName('id_emp').AsInteger        := bQuery.FieldByName('id_emp').AsInteger;
         aQuery.FieldByName('cta_codigo').AsInteger    := bQuery.FieldByName('cta_codigo').AsInteger;
         aQuery.FieldByName('cta_data_reg').AsDateTime := bQuery.FieldByName('cta_data_reg').AsDateTime;
         aQuery.FieldByName('cta_descricao').AsString  := bQuery.FieldByName('cta_descricao').AsString;
         aQuery.FieldByName('cta_ativo').AsString      := bQuery.FieldByName('cta_ativo').AsString;
         aQuery.FieldByName('cta_pdv').AsString        := bQuery.FieldByName('cta_pdv').AsString;
         aQuery.Post;

         // Avança para o próximo registro
         bQuery.Next;
      until ( bQuery.Eof );

      // Grava os dados na tabela
      aQuery.ApplyUpdates(0);
      aQuery.CommitUpdates;

   finally
      if Assigned( aQuery ) then FreeAndNil( aQuery );
      if Assigned( bQuery ) then FreeAndNil( bQuery );
   end;

end;

procedure TFrAtualizarPDV.Atualizar_Dados_Do_Emitente;
var
   aQuery, bQuery : TFDQuery;
begin
   // Define nulo para os objetos
   aQuery := nil;
   bQuery := nil;

   bQuery            := TFDQuery.Create(self);
   bQuery.Connection := FrModulo.DBCon_Remoto;

   bQuery.SQL.Clear;
   bQuery.SQL.Add('select * from C000501 where emp_ativa_caixa = 1');
   bQuery.Open();

   {Se não foi retornado nehum resultado}
   if bQuery.IsEmpty then
   begin
      Application.MessageBox('Erro ao atualizar a tabela de Empresas, verifique se existem:'
                              + #13#10
                              + '1 - Empresas cadastradas.'
                              ,'TechCore-PDV',mb_IconExclamation or mb_ok);
      Abort;
   end;

   lbMensagem.Caption := 'Dados do emitente...';
   Application.ProcessMessages;

   aQuery            := TFDQuery.Create(self);
   aQuery.Connection := FrModulo.DBCon_Local;

   // Exclue o registro atual do emitente
   aQuery.SQL.Add('delete from C000501');
   aQuery.ExecSQL;

   try
      aQuery.SQL.Clear;
      aQuery.SQL.Add('SELECT * FROM C000501 WHERE EMP_ATIVA_CAIXA = 1');
      aQuery.Open();

      // Posiciona o cursor
      bQuery.First;

      // Ajusta a Query de Inserção
      aQuery.CachedUpdates := true;

      repeat
         aQuery.Insert;
         aQuery.FieldByName('ID').AsInteger                   := bQuery.FieldByName('ID').AsInteger;
         aQuery.FieldByName('EMP_CODIGO').AsInteger           := bQuery.FieldByName('EMP_CODIGO').AsInteger;
         aQuery.FieldByName('EMP_DATA_REG').AsDateTime        := bQuery.FieldByName('EMP_DATA_REG').AsDateTime;
         aQuery.FieldByName('EMP_RAZAO').AsString             := bQuery.FieldByName('EMP_RAZAO').AsString;
         aQuery.FieldByName('EMP_FANTASIA').AsString          := bQuery.FieldByName('EMP_FANTASIA').AsString;
         aQuery.FieldByName('EMP_CNPJ').AsString              := bQuery.FieldByName('EMP_CNPJ').AsString;
         aQuery.FieldByName('EMP_IESTADUAL').AsString         := bQuery.FieldByName('EMP_IESTADUAL').AsString;
         aQuery.FieldByName('EMP_IMUNicipal').AsString        := bQuery.FieldByName('EMP_IMUNICiPAL').AsString;
         aQuery.FieldByName('EMP_CEP').AsString               := bQuery.FieldByName('EMP_CEP').AsString;
         aQuery.FieldByName('EMP_ENDERECO').AsString          := bQuery.FieldByName('EMP_ENDERECO').AsString;
         aQuery.FieldByName('EMP_NUMERO').AsInteger           := bQuery.FieldByName('EMP_NUMERO').AsInteger;
         aQuery.FieldByName('EMP_COMPLEMENTO').AsString       := bQuery.FieldByName('EMP_COMPLEMENTO').AsString;
         aQuery.FieldByName('EMP_BAIRRO').AsString            := bQuery.FieldByName('EMP_BAIRRO').AsString;
         aQuery.FieldByName('EMP_CIDADE').AsString            := bQuery.FieldByName('EMP_CIDADE').AsString;
         aQuery.FieldByName('EMP_CODIGO_CIDADE').AsInteger    := bQuery.FieldByName('EMP_CODIGO_CIDADE').AsInteger;
         aQuery.FieldByName('EMP_UF').AsString                := bQuery.FieldByName('EMP_UF').AsString;
         aQuery.FieldByName('EMP_CODIGO_UF').AsInteger        := bQuery.FieldByName('EMP_CODIGO_UF').AsInteger;
         aQuery.FieldByName('EMP_PAIS').AsString              := bQuery.FieldByName('EMP_PAIS').AsString;
         aQuery.FieldByName('EMP_CODIGO_PAIS').AsInteger      := bQuery.FieldByName('EMP_CODIGO_PAIS').AsInteger;
         aQuery.FieldByName('EMP_FONEFIXO').AsString          := bQuery.FieldByName('EMP_FONEFIXO').AsString;
         aQuery.FieldByName('EMP_FONEMOVEL').AsString         := bQuery.FieldByName('EMP_FONEMOVEL').AsString;
         aQuery.FieldByName('EMP_EMAIL').AsString             := bQuery.FieldByName('EMP_EMAIL').AsString;
         aQuery.FieldByName('EMP_SITE').AsString              := bQuery.FieldByName('EMP_SITE').AsString;
         aQuery.FieldByName('EMP_CRT').AsInteger              := bQuery.FieldByName('EMP_CRT').AsInteger;
         aQuery.FieldByName('EMP_NFE_PROXY_HOST').AsString    := bQuery.FieldByName('EMP_NFE_PROXY_HOST').AsString;
         aQuery.FieldByName('EMP_NFE_PROXY_PORTA').AsInteger  := bQuery.FieldByName('EMP_NFE_PROXY_PORTA').AsInteger;
         aQuery.FieldByName('EMP_NFE_PROXY_USUARIO').AsString := bQuery.FieldByName('EMP_NFE_PROXY_USUARIO').AsString;
         aQuery.FieldByName('EMP_NFE_PROXY_SENHA').AsString   := bQuery.FieldByName('EMP_NFE_PROXY_SENHA').AsString;
         aQuery.FieldByName('EMP_NFE_EMAIL_HOST').AsString    := bQuery.FieldByName('EMP_NFE_EMAIL_HOST').AsString;
         aQuery.FieldByName('EMP_NFE_EMAIL_PORTA').AsInteger  := bQuery.FieldByName('EMP_NFE_EMAIL_PORTA').AsInteger;
         aQuery.FieldByName('EMP_NFE_EMAIL_USUARIO').AsString := bQuery.FieldByName('EMP_NFE_EMAIL_USUARIO').AsString;
         aQuery.FieldByName('EMP_NFE_EMAIL_SENHA').AsString   := bQuery.FieldByName('EMP_NFE_EMAIL_SENHA').AsString;
         aQuery.FieldByName('EMP_NFE_EMAIL_SEGURO').AsInteger := bQuery.FieldByName('EMP_NFE_EMAIL_SEGURO').AsInteger;
         aQuery.FieldByName('EMP_NFE_EMAIL_ASSUNTO').AsString := bQuery.FieldByName('EMP_NFE_EMAIL_ASSUNTO').AsString;
         aQuery.FieldByName('EMP_NFE_EMAIL_MESSAGE').AsString := bQuery.FieldByName('EMP_NFE_EMAIL_MESSAGE').AsString;
         aQuery.FieldByName('EMP_NCM_FONTE').AsString         := bQuery.FieldByName('EMP_NCM_FONTE').AsString;
         aQuery.FieldByName('EMP_NCM_CHAVE').AsString         := bQuery.FieldByName('EMP_NCM_CHAVE').AsString;
         aQuery.FieldByName('EMP_SERVER_REST_HOST').AsString  := bQuery.FieldByName('EMP_SERVER_REST_HOST').AsString;
         aQuery.FieldByName('EMP_SERVER_REST_PORT').AsInteger := bQuery.FieldByName('EMP_SERVER_REST_PORT').AsInteger;
         aQuery.FieldByName('EMP_PLN_PDV').AsInteger          := bQuery.FieldByName('EMP_PLN_PDV').AsInteger;
         aQuery.FieldByName('EMP_PLN_PDV_DESC').AsString      := bQuery.FieldByName('EMP_PLN_PDV_DESC').AsString;
         aQuery.FieldByName('EMP_CLI_PDV').AsInteger          := bQuery.FieldByName('EMP_CLI_PDV').AsInteger;
         aQuery.FieldByName('EMP_CLI_PDV_DESC').AsString      := bQuery.FieldByName('EMP_CLI_PDV_DESC').AsString;
         aQuery.Post;

         // Avança para o próximo registro
         bQuery.Next;
      until ( bQuery.Eof );

      // Grava os dados na tabela
      aQuery.ApplyUpdates(0);
      aQuery.CommitUpdates;

   finally
      if Assigned( aQuery ) then FreeAndNil( aQuery );
      if Assigned( bQuery ) then FreeAndNil( bQuery );
   end;

end;

procedure TFrAtualizarPDV.Atualizar_Formas_De_Pagtos;
var
   aQueryR, aQuery : TFDQuery;
begin

   // Alterar o display de progresso
   lbMensagem.Caption := 'Atualizando Formas de Pagamentos...';
   Application.ProcessMessages;

   // Cria o objeto remoto
   aQueryR            := TFDQuery.Create(Self);
   aQueryR.Connection := FrModulo.DBCon_Remoto;

   // Cria o objeto de Apoio
   aQuery             := TFDQuery.Create(self);
   aQuery.Connection  := FrModulo.DBCon_Local;

   try
      try
         // Carrega a lista de caixas
         aQueryR.SQL.Add('SELECT * FROM C000010');
         aQueryR.Open();

         // Limpa a tabela local de produtos
         aQuery.SQL.Add('DELETE FROM C000010');
         aQuery.ExecSQL;

         {Se não foi retornado nehum resultado}
         if aQueryR.IsEmpty then
         begin
            Application.MessageBox('Erro ao atualizar a tabela de formas de Pagamentos, verifique se existem:'
                                    + #13#10
                                    + '1 - Formas de Pagamentos cadastradas.'
                                    ,'TechCore-PDV',mb_IconExclamation or mb_ok);
            Abort;
         end;

         // Posiciona o cursor
         aQueryR.First;

         // Configura o cursor local
         aQueryL.Close;
         aQueryL.SQL.Clear;
         aQueryL.SQL.Add('SELECT * FROM C000010');
         aQueryL.Open();

         repeat
            aQueryL.Insert;
            aQueryL.FieldByName('ID').AsInteger             := aQueryR.FieldByName('ID').AsInteger;
            aQueryL.FieldByName('FRM_CODIGO').AsInteger     := aQueryR.FieldByName('FRM_CODIGO').AsInteger;
            aQueryL.FieldByName('FRM_DESCRICAO').AsString   := aQueryR.FieldByName('FRM_DESCRICAO').AsString;
            aQueryL.FieldByName('FRM_STATUS').AsInteger     := aQueryR.FieldByName('FRM_STATUS').AsInteger;

            aQueryR.Next;
         until ( aQueryR.Eof );

         // Grava os dados no banco de dados local
         aQueryL.ApplyUpdates(0);
         aQueryL.CommitUpdates;

         // Alterar o display de progresso
         lbMensagem.Caption := 'Formas de Pagamentos Atualizadas';
      except
         raise Exception.Create('Erro ao atualiza a tabela local das formas e pagamentos.');
      end;

   finally
      FreeAndNil( aQueryR );
      FreeAndNil( aQuery  );
   end;

end;

procedure TFrAtualizarPDV.Atualizar_Lista_De_Caixas;
var
   aQueryR, aQuery : TFDQuery;
begin

   // Alterar o display de progresso
   lbMensagem.Caption := 'Carregando Caixas...';
   Application.ProcessMessages;

   // Cria o objeto remoto
   aQueryR            := TFDQuery.Create(Self);
   aQueryR.Connection := FrModulo.DBCon_Remoto;

   // Cria o objeto de Apoio
   aQuery             := TFDQuery.Create(self);
   aQuery.Connection  := FrModulo.DBCon_Local;

   try
      try
         // Carrega a lista de caixas
         aQueryR.SQL.Add('SELECT * FROM C000017');
         aQueryR.Open();

         {Se não foi retornado nehum resultado}
         if aQueryR.IsEmpty then
         begin
            Application.MessageBox('Erro ao atualizar a tabela de Caixas, verifique se existem:'
                                    + #13#10
                                    + '1 - Caixas cadastrados.'
                                    ,'TechCore-PDV',mb_IconExclamation or mb_ok);
            Abort;
         end;

         // Limpa a tabela local de produtos
         aQuery.SQL.Add('DELETE FROM C000017');
         aQuery.ExecSQL;

         // Posiciona o cursor
         aQueryR.First;

         // Configura o cursor local
         aQueryL.Close;
         aQueryL.SQL.Clear;
         aQueryL.SQL.Add('SELECT * FROM C000017');
         aQueryL.Open();

         repeat
            aQueryL.Insert;
            aQueryL.FieldByName('ID').AsInteger         := aQueryR.FieldByName('ID').AsInteger;
            aQueryL.FieldByName('F_CODIGO').AsInteger   := aQueryR.FieldByName('CAX_CODIGO').AsInteger;
            aQueryL.FieldByName('F_DESCRICAO').AsString := aQueryR.FieldByName('CAX_DESCRICAO').AsString;
            aQueryL.FieldByName('F_UTILIZADO').AsString := aQueryR.FieldByName('CAX_UTILIZADO').AsString;
            aQueryL.FieldByName('F_STATUS').AsInteger   := aQueryR.FieldByName('CAX_STATUS').AsInteger;

            aQueryR.Next;
         until ( aQueryR.Eof );

         // Grava os dados no banco de dados local
         aQueryL.ApplyUpdates(0);
         aQueryL.CommitUpdates;

         // Alterar o display de progresso
         lbMensagem.Caption := 'Caixas Atualizados';
      except
         raise Exception.Create('Erro ao atualiza a tabela local dos caixas.');
      end;

   finally
      FreeAndNil( aQueryR );
      FreeAndNil( aQuery  );
   end;

end;

procedure TFrAtualizarPDV.Atualizar_Lista_De_Operadores;
var
   aQueryR, aQuery  : TFDQuery;
begin
   // Alterar o display de progresso
   lbMensagem.Caption := 'Atualizando Operadores...';
   Application.ProcessMessages;

   // Cria o objeto remoto
   aQueryR            := TFDQuery.Create(Self);
   aQueryR.Connection := FrModulo.DBCon_Remoto;

   // Cria o objeto de Apoio
   aQuery             := TFDQuery.Create(self);
   aQuery.Connection  := FrModulo.DBCon_Local;

   try
      try
         // Conecta o banco de dados do Servidor Retaguarda e prepara os operadores para serem importados
         aQueryR.SQL.Add('SELECT');
         aQueryR.SQL.Add(' T1.*,');
         aQueryR.SQL.Add(' (SELECT FUN_CODIGO  FROM C000301 WHERE ID = T1.ID) AS OPR_CODIGO,');
         aQueryR.SQL.Add(' (SELECT FUN_APELIDO FROM C000301 WHERE ID = T1.ID) AS OPR_APELIDO');
         aQueryR.SQL.Add('FROM');
         aQueryR.SQL.Add(' C000060 AS T1');
         aQueryR.SQL.Add('WHERE');
         aQueryR.SQL.Add(' T1.ID_EMPRESA = :ID_EMPRESA');
         aQueryR.SQL.Add('ORDER BY');
         aQueryR.SQL.Add(' OPR_APELIDO ASC');
         aQueryR.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
         aQueryR.Open();

         {Se não foi retornado nehum resultado}
         if aQueryR.IsEmpty then
         begin
            Application.MessageBox('Erro ao atualizar a tabela de Operadores, verifique se existem:'
                                    + #13#10
                                    + '1 - Operadores de Caixas cadastrados.'
                                    ,'TechCore-PDV',mb_IconExclamation or mb_ok);
            Abort;
         end;

         // Limpa a tabela local de produtos
         aQuery.SQL.Add('DELETE FROM C000060 WHERE ID_EMPRESA = :ID_EMPRESA');
         aQuery.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
         aQuery.ExecSQL;

         // Posiciona o cursor remoto no primeiro registro
         aQueryR.First;

         // Configura o cursor local
         aQueryL.Close;
         aQueryL.SQL.Clear;
         aQueryL.SQL.Add('SELECT * FROM C000060');
         aQueryL.Open();

         // Inicia o processo de atualização
         repeat

            aQueryL.Insert;
            aQueryL.FieldByName('ID').AsInteger                    := aQueryR.FieldByName('ID').AsInteger;
            aQueryL.FieldByName('ID_EMPRESA').AsInteger            := aQueryR.FieldByName('ID_EMPRESA').AsInteger;
            aQueryL.FieldByName('OPR_APELIDO').AsString            := aQueryR.FieldByName('OPR_APELIDO').AsString;
            aQueryL.FieldByName('OPR_CODIGO').AsInteger            := aQueryR.FieldByName('OPR_CODIGO').AsInteger;
            aQueryL.FieldByName('OPR_USUARIO').AsString            := aQueryR.FieldByName('OPR_USUARIO').AsString;
            aQueryL.FieldByName('OPR_SENHA').AsString              := aQueryR.FieldByName('OPR_SENHA').AsString;
            aQueryL.FieldByName('OPR_STATUS').AsInteger            := aQueryR.FieldByName('OPR_STATUS').AsInteger;
            aQueryL.FieldByName('OPR_CANCELA_VENDA').AsInteger     := aQueryR.FieldByName('OPR_CANCELA_VENDA').AsInteger;
            aQueryL.FieldByName('OPR_CANCELA_ITEM').AsInteger      := aQueryR.FieldByName('OPR_CANCELA_ITEM').AsInteger;
            aQueryL.FieldByName('OPR_CANCELA_CUPOM').AsInteger     := aQueryR.FieldByName('OPR_CANCELA_CUPOM').AsInteger;
            aQueryL.FieldByName('OPR_CONFIGURA_CAIXA').AsInteger   := aQueryR.FieldByName('OPR_CONFIGURA_CAIXA').AsInteger;
            aQueryL.FieldByName('F_FECHAMENTO_CAIXA').AsInteger    := aQueryR.FieldByName('OPR_FECHAMENTO_CAIXA').AsInteger;
            aQueryL.FieldByName('F_PERMITE_SANGRIA').AsInteger     := aQueryR.FieldByName('F_PERMITE_SANGRIA').AsInteger;
            aQueryL.FieldByName('F_PERMITE_RETIRADA').AsInteger    := aQueryR.FieldByName('F_PERMITE_RETIRADA').AsInteger;
            aQueryL.FieldByName('F_PERMITE_SUPRIMENTOS').AsInteger := aQueryR.FieldByName('F_PERMITE_SUPRIMENTOS').AsInteger;
            aQueryL.FieldByName('F_SENHA_CANCELA_ITENS').AsInteger := aQueryR.FieldByName('F_SENHA_CANCELA_ITENS').AsInteger;
            aQueryL.FieldByName('F_SENHA_CANCELA_VENDA').AsInteger := aQueryR.FieldByName('F_SENHA_CANCELA_VENDA').AsInteger;
            aQueryL.FieldByName('F_SENHA_CANCELA_CUPOM').AsInteger := aQueryR.FieldByName('F_SENHA_CANCELA_CUPOM').AsInteger;
            aQueryL.FieldByName('F_PRINT_GERENCIAL').AsInteger     := aQueryR.FieldByName('F_PRINT_GERENCIAL').AsInteger;
            aQueryL.FieldByName('F_LISTAR_CUPONS').AsInteger       := aQueryR.FieldByName('F_LISTAR_CUPONS').AsInteger;
            aQueryL.FieldByName('F_SNH_LISTAR_CUPONS').AsInteger   := aQueryR.FieldByName('F_SNH_LISTAR_CUPONS').AsInteger;
            aQueryL.FieldByName('F_SNH_SANGRIA').AsInteger         := aQueryR.FieldByName('F_SNH_SANGRIA').AsInteger;
            aQueryL.FieldByName('F_SNH_RETIRADA').AsInteger        := aQueryR.FieldByName('F_SNH_RETIRADA').AsInteger;
            aQueryL.FieldByName('F_SNH_SUPRIMENTO').AsInteger      := aQueryR.FieldByName('F_SNH_SUPRIMENTO').AsInteger;
            aQueryL.FieldByName('F_SNH_PRINT_GERENCIAL').AsInteger := aQueryR.FieldByName('F_SNH_PRINT_GERENCIAL').AsInteger;
            aQueryL.FieldByName('F_USER_ADM').AsInteger            := aQueryR.FieldByName('F_USER_ADM').AsInteger;
            aQueryL.FieldByName('F_ENVIAR_EMAIL').AsInteger        := aQueryR.FieldByName('F_ENVIAR_EMAIL').AsInteger;
            aQueryL.FieldByName('F_SNH_ENVIAR_EMAIL').AsInteger    := aQueryR.FieldByName('F_SNH_ENVIAR_EMAIL').AsInteger;
            aQueryL.Post;

            aQueryR.Next;
         until ( aQueryR.Eof );

         // Grava os dados na tabela
         aQueryL.ApplyUpdates(0);
         aQueryL.CommitUpdates;

         // Alterar o display de progresso
         lbMensagem.Caption := 'Lista de Operadores Atualizada.';

         // Recria o objeto operador com as novas permissões
         if ReloadOperador then
         begin
            FreeAndNil( ObjOperador );
            ObjOperador := TObjOperador.Create(Id_Operador);
         end;

      except
         raise Exception.Create('Erro ao atualiza a tabela local de Operadores.');
      end;

   finally
      FreeAndNil( aQueryR );
      FreeAndNil( aQuery  );
   end;

end;

procedure TFrAtualizarPDV.Atualizar_Lista_De_Vendedores;
var
   aQueryR, aQuery  : TFDQuery;
begin
   // Alterar o display de progresso
   lbMensagem.Caption := 'Atualizando Vendedores...';

   // Cria o objeto remoto
   aQueryR            := TFDQuery.Create(Self);
   aQueryR.Connection := FrModulo.DBCon_Remoto;

   // Cria o objeto de Apoio
   aQuery             := TFDQuery.Create(self);
   aQuery.Connection  := FrModulo.DBCon_Local;

   try
      try
         // Conecta o banco de dados do Servidor Retaguarda e prepara os operadores para serem importados
         aQueryR.SQL.Add('SELECT');
         aQueryR.SQL.Add(' T1.ID,');
         aQueryR.SQL.Add(' T1.ID_EMPRESA,');
         aQueryR.SQL.Add(' T1.VND_STATUS        AS F_STATUS,');
         aQueryR.SQL.Add(' (SELECT FUN_NOME    FROM C000301 WHERE T1.ID = ID) AS F_NOME,');
         aQueryR.SQL.Add(' (SELECT FUN_CODIGO  FROM C000301 WHERE T1.ID = ID) AS F_CODIGO,');
         aQueryR.SQL.Add(' (SELECT FUN_APELIDO FROM C000301 WHERE T1.ID = ID) AS F_APELIDO,');
         aQueryR.SQL.Add(' COALESCE((SELECT DSC_MARGEM FROM C000302 WHERE ID = T1.ID_TAB_DESCONTO),0) AS F_MARGEM_DESCONTO');
         aQueryR.SQL.Add('FROM');
         aQueryR.SQL.Add(' C000061 AS T1');
         aQueryR.SQL.Add('WHERE');
         aQueryR.SQL.Add(' ID_EMPRESA = :ID_EMPRESA');
         aQueryR.SQL.Add('ORDER BY');
         aQueryR.SQL.Add(' F_APELIDO ASC');
         aQueryR.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
         aQueryR.Open();

         {Se não foi retornado nehum resultado}
         if aQueryR.IsEmpty then
         begin
            Application.MessageBox('Erro ao atualizar a tabela de Vendedores, verifique se existem:'
                                    + #13#10
                                    + '1 - Vendedores cadastrados.'
                                    ,'TechCore-PDV',mb_IconExclamation or mb_ok);
            Abort;
         end;

         // Limpa a tabela local de produtos
         aQuery.SQL.Add('DELETE FROM C000061 WHERE ID_EMPRESA = :ID_EMPRESA');
         aQuery.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
         aQuery.ExecSQL;

         // Posiciona o cursor remoto no primeiro registro
         aQueryR.First;

         // Configura o cursor local
         aQueryL.Close;
         aQueryL.SQL.Clear;
         aQueryL.SQL.Add('SELECT * FROM C000061');
         aQueryL.Open();

         // Inicia o processo de atualização
         repeat

            aQueryL.Insert;
            aQueryL.FieldByName('id').AsInteger              := aQueryR.FieldByName('id').AsInteger;
            aQueryL.FieldByName('id_empresa').AsInteger      := aQueryR.FieldByName('id_empresa').AsInteger;
            aQueryL.FieldByName('f_codigo').AsInteger        := aQueryR.FieldByName('f_codigo').AsInteger;
            aQueryL.FieldByName('f_nome').AsString           := aQueryR.FieldByName('f_nome').AsString;
            aQueryL.FieldByName('f_apelido').AsString        := aQueryR.FieldByName('f_apelido').AsString;
            aQueryL.FieldByName('f_margem_desconto').AsFloat := aQueryR.FieldByName('f_margem_Desconto').AsFloat;
            aQueryL.FieldByName('f_status').AsInteger        := aQueryR.FieldByName('f_status').AsInteger;
            aQueryL.Post;

            aQueryR.Next;
         until ( aQueryR.Eof );

         // Grava os dados na tabela
         aQueryL.ApplyUpdates(0);
         aQueryL.CommitUpdates;

         // Alterar o display de progresso
         lbMensagem.Caption := 'Lista de Vendedores Atualizada.';

      except
         raise Exception.Create('Erro ao atualiza a tabela local de Vendedores.');
      end;

   finally
      FreeAndNil( aQueryR );
      FreeAndNil( aQuery  );
   end;
end;

procedure TFrAtualizarPDV.Atualizar_Tabela_De_kits_Produtos;
var
   aQueryR, aQuery  : TFDQuery;
begin
   // Alterar o display de progresso
   lbMensagem.Caption := 'Atualizando Kits...';
   Application.ProcessMessages;

   // Cria o objeto remoto
   aQueryR            := TFDQuery.Create(Self);
   aQueryR.Connection := FrModulo.DBCon_Remoto;

   // Cria o objeto de Apoio
   aQuery             := TFDQuery.Create(self);
   aQuery.Connection  := FrModulo.DBCon_Local;

   try
      try
         // Conecta o banco de dados do Servidor Retaguarda e prepara os produtos para serem importados
         aQueryR.SQL.Add('SELECT');
         aQueryR.SQL.Add(' T1.*');
         aQueryR.SQL.Add('FROM');
         aQueryR.SQL.Add(' C000405_KIT AS T1');
         aQueryR.SQL.Add('INNER JOIN');
         aQueryR.SQL.Add(' C000405 AS T2');
         aQueryR.SQL.Add('ON');
         aQueryR.SQL.Add(' T2.ID = T1.ID_C000405');
         aQueryR.SQL.Add('WHERE');
         aQueryR.SQL.Add(' T2.ID_EMPRESA = :ID_EMP');

         aQueryR.ParamByName('ID_EMP').AsInteger := FEmpresaClass.ID;
         aQueryR.Open();

         {Se não existir kits, somente exclue os existentes}
         if aQueryR.IsEmpty then
         begin
            // Limpa a tabela local de produtos
            aQuery.SQL.Add('DELETE FROM C000405_KIT');
            aQuery.ExecSQL;
         end
         else
         begin

            // Limpa a tabela local de produtos
            aQuery.SQL.Add('DELETE FROM C000405_KIT');
            aQuery.ExecSQL;

            // Posiciona o cursor remoto no primeiro registro
            aQueryR.First;

            // Configura o cursor local
            aQueryL.Close;
            aQueryL.SQL.Clear;
            aQueryL.SQL.Add('SELECT * FROM C000405_KIT');
            aQueryL.Open();

            // Inicia o processo de atualização
            repeat

               aQueryL.Insert;
               aQueryL.FieldByName('ID').AsInteger         := aQueryR.FieldByName('ID').AsInteger;
               aQueryL.FieldByName('ID_C000405').AsInteger := aQueryR.FieldByName('ID_C000405').AsInteger;
               aQueryL.FieldByName('PRD_ID').AsInteger     := aQueryR.FieldByName('PRD_ID').AsInteger;
               aQueryL.FieldByName('PRD_VALOR').AsFloat    := aQueryR.FieldByName('PRD_VALOR').AsFloat;
               aQueryL.FieldByName('PRD_QTDE').AsFloat     := aQueryR.FieldByName('PRD_QTDE').AsFloat;
               aQueryL.Post;

               aQueryR.Next;
            until ( aQueryR.Eof );

            // Grava os dados na tabela
            aQueryL.ApplyUpdates(0);
            aQueryL.CommitUpdates;

            // Alterar o display de progresso
            lbMensagem.Caption := 'Kits atualizados com sucesso';

         end;
      except
         raise Exception.Create('Erro ao atualiza a tabela local de kits.');
      end;

   finally
      FreeAndNil( aQueryR );
      FreeAndNil( aQuery  );
   end;
end;

procedure TFrAtualizarPDV.Atualizar_Tabela_De_Produtos;
var
   aQueryR, aQuery  : TFDQuery;
begin
   // Alterar o display de progresso
   lbMensagem.Caption := 'Atualizando Produtos...';
   Application.ProcessMessages;

   // Cria o objeto remoto
   aQueryR            := TFDQuery.Create(Self);
   aQueryR.Connection := FrModulo.DBCon_Remoto;

   // Cria o objeto de Apoio
   aQuery             := TFDQuery.Create(self);
   aQuery.Connection  := FrModulo.DBCon_Local;

   try
      try
         // Conecta o banco de dados do Servidor Retaguarda e prepara os produtos para serem importados
         aQueryR.SQL.Add('SELECT');
         aQueryR.SQL.Add(' T2.ID,');
         aQueryR.SQL.Add(' T2.ID_EMPRESA,');
         aQueryR.SQL.Add(' T2.PRD_CODIGO,');
         aQueryR.SQL.Add(' T2.PRD_CODIGO_BRR,');
         aQueryR.SQL.Add(' T2.PRD_DESCRICAO,');
         aQueryR.SQL.Add(' T2.PRD_DESCRICAO_CURTA,');
         aQueryR.SQL.Add(' T2.PRD_UNIDADE,');
         aQueryR.SQL.Add(' T2.PRD_NCM,');
         aQueryR.SQL.Add(' T2.PRD_ORIGEM,');
         aQueryR.SQL.Add(' T2.PRD_KIT,');
         aQueryR.SQL.Add(' T2.PRD_KIT_VALOR,');
         aQueryR.SQL.Add(' COALESCE(T1.PRC_VLR_VENDA,0) AS PRD_VLR_VENDA,');
         aQueryR.SQL.Add(' COALESCE((SELECT TRB_ICMS_NC_CFOP FROM C000015 WHERE TRB_FRENTE_CAIXA = 1 AND TRB_STATUS = 1),0) AS PRD_CFOP,');
         aQueryR.SQL.Add(' COALESCE((SELECT NCM_TAXA_IMP     FROM C000300 WHERE NCM_CODIGO = T2.PRD_NCM AND NCM_EX = T2.PRD_NCM_EX),0) AS PRD_NCM_TAXA_IMP,');
         aQueryR.SQL.Add(' COALESCE((SELECT NCM_TAXA_NAC     FROM C000300 WHERE NCM_CODIGO = T2.PRD_NCM AND NCM_EX = T2.PRD_NCM_EX),0) AS PRD_NCM_TAXA_NAC,');
         aQueryR.SQL.Add(' COALESCE((SELECT NCM_TAXA_EST     FROM C000300 WHERE NCM_CODIGO = T2.PRD_NCM AND NCM_EX = T2.PRD_NCM_EX),0) AS PRD_NCM_TAXA_EST');
         aQueryR.SQL.Add('FROM');
         aQueryR.SQL.Add(' C000304 AS T1');
         aQueryR.SQL.Add('JOIN');
         aQueryR.SQL.Add(' C000303 AS T3');
         aQueryR.SQL.Add('ON');
         aQueryR.SQL.Add(' T3.ID  = T1.ID_TABELA');
         aQueryR.SQL.Add('AND');
         aQueryR.SQL.Add(' T3.PRC_TIPO    = 1');
         aQueryR.SQL.Add('JOIN');
         aQueryR.SQL.Add(' C000405 AS T2');
         aQueryR.SQL.Add('ON');
         aQueryR.SQL.Add(' T1.ID_PRODUTO  = T2.ID');
         aQueryR.SQL.Add('WHERE');
         aQueryR.SQL.Add(' T2.ID_EMPRESA  = :ID_EMPRESA');
         aQueryR.SQL.Add('AND');
         aQueryR.SQL.Add(' T1.ID_PRODUTO  = T2.ID');
         aQueryR.SQL.Add('AND');
         aQueryR.SQL.Add(' T3.PRC_STATUS  = 1');
         aQueryR.SQL.Add('ORDER BY');
         aQueryR.SQL.Add(' T2.ID ASC');
         aQueryR.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
         aQueryR.Open();

         {Se não foi retornado nehum resultado}
         if aQueryR.IsEmpty then
         begin
            Application.MessageBox('Erro ao atualizar a tabela de Produtos, verifique se existem:'
                                    + #13#10
                                    + '1 - Produtos cadastrados.'
                                    + #13#10
                                    + '2 - Se foi definido uma tabela de tributos para o caixa.'
                                    + #13#10
                                    + '3 - Se foi definido uma tabela preços e seus produtos.'
                                    ,'TechCore-PDV',mb_IconExclamation or mb_ok);
            Abort;
         end;

         // Checa se existe cfop cadastrado para o pdv
         if aQueryR.FieldByName('PRD_CFOP').AsInteger = 0 then
         begin
            Application.MessageBox('Não existe um CFOP definido para vendas no caixa, é necessário criar uma tabela de tributos para o pdv antes de atualizar os caixas.','TechCore-RTG',mb_IconStop or mb_Ok);
            Abort;
         end;

         // Limpa a tabela local de produtos
         aQuery.SQL.Add('DELETE FROM C000405 WHERE ID_EMPRESA = :ID_EMPRESA');
         aQuery.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
         aQuery.ExecSQL;

         // Posiciona o cursor remoto no primeiro registro
         aQueryR.First;

         // Configura o cursor local
         aQueryL.Close;
         aQueryL.SQL.Clear;
         aQueryL.SQL.Add('SELECT * FROM C000405');
         aQueryL.Open();

         // Inicia o processo de atualização
         repeat

            aQueryL.Insert;
            aQueryL.FieldByName('ID').AsInteger                 := aQueryR.FieldByName('ID').AsInteger;
            aQueryL.FieldByName('ID_EMPRESA').AsInteger         := aQueryR.FieldByName('ID_EMPRESA').AsInteger;
            aQueryL.FieldByName('ID_PRODUTO').AsInteger         := aQueryR.FieldByName('ID').AsInteger;
            aQueryL.FieldByName('PRD_CODIGO').AsInteger         := aQueryR.FieldByName('PRD_CODIGO').AsInteger;
            aQueryL.FieldByName('PRD_CODIGO_BARRA').AsString    := aQueryR.FieldByName('PRD_CODIGO_BRR').AsString;
            aQueryL.FieldByName('PRD_DESCRICAO').AsString       := aQueryR.FieldByName('PRD_DESCRICAO').AsString;

            {Impede de gravar valores vazios}
            if aQueryR.FieldByName('PRD_DESCRICAO_CURTA').IsNull then
               aQueryL.FieldByName('PRD_DESCRICAO_CURTA').Clear
            else
               aQueryL.FieldByName('PRD_DESCRICAO_CURTA').AsString := aQueryR.FieldByName('PRD_DESCRICAO_CURTA').AsString;

            aQueryL.FieldByName('PRD_UNIDADE').AsString         := aQueryR.FieldByName('PRD_UNIDADE').AsString;
            aQueryL.FieldByName('PRD_NCM').AsString             := aQueryR.FieldByName('PRD_NCM').AsString;
            aQueryL.FieldByName('PRD_CFOP').AsInteger           := aQueryR.FieldByName('PRD_CFOP').AsInteger;
            aQueryL.FieldByName('PRD_ORIGEM').AsInteger         := aQueryR.FieldByName('PRD_ORIGEM').AsInteger;
            aQueryL.FieldByName('PRD_VLR_VENDA').AsFloat        := aQueryR.FieldByName('PRD_VLR_VENDA').AsFloat;
            aQueryL.FieldByName('PRD_NCM_TAXA_IMP').AsFloat     := aQueryR.FieldByName('PRD_NCM_TAXA_IMP').AsFloat;
            aQueryL.FieldByName('PRD_NCM_TAXA_NAC').AsFloat     := aQueryR.FieldByName('PRD_NCM_TAXA_NAC').AsFloat;
            aQueryL.FieldByName('PRD_NCM_TAXA_EST').AsFloat     := aQueryR.FieldByName('PRD_NCM_TAXA_EST').AsFloat;
            aQueryL.FieldByName('PRD_KIT').AsBoolean            := aQueryR.FieldByName('PRD_KIT').AsBoolean;
            aQueryL.FieldByName('PRD_KIT_VALOR').AsFloat        := aQueryR.FieldByName('PRD_KIT_VALOR').AsFloat;
            aQueryL.Post;

            aQueryR.Next;

         until ( aQueryR.Eof );

         // Grava os dados na tabela
         aQueryL.ApplyUpdates(0);
         aQueryL.CommitUpdates;

         // Alterar o display de progresso
         lbMensagem.Caption := 'Produtos Atualizados';
      except
         on e:exception do
            Application.MessageBox(pChar('Erro ao atualizar a tabela de produtos.' + sLineBreak + 'Erro: ' + e.Message),'Techcore-PDV',mb_IconStop or mb_ok);
      end;

   finally
      FreeAndNil( aQueryR );
      FreeAndNil( aQuery  );
   end;

end;

procedure TFrAtualizarPDV.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if Assigned( aQueryL ) then
      CanClose := not (aQueryL.State in [dsInsert,dsEdit]);
end;

procedure TFrAtualizarPDV.JvImage1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrAtualizarPDV.s1Click(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

procedure TFrAtualizarPDV.Timer1Timer(Sender: TObject);
begin
   if lbAguarde.Caption <> lb_Aguarde then
      lbAguarde.Caption := lbAguarde.Caption + '.'
   else
   if lbAguarde.Caption = lb_Aguarde then
      lbAguarde.Caption := 'Aguarde';
end;

procedure TFrAtualizarPDV.tCargaTimer(Sender: TObject);
begin
   // Desliga o timer
   tCarga.Enabled := false;

   // Efetua a carga dos dados do emitente
   Atualizar_Dados_Do_Emitente;

   // Efetua a carga dos produtos
   Atualizar_Tabela_De_Produtos;

   // Efetua a carga dos produtos
   Atualizar_Tabela_De_kits_Produtos;

   // Efetua a carga dos caixas
   Atualizar_Lista_De_Caixas;

   // Efetua a carga das contas caixas
   Atualizar_Contas_Caixas;

   // Efetua a carga dos operadores
   Atualizar_Lista_De_Operadores;

   // Efetua a carga dos vendedores
   Atualizar_Lista_De_Vendedores;

   // Efetua a carga das formas de pagamentos
   Atualizar_Formas_De_Pagtos;

   // Desativa a animação
   Timer1.Enabled := false;

   // Fecha o formulário no automático
   tClose.Enabled := true;

   // Mensagem ao usuário
   lbMensagem.Caption := 'Carga efetuada com sucesso';

   // Aviso ao usuário
   lbAguarde.Caption := 'Finalizado';

end;

end.
