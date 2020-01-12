unit uTabela_Precos_II;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrTabela_Precos_II = class(TForm)
    Print: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel2: TRLLabel;
    tbTabela: TFDQuery;
    dsDados: TDataSource;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBResult5: TRLDBResult;
    RLBand5: TRLBand;
    RLLabel8: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    ds2: TDataSource;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    procedure RLLabel9BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText7BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure PrintBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText2BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLSystemInfo5BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    ID_Tabela, vr_ExibirCusto : Integer;
    rGrupo : boolean;
  end;

var
  FrTabela_Precos_II: TFrTabela_Precos_II;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrTabela_Precos_II.PrintBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   // Carrega o nome da tabela selecionada
   tbTabela.ParamByName('ID_TABELA').AsInteger := ID_Tabela;
   tbTabela.Open();
end;

procedure TFrTabela_Precos_II.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   PrintIt := rGrupo;
end;

procedure TFrTabela_Precos_II.RLDBText2BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if rGrupo then
      RLGroup1.DataFields := 'prd_grupo'
   else
      RLGroup1.DataFields := EmptyStr;
end;

procedure TFrTabela_Precos_II.RLDBText7BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   PrintIt := vr_ExibirCusto in [0];
end;

procedure TFrTabela_Precos_II.RLLabel9BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   PrintIt := vr_ExibirCusto in [0];
end;

procedure TFrTabela_Precos_II.RLSystemInfo5BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText :=  'Página: ' + aText + '/{lastPageNumber}'
end;

end.
