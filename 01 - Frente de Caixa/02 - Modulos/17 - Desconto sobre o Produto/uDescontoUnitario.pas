unit uDescontoUnitario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, RzCmboBx, RzLabel, Vcl.ExtCtrls, JvExMask, JvToolEdit,
  JvBaseEdits, Data.DB, JvExStdCtrls, JvCombobox, Vcl.Menus, ACBrBase,
  ACBrEnterTab;

type
  TFrDescontoUnitario = class(TForm)
    Panel6: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    lb_valor_desconto: TLabel;
    ed_valor_desconto: TJvCalcEdit;
    ed_item_cupom: TRzNumericEdit;
    Label1: TLabel;
    ed_tipo_desconto: TJvComboBox;
    Label2: TLabel;
    Pop00: TPopupMenu;
    S1: TMenuItem;
    N1: TMenuItem;
    T1: TMenuItem;
    A1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrDescontoUnitario: TFrDescontoUnitario;

implementation

uses
   uVendas;

{$R *.dfm}

procedure TFrDescontoUnitario.FormShow(Sender: TObject);
begin
   FrDescontoUnitario.Left := FrVendas.pn_Principal.Left + 46;
   FrDescontoUnitario.Top  := FrVendas.pn_Principal.Top  + 400;
end;

procedure TFrDescontoUnitario.S1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrDescontoUnitario.T1Click(Sender: TObject);
begin
   case ed_tipo_desconto.ItemIndex of
      0 :
      begin
         ed_tipo_desconto.ItemIndex := 1;
         ed_valor_desconto.Value    := 0;
         lb_valor_desconto.Caption  := 'R$ - Valor';
      end;

      1 :
      begin
         ed_tipo_desconto.ItemIndex := 0;
         ed_valor_desconto.Value    := 0;
         lb_valor_desconto.Caption  := '% - Margem';
      end;
   end;

   ed_item_cupom.SetFocus;
end;

end.
