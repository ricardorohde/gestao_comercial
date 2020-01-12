unit uCondicoesPagtos;

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
  JvExControls, JvDBLookup, RzRadChk, RzDBChk, JvExMask, JvSpin,
  JvDBSpinEdit, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.DBCtrls,
  JvToolEdit, JvBaseEdits, JvDBControls, JvDBSearchComboBox;

type
  TFrCondicoesPagtos = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
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
    eCodigo: TRzDBEdit;
    eDataReg: TRzDBEdit;
    eDescricao: TRzDBEdit;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    Query: TFDQuery;
    dsQuery: TJvDataSource;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryID_FORMA_PAGTO: TIntegerField;
    QueryID_BANDEIRA_CARTAO: TIntegerField;
    QueryID_GATEWAY: TIntegerField;
    QueryID_ADMINISTRADORA: TIntegerField;
    QueryCND_CODIGO: TIntegerField;
    QueryCND_DATA_REG: TSQLTimeStampField;
    QueryCND_DESCRICAO: TStringField;
    QueryCND_STATUS: TIntegerField;
    QueryFRM_DESCRICAO: TStringField;
    QueryGTW_DESCRICAO: TStringField;
    QueryBND_DESCRICAO: TStringField;
    QueryADM_DESCRICAO: TStringField;
    Label4: TLabel;
    QueryFormas: TFDQuery;
    dsQueryFormas: TJvDataSource;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    JvSpinEdit1: TJvSpinEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvSpinEdit2: TJvSpinEdit;
    JvDBSearchComboBox2: TJvDBSearchComboBox;
    JvDBSearchComboBox3: TJvDBSearchComboBox;
    Label7: TLabel;
    Label10: TLabel;
    QueryBandeiras: TFDQuery;
    dsQueryBandeiras: TJvDataSource;
    QueryAdministradoras: TFDQuery;
    dsQueryAdministradoras: TJvDataSource;
    JvDBLookupCombo1: TJvDBLookupCombo;
    QueryFormasID: TIntegerField;
    QueryFormasFRM_CODIGO: TIntegerField;
    QueryFormasFRM_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QueryCND_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure dsQueryStateChange(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSairExecute(Sender: TObject);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCondicoesPagtos: TFrCondicoesPagtos;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrCondicoesPagtos.actAlterarExecute(Sender: TObject);
begin
   Query.Edit;
end;

procedure TFrCondicoesPagtos.actAlterarUpdate(Sender: TObject);
begin
   if Query.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrCondicoesPagtos.actCadastrarExecute(Sender: TObject);
begin
   Query.Insert;
end;

procedure TFrCondicoesPagtos.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrCondicoesPagtos.actCancelarExecute(Sender: TObject);
begin
   Query.Cancel;
end;

procedure TFrCondicoesPagtos.actExcluirExecute(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrCondicoesPagtos.actGravarExecute(Sender: TObject);
begin
   Query.Post;
end;

procedure TFrCondicoesPagtos.actGravarUpdate(Sender: TObject);
begin
   if Query.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := Query.State in [dsInsert,dsEdit];
end;

procedure TFrCondicoesPagtos.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrCondicoesPagtos.dsQueryStateChange(Sender: TObject);
begin
   if Query.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;

end;

procedure TFrCondicoesPagtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrCondicoesPagtos );
end;

procedure TFrCondicoesPagtos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if Query.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrCondicoesPagtos.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega os Formas de Pagamentos}
   QueryFormas.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   QueryFormas.Open();

   {Carrega as Bandeiras}
   QueryBandeiras.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   QueryBandeiras.Open();

   {Carrega as Administradoras}
   QueryAdministradoras.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   QueryAdministradoras.Open();

   {Carrega as Condições de Pagamentos}
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.Open();
end;

procedure TFrCondicoesPagtos.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := Query.State in [dsInsert,dsEdit];
end;

procedure TFrCondicoesPagtos.QueryAfterPost(DataSet: TDataSet);
begin
   Query.Refresh;
end;

procedure TFrCondicoesPagtos.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrCondicoesPagtos.QueryBeforePost(DataSet: TDataSet);
begin

   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;

end;

procedure TFrCondicoesPagtos.QueryCND_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'S';
         2 : Text := 'N';
      end;
   end
   else
      Text := Sender.AsString;
end;

procedure TFrCondicoesPagtos.QueryNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('CND_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('CND_STATUS').AsInteger    := 1;
end;

end.
