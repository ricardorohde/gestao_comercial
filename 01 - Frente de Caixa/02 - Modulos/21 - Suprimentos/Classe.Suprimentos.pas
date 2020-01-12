unit Classe.Suprimentos;

interface
Uses
   FireDAC.Comp.Client,
   System.SysUtils,
   Vcl.Forms,
   WinApi.Windows;

type
   TCupomSuprimento = class
   private
      FSaldoAtual: Double;
      FDataSuprim: TDateTime;
      FOperadorNome: String;
      FValorSuprim: Double;
      FHoraSuprim: TDateTime;
      FSaldoApos: Double;
      FCodigoCaixa: String;
      FCodigoEmpresa: String;
      FAnotacoes: String;

      procedure SetCodigoCaixa(const Value: String);
      procedure SetCodigoEmpresa(const Value: String);
      procedure SetDataSuprim(const Value: TDateTime);
      procedure SetHoraSuprim(const Value: TDateTime);
      procedure SetOperadorNome(const Value: String);
      procedure SetSaldoApos(const Value: Double);
      procedure SetSaldoAtual(const Value: Double);
      procedure SetValorSuprim(const Value: Double);
      procedure SetAnotacoes(const Value: String);

      procedure LerSuprimentos;

   published
      Constructor Create;

      property DataSuprim    : TDateTime read FDataSuprim write SetDataSuprim;
      property HoraSuprim    : TDateTime read FHoraSuprim write SetHoraSuprim;
      property CodigoEmpresa : String read FCodigoEmpresa write SetCodigoEmpresa;
      property CodigoCaixa   : String read FCodigoCaixa write SetCodigoCaixa;
      property OperadorNome  : String read FOperadorNome write SetOperadorNome;
      property SaldoAtual    : Double read FSaldoAtual write SetSaldoAtual;
      property ValorSuprim   : Double read FValorSuprim write SetValorSuprim;
      property SaldoApos     : Double read FSaldoApos write SetSaldoApos;
      property Anotacoes    : String read FAnotacoes write SetAnotacoes;
   end;

var
   ObjSuprimentos : TCupomSuprimento;

implementation

{ TCupomSuprimento }

uses uModulo;

constructor TCupomSuprimento.Create;
begin
   LerSuprimentos;
end;

procedure TCupomSuprimento.LerSuprimentos;
var
   aQuery : TFDQuery;
begin

   try
      aQuery            := TFDQuery.Create(nil);
      aQuery.Connection := FrModulo.DBCon_Local;

      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('SELECT');
      aQuery.SQL.Add('  T1.*,');
      aQuery.SQL.Add('  LPAD(T2.OPR_CODIGO,2,0) || '' - '' || OPR_APELIDO AS OPERADOR,');
      aQuery.SQL.Add('  LPAD(T3.F_CODIGO,2,0) AS CAX_CODIGO,');
      aQuery.SQL.Add('  LPAD(T4.EMP_CODIGO,2,0) AS EMP_CODIGO');
      aQuery.SQL.Add('FROM');
      aQuery.SQL.Add('  C000055 AS T1');
      aQuery.SQL.Add('JOIN');
      aQuery.SQL.Add('  C000060 AS T2');
      aQuery.SQL.Add('ON');
      aQuery.SQL.Add('  T2.ID = T1.ID_OPERADOR');
      aQuery.SQL.Add('JOIN');
      aQuery.SQL.Add('  C000017 AS T3');
      aQuery.SQL.Add('ON');
      aQuery.SQL.Add('  T3.ID = T1.ID_EMPRESA');
      aQuery.SQL.Add('JOIN');
      aQuery.SQL.Add('  C000501 AS T4');
      aQuery.SQL.Add('ON');
      aQuery.SQL.Add('  T4.ID = T1.ID_EMPRESA');
      aQuery.SQL.Add('WHERE');
      aQuery.SQL.Add('  T1.ID = (SELECT MAX(ID) FROM C000055)');
      aQuery.Open();

      if aQuery.IsEmpty then
      begin
         Application.MessageBox('Erro ao resgatar o Suprimento, tente novamente','TechCore-PDV',mb_IconStop or mb_ok);
         Abort;
      end;

      // Configura o objeto
      DataSuprim    := aQuery.FieldByName('sup_data').AsDateTime;
      HoraSuprim    := aQuery.FieldByName('sup_data').AsDateTime;
      CodigoEmpresa := aQuery.FieldByName('emp_codigo').AsString;
      CodigoCaixa   := aQuery.FieldByName('cax_codigo').AsString;
      OperadorNome  := aQuery.FieldByName('operador').AsString;
      SaldoAtual    := aQuery.FieldByName('sup_saldo_atual').AsFloat;
      ValorSuprim   := aQuery.FieldByName('sup_valor').AsFloat;
      SaldoApos     := aQuery.FieldByName('sup_saldo_apos').AsFloat;
      Anotacoes     := aQuery.FieldByName('sup_anotacoes').AsString;

   finally
      FreeAndNil(aQuery);
   end;
end;

procedure TCupomSuprimento.SetAnotacoes(const Value: String);
begin
  FAnotacoes := Value;
end;

procedure TCupomSuprimento.SetCodigoCaixa(const Value: String);
begin
  FCodigoCaixa := Value;
end;

procedure TCupomSuprimento.SetCodigoEmpresa(const Value: String);
begin
  FCodigoEmpresa := Value;
end;

procedure TCupomSuprimento.SetDataSuprim(const Value: TDateTime);
begin
  FDataSuprim := Value;
end;

procedure TCupomSuprimento.SetHoraSuprim(const Value: TDateTime);
begin
  FHoraSuprim := Value;
end;

procedure TCupomSuprimento.SetOperadorNome(const Value: String);
begin
  FOperadorNome := Value;
end;

procedure TCupomSuprimento.SetSaldoApos(const Value: Double);
begin
  FSaldoApos := Value;
end;

procedure TCupomSuprimento.SetSaldoAtual(const Value: Double);
begin
  FSaldoAtual := Value;
end;

procedure TCupomSuprimento.SetValorSuprim(const Value: Double);
begin
  FValorSuprim := Value;
end;

end.
