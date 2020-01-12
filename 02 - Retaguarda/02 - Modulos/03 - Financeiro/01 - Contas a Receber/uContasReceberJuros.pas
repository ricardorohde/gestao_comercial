unit uContasReceberJuros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ACBrBase, ACBrEnterTab,
  JvToolEdit, JvBaseEdits, JvDBControls, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvSpin, JvDBSpinEdit, Vcl.ExtCtrls, RzPanel, RzDlgBtn, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrContasReceberJuros = class(TForm)
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
    QueryID: TIntegerField;
    QueryREC_JUROS: TFMTBCDField;
    QueryREC_JUROS_CAREN: TIntegerField;
    QueryREC_MULTA: TFMTBCDField;
    QueryREC_MULTA_CAREN: TIntegerField;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrContasReceberJuros: TFrContasReceberJuros;

implementation

{$R *.dfm}

uses uContasReceber;

procedure TFrContasReceberJuros.FormShow(Sender: TObject);
begin
   {Carrega a conta selecionada}
   Query.ParamByName('id').AsInteger := FrContasReceber.QueryContasID_C10.AsInteger;
   Query.Open();

   {Cursor em edição}
   Query.Edit;
end;

procedure TFrContasReceberJuros.QueryAfterPost(DataSet: TDataSet);
begin
   Application.MessageBox('Dados alteradas com sucesso.','TechCore-RTG',mb_IconInformation or mb_ok);
   Self.ModalResult := mrOk;
end;

procedure TFrContasReceberJuros.QueryBeforePost(DataSet: TDataSet);
begin
   if edCarenciajuros.AsInteger < 0 then
   begin
      Application.MessageBox('Informe o tempo de carência antes de aplicaro Juros informado.','TechCore-RTG',mb_IconStop or mb_ok);
      edCarenciaJuros.SetFocus;
      Abort;
   end;

   if edJuros.AsInteger < 0 then
   begin
      Application.MessageBox('Informe o percentual de juros a ser aplicado após a carência.','TechCore-RTG',mb_IconStop or mb_ok);
      edJuros.SetFocus;
      Abort;
   end;

   if edCarenciaMulta.AsInteger < 0 then
   begin
      Application.MessageBox('Informe o tempo de carência antes de aplicar a Multa por Atraso.','TechCore-RTG',mb_IconStop or mb_ok);
      edCarenciaMulta.SetFocus;
      Abort;
   end;

   if edMulta.AsInteger < 0 then
   begin
      Application.MessageBox('Informe o Valor da Multa a ser aplicado após a carência.','TechCore-RTG',mb_IconStop or mb_ok);
      edMulta.SetFocus;
      Abort;
   end;
end;

procedure TFrContasReceberJuros.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Query.Post;
end;

end.
