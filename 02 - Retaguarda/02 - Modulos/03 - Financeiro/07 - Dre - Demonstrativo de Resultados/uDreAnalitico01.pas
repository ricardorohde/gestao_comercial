unit uDreAnalitico01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RLReport;

type
  TFrDreAnalitico01 = class(TForm)
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
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLBand2: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand7: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw2: TRLDraw;
    RLBand5: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    dsQuery: TDataSource;
    Query: TFDQuery;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryPLN_CONTA_CODIGO: TStringField;
    QueryPLN_DESCRICAO: TStringField;
    QueryPLN_TIPO: TStringField;
    QueryPLN_ATIVO: TStringField;
    RLSubDetail1: TRLSubDetail;
    QuerySub: TFDQuery;
    dsQuerySub: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrDreAnalitico01: TFrDreAnalitico01;

implementation

{$R *.dfm}

uses uModuloRet;

end.
