unit uGatewaysPagtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzPanel, RzRadGrp,
  RzDBRGrp, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls,
  JvExComCtrls, JvComCtrls, RzButton, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, JvExStdCtrls, JvCombobox,
  JvDBCombobox;

type
  TFrGatewaysPagtos = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnError: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    RzDBRadioGroup1: TRzDBRadioGroup;
    eDataReg: TRzDBEdit;
    eDescricao: TRzDBEdit;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    tbDados: TFDQuery;
    dsDados: TJvDataSource;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosPLN_ID_CONTAS: TStringField;
    tbDadosPLN_DESCRICAO: TStringField;
    tbDadosPLN_TIPO: TStringField;
    tbDadosPLN_STATUS: TStringField;
    JvDBComboBox1: TJvDBComboBox;
    Label4: TLabel;
    RzEdit1: TRzEdit;
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure dsDadosStateChange(Sender: TObject);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrGatewaysPagtos: TFrGatewaysPagtos;

implementation

uses
   Classe.Empresa, uModulo;

{$R *.dfm}

procedure TFrGatewaysPagtos.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrGatewaysPagtos.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrGatewaysPagtos.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrGatewaysPagtos.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrGatewaysPagtos.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrGatewaysPagtos.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrGatewaysPagtos.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrGatewaysPagtos.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrGatewaysPagtos.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrGatewaysPagtos.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrGatewaysPagtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrGatewaysPagtos );
end;

procedure TFrGatewaysPagtos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrGatewaysPagtos.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrGatewaysPagtos.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrGatewaysPagtos.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrGatewaysPagtos.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrGatewaysPagtos.tbDadosBeforePost(DataSet: TDataSet);
begin
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;
end;

procedure TFrGatewaysPagtos.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   DataSet.FieldByName('PLN_STATUS').AsInteger := 'S';
end;

end.
