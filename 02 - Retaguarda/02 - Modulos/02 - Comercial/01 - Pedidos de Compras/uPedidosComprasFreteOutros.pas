unit uPedidosComprasFreteOutros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Data.DB, JvDataSource, ACBrBase, ACBrEnterTab;

type
  TFrPedidosComprasFreteOutros = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Label1: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    dsDados: TJvDataSource;
    ACBrEnterTab1: TACBrEnterTab;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Label4: TLabel;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPedidosComprasFreteOutros: TFrPedidosComprasFreteOutros;

implementation

{$R *.dfm}

procedure TFrPedidosComprasFreteOutros.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

end.
