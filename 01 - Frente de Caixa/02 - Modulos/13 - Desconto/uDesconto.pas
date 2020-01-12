unit uDesconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Math, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, RzPanel,
  JvExStdCtrls, JvCombobox, Vcl.Menus, Data.DB;

type
  TFrDesconto = class(TForm)
    Shape2: TShape;
    ed_tipo_desconto: TJvComboBox;
    Label1: TLabel;
    Label2: TLabel;
    lb_valor_desconto: TLabel;
    ed_valor_desconto: TJvCalcEdit;
    Pop00: TPopupMenu;
    V1: TMenuItem;
    N1: TMenuItem;
    S1: TMenuItem;
    T1: TMenuItem;
    dsCupom: TDataSource;
    procedure V1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    r_SubTotal : Real;
  end;

var
  FrDesconto: TFrDesconto;

implementation

uses
   uVendas, Classe.Operador, Classe.Vendedor, Classe.Cupom, uPrincipal;

{$R *.dfm}

procedure TFrDesconto.S1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrDesconto.T1Click(Sender: TObject);
begin
   case ed_tipo_desconto.ItemIndex of
      0 :
      begin
         ed_tipo_desconto.ItemIndex := 1;
         ed_valor_desconto.DisplayFormat := ',0.00%';
      end;

      1 :
      begin
         ed_tipo_desconto.ItemIndex := 0;
         ed_valor_desconto.DisplayFormat := ',0.00';
      end;
   end;
end;

procedure TFrDesconto.V1Click(Sender: TObject);
var
   rSubA, rSubB, rSubC, rSubD : Real;
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        23/02/2019
      Descrição:  Impede de inserir um valor negativo
   ------------------------------------------------------------------------------------- }
   if ed_valor_desconto.Value < 0 then
   begin
      Imprime_display('o valor do desconto não pode ser negativo', clRed);
      Sleep(1000);
      Imprime_display_anterior;
      Abort;
   end;


   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        23/02/2019
      Descrição:  Efetua o calculo do desconto para o tipo [Valor]
   ------------------------------------------------------------------------------------- }
   if ed_tipo_desconto.ItemIndex = 0 then
   begin
      rSubA := r_SubTotal - ed_valor_desconto.Value;
      rSubB := RoundTo( rSubA / r_SubTotal, -2 ) * 100;
      rSubC := ( 100 - rSubB );
      rSubD := ed_valor_desconto.Value;

      if Obj_Vendedores.F_Margem_Desconto < rSubC then
      begin
         Imprime_display('valor do desconto maior do que permitido', clRed);
         Sleep(1500);
         Imprime_display_anterior;
         Abort;
      end;

   end;

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        23/02/2019
      Descrição:  Efetua o calculo do desconto para o tipo [Porcentagem]
   ------------------------------------------------------------------------------------- }
   if ed_tipo_desconto.ItemIndex = 1 then
   begin

      if Obj_Vendedores.F_Margem_Desconto < ed_valor_desconto.Value then
      begin
         Imprime_display('margem de desconto maior do que permitido', clRed);
         Sleep(1500);
         Imprime_display_anterior;
         Abort;
      end;

      rSubD := (r_SubTotal * ed_valor_desconto.Value) / 100

   end;


   // Fecha o cormulário confirmado o desconto
   try
      dsCupom.DataSet.Edit;
      dsCupom.DataSet.FieldByName('F_VLR_DESCONTO').AsFloat := rSubD;
      dsCupom.DataSet.Post;

      Cupom_Fiscal.F_Vlr_Desconto := rSubD;
      Self.ModalResult            := mrOk;

   except
      Imprime_display('erro ao aplicar o desconto', clRed);
      Sleep(1500);
      Imprime_display_anterior;
      Abort;
   end;

end;

end.
