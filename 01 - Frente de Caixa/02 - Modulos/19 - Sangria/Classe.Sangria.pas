unit Classe.Sangria;

interface
   Uses
      FireDAC.Comp.Client,
      System.SysUtils,
      Vcl.Forms,
      WinApi.Windows;

type
   TCupomSangria = class
  private
   FCodigoEmpresa: String;
   FSaldoAtual: Double;
   FOperadorNome: String;
   FDataSangria: TDateTime;
   FSaldoApos: Double;
   FValorSangria: Double;
   FHoraSangria: TDateTime;
   FCodigoCaixa: String;

   procedure SetDataSangria(const Value: TDateTime);
   procedure SetHoraSangria(const Value: TDateTime);
   procedure SetCodigoCaixa(const Value: String);
   procedure SetCodigoEmpresa(const Value: String);
   procedure SetOperadorNome(const Value: String);
   procedure SetSaldoApos(const Value: Double);
   procedure SetSaldoAtual(const Value: Double);
   procedure SetValorSangria(const Value: Double);

   procedure LerSangria;

  published
   Constructor Create;

   property DataSangria   : TDateTime read FDataSangria write SetDataSangria;
   property HoraSangria   : TDateTime read FHoraSangria write SetHoraSangria;
   property CodigoEmpresa : String read FCodigoEmpresa write SetCodigoEmpresa;
   property CodigoCaixa   : String read FCodigoCaixa write SetCodigoCaixa;
   property OperadorNome  : String read FOperadorNome write SetOperadorNome;
   property SaldoAtual    : Double read FSaldoAtual write SetSaldoAtual;
   property ValorSangria  : Double read FValorSangria write SetValorSangria;
   property SaldoApos     : Double read FSaldoApos write SetSaldoApos;

   end;
var
   ObjSangria : TCupomSangria;

implementation

{ TCupomSangria }

uses uModulo;

constructor TCupomSangria.Create;
begin
   LerSangria;
end;

procedure TCupomSangria.LerSangria;
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
      aQuery.SQL.Add('  C000053 AS T1');
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
      aQuery.SQL.Add('  T1.ID = (SELECT MAX(ID) FROM C000053)');
      aQuery.Open();

      if aQuery.IsEmpty then
      begin
         Application.MessageBox('Erro ao resgatar a Sangria, tente novamente','TechCore-PDV',mb_IconStop or mb_ok);
         Abort;
      end;

      // Configura o objeto
      DataSangria   := aQuery.FieldByName('sng_data').AsDateTime;
      Horasangria   := aQuery.FieldByName('sng_data').AsDateTime;
      CodigoEmpresa := aQuery.FieldByName('emp_codigo').AsString;
      CodigoCaixa   := aQuery.FieldByName('cax_codigo').AsString;
      OperadorNome  := aQuery.FieldByName('operador').AsString;
      SaldoAtual    := aQuery.FieldByName('sng_saldo_atual').AsFloat;
      ValorSangria  := aQuery.FieldByName('sng_valor').AsFloat;
      SaldoApos     := aQuery.FieldByName('sng_saldo_apos').AsFloat;

   finally
      FreeAndNil(aQuery);
   end;

end;

procedure TCupomSangria.SetDataSangria(const Value: TDateTime);
begin
  FDataSangria := Value;
end;

procedure TCupomSangria.SetHoraSangria(const Value: TDateTime);
begin
  FHoraSangria := Value;
end;

procedure TCupomSangria.SetCodigoCaixa(const Value: String);
begin
  FCodigoCaixa := Value;
end;

procedure TCupomSangria.SetCodigoEmpresa(const Value: String);
begin
  FCodigoEmpresa := Value;
end;

procedure TCupomSangria.SetOperadorNome(const Value: String);
begin
  FOperadorNome := Value;
end;

procedure TCupomSangria.SetSaldoApos(const Value: Double);
begin
  FSaldoApos := Value;
end;

procedure TCupomSangria.SetSaldoAtual(const Value: Double);
begin
  FSaldoAtual := Value;
end;

procedure TCupomSangria.SetValorSangria(const Value: Double);
begin
  FValorSangria := Value;
end;

end.
