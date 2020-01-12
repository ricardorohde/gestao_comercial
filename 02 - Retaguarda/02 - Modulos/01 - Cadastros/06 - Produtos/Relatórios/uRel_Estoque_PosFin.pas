unit uRel_Estoque_PosFin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel2: TRLLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    FDQuery1ID: TIntegerField;
    FDQuery1PRD_CODIGO: TIntegerField;
    FDQuery1PRD_CODIGO_BRR: TStringField;
    FDQuery1PRD_GRUPO: TStringField;
    FDQuery1PRD_QTDE_ATUAL: TBCDField;
    FDQuery1PRD_DESCRICAO: TStringField;
    FDQuery1PRD_UNIDADE: TStringField;
    FDQuery1PRD_NCM: TStringField;
    FDQuery1PRD_VLR_CUSTO: TBCDField;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw1: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    FDQuery1PRD_VLR_TOTAL_CUSTO: TBCDField;
    RLBand6: TRLBand;
    RLLabel12: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    rsubA : Real;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
   FDQuery1.Open();
end;

end.
