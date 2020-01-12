unit uRel_Produto_Grupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrRel_Produtos_Grupos = class(TForm)
    Print: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    dsDados: TDataSource;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand6: TRLBand;
    RLLabel12: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    procedure RLLabel1BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    rGrupo : boolean;
  end;

var
  FrRel_Produtos_Grupos: TFrRel_Produtos_Grupos;

implementation

uses
   Classe.Empresa;

{$R *.dfm}

procedure TFrRel_Produtos_Grupos.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   PrintIt := rGrupo;
end;

procedure TFrRel_Produtos_Grupos.RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if rGrupo then
      RLGroup1.DataFields := 'prd_grupo'
   else
      RLGroup1.DataFields := EmptyStr;

end;

procedure TFrRel_Produtos_Grupos.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

end.
