unit uConfigConexoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzButton, Vcl.ComCtrls,
  JvExComCtrls, JvComCtrls, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, Vcl.StdCtrls, RzCmboBx, RzDBCmbo, RzDBBnEd, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList,
  Vcl.ImgList, JvEdit, System.Actions, Vcl.ActnList,Vcl.ActnMan,
  Vcl.PlatformDefaultStyleActnCtrls, ACBrBase, ACBrEnterTab,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, FireDAC.Stan.StorageBin,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait;

type
  TFrConfigServer = class(TForm)
    JvPanel1: TJvPanel;
    pgControl: TJvPageControl;
    tabPrinicpal: TTabSheet;
    tabDetalhes: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    Icones16x16: TImageList;
    OpenDlg: TOpenDialog;
    DBConfigServers: TFDMemTable;
    DSConfigServers: TJvDataSource;
    ActionManager1: TActionManager;
    DBConfigServersID: TFDAutoIncField;
    DBConfigServersCON_DATA_REG: TSQLTimeStampField;
    DBConfigServersCON_DESCRICAO: TStringField;
    DBConfigServersCON_HOST_IP: TStringField;
    DBConfigServersCON_PROTOCOLO: TStringField;
    DBConfigServersCON_PORTA: TIntegerField;
    DBConfigServersCON_DESTINO: TIntegerField;
    DBConfigServersCON_DATABASE: TStringField;
    DBConfigServersCON_OBSERVACAO: TStringField;
    DBConfigServersCON_USUARIO: TStringField;
    DBConfigServersCON_SENHA: TStringField;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    RzToolbar2: TRzToolbar;
    RzToolButton1: TRzToolButton;
    RzSpacer6: TRzSpacer;
    RzToolButton2: TRzToolButton;
    RzSpacer7: TRzSpacer;
    RzToolButton3: TRzToolButton;
    RzSpacer3: TRzSpacer;
    RzToolButton4: TRzToolButton;
    RzSpacer5: TRzSpacer;
    RzToolButton5: TRzToolButton;
    RzSpacer8: TRzSpacer;
    RzToolButton6: TRzToolButton;
    pnDetalhes: TRzPanel;
    eSenha: TDBEdit;
    Label11: TLabel;
    eDestino: TRzDBComboBox;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    eDescricao: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    eHost: TRzDBEdit;
    eDataBase: TRzDBButtonEdit;
    eProtocolo: TRzDBComboBox;
    eInfos: TDBMemo;
    eUsuario: TDBEdit;
    ACBrEnterTab1: TACBrEnterTab;
    Button1: TButton;
    IdTCPClient1: TIdTCPClient;
    ePorta: TJvDBCalcEdit;
    DBCon_Teste: TFDConnection;
    procedure FormCreate(Sender: TObject);
    procedure eDataBaseButtonClick(Sender: TObject);
    procedure DBConfigServersBeforeDelete(DataSet: TDataSet);
    procedure DSConfigServersStateChange(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action1Update(Sender: TObject);
    procedure Action2Update(Sender: TObject);
    procedure Action4Update(Sender: TObject);
    procedure DBConfigServersBeforePost(DataSet: TDataSet);
    procedure eDescricaoEnter(Sender: TObject);
    procedure eDescricaoExit(Sender: TObject);
    procedure DBConfigServersAfterPost(DataSet: TDataSet);
    procedure Action6Update(Sender: TObject);
    procedure DBConfigServersAfterDelete(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure DBConfigServersAfterEdit(DataSet: TDataSet);
    procedure DBConfigServersAfterInsert(DataSet: TDataSet);
    procedure DBCon_TesteAfterConnect(Sender: TObject);
    procedure DBCon_TesteError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure Action5Update(Sender: TObject);
    procedure DBConfigServersBeforeCancel(DataSet: TDataSet);
    procedure DBConfigServersBeforeInsert(DataSet: TDataSet);
    procedure DBConfigServersBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    b_LiberaGravar : Boolean;
    i_Destino : Integer;
  public
    { Public declarations }
  end;

var
  FrConfigServer: TFrConfigServer;

implementation

{$R *.dfm}

procedure TFrConfigServer.Action1Execute(Sender: TObject);
begin
   DBConfigServers.Insert;
end;

procedure TFrConfigServer.Action1Update(Sender: TObject);
begin
   if DBConfigServers.RecordCount >= 2 then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not (DBConfigServers.State in [dsInsert,dsEdit]);
end;

procedure TFrConfigServer.Action2Execute(Sender: TObject);
begin
   DBConfigServers.Edit;
end;

procedure TFrConfigServer.Action2Update(Sender: TObject);
begin
   if DBConfigServers.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not (DBConfigServers.State in [dsInsert,dsEdit]);
end;

procedure TFrConfigServer.Action3Execute(Sender: TObject);
begin
   DBConfigServers.Delete;
end;

procedure TFrConfigServer.Action4Execute(Sender: TObject);
begin
   DBConfigServers.Post;
end;

procedure TFrConfigServer.Action4Update(Sender: TObject);
begin
   if not b_LiberaGravar then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := DBConfigServers.State in [dsInsert,dsEdit];
end;

procedure TFrConfigServer.Action5Execute(Sender: TObject);
begin
   DBConfigServers.Cancel;
end;

procedure TFrConfigServer.Action5Update(Sender: TObject);
begin
   TAction(Sender).Enabled := DBConfigServers.State in [dsInsert,dsEdit];
end;

procedure TFrConfigServer.Action6Execute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrConfigServer.Action6Update(Sender: TObject);
begin
   TAction(Sender).Enabled := not (DBConfigServers.State in [dsInsert,dsEdit]);
end;

procedure TFrConfigServer.Button1Click(Sender: TObject);
begin
   // Confere se o servidor está ativo
   with IdTCPClient1 do
   begin
      try
         Host := eHost.Text;
         Port := ePorta.AsInteger;
         Connect;

         Application.MessageBox('Servidor localizado com exito.','TechCore-PDV',mb_IconInformation or mb_Ok);
      except
         raise Exception.Create('Não foi possivel localizar o servidor no endereço e porta informada.');
      end;
   end;

   // Confere se os dados de conexão estão corretos
   With DBCon_Teste do
   begin
      Params.Clear;
      Params.Values['DriverID']  := 'FB';
      Params.Values['Server']    := eHost.Text;
      Params.Values['Port']      := ePorta.Text;
      Params.Values['Protocol']  := eProtocolo.Text;
      Params.Values['Database']  := eDataBase.Text;
      Params.Values['User_name'] := eUsuario.Text;
      Params.Values['Password']  := eSenha.Text;
      Connected := True;
   end;

end;

procedure TFrConfigServer.DBConfigServersAfterDelete(DataSet: TDataSet);
begin
   if DBConfigServers.IsEmpty then
   begin
      DBConfigServers.Close;
      DeleteFile('ConfigConections.dat');
   end;
end;

procedure TFrConfigServer.DBConfigServersAfterEdit(DataSet: TDataSet);
begin
   b_LiberaGravar := false;

   eDestino.Enabled := not ( i_Destino in [1,2] );

   if i_Destino = 1 then
      DataSet.FieldByName('CON_DESTINO').AsInteger := 2
   else
   if i_Destino = 2 then
      DataSet.FieldByName('CON_DESTINO').AsInteger := 1
end;

procedure TFrConfigServer.DBConfigServersAfterInsert(DataSet: TDataSet);
begin
   b_LiberaGravar := false;

   eDestino.Enabled := not ( i_Destino in [1,2] );

   if i_Destino = 1 then
      DataSet.FieldByName('CON_DESTINO').AsInteger := 2
   else
   if i_Destino = 2 then
      DataSet.FieldByName('CON_DESTINO').AsInteger := 1
end;

procedure TFrConfigServer.DBConfigServersAfterPost(DataSet: TDataSet);
begin
   // grava os dados no arquivo
   DBConfigServers.SaveToFile('ConfigConections.dat',sfBinary);

   // Atualiza o cursor
   DataSet.Refresh;

   b_LiberaGravar := false;
end;

procedure TFrConfigServer.DBConfigServersBeforeCancel(DataSet: TDataSet);
begin
   b_LiberaGravar := false;
end;

procedure TFrConfigServer.DBConfigServersBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrConfigServer.DBConfigServersBeforeEdit(DataSet: TDataSet);
begin
   case DataSet.FieldByName('CON_DESTINO').AsInteger of
      1 : i_Destino := 1;
      2 : i_Destino := 2;
   end;
end;

procedure TFrConfigServer.DBConfigServersBeforeInsert(DataSet: TDataSet);
begin
   case DataSet.FieldByName('CON_DESTINO').AsInteger of
      1 : i_Destino := 1;
      2 : i_Destino := 2;
   end;
end;

procedure TFrConfigServer.DBConfigServersBeforePost(DataSet: TDataSet);
begin
   // Confere o preenchimento
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar a Descrição.','TechCore-PDV',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;

   if eHost.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar o endereço do Servidor.','TechCore-PDV',mb_IconStop or mb_Ok);
      eHost.SetFocus;
      Abort;
   end;

   if eProtocolo.ItemIndex < 0 then
   begin
      Application.MessageBox('Obrigatório informar o Protocolo de Comunicação.','TechCore-PDV',mb_IconStop or mb_Ok);
      eProtocolo.SetFocus;
      Abort;
   end;

   if ePorta.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar a Porta de Comunicação.','TechCore-PDV',mb_IconStop or mb_Ok);
      ePorta.SetFocus;
      Abort;
   end;

   if eDestino.ItemIndex < 0 then
   begin
      Application.MessageBox('Obrigatório informar o Destino da Conexão.','TechCore-PDV',mb_IconStop or mb_Ok);
      eDestino.SetFocus;
      Abort;
   end;

   if eDataBase.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar o caminho do Banco de Dados.','TechCore-PDV',mb_IconStop or mb_Ok);
      eDataBase.SetFocus;
      Abort;
   end;


end;

procedure TFrConfigServer.DBCon_TesteAfterConnect(Sender: TObject);
begin
   b_LiberaGravar := true;
end;

procedure TFrConfigServer.DBCon_TesteError(ASender, AInitiator: TObject; var AException: Exception);
begin
   b_LiberaGravar := false;
   //Application.MessageBox(pchar('Não foi possivel conectar ao banco de dados.' +#13#10+ AException.Message),'TechCore',mb_IconStop or mb_Ok);
end;

procedure TFrConfigServer.DSConfigServersStateChange(Sender: TObject);
begin
   if DBConfigServers.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes;

   // Ativa ou desativa o painel
   pnDetalhes.Enabled := DBConfigServers.State in [dsInsert,dsEdit];
end;

procedure TFrConfigServer.eDataBaseButtonClick(Sender: TObject);
begin
   // Localizar o banco de dados do sistema
   if OpenDlg.Execute then
      eDataBase.Text := OpenDlg.FileName;
end;

procedure TFrConfigServer.eDescricaoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrConfigServer.eDescricaoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrConfigServer.FormCreate(Sender: TObject);
begin
   // Ajusta o formulário na criação
   pgControl.ActivePage := tabPrinicpal;

   // Checa existe o arquivo de configuração das conexões
   if not FileExists('ConfigConections.dat') then
      DBConfigServers.Open
   else
   begin
      DBConfigServers.LoadFromFile('ConfigConections.dat', sfBinary);
      DBConfigServers.Open;
   end;

end;

procedure TFrConfigServer.IdTCPClient1Connected(Sender: TObject);
begin
   IdTCPClient1.Disconnect;
end;

end.
