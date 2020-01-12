unit uFormaPagtosValor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ACBrBase, ACBrEnterTab,
  RzDlgBtn, Vcl.StdCtrls, RzEdit, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits, Vcl.ExtCtrls, RzPanel, System.Math;

type
  TFrFormaPagtoValor = class(TForm)
    pnTitulo: TRzPanel;
    Pop00: TPopupMenu;
    Shape2: TShape;
    lb_forma_pagto: TLabel;
    S1: TMenuItem;
    RzPanel5: TRzPanel;
    ed_valor_pagto: TJvCalcEdit;
    N1: TMenuItem;
    S2: TMenuItem;
    procedure S2Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
  private
    { Private declarations }
  public
    iCodigoForma : Integer;
    r_SaldoPagar : Real;
  end;

var
  FrFormaPagtoValor: TFrFormaPagtoValor;

implementation

uses
   uVendas, uPrincipal;

{$R *.dfm}

procedure TFrFormaPagtoValor.S1Click(Sender: TObject);
var
   r_ValorInformado : Real;
begin
   // Armazena o valor digitado para comparação
   r_ValorInformado := ed_valor_pagto.Value;

   if ( iCodigoForma <> 1 ) and ( r_ValorInformado > r_SaldoPagar ) then
   begin
      Imprime_display('valor informado maior que o saldo a pagar', clRed);
      Sleep(1000);
      Imprime_display_anterior;
      Abort;
   end;

   if frVendas.QueryCupom.FieldByName('f_vlr_desconto').AsFloat < FrVendas.QueryCupom.FieldByName('f_vlr_receber').AsFloat then
   begin
      if ed_valor_pagto.Value <= 0 then
      begin
         Imprime_display('informe o valor a ser pago', clRed);
         Sleep(1000);
         Imprime_display_anterior;
         Abort;
      end;
   end;

   // Confirma a inclusão do valor
   Self.ModalResult := mrOk;
end;

procedure TFrFormaPagtoValor.S2Click(Sender: TObject);
begin
   Self.Close;
end;

end.
