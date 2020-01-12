unit uContasCaixas;

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
  Vcl.Imaging.pngimage, JvImage, JvExStdCtrls, JvCombobox, JvDBCombobox,
  JvExControls, JvDBLookup, ACBrBase, ACBrEnterTab;

type
  TFrContasCaixas = class(TForm)
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
    RzPanel2: TRzPanel;
    Label42: TLabel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    eGrid: TJvDBGrid;
    tabDetalhes: TTabSheet;
    dsQuery: TDataSource;
    QueryID: TIntegerField;
    QueryID_EMP: TIntegerField;
    QueryCTA_CODIGO: TIntegerField;
    QueryCTA_DATA_REG: TSQLTimeStampField;
    QueryCTA_DESCRICAO: TStringField;
    QueryCTA_ATIVO: TStringField;
    RzPanel3: TRzPanel;
    RzDBEdit1: TRzDBEdit;
    RzDBRadioGroup1: TRzDBRadioGroup;
    eDescricao: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    Label1: TLabel;
    cbTipoConta: TJvDBComboBox;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    gpDescConta: TRzGroupBox;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    Label6: TLabel;
    Label5: TLabel;
    gpDescCartao: TRzGroupBox;
    RzDBEdit7: TRzDBEdit;
    Label7: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label8: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    QueryCTA_TIPO: TIntegerField;
    QueryCTA_AGENC_DIG: TStringField;
    QueryCTA_CONTA: TStringField;
    QueryCTA_CONTA_DIG: TStringField;
    QueryCTA_CRT_NUMERO: TStringField;
    QueryCTA_CRT_ID_BANDEIRA: TIntegerField;
    QueryCTA_AGENC: TStringField;
    QueryBND: TFDQuery;
    dsQueryBND: TDataSource;
    QueryBNDID: TIntegerField;
    QueryBNDBND_DESCRICAO: TStringField;
    RzDBRadioGroup2: TRzDBRadioGroup;
    QueryCTA_PDV: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure actSairUpdate(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure dsQueryStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbTipoContaChange(Sender: TObject);
    procedure eDescricaoEnter(Sender: TObject);
    procedure eDescricaoExit(Sender: TObject);
    procedure QueryAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrContasCaixas: TFrContasCaixas;

implementation

{$R *.dfm}

uses uPrincipal, Classe.Empresa, uModuloRet;

procedure TFrContasCaixas.actAlterarExecute(Sender: TObject);
begin
   Query.Edit;
end;

procedure TFrContasCaixas.actAlterarUpdate(Sender: TObject);
begin
   if Query.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrContasCaixas.actCadastrarExecute(Sender: TObject);
begin
   Query.Insert;
end;

procedure TFrContasCaixas.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrContasCaixas.actCancelarExecute(Sender: TObject);
begin
   Query.Cancel;
end;

procedure TFrContasCaixas.actExcluirExecute(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrContasCaixas.actGravarExecute(Sender: TObject);
begin
   Query.Post;
end;

procedure TFrContasCaixas.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := Query.State in [dsInsert,dsEdit];
end;

procedure TFrContasCaixas.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrContasCaixas.actSairUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( Query.State in [dsInsert,dsEdit] );
end;

procedure TFrContasCaixas.cbTipoContaChange(Sender: TObject);
begin
   {formata alguns campos}
   case cbTipoConta.ItemIndex + 1 of
      2 : begin
         gpDescConta.Caption  := ' Dados Poupança';
         gpDescConta.Enabled  := true;
         gpDescCartao.Enabled := false;
      end;

      3 : begin
         gpDescConta.Caption  := ' Dados da Conta';
         gpDescConta.Enabled  := true;
         gpDescCartao.Enabled := false;
      end;

      4,5 : begin
         gpDescConta.Caption  := ' Dados da Conta';
         gpDescConta.Enabled  := false;
         gpDescCartao.Enabled := true;
      end

      else
      begin
         gpDescConta.Caption  := ' Dados da Conta';
         gpDescConta.Enabled  := false;
         gpDescCartao.Enabled := false
      end;
   end;
end;

procedure TFrContasCaixas.dsQueryStateChange(Sender: TObject);
begin
   if Query.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrContasCaixas.eDescricaoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrContasCaixas.eDescricaoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrContasCaixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrContasCaixas );
end;

procedure TFrContasCaixas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if Query.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrContasCaixas.FormShow(Sender: TObject);
begin
   {Ajusta o formulário na criação}
   pgControl.ActivePage := tabPrincipal;

   {Carrega todos as contas cadastradas}
   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.Open();

   {Carrega as bandeiras}
   QueryBND.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   QueryBND.Open();

   {Ajusta o grid}
   eGrid.Columns[0].Width := 48;
   eGrid.Columns[1].Width := 124;
end;

procedure TFrContasCaixas.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := Query.State in [dsInsert,dsEdit];
end;

procedure TFrContasCaixas.QueryAfterEdit(DataSet: TDataSet);
begin
   cbTipoContaChange(nil);
end;

procedure TFrContasCaixas.QueryAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrContasCaixas.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrContasCaixas.QueryBeforePost(DataSet: TDataSet);
begin
   if eDescricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDescricao.SetFocus;
      Abort;
   end;
end;

procedure TFrContasCaixas.QueryNewRecord(DataSet: TDataSet);
begin
   {Dados básicos do cadastros}
   DataSet.FieldByName('id_emp').AsInteger        := FEmpresaClass.ID;
   DataSet.FieldByName('cta_data_reg').AsDateTime := Now;
   DataSet.FieldByName('cta_ativo').AsString      := 'S';
end;

end.
