unit uOrdemServicoStatus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Vcl.ExtCtrls, RzPanel, RzDlgBtn, Data.DB,
  Vcl.DBCtrls, RzDBCmbo, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrOrdemServicoStatus = class(TForm)
    ed_status: TJvDBComboBox;
    Label1: TLabel;
    RzDialogButtons1: TRzDialogButtons;
    dsQuery: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOrdemServicoStatus: TFrOrdemServicoStatus;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

end.
