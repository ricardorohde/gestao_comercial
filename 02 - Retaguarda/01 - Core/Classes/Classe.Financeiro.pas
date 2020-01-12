unit Classe.Financeiro;

interface
uses
   System.SysUtils,
   FireDAC.Comp.Client,
   Data.DB;

type
   TFinanceiro = class
  private
    FPlnCtasRec_Dsc: String;
    FPlnCtasRec_ID: Integer;
    FPlnCtasPag_Dsc: String;
    FPlnCtasPag_ID: Integer;
    FMultaTaxa: Real;
    FJurosTaxa: Real;
    FMultaCarencia: Integer;
    FJurosCarencia: Integer;

    procedure SetPlnCtasPag_Dsc(const Value: String);
    procedure SetPlnCtasPag_ID(const Value: Integer);
    procedure SetPlnCtasRec_Dsc(const Value: String);
    procedure SetPlnCtasRec_ID(const Value: Integer);
    procedure SetJurosCarencia(const Value: Integer);
    procedure SetJurosTaxa(const Value: Real);
    procedure SetMultaCarencia(const Value: Integer);
    procedure SetMultaTaxa(const Value: Real);

    procedure CarregarDados(id_emp : Integer);

  published

   Constructor Create(id_emp : integer);

   property PlnCtasPag_ID  : Integer read FPlnCtasPag_ID write SetPlnCtasPag_ID;
   property PlnCtasPag_Dsc : String read FPlnCtasPag_Dsc write SetPlnCtasPag_Dsc;
   property PlnCtasRec_ID  : Integer read FPlnCtasRec_ID write SetPlnCtasRec_ID;
   property PlnCtasRec_Dsc : String read FPlnCtasRec_Dsc write SetPlnCtasRec_Dsc;
   property JurosCarencia  : Integer read FJurosCarencia write SetJurosCarencia;
   property JurosTaxa      : Real read FJurosTaxa write SetJurosTaxa;
   property MultaCarencia  : Integer read FMultaCarencia write SetMultaCarencia;
   property MultaTaxa      : Real read FMultaTaxa write SetMultaTaxa;
end;

var
   ClassFinanceiro : TFinanceiro;

implementation

{ TFinanceiro }

uses uModuloRet, Classe.Empresa;

procedure TFinanceiro.CarregarDados(id_emp: Integer);
var
   Query : TFDQuery;
begin

   Query            := TFDQuery.Create(nil);
   Query.Connection := FrModuloRet.DBConexao;
   try
      Query.Close;
      Query.SQL.Clear;
      Query.SQL.Add('select * from C000501_fin where id_emp = :id_emp');
      Query.ParamByName('id_emp').AsInteger := id_emp;
      Query.Open();

      {Carrega os dados}
      PlnCtasPag_ID  := Query.FieldByName('id_pln_ctas_pag').AsInteger;
      PlnCtasPag_Dsc := Query.FieldByName('pln_ctas_pag_desc').AsString;

      PlnCtasRec_ID  := Query.FieldByName('id_pln_ctas_rec').AsInteger;
      PlnCtasRec_Dsc := Query.FieldByName('pln_ctas_rec_desc').AsString;

      JurosCarencia  := Query.FieldByName('f_juros_caren').AsInteger;
      JurosTaxa      := Query.FieldByName('f_juros').AsFloat;

      MultaCarencia  := Query.FieldByName('f_multa_caren').AsInteger;
      MultaTaxa      := Query.FieldByName('f_multa').AsFloat;

   finally
      FreeAndNil(Query);
   end;
end;

constructor TFinanceiro.Create(id_emp : integer);
begin
   CarregarDados(FEmpresaClass.ID);
end;

procedure TFinanceiro.SetJurosCarencia(const Value: Integer);
begin
  FJurosCarencia := Value;
end;

procedure TFinanceiro.SetJurosTaxa(const Value: Real);
begin
  FJurosTaxa := Value;
end;

procedure TFinanceiro.SetMultaCarencia(const Value: Integer);
begin
  FMultaCarencia := Value;
end;

procedure TFinanceiro.SetMultaTaxa(const Value: Real);
begin
  FMultaTaxa := Value;
end;

procedure TFinanceiro.SetPlnCtasPag_Dsc(const Value: String);
begin
  FPlnCtasPag_Dsc := Value;
end;

procedure TFinanceiro.SetPlnCtasPag_ID(const Value: Integer);
begin
  FPlnCtasPag_ID := Value;
end;

procedure TFinanceiro.SetPlnCtasRec_Dsc(const Value: String);
begin
  FPlnCtasRec_Dsc := Value;
end;

procedure TFinanceiro.SetPlnCtasRec_ID(const Value: Integer);
begin
  FPlnCtasRec_ID := Value;
end;

end.
