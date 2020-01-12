unit uDreSintetico01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RLReport, RLParser;

type
  TFrDreSintetico01 = class(TForm)
    Printer: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel11: TRLLabel;
    RLBand6: TRLBand;
    RLDBResult2: TRLDBResult;
    RLBand2: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand5: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand8: TRLBand;
    RLDBText3: TRLDBText;
    RLBand9: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDraw3: TRLDraw;
    RLBand10: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLExpressionParser1: TRLExpressionParser;
    Query: TFDQuery;
    QueryF_DATA: TDateField;
    QueryF_TIPO: TStringField;
    QueryF_DESCRICAO: TStringField;
    DataSource2: TDataSource;
    QueryF_GRUPO: TStringField;
    QueryF_VALOR: TFMTBCDField;
    procedure RLDBText4BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText5BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel16BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel1BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    agData, bgData : TDateTime;
    function Carregaresultados(aData, bData : TDateTime) : boolean;
  end;

var
  FrDreSintetico01: TFrDreSintetico01;

implementation

{$R *.dfm}

uses uModuloRet, Classe.Empresa;

{ TFrDreAnalitico01 }

function TFrDreSintetico01.Carregaresultados(aData, bData : TDateTime) : boolean;
begin
   Result := true;

   {Transformaem global as datas}
   agData := aData;
   bgData := bData;

   {Exibe as receitas}
   Query.Close;
   Query.ParamByName('id_emp').AsInteger  := FEmpresaClass.ID;
   Query.ParamByName('a_data').AsDateTime := aData;
   Query.ParamByName('b_data').AsDateTime := bData;
   Query.Open();

   if Query.IsEmpty then
   begin
      Application.MessageBox('Não foram encontrados resultados no período informado','TechCore-RTG', mb_IconStop or mb_ok);
      Result := false;
   end;
end;

procedure TFrDreSintetico01.RLDBText4BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if Query.IsEmpty then
      aText := 'Sem Movimento';
end;

procedure TFrDreSintetico01.RLDBText5BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if Query.FieldByName('f_tipo').AsString = 'R' then
      Atext := AText + ' C'
   else
      Atext := AText + ' D'
end;

procedure TFrDreSintetico01.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := 'PEDÍODO SELECIONADO: ' + DatetoStr(agData) + ' - ' + DateToStr(bgData);
end;

procedure TFrDreSintetico01.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

end.
