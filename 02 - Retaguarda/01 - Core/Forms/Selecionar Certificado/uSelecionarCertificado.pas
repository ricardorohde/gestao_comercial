unit uSelecionarCertificado;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, ExtCtrls, Buttons, RzPanel, RzDlgBtn;

type

  { TfrSelecionarCertificado }

  TFrSelecionarCertificado = class(TForm)
    StringGrid1: TStringGrid;
    RzDialogButtons1: TRzDialogButtons;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrSelecionarCertificado: TFrSelecionarCertificado;

implementation

{$R *.dfm}

end.

