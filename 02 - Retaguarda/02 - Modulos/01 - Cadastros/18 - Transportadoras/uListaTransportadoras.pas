unit uListaTransportadoras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, MaskUtils,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, RzPanel, RzDlgBtn, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ExtCtrls;

type
  TFrListaTransportadoras = class(TForm)
    Panel1: TPanel;
    eGrid: TJvDBGrid;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    dsDados: TJvDataSource;
    RzDialogButtons2: TRzDialogButtons;
    tbDadosTRA_CODIGO: TIntegerField;
    tbDadosTRA_DATA_REG: TSQLTimeStampField;
    tbDadosTRA_RAZAO_SOCIAL: TStringField;
    tbDadosTRA_CNPJ: TStringField;
    tbDadosTRA_UF: TStringField;
    tbDadosTRA_STATUS: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure RzDialogButtons2ClickOk(Sender: TObject);
    procedure tbDadosTRA_CNPJGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbDadosTRA_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrListaTransportadoras: TFrListaTransportadoras;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrListaTransportadoras.FormCreate(Sender: TObject);
begin
   {Carrega os tipo de produtos}
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrListaTransportadoras.RzDialogButtons2ClickOk(Sender: TObject);
begin
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if tbDados.FieldByName('TRA_STATUS').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrListaTransportadoras.tbDadosTRA_CNPJGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',Sender.AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',Sender.AsString);
end;

procedure TFrListaTransportadoras.tbDadosTRA_STATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
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
