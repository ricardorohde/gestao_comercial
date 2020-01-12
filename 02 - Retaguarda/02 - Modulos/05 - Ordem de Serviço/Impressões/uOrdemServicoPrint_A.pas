unit uOrdemServicoPrint_A;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.MaskUtils, RLFilters, RLPDFFilter;

type
  TFrOrdemServicoPrint_A = class(TForm)
    Print: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand2: TRLBand;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel44: TRLLabel;
    dsQueryProdutos: TDataSource;
    QueryCli: TFDQuery;
    dsQueryCli: TDataSource;
    QueryCliCLI_CODIGO: TIntegerField;
    QueryCliCLI_RAZAO_SOCIAL: TStringField;
    QueryCliCLI_NOME_FANTASIA: TStringField;
    QueryCliCLI_CNPJ: TStringField;
    QueryCliCLI_IESTADUAL: TStringField;
    QueryCliCLI_ENDERECO: TStringField;
    QueryCliCLI_CEP: TStringField;
    QueryCliCLI_CIDADE: TStringField;
    QueryCliCLI_BAIRRO: TStringField;
    QueryCliCLI_COMPLEMENTO: TStringField;
    QueryCliCLI_UF: TStringField;
    QueryCliCLI_FONE_FIXO: TStringField;
    QueryCliCLI_FONE_MOVEL: TStringField;
    QueryCliCLI_EMAIL: TStringField;
    RLDBMemo1: TRLDBMemo;
    ed_OsNumero: TRLDBText;
    QueryPagtos: TFDQuery;
    QueryPagtosID: TIntegerField;
    QueryPagtosID_C000070: TIntegerField;
    QueryPagtosID_FORMA_PAGTO: TIntegerField;
    QueryPagtosPAG_VENCTO: TDateField;
    QueryPagtosPAG_VLR_SUBTOTAL: TFMTBCDField;
    QueryPagtosPAG_JUROS: TFMTBCDField;
    QueryPagtosPAG_VLR_TOTAL: TFMTBCDField;
    QueryPagtosPAG_VLR_JUROS: TFMTBCDField;
    QueryPagtosPAG_ANOTACOES: TStringField;
    QueryPagtosPAG_FORMA_DESCRICAO: TStringField;
    dsQueryPagtos: TDataSource;
    RLBand6: TRLBand;
    RLLabel19: TRLLabel;
    ed_DataEmissao: TRLDBText;
    QueryCliID: TIntegerField;
    QueryCliCLI_TIPO_PESSOA: TIntegerField;
    RLLabel3: TRLLabel;
    RLBand4: TRLBand;
    RLDraw17: TRLDraw;
    RLLabel5: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    ed_SubTotal: TRLDBText;
    ed_Despesas: TRLDBText;
    ed_Total: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLGroup2: TRLGroup;
    RLGroup3: TRLGroup;
    RLSubDetail1: TRLSubDetail;
    RLBand5: TRLBand;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLBand7: TRLBand;
    RLLabel32: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel17: TRLLabel;
    dsQuery: TDataSource;
    RLSystemInfo1: TRLSystemInfo;
    RLMemo1: TRLMemo;
    RLBand8: TRLBand;
    RLBand9: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel33: TRLLabel;
    procedure QueryCliCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure RLLabel6BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure RLLabel7BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure PrintBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLLabel3BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText5BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    id_cliente    : integer;
    id_c000070    : integer;
    exibe_valores : boolean;
  end;

var
  FrOrdemServicoPrint_A: TFrOrdemServicoPrint_A;

implementation

uses
   uOrdemServico, Classe.Empresa, uModuloRet, Classe.OrdensServicos;

{$R *.dfm}

procedure TFrOrdemServicoPrint_A.PrintBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   // Dados completos do cliente
   QueryCli.Open();

   // Dados dos pagamentos
   QueryPagtos.Open();
end;

procedure TFrOrdemServicoPrint_A.QueryCliCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      {Ajusta o formulário conforme o tipo de cadastro}
      case QueryCli.FieldByName('cli_tipo_pessoa').AsInteger of

         1 : begin   // Pessoa jurídica

            {Mascaras dos campos}
            Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',QueryCli.FieldByName('cli_cnpj').AsString);

         end;

         2 : begin   // Pessoa Física

            {Mascaras dos campos}
            Text := FormatMaskText('!999\.999\.999\-99;0;_',QueryCli.FieldByName('cli_cnpj').AsString)
         end;

      end;
   end;
end;

procedure TFrOrdemServicoPrint_A.RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if ClassOrdensServicos.ExibeMsg = 'S' then
   begin
      RLMemo1.Lines.Add(ClassOrdensServicos.Linha1);
      RLMemo1.Lines.Add(ClassOrdensServicos.Linha2);
   end
   else
      PrintIt := false;
end;

procedure TFrOrdemServicoPrint_A.RLDBText5BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
   if not exibe_valores then
      aText := '0,00';
end;

procedure TFrOrdemServicoPrint_A.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := FEmpresaClass.RazaoSocial;
end;

procedure TFrOrdemServicoPrint_A.RLLabel3BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   with FEmpresaClass do
   begin
      AText := Bairro + ' - ' + Cidade + ' - ' + UF;
   end;
end;

procedure TFrOrdemServicoPrint_A.RLLabel6BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   with FEmpresaClass do
   begin
      AText := Endereco + ', ' + Numero.ToString + ' - ' + 'CEP: ' + FormatMaskText('!99999-999;0;', Cep)
   end;
end;

procedure TFrOrdemServicoPrint_A.RLLabel7BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := 'FONE: ' + FormatMaskText('!(99)9999-9999;0;', FEmpresaClass.FoneFixo)
end;

procedure TFrOrdemServicoPrint_A.RLSubDetail1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if not exibe_valores then
      PrintIt := false
end;

end.
