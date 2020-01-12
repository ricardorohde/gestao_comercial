unit uRel_Movto_Estoque_Entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RLReport,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLFilters, RLPDFFilter;

type
  TFrRel_Movto_Estoque_Entrada = class(TForm)
    Print: TRLReport;
    RLBand1: TRLBand;
    lb_empresa: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLBand7: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand6: TRLBand;
    RLLabel12: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    dsDados: TDataSource;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText6: TRLDBText;
    Query: TFDQuery;
    QueryID_PRODUTO: TIntegerField;
    QueryPRD_QTDE: TBCDField;
    QueryPRD_CODIGO: TStringField;
    QueryPRD_GRUPO: TStringField;
    QueryPRD_DESCRICAO: TStringField;
    QueryPRD_UNIDADE: TStringField;
    QueryQTDE_ENTRADA: TBCDField;
    QueryQTDE_INICIAL: TBCDField;
    QueryQTDE_ATUAL: TBCDField;
    QueryPRD_VLR: TFMTBCDField;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    QueryQTDE_SAIDA: TBCDField;
    RLPDFFilter1: TRLPDFFilter;
    procedure RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure PrintBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure lb_empresaBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    agData, bgData : TDateTime;
    function CarregarDados(aData, bData : TDateTime) : Boolean;
  end;

var
  FrRel_Movto_Estoque_Entrada: TFrRel_Movto_Estoque_Entrada;

implementation

uses
   Classe.Empresa;

{$R *.dfm}

function TFrRel_Movto_Estoque_Entrada.CarregarDados(aData, bData: TDateTime): Boolean;
begin
   Result := false;

   {Registra a data nas variaveis globais}
   agData := aData;
   bgData := bData;

   Query.Close;
   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('dt_a').AsDate      := aData;
   Query.ParamByName('dt_b').AsDate      := bData;
   Query.Open();

   if Query.IsEmpty then
      Application.MessageBox('Não foram encotrados registro de acordo as informações.','TechCore-RTG',mb_IconWarning or mb_Ok)
   else
      Result := true;
end;

procedure TFrRel_Movto_Estoque_Entrada.FormCreate(Sender: TObject);
begin
   {Ajusta as casas decimais}
   case FEmpresaClass.Decimal_Qtde of
      2 : begin
         QueryPRD_QTDE.DisplayFormat     := ',0.00';
         QueryQTDE_SAIDA.DisplayFormat   := ',0.00';
         QueryQTDE_ENTRADA.DisplayFormat := ',0.00';
         QueryQTDE_INICIAL.DisplayFormat := ',0.00';
         QueryQTDE_ATUAL.DisplayFormat   := ',0.00';
      end;

      3 : begin
         QueryPRD_QTDE.DisplayFormat     := ',0.000';
         QueryQTDE_SAIDA.DisplayFormat   := ',0.000';
         QueryQTDE_ENTRADA.DisplayFormat := ',0.000';
         QueryQTDE_INICIAL.DisplayFormat := ',0.000';
         QueryQTDE_ATUAL.DisplayFormat   := ',0.000';
      end;

      4 : begin
         QueryPRD_QTDE.DisplayFormat     := ',0.0000';
         QueryQTDE_SAIDA.DisplayFormat   := ',0.0000';
         QueryQTDE_ENTRADA.DisplayFormat := ',0.0000';
         QueryQTDE_INICIAL.DisplayFormat := ',0.0000';
         QueryQTDE_ATUAL.DisplayFormat   := ',0.0000';
      end;
   end;

   {Ajustar as casas decimais}
   case FEmpresaClass.Decimal_Venda of
      2 : QueryPRD_VLR.DisplayFormat := ',0.00';
      3 : QueryPRD_VLR.DisplayFormat := ',0.000';
      4 : QueryPRD_VLR.DisplayFormat := ',0.0000';
   end;
end;

procedure TFrRel_Movto_Estoque_Entrada.lb_empresaBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

procedure TFrRel_Movto_Estoque_Entrada.PrintBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   lb_empresa.Caption := FEmpresaClass.RazaoSocial;
end;

procedure TFrRel_Movto_Estoque_Entrada.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if RLGroup1.DataFields = EmptyStr then
      PrintIt := false
end;

procedure TFrRel_Movto_Estoque_Entrada.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := 'PEDÍODO SELECIONADO: ' + DatetoStr(agData) + ' - ' + DateToStr(bgData);
end;

end.
