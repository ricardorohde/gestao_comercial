unit uListarServidores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, Data.DB, RzPanel, RzDlgBtn, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TFrListarServidores = class(TForm)
    JvPanel1: TJvPanel;
    tbDados: TFDMemTable;
    tbDadosCON_CODIGO: TIntegerField;
    tbDadosCON_DATA_REG: TDateTimeField;
    tbDadosCON_DESCRICAO: TStringField;
    tbDadosCON_ENDERECO: TStringField;
    tbDadosCON_PROTOCOLO: TStringField;
    tbDadosCON_PORTA: TIntegerField;
    tbDadosCON_DATABASE: TStringField;
    tbDadosCON_OBSERVACAO: TStringField;
    tbDadosCON_USUARIO: TStringField;
    tbDadosCON_SENHA: TStringField;
    dsDados: TJvDataSource;
    JvDBGrid1: TJvDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrListarServidores: TFrListarServidores;

implementation

{$R *.dfm}

procedure TFrListarServidores.FormCreate(Sender: TObject);
begin
   {Carrega a lista de servidores}
   tbDados.LoadFromFile('ConfigServidores.dat');
   tbDados.Open;
end;

procedure TFrListarServidores.RzDialogButtons1ClickOk(Sender: TObject);
begin
   {Selecione o servidor na lista}
   Self.ModalResult := mrOK;
end;

end.
