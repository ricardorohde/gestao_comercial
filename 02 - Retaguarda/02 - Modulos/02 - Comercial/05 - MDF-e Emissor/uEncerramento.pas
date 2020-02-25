unit uEncerramento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, System.JSON, REST.Response.Adapter,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  IdTCPConnection, IdTCPClient, IdHTTP, IdBaseComponent, IdComponent,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, RzCmboBx;

type
  TFrEncerramento = class(TForm)
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    cbUF: TRzComboBox;
    txtMunicipio: TJvDBSearchComboBox;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdHTTP1: TIdHTTP;
    RzDialogButtons1: TRzDialogButtons;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label1: TLabel;
    DataSource1: TDataSource;
    Query: TFDMemTable;
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure cbUFClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure JsonToDataset(aDataset : TDataSet; aJSON : string);
  public
    { Public declarations }
    ID_C000700 : Integer;
    StrCodigoo, strNomeo, UfFinal  : String;
  end;

var
  FrEncerramento: TFrEncerramento;

implementation

{$R *.dfm}

uses uModuloRet;

procedure TFrEncerramento.cbUFClick(Sender: TObject);
var
   Str : String;
begin

   IdHTTP1.Request.Accept              := 'text/javascript';
   IdHTTP1.Request.ContentType         := 'application/json';
   IdHTTP1.Request.ContentEncoding     := 'utf-8';
   IdHTTP1.Request.BasicAuthentication := True;
   Str := IdHTTP1.Get('https://servicodados.ibge.gov.br/api/v1/localidades/estados/' + cbUF.Value + '/municipios');
   JsonToDataset(Query,Str);

   Query.Open;
end;

procedure TFrEncerramento.QueryBeforePost(DataSet: TDataSet);
begin
   if (Application.MessageBox('Tem certeza que deseja efetuar o encerramento desta MDF-e?','TechCore-RTG', mb_IconQuestion or mb_ok)) = mrNo then
      Abort;
end;

procedure TFrEncerramento.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if txtMunicipio.Text = EmptyStr then
   begin
      Application.MessageBox('Informe o município.','TechCore-ERP',mb_IconWarning or mb_ok);
      txtMunicipio.SetFocus;
      Exit;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrEncerramento.FormShow(Sender: TObject);
begin
   if UfFinal <> EmptyStr then
   begin
      cbUF.FindItem(UfFinal);
      cbUF.Enabled := false;
      cbUF.OnClick(nil);
   end;
end;

procedure TFrEncerramento.JsonToDataset(aDataset : TDataSet; aJSON : string);
var
  JObj  : TJSONArray;
  vConv : TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;

  JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.Dataset := aDataset;
    vConv.UpdateDataSet(JObj);
  finally
    vConv.Free;
    JObj.Free;
  end;
end;

end.
