unit uPlanoContasPadroes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzDlgBtn, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzDBBnEd,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel;

type
  TFrPlanoContasPadroes = class(TForm)
    RzPanel2: TRzPanel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    Label1: TLabel;
    edPDV: TRzDBButtonEdit;
    Label2: TLabel;
    edPedVendas: TRzDBButtonEdit;
    Label3: TLabel;
    edNFeEntrada: TRzDBButtonEdit;
    Label4: TLabel;
    edNFeSaida: TRzDBButtonEdit;
    Label5: TLabel;
    edPedCompras: TRzDBButtonEdit;
    RzDialogButtons1: TRzDialogButtons;
    Query: TFDQuery;
    dsQuery: TDataSource;
    Label6: TLabel;
    edOrdensServicos: TRzDBButtonEdit;
    Label7: TLabel;
    edContaPagar: TRzDBButtonEdit;
    Label8: TLabel;
    edContasReceber: TRzDBButtonEdit;
    QueryEMP_PLN_PDV: TIntegerField;
    QueryEMP_PLN_PED_V: TIntegerField;
    QueryEMP_PLN_PED_C: TIntegerField;
    QueryEMP_PLN_NFE_E: TIntegerField;
    QueryEMP_PLN_NFE_S: TIntegerField;
    QueryEMP_PLN_OS: TIntegerField;
    QueryEMP_PLN_CTAS_PAGAR: TIntegerField;
    QueryEMP_PLN_CTAS_RECEB: TIntegerField;
    QueryPLN_PDV: TStringField;
    QueryPLN_PED_V: TStringField;
    QueryPLN_PED_C: TStringField;
    QueryPLN_NFE_S: TStringField;
    QueryPLN_NFE_E: TStringField;
    QueryPLN_OS: TStringField;
    QueryEMP_PLN_CTAS_PG: TStringField;
    QueryEMP_PLN_CTAS_RB: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure edPDVButtonClick(Sender: TObject);
    procedure RzDialogButtons1ClickCancel(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure QueryAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPlanoContasPadroes: TFrPlanoContasPadroes;

implementation

{$R *.dfm}

uses uModuloRet, Classe.Empresa, uListaPlanoContas;

procedure TFrPlanoContasPadroes.edPDVButtonClick(Sender: TObject);
begin
   {Coloca o cursor em modo de edição}
   Query.Edit;

   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);
      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         Query.FieldByName('emp_pln_pdv').AsInteger := FrListaPlanoContas.QueryID.AsInteger;
         Query.FieldByName('pln_pdv').AsString      := FrListaPlanoContas.QueryPLN_DESCRICAO_II.AsString;
      end;
   finally
      FreeAndNil( FrListaPlanoContas );
   end;
end;

procedure TFrPlanoContasPadroes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrPlanoContasPadroes );
end;

procedure TFrPlanoContasPadroes.FormCreate(Sender: TObject);
begin
   {Carrega os dados da empresa ativa}
   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.Open();
end;

procedure TFrPlanoContasPadroes.QueryAfterPost(DataSet: TDataSet);
begin
   Self.ModalResult := mrOK;
end;

procedure TFrPlanoContasPadroes.QueryBeforePost(DataSet: TDataSet);
begin
   {Se não for informado o plano de contas das opções, mantem o valor nulo}
   if edPDV.Text = EmptyStr then
      Query.FieldByName('emp_pln_pdv').Clear;

   if edPedVendas.Text = EmptyStr then
      Query.FieldByName('emp_pln_ped_v').Clear;

   if edPedCompras.Text = EmptyStr then
      Query.FieldByName('emp_pln_ped_c').Clear;

   if edNFeEntrada.Text = EmptyStr then
      Query.FieldByName('emp_pln_nfe_e').Clear;

   if edNFeSaida.Text = EmptyStr then
      Query.FieldByName('emp_pln_nfe_s').Clear;

   if edOrdensServicos.Text = EmptyStr then
      Query.FieldByName('emp_pln_os').Clear;

   if edContaPagar.Text = EmptyStr then
      Query.FieldByName('emp_pln_ctas_pagar').Clear;

   if edContasReceber.Text = EmptyStr then
      Query.FieldByName('emp_pln_ctas_receb').Clear;

   {Confirma se grava as informações}
   if Application.MessageBox('Tem certeza que deseja gravar as informações?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrPlanoContasPadroes.RzDialogButtons1ClickCancel(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPlanoContasPadroes.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Query.Post;
end;

end.
