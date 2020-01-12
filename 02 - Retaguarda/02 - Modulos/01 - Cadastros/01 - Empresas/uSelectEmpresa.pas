unit uSelectEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RzPanel, RzDlgBtn,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvDataSource;

type
  TFrSelectEmpresa = class(TForm)
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    RzDialogButtons1: TRzDialogButtons;
    tbDados: TFDQuery;
    dsDados: TJvDataSource;
    tbDadosID: TIntegerField;
    tbDadosEMP_CODIGO: TIntegerField;
    tbDadosEMP_RAZAO: TStringField;
    tbDadosEMP_CNPJ: TStringField;
    tbDadosEMP_FONEFIXO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSelectEmpresa: TFrSelectEmpresa;

implementation

{$R *.dfm}

uses uModuloRet, Classe.Empresa;

procedure TFrSelectEmpresa.FormCreate(Sender: TObject);
begin
   {Carrega todas as empresas cadastradas}
   tbDados.Open();
end;

procedure TFrSelectEmpresa.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Erro, selecione uma empresa antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   // Cria o objeto empresa com os dados da empresa
   FEmpresaClass := TEmpresa.Create(tbDadosID.AsInteger);

   // Fecha o formulário
   Self.ModalResult := mrok;
end;

end.
