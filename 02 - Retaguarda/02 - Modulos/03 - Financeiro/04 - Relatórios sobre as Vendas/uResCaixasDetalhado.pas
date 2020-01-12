unit uResCaixasDetalhado;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
   FireDAC.DApt, RLReport, Data.DB,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLParser;

type
   TFrResCaixasDetalhado = class(TForm)
      Printer: TRLReport;
      RLBand1: TRLBand;
      RLLabel1: TRLLabel;
      RLSystemInfo1: TRLSystemInfo;
      RLSystemInfo2: TRLSystemInfo;
      RLSystemInfo3: TRLSystemInfo;
      RLLabel2: TRLLabel;
      RLLabel16: TRLLabel;
      dsQuery: TDataSource;
      RLBand2: TRLBand;
      RLLabel7: TRLLabel;
      RLLabel4: TRLLabel;
      RLLabel5: TRLLabel;
      RLLabel6: TRLLabel;
      RLLabel8: TRLLabel;
      RLLabel3: TRLLabel;
      RLBand3: TRLBand;
      RLDBText1: TRLDBText;
      RLDBText2: TRLDBText;
      RLDBText3: TRLDBText;
      RLDBText4: TRLDBText;
      RLDBText5: TRLDBText;
      RLDBText6: TRLDBText;
      RLBand5: TRLBand;
      RLBand6: TRLBand;
      RLDBResult2: TRLDBResult;
      RLLabel9: TRLLabel;
      RLDBText7: TRLDBText;
      RLDBText9: TRLDBText;
      RLLabel10: TRLLabel;
      RLGroup1: TRLGroup;
      RLDraw1: TRLDraw;
      RLDBResult1: TRLDBResult;
      Query: TFDQuery;
      QueryID: TIntegerField;
      QueryID_EMPRESA: TIntegerField;
      QueryID_ABERTURA: TStringField;
      QueryID_CLIENTE: TIntegerField;
      QueryID_OPERADOR: TIntegerField;
      QueryID_VENDEDOR: TIntegerField;
      QueryID_CAIXA: TIntegerField;
      QueryF_CUP_DATA: TDateField;
      QueryF_CUP_NUMERO: TIntegerField;
      QueryF_CUP_SUBTOTAL: TFMTBCDField;
      QueryF_CUP_DESCONTO: TFMTBCDField;
      QueryF_CUP_TOTAL: TFMTBCDField;
      QueryF_CUP_PAGO: TFMTBCDField;
      QueryF_CUP_TROCO: TFMTBCDField;
      QueryF_CUP_STATUS: TIntegerField;
      QueryF_CUP_DIRETIVA: TIntegerField;
      QueryF_CUP_CHAVE_XML: TStringField;
      QueryF_CUP_MG_DESCONTO: TBCDField;
      QueryF_CUP_COMISSAO: TFMTBCDField;
      QueryF_CUP_VLR_COMISSAO: TBCDField;
      QueryFUN_APELIDO: TStringField;
      QueryID_50: TIntegerField;
      RLExpressionParser1: TRLExpressionParser;
      lbCaixa: TRLLabel;
      procedure RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
      procedure RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure lbCaixaBeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
      agData, bgData: TDateTime;
      CaixaDesc: String;
      function CarregarDadosBD(aData, bData: TDateTime; CaixaID: Integer; NomeCaixa: String): Boolean;
   end;

var
   FrResCaixasDetalhado: TFrResCaixasDetalhado;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

function TFrResCaixasDetalhado.CarregarDadosBD(aData, bData: TDateTime; CaixaID: Integer; NomeCaixa: String): Boolean;
begin
   // Coloca a data nas variaveis globais
   agData := aData;
   bgData := bData;

   // Resgata o nome do caixa
   CaixaDesc := NomeCaixa;

   // Configura o cursor
   Query.Close;
   Query.SQL.Clear;

   Query.SQL.Add('SELECT');
   Query.SQL.Add('   T1.*,');
   Query.SQL.Add('   (SELECT LPAD(FUN_CODIGO,3,0) || '' - '' || FUN_APELIDO FROM C000301 WHERE ID = T1.ID_VENDEDOR) AS FUN_APELIDO');
   Query.SQL.Add('FROM');
   Query.SQL.Add('   C000030 AS T1');
   Query.SQL.Add('WHERE');
   Query.SQL.Add('   T1.ID_EMPRESA   = :ID_EMP');
   Query.SQL.Add('AND');
   Query.SQL.Add('   T1.F_CUP_STATUS = 1');

   if CaixaID <> 999 then
   begin
      Query.SQL.Add('AND');
      Query.SQL.Add('   T1.ID_CAIXA  = :ID_CAIXA');
   end;

   Query.SQL.Add('AND');
   Query.SQL.Add('   T1.F_CUP_DATA BETWEEN :DT_A AND :DT_B');
   Query.SQL.Add('ORDER BY');
   Query.SQL.Add('   T1.F_CUP_DATA, T1.ID_VENDEDOR DESC');

   if CaixaID <> 999 then
      Query.ParamByName('id_caixa').AsInteger := CaixaID;

   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('dt_a').AsDateTime := aData;
   Query.ParamByName('dt_b').AsDateTime := bData;
   Query.Open();

   // Checa e retornou algum registro
   if Query.IsEmpty then
      Result := false
   else
      Result := true;
end;

procedure TFrResCaixasDetalhado.lbCaixaBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := 'Caixa Selecionado: ' + CaixaDesc;
end;

procedure TFrResCaixasDetalhado.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := 'PEDÍODO SELECIONADO: ' + DatetoStr(agData) + ' - ' + DatetoStr(bgData);
end;

procedure TFrResCaixasDetalhado.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := FEmpresaClass.RazaoSocial;
end;

end.
