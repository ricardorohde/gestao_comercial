unit uRel_Movto_Estoque_For;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RLReport,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLFilters, RLPDFFilter;

type
  TFrRel_Movto_Estoque_For = class(TForm)
    Print: TRLReport;
    RLBand1: TRLBand;
    lb_empresa: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand3: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLBand7: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand6: TRLBand;
    RLLabel12: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    dsDados: TDataSource;
    RLLabel16: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText5: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLLabel6: TRLLabel;
    RLBand5: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel7: TRLLabel;
    Query : TFDQuery;
    QueryFORNECEDOR: TStringField;
    QueryPRD_CODIGO: TIntegerField;
    QueryPRD_DESCRICAO: TStringField;
    QueryPRD_UNIDADE: TStringField;
    QueryPRD_QTDE: TFMTBCDField;
    QueryPRD_VLR_TOTAL: TFMTBCDField;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText6: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel8: TRLLabel;
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
    function CarregarDados(aData, bData : TDateTime; IDFornecedor, txtOrdernar, txtTipoOrdem : integer) : Boolean;
  end;

var
  FrRel_Movto_Estoque_For: TFrRel_Movto_Estoque_For;

implementation

uses
   Classe.Empresa;

{$R *.dfm}

function TFrRel_Movto_Estoque_For.CarregarDados(aData, bData: TDateTime; IDFornecedor, txtOrdernar, txtTipoOrdem : integer): Boolean;
begin
   Result := false;

   {Registra a data nas variaveis globais}
   agData := aData;
   bgData := bData;

   // Configura o SQL
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('Select');
   Query.SQL.Add('   t3.for_razao_social as fornecedor,');
   Query.SQL.Add('   t4.prd_codigo,');
   Query.SQL.Add('   t4.prd_descricao,');
   Query.SQL.Add('   t4.prd_unidade,');
   Query.SQL.Add('   sum(t2.itm_qtde) as prd_qtde,');
   Query.SQL.Add('   sum(t2.itm_vlr_total) as prd_vlr_total');
   Query.SQL.Add('from');
   Query.SQL.Add('   c000308 as t1');
   Query.SQL.Add('join');
   Query.SQL.Add('   c000309 as t2');
   Query.SQL.Add('on');
   Query.SQL.Add('   t1.id = t2.id_pedido');
   Query.SQL.Add('join');
   Query.SQL.Add('   c000305 as t3');
   Query.SQL.Add('on');
   Query.SQL.Add('   t3.id = t1.id_fornecedor');
   Query.SQL.Add('join');
   Query.SQL.Add('   c000405 as t4');
   Query.SQL.Add('on');
   Query.SQL.Add('   t4.id = t2.id_produto');
   Query.SQL.Add('where');
   Query.SQL.Add('   t1.id_empresa = :id_emp');
   Query.SQL.Add('and');
   Query.SQL.Add('   t1.ped_data_pedido between :dt_a and :dt_b');

   // Se informado fornecedor
   if IDFornecedor > 0 then
   begin
      Query.SQL.Add('and');
      Query.SQL.Add('   t1.id_fornecedor = :id_for');
   end;

   Query.SQL.Add('group by');
   Query.SQL.Add('   t4.prd_codigo, t3.for_razao_social, t4.prd_descricao, t4.prd_unidade');

   // Ordenação
   case txtOrdernar of
      0 : begin  // Codigo
         case txtTipoOrdem of
            0 : Query.SQL.Add('order by t4.prd_codigo asc');
            1 : Query.SQL.Add('order by t4.prd_codigo desc');
         end;
      end;
      
      1 : begin  // Descricao
         case txtTipoOrdem of
            0 : Query.SQL.Add('order by t4.prd_descricao asc');
            1 : Query.SQL.Add('order by t4.prd_descricao desc');
         end;
      end;
   end;

   if IDFornecedor > 0 then
      Query.ParamByName('id_for').AsInteger := IDFornecedor;
               
   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('dt_a').AsDate      := aData;
   Query.ParamByName('dt_b').AsDate      := bData;
   Query.Open();

   if Query.IsEmpty then
      Application.MessageBox('Não foram encontrados registro de acordo as informações.','TechCore-RTG',mb_IconWarning or mb_Ok)
   else
      Result := true;
end;

procedure TFrRel_Movto_Estoque_For.FormCreate(Sender: TObject);
begin
   {Ajusta as casas decimais}
   case FEmpresaClass.Decimal_Qtde of
      2 : QueryPrd_Qtde.DisplayFormat := ',0.00';
      3 : QueryPrd_Qtde.DisplayFormat := ',0.000';
      4 : QueryPrd_Qtde.DisplayFormat := ',0.0000';
   end;

   {Ajustar as casas decimais}
   case FEmpresaClass.Decimal_Venda of
      2 : QueryPrd_Vlr_Total.DisplayFormat := ',0.00';
      3 : QueryPrd_Vlr_Total.DisplayFormat := ',0.000';
      4 : QueryPrd_Vlr_Total.DisplayFormat := ',0.0000';
   end;
end;

procedure TFrRel_Movto_Estoque_For.lb_empresaBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

procedure TFrRel_Movto_Estoque_For.PrintBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   lb_empresa.Caption := FEmpresaClass.RazaoSocial;
end;

procedure TFrRel_Movto_Estoque_For.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if RLGroup1.DataFields = EmptyStr then
      PrintIt := false
end;

procedure TFrRel_Movto_Estoque_For.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := 'PEDÍODO SELECIONADO: ' + DatetoStr(agData) + ' - ' + DateToStr(bgData);
end;

end.
