unit uRelCupons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLFilters, RLPDFFilter, RLReport,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLBarcode, System.MaskUtils, RLParser;

type
  TFrRelCupons = class(TForm)
    Printer: TRLReport;
    RLPDFFilter1: TRLPDFFilter;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel16: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    dsQuery: TDataSource;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBBarcode1: TRLDBBarcode;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw1: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLBand5: TRLBand;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLBand6: TRLBand;
    RLDBResult4: TRLDBResult;
    RLBand7: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLExpressionParser1: TRLExpressionParser;
    procedure RLLabel16BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel1BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vr_data_a, vr_data_F : TDateTime;
  end;

var
  FrRelCupons: TFrRelCupons;

implementation

uses
   Classe.Empresa;

{$R *.dfm}

procedure TFrRelCupons.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := 'PERÍODO SELECIONADO: ' + DateToStr(vr_data_a) + ' - ' + DateToStr(vr_data_f);
end;

procedure TFrRelCupons.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

end.
