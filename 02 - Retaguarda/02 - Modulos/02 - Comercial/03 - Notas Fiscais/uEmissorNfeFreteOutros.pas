unit uEmissorNfeFreteOutros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Data.DB, JvDataSource, ACBrBase, ACBrEnterTab;

type
  TFrEmissorNfeFreteOutros = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Label1: TLabel;
    eValorFrete: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    dsDados: TJvDataSource;
    ACBrEnterTab1: TACBrEnterTab;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Label4: TLabel;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEmissorNfeFreteOutros: TFrEmissorNfeFreteOutros;

implementation

{$R *.dfm}

procedure TFrEmissorNfeFreteOutros.FormCreate(Sender: TObject);
begin
   // Se não houver frete, desabilita o campo frete
   if dsDados.DataSet.FieldByName('NFE_TIPO_FRETE').AsInteger = 5 then
      eValorFrete.Enabled := false;
end;

procedure TFrEmissorNfeFreteOutros.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

end.
