unit uOperadorasCartoes;

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
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, JvSpin, JvDBSpinEdit;

type
  TFrOperadorasCartoes = class(TForm)
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
    Label2: TLabel;
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
    RzGroupBox1: TRzGroupBox;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label4: TLabel;
    Label7: TLabel;
    RzGroupBox3: TRzGroupBox;
    Label6: TLabel;
    Label13: TLabel;
    JvDBCalcEdit3: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Label5: TLabel;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryOPE_CODIGO: TIntegerField;
    QueryOPE_DATA_REG: TSQLTimeStampField;
    QueryOPE_DESCRICAO: TStringField;
    QueryOPE_TAXA_DEBITO: TBCDField;
    QueryOPE_TAXA_CREDITO: TBCDField;
    QueryOPE_TAXA_ANTECIPACAO: TBCDField;
    QueryOPE_PRAZO_DEBITO: TIntegerField;
    QueryOPE_PRAZO_CREDITO: TIntegerField;
    QueryOPE_STATUS: TIntegerField;
    JvDBSpinEdit1: TJvDBSpinEdit;
    JvDBSpinEdit2: TJvDBSpinEdit;
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure dsQueryStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure tbDadosGTW_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOperadorasCartoes: TFrOperadorasCartoes;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrOperadorasCartoes.actAlterarExecute(Sender: TObject);
begin
   Query.Edit;
end;

procedure TFrOperadorasCartoes.actAlterarUpdate(Sender: TObject);
begin
   if Query.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrOperadorasCartoes.actCadastrarExecute(Sender: TObject);
begin
   Query.Insert;
end;

procedure TFrOperadorasCartoes.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrOperadorasCartoes.actCancelarExecute(Sender: TObject);
begin
   Query.Cancel;
end;

procedure TFrOperadorasCartoes.actExcluirExecute(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrOperadorasCartoes.actGravarExecute(Sender: TObject);
begin
   Query.Post;
end;

procedure TFrOperadorasCartoes.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := Query.State in [dsInsert,dsEdit];
end;

procedure TFrOperadorasCartoes.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrOperadorasCartoes.dsQueryStateChange(Sender: TObject);
begin
   if Query.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrOperadorasCartoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrOperadorasCartoes );
end;

procedure TFrOperadorasCartoes.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if Query.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrOperadorasCartoes.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos os grupos de produtos}
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.Open();
end;

procedure TFrOperadorasCartoes.QueryAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrOperadorasCartoes.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrOperadorasCartoes.QueryBeforePost(DataSet: TDataSet);
begin
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;
end;

procedure TFrOperadorasCartoes.tbDadosGTW_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrOperadorasCartoes.QueryNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('ID_EMPRESA').AsInteger    := FEmpresaClass.ID;
   DataSet.FieldByName('GTW_DATA_REG').AsDateTime := now;
   DataSet.FieldByName('GTW_STATUS').AsInteger    := 1;
end;

end.
