unit uRel_Movto_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RLReport,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLFilters, RLPDFFilter, RLHTMLFilter, RLXLSFilter,
  RLXLSXFilter;

type
  TFrRel_Movto_Estoque = class(TForm)
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
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLBand7: TRLBand;
    RLBand6: TRLBand;
    RLLabel12: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    dsDados: TDataSource;
    RLDBText10: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel14: TRLLabel;
    Query: TFDQuery;
    QueryPRD_ID: TIntegerField;
    QueryPRD_CODIGO: TStringField;
    QueryPRD_DESCRICAO: TStringField;
    QueryQTDE_ENTRADA: TBCDField;
    QueryQTDE_INICIAL: TBCDField;
    QueryQTDE_ATUAL: TBCDField;
    QueryPRD_UNIDADE: TStringField;
    QueryPRD_GRUPO: TStringField;
    RLDBResult1: TRLDBResult;
    QueryQTDE_SAIDA: TBCDField;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    QueryPRD_QTDE: TBCDField;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel7: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
    QueryMOV_TIPO: TStringField;
    RLBand5: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText13: TRLDBText;
    QueryPRD_VLR_TOTAL: TFloatField;
    procedure RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure PrintBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure lb_empresaBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    agData, bgData: TDateTime;
    function CarregarDados(aData, bData : TDateTime) : Boolean;
  end;

var
  FrRel_Movto_Estoque: TFrRel_Movto_Estoque;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

function TFrRel_Movto_Estoque.CarregarDados(aData, bData: TDateTime): Boolean;
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

procedure TFrRel_Movto_Estoque.FormCreate(Sender: TObject);
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
      2 : QueryPRD_VLR_TOTAL.DisplayFormat := ',0.00';
      3 : QueryPRD_VLR_TOTAL.DisplayFormat := ',0.000';
      4 : QueryPRD_VLR_TOTAL.DisplayFormat := ',0.0000';
   end;
end;

procedure TFrRel_Movto_Estoque.lb_empresaBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

procedure TFrRel_Movto_Estoque.PrintBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   lb_empresa.Caption := FEmpresaClass.RazaoSocial;
end;

procedure TFrRel_Movto_Estoque.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if RLGroup1.DataFields = EmptyStr then
      PrintIt := false
end;

procedure TFrRel_Movto_Estoque.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := 'PEDÍODO SELECIONADO: ' + DatetoStr(agData) + ' - ' + DateToStr(bgData);
end;

end.
