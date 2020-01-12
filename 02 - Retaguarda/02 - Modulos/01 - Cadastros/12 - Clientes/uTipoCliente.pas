unit uTipoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzRadGrp, RzDBRGrp,
  Vcl.ExtCtrls, RzDlgBtn;

type
  TFrTipoCliente = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzDBRadioGroup1: TRzDBRadioGroup;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrTipoCliente: TFrTipoCliente;

implementation

uses
   uClientes;

{$R *.dfm}

procedure TFrTipoCliente.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Self.ModalResult := mrOk
end;

end.
