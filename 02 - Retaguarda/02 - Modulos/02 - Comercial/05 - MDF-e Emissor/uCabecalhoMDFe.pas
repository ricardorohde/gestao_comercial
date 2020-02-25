unit uCabecalhoMDFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, Vcl.StdCtrls,
  Vcl.DBCtrls, RzDBEdit, RzDBBnEd, Vcl.Mask, RzEdit, RzCmboBx, RzDBCmbo,
  Data.DB, Vcl.ComCtrls, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker,
  RzDTP, RzDBDTP;

type
  TFrCabecalhoMDFe = class(TForm)
    cbTipoModal: TRzDBComboBox;
    Label17: TLabel;
    Label14: TLabel;
    cbUnidade: TRzDBComboBox;
    txtDhSaida: TRzDBEdit;
    Label8: TLabel;
    txtDhEmissao: TRzDBEdit;
    Label4: TLabel;
    txtUfCarregamento: TRzDBButtonEdit;
    Label9: TLabel;
    txtMunicipio: TRzDBEdit;
    cbUfFinal: TRzDBComboBox;
    Label11: TLabel;
    RzDBMemo1: TRzDBMemo;
    Label12: TLabel;
    Label15: TLabel;
    RzDBMemo2: TRzDBMemo;
    cbTipoTransportadorar: TRzDBComboBox;
    Label10: TLabel;
    Label16: TLabel;
    Label13: TLabel;
    cbPeso: TJvDBCalcEdit;
    txtValor: TJvDBCalcEdit;
    RzDialogButtons1: TRzDialogButtons;
    dsQuery: TDataSource;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure txtUfCarregamentoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCabecalhoMDFe: TFrCabecalhoMDFe;

implementation

{$R *.dfm}

uses uEmissorMDFe, uMunicipios;

procedure TFrCabecalhoMDFe.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

procedure TFrCabecalhoMDFe.txtUfCarregamentoButtonClick(Sender: TObject);
begin
   FrMunicipios := TFrMunicipios.Create(self);
   try
      if FrMunicipios.ShowModal = mrOk then
      begin
         with dsQuery.DataSet do
         begin
            FieldByName('md_uf_inicial').AsString    := FrMunicipios.cbUF.Text;
            FieldByName('md_nom_municipio').AsString := FrMunicipios.txtMunicipio.Text;
            FieldByName('md_cod_municipio').AsString := FrMunicipios.Query.FieldByName('id').AsString;
         end;
      end;

   finally
      FreeAndNil(FrMunicipios);
   end;
end;

end.
