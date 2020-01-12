unit uTipoFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzDlgBtn, Vcl.ExtCtrls, RzPanel,
  RzRadGrp, RzDBRGrp;

type
  TFrTipoFornecedor = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzDBRadioGroup1: TRzDBRadioGroup;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrTipoFornecedor: TFrTipoFornecedor;

implementation

uses
   uFornecedor, uModuloRet;

{$R *.dfm}

procedure TFrTipoFornecedor.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

end.
