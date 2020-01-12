unit uPedidosVendasDataValor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzDlgBtn, JvToolEdit, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvBaseEdits, Vcl.ExtCtrls, RzPanel, ACBrUtil,
  ACBrBase, ACBrEnterTab, Vcl.DBCtrls, RzDBEdit, RzEdit, JvSpin;

type
  TFrPedidosVendasDataValor = class(TForm)
    RzPanel5: TRzPanel;
    eValor: TJvCalcEdit;
    eData: TJvDateEdit;
    RzDialogButtons1: TRzDialogButtons;
    ACBrEnterTab1: TACBrEnterTab;
    pnTitulo: TRzPanel;
    eObservacao: TRzMemo;
    ed_parcelas: TJvSpinEdit;
    ed_dias_entre: TJvSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ed_parcelasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    eValorPedido, eValorInseridos : Double;
    iFormaPagto : Integer;
  end;

var
  FrPedidosVendasDataValor: TFrPedidosVendasDataValor;

implementation

{$R *.dfm}

procedure TFrPedidosVendasDataValor.ed_parcelasChange(Sender: TObject);
begin
   ed_dias_entre.Enabled := ed_parcelas.AsInteger > 1;
end;

procedure TFrPedidosVendasDataValor.FormCreate(Sender: TObject);
begin
   TEdit(eObservacao).CharCase := ecUpperCase;
end;

procedure TFrPedidosVendasDataValor.FormShow(Sender: TObject);
begin
   // Se dinheiro desabilita parcelas
   ed_parcelas.Enabled := not (iFormaPagto in [1,13,90,99]);

   eValor.Value := (eValorPedido - eValorInseridos);
end;

procedure TFrPedidosVendasDataValor.RzDialogButtons1ClickOk(Sender: TObject);
var
   rSAldoParcela : Double;
begin

   // Checa o preenchimento dos campos
   if OnlyNumber( eData.Text ) = '' then
   begin
      Application.MessageBox('Erro, Informe a data do Vencimento da parcela.','TechCore-RTG',mb_IconStop or mb_Ok);
      eData.SetFocus;
      Abort;
   end;

   if ( iFormaPagto <> 90 ) and ( eValor.Value < 0.00 ) then
   begin
      Application.MessageBox('Erro, O valor informado não é válido.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValor.SetFocus;
      Abort;
   end;

   if eValor.Value = 0.00 then
   begin
      Application.MessageBox('Erro, Informe o Valor da parcela.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValor.SetFocus;
      Abort;
   end;

   rSAldoParcela := (eValor.Value + eValorInseridos) - 0.01;

   if rSAldoParcela > eValorPedido then
   begin
      Application.MessageBox('Erro, O valor informado é maior do que o saldo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValor.SetFocus;
      Abort;
   end;

   // Checa se foi informado a quantidade de parcelas
   if ed_parcelas.AsInteger > 1 then
   begin

      if ed_dias_entre.AsInteger < 1 then
      begin
         Application.MessageBox('Informe a quantidade de dias entre as parcelas','TechCore-RTG',mb_IconStop or mb_Ok);
         ed_dias_entre.SetFocus;
         Abort;
      end;

   end;

   Self.ModalResult := mrOk;

end;

end.
