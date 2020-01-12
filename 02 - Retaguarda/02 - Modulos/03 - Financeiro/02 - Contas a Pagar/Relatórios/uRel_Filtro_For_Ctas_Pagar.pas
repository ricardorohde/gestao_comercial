unit uRel_Filtro_For_Ctas_Pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, RLReport, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLFilters, RLPDFFilter;

type
  TFrRel_Filtro_For_Ctas_Pagar = class(TForm)
    Print: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    ter: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLGroup1: TRLGroup;
    dsDados: TDataSource;
    RLBand6: TRLBand;
    RLLabel12: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel11: TRLLabel;
    RLBand5: TRLBand;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand7: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand8: TRLBand;
    RLDBResult2: TRLDBResult;
    RLBand9: TRLBand;
    RLLabel15: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel16: TRLLabel;
    dsPagtos: TDataSource;
    RLLabel24: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand11: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLBand10: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLBand12: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel25: TRLLabel;
    QueryPagtos: TFDQuery;
    QueryPagtosID: TLargeintField;
    QueryPagtosID_C000210: TLargeintField;
    QueryPagtosID_C000211: TLargeintField;
    QueryPagtosID_FORMA_PAGTO: TIntegerField;
    QueryPagtosPAG_DATA_PAGTO: TDateField;
    QueryPagtosPAG_ANOTACOES: TStringField;
    QueryPagtosPAG_FORMA_PAGTO: TStringField;
    QueryPagtosPAG_SALDO: TFMTBCDField;
    QueryPagtosPAG_VLR_JUROS: TFMTBCDField;
    QueryPagtosPAG_VLR_MULTA: TFMTBCDField;
    QueryPagtosPAG_VLR_ACRESCIMOS: TFMTBCDField;
    QueryPagtosPAG_VLR_DESCONTOS: TFMTBCDField;
    QueryPagtosPAG_VLR_CARTORIOS: TFMTBCDField;
    QueryPagtosPAG_VLR_RECEBIDO: TFMTBCDField;
    procedure RLDBText7BeforePrint(Sender: TObject; var AText: string ;var PrintIt: Boolean);
    procedure RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure RLDBText10BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vr_DataIni, vr_DataFim : TDateTime;
  end;

var
  FrRel_Filtro_For_Ctas_Pagar: TFrRel_Filtro_For_Ctas_Pagar;

implementation

uses
   Classe.Empresa, uModuloRet, uFiltro_Fornecedor_Ctas_Pagar;

{$R *.dfm}

procedure TFrRel_Filtro_For_Ctas_Pagar.RLDBText10BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if aText  = 'Em Atraso' then
      (Sender as TRLDBText).Font.Color := clRed
   else
   if aText  = 'Quitada' then
      (Sender as TRLDBText).Font.Color := clGreen
   else
      (Sender as TRLDBText).Font.Color := clBlack
end;

procedure TFrRel_Filtro_For_Ctas_Pagar.RLDBText7BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := aText + ' dias';
end;

procedure TFrRel_Filtro_For_Ctas_Pagar.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := 'PEDÍODO SELECIONADO: ' + DatetoStr(vr_DataIni) + ' - ' + DateToStr(vr_DataFim);
end;

procedure TFrRel_Filtro_For_Ctas_Pagar.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

procedure TFrRel_Filtro_For_Ctas_Pagar.RLSubDetail1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   PrintIt := not(QueryPagtos.IsEmpty);
end;

end.
