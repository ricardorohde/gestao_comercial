unit uRel_Vendedor_Agrupado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RLReport;

type
  TFrRel_Vendedor_Agrupado = class(TForm)
    Print: TRLReport;
    RLBand1: TRLBand;
    lb_empresa: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel11: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLBand5: TRLBand;
    RLBand7: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand6: TRLBand;
    RLLabel12: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    dsDados: TDataSource;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLLabel9: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLLabel16: TRLLabel;
    procedure RLLabel16BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure lb_empresaBeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vr_DataIni, vr_DataFim : TDateTime;
  end;

var
  FrRel_Vendedor_Agrupado: TFrRel_Vendedor_Agrupado;

implementation

uses
   uRel_Vendedor_Filtro, Classe.Empresa;

{$R *.dfm}

procedure TFrRel_Vendedor_Agrupado.lb_empresaBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

procedure TFrRel_Vendedor_Agrupado.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := 'PEDÍODO SELECIONADO: ' + DatetoStr(vr_DataIni) + ' - ' + DateToStr(vr_DataFim);
end;

end.
