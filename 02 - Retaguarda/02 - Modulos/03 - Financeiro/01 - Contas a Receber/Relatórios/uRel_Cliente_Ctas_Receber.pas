unit uRel_Cliente_Ctas_Receber;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
   FireDAC.DApt, Data.DB, RLReport, FireDAC.Comp.DataSet,
   FireDAC.Comp.Client, RLFilters, RLPDFFilter, RLParser;

type
   TFrRel_Cliente_Ctas_Receber = class(TForm)
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
      RLDraw2: TRLDraw;
      RLPDFFilter1: TRLPDFFilter;
      RLDBMemo1: TRLDBMemo;
      RLDBMemo2: TRLDBMemo;
      RLSystemInfo3: TRLSystemInfo;
      RLLabel25: TRLLabel;
      RLDBText3: TRLDBText;
      QueryPagtos: TFDQuery;
      QueryPagtosID: TLargeintField;
      QueryPagtosID_C000110: TIntegerField;
      QueryPagtosID_C000111: TIntegerField;
      QueryPagtosID_FORMA_PAGTO: TIntegerField;
      QueryPagtosREC_DATA_RECEBTO: TDateField;
      QueryPagtosREC_ANOTACOES: TStringField;
      QueryPagtosREC_FORMA_PAGTO: TStringField;
      QueryPagtosREC_SALDO: TSingleField;
      QueryPagtosREC_VLR_JUROS: TSingleField;
      QueryPagtosREC_VLR_MULTA: TSingleField;
      QueryPagtosREC_VLR_ACRESCIMOS: TSingleField;
      QueryPagtosREC_VLR_DESCONTOS: TSingleField;
      QueryPagtosREC_VLR_CARTORIOS: TSingleField;
      RLExpressionParser1: TRLExpressionParser;
    QueryPagtosREC_VLR_RECEBIDO: TSingleField;
    RLBand12: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDraw1: TRLDraw;
      procedure RLDBText7BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
      procedure RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
      procedure RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
      procedure RLDBText10BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
      procedure RLSubDetail1BeforePrint(Sender: TObject; var PrintIt: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
      vr_DataIni, vr_DataFim: TDateTime;
   end;

var
   FrRel_Cliente_Ctas_Receber: TFrRel_Cliente_Ctas_Receber;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrRel_Cliente_Ctas_Receber.RLDBText10BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if AText = 'Em Atraso' then
      (Sender as TRLDBText).Font.Color := clRed
   else if AText = 'Quitada' then
      (Sender as TRLDBText).Font.Color := clGreen
   else
      (Sender as TRLDBText).Font.Color := clBlack
end;

procedure TFrRel_Cliente_Ctas_Receber.RLDBText7BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + ' dias';
end;

procedure TFrRel_Cliente_Ctas_Receber.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := 'PEDÍODO SELECIONADO: ' + DatetoStr(vr_DataIni) + ' - ' + DatetoStr(vr_DataFim);
end;

procedure TFrRel_Cliente_Ctas_Receber.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := FEmpresaClass.RazaoSocial;
end;

procedure TFrRel_Cliente_Ctas_Receber.RLSubDetail1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   PrintIt := not(QueryPagtos.IsEmpty);
end;

end.
