unit uConfigServer_PDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, RzPanel, RzDlgBtn;

type
  TForm3 = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Panel1: TPanel;
    tbDados: TFDMemTable;
    dsDados: TDataSource;
    GroupBox1: TGroupBox;
    eHostLocal: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    ePortaLocal: TDBEdit;
    eUserLocal: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    eSenhaLocal: TDBEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    eHostRemoto: TDBEdit;
    ePortaRemoto: TDBEdit;
    eUserRemoto: TDBEdit;
    eSenhaRemoto: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    vr_ExisteConf : Integer;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
