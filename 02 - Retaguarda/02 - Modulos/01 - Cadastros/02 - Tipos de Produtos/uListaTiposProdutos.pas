unit uListaTiposProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzPanel, RzDlgBtn,
  Vcl.ExtCtrls;

type
  TFrListarTiposProdutos = class(TForm)
    Panel1: TPanel;
    RzDialogButtons1: TRzDialogButtons;
    eGrid: TJvDBGrid;
    tbDados: TFDQuery;
    dsDados: TJvDataSource;
    tbDadosID: TIntegerField;
    tbDadosTIP_CODIGO: TIntegerField;
    tbDadosTIP_DATA_REG: TSQLTimeStampField;
    tbDadosTIP_DESCRICAO: TStringField;
    tbDadosTIP_STATUS: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure tbDadosTIP_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrListarTiposProdutos: TFrListarTiposProdutos;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrListarTiposProdutos.FormCreate(Sender: TObject);
begin
   {Carrega os tipo de produtos}
   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrListarTiposProdutos.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if tbDados.FieldByName('tip_status').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrListarTiposProdutos.tbDadosTIP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'S';
         2 : Text := 'N';
      end;
   end
   else
      Text := Sender.AsString;
end;

end.
