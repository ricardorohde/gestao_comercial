unit uConfigServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzButton, Vcl.ComCtrls,
  JvExComCtrls, JvComCtrls, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, Vcl.StdCtrls, RzCmboBx, RzDBCmbo, RzDBBnEd, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin, System.ImageList, Vcl.ImgList,
  FireDAC.Stan.StorageJSON, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.DApt, FireDAC.Phys.SQLiteVDataSet, JvExStdCtrls, JvEdit,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  JvExMask, JvToolEdit, JvBaseEdits;

type
  TFrConfigServer = class(TForm)
    JvPanel1: TJvPanel;
    pgControl: TJvPageControl;
    tabPrinicpal: TTabSheet;
    tabDetalhes: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    Query: TFDMemTable;
    dsDados: TJvDataSource;
    QueryCON_DATA_REG: TDateTimeField;
    QueryCON_CODIGO: TIntegerField;
    QueryCON_DESCRICAO: TStringField;
    QueryCON_ENDERECO: TStringField;
    QueryCON_PROTOCOLO: TStringField;
    QueryCON_PORTA: TIntegerField;
    QueryCON_DATABASE: TStringField;
    QueryCON_OBSERVACAO: TStringField;
    OpenDlg: TOpenDialog;
    QueryCON_USUARIO: TStringField;
    QueryCON_SENHA: TStringField;
    RzPanel1: TRzPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    eDescricao: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    eHost: TRzDBEdit;
    eDataBase: TRzDBButtonEdit;
    eProtocolo: TRzDBComboBox;
    eInfos: TDBMemo;
    eUsuario: TDBEdit;
    ed_senha: TJvEdit;
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    btnExit: TRzToolButton;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzSpacer6: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Icones16x16: TImageList;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    Label10: TLabel;
    IdTCPClient1: TIdTCPClient;
    Button1: TButton;
    ed_porta: TRzDBNumericEdit;
    procedure FormCreate(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure dsDadosStateChange(Sender: TObject);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure eDataBaseButtonClick(Sender: TObject);
    procedure QueryAfterDelete(DataSet: TDataSet);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Action6Execute(Sender: TObject);
    procedure Action1Update(Sender: TObject);
    procedure Action6Update(Sender: TObject);
    procedure Action5Update(Sender: TObject);
    procedure Action4Update(Sender: TObject);
    procedure Action2Update(Sender: TObject);
    procedure Action3Update(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
  private
    vr_testar_conexao : Boolean;
  public
    { Public declarations }
  end;

var
  FrConfigServer : TFrConfigServer;

implementation

{$R *.dfm}

uses uPrincipal, Classe.Servidores;

procedure TFrConfigServer.Action1Execute(Sender: TObject);
begin
   Query.Insert;
end;

procedure TFrConfigServer.Action1Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert, dsEdit] );
end;

procedure TFrConfigServer.Action2Execute(Sender: TObject);
begin
   Query.Edit;
end;

procedure TFrConfigServer.Action2Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.IsEmpty ) and ( not ( Query.State in [dsInsert, dsEdit] ) );
end;

procedure TFrConfigServer.Action3Execute(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrConfigServer.Action3Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.IsEmpty ) and ( not ( Query.State in [dsInsert, dsEdit] ) );
end;

procedure TFrConfigServer.Action4Execute(Sender: TObject);
begin
   Query.Post;
end;

procedure TFrConfigServer.Action4Update(Sender: TObject);
begin
   TAction(Sender).Enabled := ( Query.State in [dsInsert, dsEdit] ) and ( vr_testar_conexao );
end;

procedure TFrConfigServer.Action5Execute(Sender: TObject);
begin
   Query.Cancel;
end;

procedure TFrConfigServer.Action5Update(Sender: TObject);
begin
   TAction(Sender).Enabled := Query.State in [dsInsert, dsEdit];
end;

procedure TFrConfigServer.Action6Execute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrConfigServer.Action6Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert, dsEdit] );
end;

procedure TFrConfigServer.Button1Click(Sender: TObject);
begin
   vr_testar_conexao := false;

   QueryBeforePost(nil);

   with IdTCPClient1 do
   begin
      try
         Host := eHost.Text;
         Port := ed_porta.IntValue;
         Connect;

         vr_testar_conexao := true;
      except
         Raise Exception.Create('Não foi possivel localizar o servidor informado');
      end;
   end;
end;

procedure TFrConfigServer.dsDadosStateChange(Sender: TObject);
begin
   if dsDados.DataSet.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrinicpal;
end;

procedure TFrConfigServer.eDataBaseButtonClick(Sender: TObject);
begin
   {Localizar o banco de dados do sistema}
   if OpenDlg.Execute then
      eDataBase.Text := OpenDlg.FileName;
end;

procedure TFrConfigServer.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if Query.State in [dsInsert, dsEdit] then
   begin
      Application.MessageBox('Não é permitido sair com inclusão ou alteração em andamento.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrConfigServer.FormCreate(Sender: TObject);
begin

   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrinicpal;

   // Coloca a aplicação no path
   Chdir('../binarios');

   {Checa se existem parâmetros informados}
   if not FileExists('ConfigServidores.dat') then
      Query.Open
   else
   begin
      Query.LoadFromFile('ConfigServidores.dat', sfBinary);
      Query.Open;
   end;

end;

procedure TFrConfigServer.IdTCPClient1Connected(Sender: TObject);
begin
   IdTCPClient1.Disconnect;
end;

procedure TFrConfigServer.QueryAfterDelete(DataSet: TDataSet);
begin
   {Grava os dados no arquivo de parâmetros}
   Query.SaveToFile('ConfigServidores.dat', sfBinary);
end;

procedure TFrConfigServer.QueryAfterPost(DataSet: TDataSet);
begin
   {Grava os dados no arquivo de parâmetros}
   Query.SaveToFile('ConfigServidores.dat', sfBinary);
end;

procedure TFrConfigServer.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrConfigServer.QueryBeforePost(DataSet: TDataSet);
begin
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Informe a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;

   if eHost.Text = '' then
   begin
      Application.MessageBox('Informe o endereço do servidor.','TechCore-RTG',mb_IconStop or mb_Ok);
      eHost.SetFocus;
      Abort;
   end;

   if eProtocolo.ItemIndex < 0 then
   begin
      Application.MessageBox('Informe o Protocolo de Comunicação.','TechCore-RTG',mb_IconStop or mb_Ok);
      eProtocolo.SetFocus;
      Abort;
   end;

   if ed_porta.IntValue <= 0 then
   begin
      Application.MessageBox('Informe a porta de conexão com o servidor.','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_porta.SetFocus;
      Abort;
   end;

   if eDataBase.Text = '' then
   begin
      Application.MessageBox('Informe o Caminh do Banco de Dados no Servidor.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataBase.SetFocus;
      Abort;
   end;

   if eUsuario.Text = '' then
   begin
      Application.MessageBox('Informe o nome do Usuário.','TechCore-RTG',mb_IconStop or mb_Ok);
      eUsuario.SetFocus;
      Abort;
   end;

   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Informe a Senha de conexão.','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_senha.SetFocus;
      Abort;
   end;
end;

procedure TFrConfigServer.QueryNewRecord(DataSet: TDataSet);
begin
   // Data do cadastro
   DataSet.FieldByName('con_data_reg').AsDateTime := Now;
end;

end.
