unit uRelatorioCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, RLFilters,
  RLPDFFilter, MaskUtils;

type
  TFrRelatorioCaixa = class(TForm)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1FRM_DESCRICAO: TStringField;
    QueryMovtos: TFDQuery;
    dsQueryMovtos: TDataSource;
    QueryMovtosF_VLR_SUBTOTAL: TFMTBCDField;
    QueryMovtosF_VLR_TROCO: TFMTBCDField;
    QueryMovtosF_VLR_DESCONTO: TFMTBCDField;
    QueryMovtosF_VLR_SANGRIA: TFMTBCDField;
    QueryMovtosF_VLR_RETIRADA: TFMTBCDField;
    QueryMovtosF_VLR_SUPRIMENTOS: TFMTBCDField;
    QueryMovtosF_ABER_VALOR: TFMTBCDField;
    QueryMovtosF_VLR_LIQUIDO: TFMTBCDField;
    QueryResVendedor: TFDQuery;
    DataSource3: TDataSource;
    FDQuery1F_VALOR: TFMTBCDField;
    QueryDinheiro: TFDQuery;
    DataSource4: TDataSource;
    QueryResVendedorSUM: TFMTBCDField;
    QueryResVendedorSUM_1: TFMTBCDField;
    QueryResVendedorSUM_2: TFMTBCDField;
    QueryResVendedorVENDEDOR_APELIDO: TStringField;
    QueryDinheiroF_OPERADOR: TStringField;
    QueryDinheiroF_VALOR: TFMTBCDField;
    QueryDinheiroF_VLR_TROCO: TFMTBCDField;
    QueryDinheiroF_VLR_ABERTURA: TFMTBCDField;
    QueryDinheiroSNG_VALOR: TFMTBCDField;
    QueryDinheiroRET_VALOR: TFMTBCDField;
    QueryDinheiroSUP_VALOR: TFMTBCDField;
    QueryDinheiroF_VLR_LIQUIDO: TFMTBCDField;
    QueryFormaPagto: TFDQuery;
    dsFormaPagto: TDataSource;
    aQuery: TFDQuery;
    Printer: TRLReport;
    RLBand14: TRLBand;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDraw8: TRLDraw;
    RLMemo2: TRLMemo;
    RLBand15: TRLBand;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    B_FormasPagtos: TRLSubDetail;
    RLBand16: TRLBand;
    RLLabel39: TRLLabel;
    RLDraw10: TRLDraw;
    RLBand17: TRLBand;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    QueryFormaPagtoFRM_DESCRICAO: TStringField;
    QueryFormaPagtoF_VALOR: TFMTBCDField;
    A_MovtoCaixa: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    RLBand7: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDraw11: TRLDraw;
    RLSubDetail3: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel19: TRLLabel;
    RLDraw3: TRLDraw;
    RLGroup1: TRLGroup;
    RLBand9: TRLBand;
    RLDBText5: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText9: TRLDBText;
    RLBand8: TRLBand;
    RLDBText3: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand10: TRLBand;
    RLLabel23: TRLLabel;
    RLDraw5: TRLDraw;
    RLGroup2: TRLGroup;
    RLBand11: TRLBand;
    RLDBText11: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText22: TRLDBText;
    RLBand12: TRLBand;
    RLDBText17: TRLDBText;
    RLBand13: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel31: TRLLabel;
    RLLabel1: TRLLabel;
    procedure RLDBText1BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText4BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText6BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText8BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText10BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText12BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText14BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText16BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText18BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText5BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel32BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel33BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel34BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLMemo2BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel35BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel38BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel1BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLLabel4BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    function fnMovimentoCaixa(ID_Abertura : String) : boolean;
    procedure prcFormasPagamentos(ID_Abertura : String);
    procedure prcResumoVendedor(ID_Abertura : String);
    procedure prcDinheiroCaixa(ID_Abertura : String);

  public
    { Public declarations }
    DataHoraAbert : TDateTime;
    PrintFechamento : boolean;
    procedure CarregarRelatorio(ID_Abertura : String; Preview : boolean = true);
  end;

var
  FrRelatorioCaixa: TFrRelatorioCaixa;

implementation

{$R *.dfm}

uses uModulo, Classe.Empresa, uPrincipal, Classe.Caixa;

procedure TFrRelatorioCaixa.prcDinheiroCaixa(ID_Abertura: String);
begin
   {Carrega as formas de pagamentos}
   with QueryDinheiro do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('   TB0.F_OPERADOR,');
      SQL.Add('   SUM(TB0.FRM_PARCELA_VALOR) AS F_VALOR,');
      SQL.Add('   SUM(TB0.F_VLR_TROCO) AS F_VLR_TROCO,');
      SQL.Add('   COALESCE((SELECT F_ABER_VALOR   FROM C000002 WHERE ID_ABERTURA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0) AS F_VLR_ABERTURA,');
      SQL.Add('   COALESCE((SELECT SUM(SNG_VALOR) FROM C000053 WHERE ID_ABERTURA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0) AS SNG_VALOR,');
      SQL.Add('   COALESCE((SELECT SUM(RET_VALOR) FROM C000054 WHERE ID_ABERTURA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0) AS RET_VALOR,');
      SQL.Add('   COALESCE((SELECT SUM(SUP_VALOR) FROM C000055 WHERE ID_ABERTURA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0) AS SUP_VALOR,');

      SQL.Add('   SUM(TB0.FRM_PARCELA_VALOR)');
      SQL.Add('   - SUM(TB0.F_VLR_TROCO)');
      SQL.Add('   + COALESCE((SELECT F_ABER_VALOR   FROM C000002 WHERE ID_ABERTURA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0)');
      SQL.Add('   - COALESCE((SELECT SUM(SNG_VALOR) FROM C000053 WHERE ID_ABERTURA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0)');
      SQL.Add('   - COALESCE((SELECT SUM(RET_VALOR) FROM C000054 WHERE ID_ABERTURA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0)');
      SQL.Add('   + COALESCE((SELECT SUM(SUP_VALOR) FROM C000055 WHERE ID_ABERTURA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0)');
      SQL.Add('   AS F_VLR_LIQUIDO');

      SQL.Add('FROM');
      SQL.Add('   (SELECT');
      SQL.Add('      T2.ID_OPERADOR,');
      SQL.Add('      T2.F_OPERADOR,');
      SQL.Add('      T2.F_VLR_TROCO,');
      SQL.Add('      T1.FRM_PARCELA_VALOR');
      SQL.Add('   FROM');
      SQL.Add('      C000052 AS T1');
      SQL.Add('   INNER JOIN');
      SQL.Add('      C000050 AS T2');
      SQL.Add('   ON');
      SQL.Add('      T1.ID_C000050     = T2.ID');
      SQL.Add('   WHERE');
      SQL.Add('      T2.ID_ABERTURA    = :ID_ABER');
      SQL.Add('   AND');
      SQL.Add('      T2.F_CUPOM_STATUS = 1');
      SQL.Add('   AND');
      SQL.Add('      T1.ID_FORMA_PAGTO = 1');
      SQL.Add('   ) AS TB0');
      SQL.Add('GROUP BY');
      SQL.Add('   TB0.ID_OPERADOR,');
      SQL.Add('   TB0.F_OPERADOR');
      ParamByName('ID_ABER').AsString := ID_Abertura;
      Open();
   end;
end;

procedure TFrRelatorioCaixa.prcFormasPagamentos(ID_Abertura: String);
begin
   {Carrega as formas de pagamentos}
   with QueryFormaPagto do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('   T1.FRM_DESCRICAO,');
      SQL.Add('   IIF(T1.ID_FORMA_PAGTO = 1');
      SQL.Add('      ,SUM(T1.FRM_PARCELA_VALOR - T2.F_VLR_TROCO)');
      SQL.Add('      ,SUM(T1.FRM_PARCELA_VALOR)');
      SQL.Add('   ) AS F_VALOR');
      SQL.Add('FROM');
      SQL.Add('   C000052 AS T1');
      SQL.Add('INNER JOIN');
      SQL.Add('   C000050 AS T2');
      SQL.Add('ON');
      SQL.Add('   T2.ID = T1.ID_C000050');
      SQL.Add('WHERE');
      SQL.Add('   T2.F_CUPOM_STATUS = 1');
      SQL.Add('AND');
      SQL.Add('   T2.ID_ABERTURA = :ID_ABER');
      SQL.Add('GROUP BY');
      SQL.Add('   T1.FRM_DESCRICAO,');
      SQL.Add('   T1.ID_FORMA_PAGTO');
      SQL.Add('ORDER BY');
      SQL.Add('   T1.FRM_DESCRICAO');
      ParamByName('ID_ABER').AsString := ID_Abertura;
      Open();
   end;
end;

procedure TFrRelatorioCaixa.CarregarRelatorio(ID_Abertura: String; Preview : Boolean = true);
begin
   {
      Data:       06/07/2019
      Autor:      Winston Moreira
      Aplicação:  Relatorio do caixa
      Descrição:  Exibe os valores totais diarios do caixa
   }

   {Carrega os movimentos do caixa}
   if fnMovimentoCaixa(ID_Abertura) then
   begin

      {Carrega as formas de pagamentos}
      prcFormasPagamentos(ID_Abertura);

      {Carrega o resumo por vendedor}
      prcResumoVendedor(ID_Abertura);

      {Carrega o resumo por vendedor}
      prcDinheiroCaixa(ID_Abertura);

      {Exibe o preview do relatório}
      if Preview then
         Printer.Preview()
      else
      begin
         Printer.PrintDialog := false;
         Printer.Print;
      end;

   end;

end;

function TFrRelatorioCaixa.fnMovimentoCaixa(ID_Abertura: String) : boolean;
begin
   Result := false;
   
   try
      {Carrega as formas de pagamentos}
      with QueryMovtos do
      begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT');
         SQL.Add('   COALESCE(SUM(F_VLR_SUBTOTAL),0) AS F_VLR_SUBTOTAL,');
         SQL.Add('   COALESCE(SUM(F_VLR_TROCO),0) AS F_VLR_TROCO,');
         SQL.Add('   COALESCE(SUM(F_VLR_DESCONTO),0) AS F_VLR_DESCONTO,');
         SQL.Add('   COALESCE((SELECT SUM(SNG_VALOR) FROM C000053 WHERE ID_ABERTURA = :ID_ABER),0) AS F_VLR_SANGRIA,');
         SQL.Add('   COALESCE((SELECT SUM(RET_VALOR) FROM C000054 WHERE ID_ABERTURA = :ID_ABER),0) AS F_VLR_RETIRADA,');
         SQL.Add('   COALESCE((SELECT SUM(SUP_VALOR) FROM C000055 WHERE ID_ABERTURA = :ID_ABER),0) AS F_VLR_SUPRIMENTOS,');
         SQL.Add('   (SELECT          F_ABER_VALOR   FROM C000002 WHERE ID_ABERTURA = :ID_ABER),');


         {Exibe o valor líquido do caixa}
         SQL.Add('   COALESCE(SUM(F_VLR_TOTAL),0)');
         SQL.Add('   - COALESCE((SELECT SUM(SNG_VALOR) FROM C000053 WHERE ID_ABERTURA = :ID_ABER),0)');
         SQL.Add('   - COALESCE((SELECT SUM(RET_VALOR) FROM C000054 WHERE ID_ABERTURA = :ID_ABER),0)');
         SQL.Add('   + COALESCE((SELECT SUM(SUP_VALOR) FROM C000055 WHERE ID_ABERTURA = :ID_ABER),0)');
         SQL.Add('   + (SELECT F_ABER_VALOR FROM C000002 WHERE ID_ABERTURA = :ID_ABER) AS F_VLR_LIQUIDO');

         SQL.Add('FROM');
         SQL.Add('   C000050');
         SQL.Add('WHERE');
         SQL.Add('   ID_ABERTURA    = :ID_ABER');
         SQL.Add('AND');
         SQL.Add('   F_CUPOM_STATUS = 1');
         ParamByName('ID_ABER').AsString := ID_Abertura;
         Open();

         Result := true;
      end;
   except
      on e:exception do
         Application.MessageBox('Erro ao carregar o relatório do caixa','TechCore-PDV',mb_IconStop or mb_ok);
   end;
end;

procedure TFrRelatorioCaixa.prcResumoVendedor(ID_Abertura: String);
begin

   {Carrega as formas de pagamentos}
   with QueryResVendedor do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('   SUM(F_VLR_CUPOM),');
      SQL.Add('   SUM(F_VLR_DESCONTO),');
      SQL.Add('   SUM(F_VLR_TOTAL),');
      SQL.Add('   VENDEDOR_APELIDO');
      SQL.Add('FROM');
      SQL.Add('   C000050');
      SQL.Add('WHERE');
      SQL.Add('   ID_ABERTURA = :ID_ABER');
      SQL.Add('AND');
      SQL.Add('   F_CUPOM_STATUS = 1');
      SQL.Add('GROUP BY');
      SQL.Add('   VENDEDOR_APELIDO');
      SQL.Add('ORDER BY');
      SQL.Add('   SUM(F_VLR_CUPOM) DESC');
      ParamByName('ID_ABER').AsString := ID_Abertura;
      Open();
   end;
end;

procedure TFrRelatorioCaixa.RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   PrintIt := Printer.DataEof
end;

procedure TFrRelatorioCaixa.RLDBText10BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + '(-)';
end;

procedure TFrRelatorioCaixa.RLDBText12BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + '(-)';
end;

procedure TFrRelatorioCaixa.RLDBText14BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + '(+)';
end;

procedure TFrRelatorioCaixa.RLDBText16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + '(+)';
end;

procedure TFrRelatorioCaixa.RLDBText18BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if AText = '0,00' then
      AText := 'Sem Movimento'
   else
      AText := AText + '(=)';
end;

procedure TFrRelatorioCaixa.RLDBText1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + ':';
end;

procedure TFrRelatorioCaixa.RLDBText4BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + '(=)';
end;

procedure TFrRelatorioCaixa.RLDBText5BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + '(=)';
end;

procedure TFrRelatorioCaixa.RLDBText6BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + '(=)';
end;

procedure TFrRelatorioCaixa.RLDBText8BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := AText + '(-)';
end;

procedure TFrRelatorioCaixa.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := ObjCaixa.Caixa_Descricao;
end;

procedure TFrRelatorioCaixa.RLLabel32BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := FEmpresaClass.RazaoSocial;
end;

procedure TFrRelatorioCaixa.RLLabel33BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := FEmpresaClass.NomeFantasia;
end;

procedure TFrRelatorioCaixa.RLLabel34BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := FEmpresaClass.Endereco + ', ' + Format('%.2d', [FEmpresaClass.Numero]);
end;

procedure TFrRelatorioCaixa.RLLabel35BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if PrintFechamento then
   begin
      (Sender as TRLLabel).Height := 0;
      PrintIt := not PrintFechamento
   end
   else
      AText   := 'ABERTURA: ' + FormatDateTime('c',DataHoraAbert);
end;

procedure TFrRelatorioCaixa.RLLabel38BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if PrintFechamento then
      AText := 'FECHAMENTO: ' + FormatDateTime('c',Now)
   else
      AText := 'IMPRESSÃO: ' + FormatDateTime('c',Now);
end;

procedure TFrRelatorioCaixa.RLLabel4BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   if PrintFechamento then
      AText := 'Fechamento do Caixa.'
   else
      AText := 'Resumo do Caixa (detalhado por abertura).';
end;

procedure TFrRelatorioCaixa.RLMemo2BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := FEmpresaClass.Bairro;
   AText := AText + ' - ';
   AText := AText + FEmpresaClass.Cidade;
   AText := AText + ' - ';
   AText := AText + FEmpresaClass.UF;
   AText := AText + ' - ';
   AText := AText + 'CEP: ' + FEmpresaClass.Cep;
end;

end.
