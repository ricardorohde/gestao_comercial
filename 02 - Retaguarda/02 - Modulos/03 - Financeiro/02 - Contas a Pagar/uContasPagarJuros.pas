unit uContasPagarJuros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ACBrBase, ACBrEnterTab,
  JvToolEdit, JvBaseEdits, JvDBControls, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvSpin, JvDBSpinEdit, Vcl.ExtCtrls, RzPanel, RzDlgBtn, RzDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrContasPagarJuros = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Label1: TLabel;
    Label2: TLabel;
    edCarenciaJuros: TJvDBSpinEdit;
    edJuros: TJvDBCalcEdit;
    edCarenciaMulta: TJvDBSpinEdit;
    edMulta: TJvDBCalcEdit;
    ACBrEnterTab1: TACBrEnterTab;
    dsQuery: TDataSource;
    Query: TFDQuery;
    QueryPAG_JUROS_CAREN: TIntegerField;
    QueryPAG_MULTA_CAREN: TIntegerField;
    QueryID: TLargeintField;
    QueryPAG_JUROS: TFMTBCDField;
    QueryPAG_MULTA: TFMTBCDField;
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrContasPagarJuros: TFrContasPagarJuros;

implementation

{$R *.dfm}

uses uContasPagar, uModuloRet;

procedure TFrContasPagarJuros.FormShow(Sender: TObject);
begin
   {Carrega a conta selecionada}
   Query.ParamByName('id').AsInteger := FrContasPagar.QueryContasID_C10.AsInteger;
   Query.Open();

   {Cursor em edição}
   Query.Edit;
end;

procedure TFrContasPagarJuros.QueryAfterPost(DataSet: TDataSet);
begin
   Application.MessageBox('Dados alterados com sucesso.','TechCore-RTG',mb_IconInformation or mb_ok);
   Self.ModalResult := mrOk;
end;

procedure TFrContasPagarJuros.QueryBeforePost(DataSet: TDataSet);
begin
   if edCarenciaJuros.AsInteger < 0 then
   begin
      Application.MessageBox('Informe a quantidade de dias da carência dos juros.','TechCore-RTG',mb_IconStop or mb_ok);
      edCarenciaJuros.SetFocus;
      Abort;
   end;

   if edJuros.Field.AsInteger < 0 then
   begin
      Application.MessageBox('Informe a taxa de juros.','TechCore-RTG',mb_IconStop or mb_ok);
      edJuros.SetFocus;
      Abort;
   end;

   if edCarenciaMulta.AsInteger < 0 then
   begin
      Application.MessageBox('Informe a quantidade de dias da Carência da Multa.','TechCore-RTG',mb_IconStop or mb_ok);
      edCarenciaMulta.SetFocus;
      Abort;
   end;

   if edMulta.Field.AsInteger < 0 then
   begin
      Application.MessageBox('Informe o valor da Multa.','TechCore-RTG',mb_IconStop or mb_ok);
      edMulta.SetFocus;
      Abort;
   end;

end;

procedure TFrContasPagarJuros.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Query.Post;
end;

end.
