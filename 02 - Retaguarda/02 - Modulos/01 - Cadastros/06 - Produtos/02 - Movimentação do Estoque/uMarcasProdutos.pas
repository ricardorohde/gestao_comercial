unit uMarcasProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, JvDataSource,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzPanel, RzRadGrp, RzDBRGrp,
  RzButton, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls,
  JvExComCtrls, JvComCtrls, RzRadChk, RzDBChk, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, JvImage, RzCmboBx, RzDBCmbo, RzDBBnEd, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls;

type
  TFrMarcasProdutos = class(TForm)
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
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
    Query: TFDQuery;
    dsQuery: TJvDataSource;
    RzPanel2: TRzPanel;
    Label42: TLabel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBMemo1: TRzDBMemo;
    txtProduto: TRzDBButtonEdit;
    txtObservacoes: TRzDBMemo;
    txtTipo: TRzDBComboBox;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryID_PRODUTO: TIntegerField;
    QueryMOV_DATA_REG: TDateField;
    QueryMOV_TIPO: TIntegerField;
    QueryMOV_QTDE: TBCDField;
    QueryMOV_OBSERVACAO: TStringField;
    txtQuant: TJvDBCalcEdit;
    QueryPRD_DESCRICAO: TStringField;
    QueryPRD_UNIDADE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure dsQueryStateChange(Sender: TObject);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure actSairUpdate(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMarcasProdutos: TFrMarcasProdutos;

implementation

{$R *.dfm}

uses uPrincipal, Classe.Empresa, uModuloRet;

procedure TFrMarcasProdutos.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrMarcasProdutos.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrMarcasProdutos.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrMarcasProdutos.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrMarcasProdutos.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrMarcasProdutos.actExcluirExecute(Sender: TObject);
begin
   tbdados.Delete;
end;

procedure TFrMarcasProdutos.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrMarcasProdutos.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrMarcasProdutos.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrMarcasProdutos.actSairUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrMarcasProdutos.dsQueryStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrMarcasProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrMarcasProdutos );
end;

procedure TFrMarcasProdutos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrMarcasProdutos.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrMarcasProdutos.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrMarcasProdutos.QueryAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrMarcasProdutos.QueryBeforePost(DataSet: TDataSet);
begin
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;
end;

procedure TFrMarcasProdutos.QueryNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('MOV_DATA_REG').AsDateTime := now;
end;

end.
