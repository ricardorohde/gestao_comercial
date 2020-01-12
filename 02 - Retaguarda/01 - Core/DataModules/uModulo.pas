unit uModulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.SQLite, FireDAC.Comp.Client, Vcl.Forms, Vcl.Controls, WinApi.Windows,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Comp.DataSet,
  FireDAC.DApt;

type
  TFrModuloRet = class(TDataModule)
    FDTransacao: TFDTransaction;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    Query: TFDMemTable;
    tbPesq: TFDQuery;
    DBConexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      sHost, iPorta, sProtocolo, sDatabase, sUser, sSenha : String;
  end;

var
  FrModuloRet: TFrModuloRet;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uConfigServer, uListarServidores, uSelectEmpresa, Classe.Empresa;

{$R *.dfm}

procedure TFrModuloRet.DataModuleCreate(Sender: TObject);
begin
  { ---------------------------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       12/03/2018
      Descrição:  Checa se existe o arquivo de parâmetros de conexão com o servidor
   --------------------------------------------------------------------------------------------------- }
   if not FileExists('ConfigServidores.dat') then
   begin

      Application.MessageBox('Se este for seu primeiro acesso, é necessário configurar o acesso ao servidor do sistema.','TechCore-RTG',mb_IconWarning or mb_OK);

      // Carrega o formulário para cadastrar os servidores
      try
         FrConfigServer := TFrConfigServer.Create(nil);
         FrConfigServer.ShowModal;
      finally
         FreeAndNil( FrConfigServer );
      end;

      if not FileExists('ConfigServidores.dat') then
      begin
         Application.Terminate;
         Exit;
      end;

   end;

   {Se o arquivo existe, verifica se existem servidores cadastrados}
   Query := TFDMemTable.Create(Application);
   Query.LoadFromFile('ConfigServidores.dat');
   Query.Open;

   {Checa se a tabela esta vazia}
   if Query.IsEmpty then
   begin
      Application.Terminate;
      Exit;
   end;

  { ---------------------------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       12/03/2018
      Descrição:  Checase existem mais de um servidor cadastrado
   --------------------------------------------------------------------------------------------------- }
   Query.Close;
   Query.LoadFromFile('ConfigServidores.dat');
   Query.Open;

   if Query.RecordCount > 1 then
   begin

      try
         FrListarServidores := TFrListarServidores.Create(nil);
         if FrListarServidores.ShowModal = mrOK then
         begin

            {Registra os dados do servidor selecionado}
            with FrListarServidores do
            begin
               sHost       := tbDados.FieldByName('con_endereco').AsString;
               iPorta      := tbDados.FieldByName('con_porta').AsString;
               sProtocolo  := tbDados.FieldByName('con_protocolo').AsString;
               sDatabase   := tbDados.FieldByName('con_database').AsString;
               sUser       := tbDados.FieldByName('con_usuario').AsString;
               sSenha      := tbDados.FieldByName('con_senha').AsString;
            end;

         end
         else
         begin
            Application.Terminate;
            Abort;
         end;

      finally
         FreeAndNil( FrListarServidores );
      end;

   end
   else
   begin
      sHost       := Query.FieldByName('con_endereco').AsString;
      iPorta      := Query.FieldByName('con_porta').AsString;
      sProtocolo  := Query.FieldByName('con_protocolo').AsString;
      sDatabase   := Query.FieldByName('con_database').AsString;
      sUser       := Query.FieldByName('con_usuario').AsString;
      sSenha      := Query.FieldByName('con_senha').AsString;
   end;

   try
      With DBConexao do
      begin
         Params.Clear;
         Params.Values['DriverID']  := 'FB';
         Params.Values['Server']    := shost;
         Params.Values['Port']      := iPorta;
         Params.Values['Protocol']  := sProtocolo;
         Params.Values['Database']  := sDatabase;
         Params.Values['User_name'] := sUser;
         Params.Values['Password']  := sSenha;
         Connected := True;
      end;

   Except
      on e:exception do
      begin
         Application.MessageBox(pChar('Erro ao conectar no banco de dados do sistema!'#13#10 + E.Message),'Techcore-RTG', mb_IconStop or mb_OK);
         Application.Terminate;
      end;
   end;
end;

end.
