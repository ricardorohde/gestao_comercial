unit uProdutoEtiquetas3x21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Stan.StorageBin, Data.DB, RLBarcode, RLReport,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrProdutoEtiqueta3x21 = class(TForm)
    Printer: TRLReport;
    eGrid: TRLDetailGrid;
    DataSource1: TDataSource;
    Query: TFDQuery;
    pQuery: TFDMemTable;
    RLDBText1: TRLDBText;
    RLDBBarcode1: TRLDBBarcode;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    pQueryID: TIntegerField;
    pQueryF_DESCRICAO: TStringField;
    pQueryF_CODIGO: TIntegerField;
    pQueryF_UNIDADE: TStringField;
    pQueryF_VALOR: TBCDField;
    pQueryF_CODIGO_BARRAS: TLargeintField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CarregarEtiquetas(ID_Produto, ID_Precos, QtdeVias : Integer) : Boolean;
  end;

var
  FrProdutoEtiqueta3x21: TFrProdutoEtiqueta3x21;

implementation

{$R *.dfm}

uses uModuloRet, Classe.Empresa;

function TFrProdutoEtiqueta3x21.CarregarEtiquetas(ID_Produto, ID_Precos, QtdeVias: Integer): Boolean;
var
   I : integer;
begin
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT');
   Query.SQL.Add('   T1.ID,');
   Query.SQL.Add('   T1.PRD_CODIGO,');
   Query.SQL.Add('   IIF(T1.PRD_CODIGO_BRR = ''SEM GTIN''');
   Query.SQL.Add('      , T1.PRD_CODIGO');
   Query.SQL.Add('      , T1.PRD_CODIGO_BRR');
   Query.SQL.Add('   ) AS PRD_CODIGO_BRR,');
   Query.SQL.Add('   T1.PRD_DESCRICAO_CURTA,');
   Query.SQL.Add('   T1.PRD_UNIDADE,');
   Query.SQL.Add('   (SELECT COALESCE(PRC_VLR_VENDA,0) FROM C000304 WHERE ID_TABELA = :ID_TABELA_PRECOS AND ID_PRODUTO = T1.ID) AS PRD_VLR_VENDA');
   Query.SQL.Add('FROM');
   Query.SQL.Add('   C000405 AS T1');
   Query.SQL.Add('WHERE');
   Query.SQL.Add('ID = :ID');
   Query.ParamByName('ID').AsInteger               := ID_Produto;
   Query.ParamByName('ID_TABELA_PRECOS').AsInteger := ID_Precos;
   Query.Open();

   if Query.FieldByName('prd_descricao_curta').AsString = EmptyStr then
   begin
      Application.MessageBox('Erro ao imprimir, Produto sem descrição curta.','TechCore-RTG',mb_IconStop or mb_ok);
      Result := false;
      Abort;
   end;

   pQuery.Active := true;

   for i := 1 to QtdeVias do
   begin
      pQuery.Insert;
      pQuery.FieldByName('f_descricao').AsString     := Query.FieldByName('prd_descricao_curta').AsString;
      pQuery.FieldByName('f_codigo').AsInteger       := I;
      pQuery.FieldByName('f_codigo_barras').AsString := Query.FieldByName('prd_codigo_brr').AsString;
      pQuery.FieldByName('f_unidade').AsString       := Query.FieldByName('prd_unidade').AsString;
      pQuery.FieldByName('f_valor').AsFloat          := Query.FieldByName('prd_vlr_venda').AsFloat;
      pQuery.Post;
   end;

   Printer.Print;

end;

procedure TFrProdutoEtiqueta3x21.FormCreate(Sender: TObject);
begin
   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Venda of
      2 : pQueryF_VALOR.DisplayFormat := ',0.00';
      3 : pQueryF_VALOR.DisplayFormat := ',0.000';
      4 : pQueryF_VALOR.DisplayFormat := ',0.0000';
   end;
end;

end.
