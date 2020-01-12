unit Classe.Retirada;

interface
   Uses
      FireDAC.Comp.Client,
      System.SysUtils,
      Vcl.Forms,
      WinApi.Windows;

type
   TCupomRetirada = class
   private
      FHoraRetirada: TDateTime;
      FAnotacoes: String;
      FSaldoAtual: Double;
      FOperadorNome: String;
      FSaldoApos: Double;
      FValorRetirada: Double;
      FCodigoCaixa: String;
      FDataRetirada: TDateTime;
      FCodigoEmpresa: String;

      procedure SetAnotacoes(const Value: String);
      procedure SetCodigoCaixa(const Value: String);
      procedure SetCodigoEmpresa(const Value: String);
      procedure SetDataRetirada(const Value: TDateTime);
      procedure SetHoraRetirada(const Value: TDateTime);
      procedure SetOperadorNome(const Value: String);
      procedure SetSaldoApos(const Value: Double);
      procedure SetSaldoAtual(const Value: Double);
      procedure SetValorRetirada(const Value: Double);

      procedure LerRetirada;

   published
      Constructor Create;

      property DataRetirada  : TDateTime read FDataRetirada write SetDataRetirada;
      property HoraRetirada  : TDateTime read FHoraRetirada write SetHoraRetirada;
      property CodigoEmpresa : String read FCodigoEmpresa write SetCodigoEmpresa;
      property CodigoCaixa   : String read FCodigoCaixa write SetCodigoCaixa;
      property OperadorNome  : String read FOperadorNome write SetOperadorNome;
      property SaldoAtual    : Double read FSaldoAtual write SetSaldoAtual;
      property ValorRetirada : Double read FValorRetirada write SetValorRetirada;
      property SaldoApos     : Double read FSaldoApos write SetSaldoApos;
      property Anotacoes     : String read FAnotacoes write SetAnotacoes;
   end;

var
   ObjRetirada : TCupomRetirada;

implementation

{ TCupomRetirada }

uses uModulo;

constructor TCupomRetirada.Create;
begin
   LerRetirada;
end;

procedure TCupomRetirada.LerRetirada;
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
      aQuery.SQL.Add('  C000054 AS T1');
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
      aQuery.SQL.Add('  T1.ID = (SELECT MAX(ID) FROM C000054)');
      aQuery.Open();

      if aQuery.IsEmpty then
      begin
         Application.MessageBox('Erro ao resgatar a Retirada, tente novamente','TechCore-PDV',mb_IconStop or mb_ok);
         Abort;
      end;

      // Configura o objeto
      DataRetirada  := aQuery.FieldByName('ret_data').AsDateTime;
      HoraRetirada  := aQuery.FieldByName('ret_data').AsDateTime;
      CodigoEmpresa := aQuery.FieldByName('emp_codigo').AsString;
      CodigoCaixa   := aQuery.FieldByName('cax_codigo').AsString;
      OperadorNome  := aQuery.FieldByName('operador').AsString;
      SaldoAtual    := aQuery.FieldByName('ret_saldo_atual').AsFloat;
      ValorRetirada := aQuery.FieldByName('ret_valor').AsFloat;
      SaldoApos     := aQuery.FieldByName('ret_saldo_apos').AsFloat;
      Anotacoes     := aQuery.FieldByName('ret_anotacoes').AsString;

   finally
      FreeAndNil(aQuery);
   end;
end;

procedure TCupomRetirada.SetAnotacoes(const Value: String);
begin
  FAnotacoes := Value;
end;

procedure TCupomRetirada.SetCodigoCaixa(const Value: String);
begin
  FCodigoCaixa := Value;
end;

procedure TCupomRetirada.SetCodigoEmpresa(const Value: String);
begin
  FCodigoEmpresa := Value;
end;

procedure TCupomRetirada.SetDataRetirada(const Value: TDateTime);
begin
  FDataRetirada := Value;
end;

procedure TCupomRetirada.SetHoraRetirada(const Value: TDateTime);
begin
  FHoraRetirada := Value;
end;

procedure TCupomRetirada.SetOperadorNome(const Value: String);
begin
  FOperadorNome := Value;
end;

procedure TCupomRetirada.SetSaldoApos(const Value: Double);
begin
  FSaldoApos := Value;
end;

procedure TCupomRetirada.SetSaldoAtual(const Value: Double);
begin
  FSaldoAtual := Value;
end;

procedure TCupomRetirada.SetValorRetirada(const Value: Double);
begin
  FValorRetirada := Value;
end;

end.
