unit uDecontoUnitario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, RzCmboBx, RzLabel, Vcl.ExtCtrls, JvExMask, JvToolEdit,
  JvBaseEdits, Data.DB;

type
  TFrDescontoUnitario = class(TForm)
    Panel2: TPanel;
    lb_valor_total: TRzLabel;
    Label3: TLabel;
    Label4: TLabel;
    DataSource1: TDataSource;
    JvCalcEdit1: TJvCalcEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrDescontoUnitario: TFrDescontoUnitario;

implementation

{$R *.dfm}

end.
