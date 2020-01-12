unit uFreteOutros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Data.DB, JvDataSource;

type
  TFrFreteOutros = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Label1: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    dsDados: TJvDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrFreteOutros: TFrFreteOutros;

implementation

{$R *.dfm}

end.
