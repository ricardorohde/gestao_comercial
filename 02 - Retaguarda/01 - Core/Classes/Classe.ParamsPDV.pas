unit Classe.ParamsPDV;

interface

uses
   Vcl.Forms,
   Windows,
   System.SysUtils,
   FireDAC.Comp.Client,
   Data.DB;

type
   TConfigCaixa  = class
   private
      FCaixa_ID                   : Integer;
      FCaixa_Nome                 : String;
      FCaixa_Codigo               : Integer;
      FCaixa_SolicitaCPF          : Integer;
      FCaixa_Soclicita_Vendedor   : Integer;
      FCaixa_Impressora           : String;
      FCaixa_Cupom_Vias           : Integer;

      function GetParametros(Caixa_ID : Integer) : Boolean;

   public
      Constructor Create(var LiberaAcesso : boolean; Caixa_ID : Integer);

      property Caixa_ID                   : Integer      Read FCaixa_ID                 Write FCaixa_ID;
      property Caixa_Nome                 : String       Read FCaixa_Nome               Write FCaixa_Nome;
      property Caixa_Codigo               : Integer      Read FCaixa_Codigo             Write FCaixa_Codigo;
      property Caixa_SolicitaCPF          : Integer      Read FCaixa_SolicitaCPF        Write FCaixa_SolicitaCPF;
      property Caixa_Soclicita_Vendedor   : Integer      Read FCaixa_Soclicita_Vendedor Write FCaixa_Soclicita_Vendedor;
      property Caixa_Impressora           : String       Read FCaixa_Impressora         Write FCaixa_Impressora;
      property Caixa_Cupom_Vias           : Integer      Read FCaixa_Cupom_Vias         Write FCaixa_Cupom_Vias;

end;

 var
   ConfigCaixa : TConfigCaixa;

implementation

uses
   modulo;


{ TConfigCaixa }

constructor TConfigCaixa.Create(var LiberaAcesso : boolean; Caixa_ID : Integer);
begin
   FCaixa_ID                  := -1;
   FCaixa_Nome                := '';
   FCaixa_Codigo              := -1;
   FCaixa_SolicitaCPF         := -1;
   FCaixa_Soclicita_Vendedor  := -1;
   FCaixa_Impressora          := '';
   FCaixa_Cupom_Vias          := -1;

   if not GetParametros(Caixa_ID) then
      LiberaAcesso := false;
end;

function TConfigCaixa.GetParametros(Caixa_ID : Integer) : boolean;
var
   SqlAux : TFDQuery;
   Str    : String;
begin

   SqlAux            := TFDQuery.Create(nil);
   SqlAux.Connection := DM.DBConexao;
   try
      Str := 'SELECT';
      Str := Str + ' T1.*,';
      Str := Str + '    (SELECT CAX_CAIXA_CODIGO    FROM C000017 WHERE ID = :ID) AS CAX_CAIXA_CODIGO,';
      Str := Str + '    (SELECT CAX_CAIXA_DESCRICAO FROM C000017 WHERE ID = :ID) AS CAX_CAIXA_DESCRICAO';
      Str := Str + ' FROM';
      Str := Str + '    C000017_CONF AS T1';
      Str := Str + '    WHERE';
      Str := Str + ' ID_C000017 = :ID';

      SqlAux.SQL.Add(Str);
      SqlAux.ParamByName('ID').AsInteger := Caixa_ID;
      SqlAux.Open();

      // Se não retornou nada, informa o operador
      if SqlAux.IsEmpty then
      begin
         Application.MessageBox('Configurações não localizadas, configure o caixa antes de continuar.','TechCore-RTG',mb_IconWarning or mb_Ok);
         Result := false;
      end;

      // Carrega os dados para a memória
      Caixa_ID                 := SqlAux.FieldByName('ID').AsInteger;
      Caixa_Codigo             := SqlAux.FieldByName('CAX_CAIXA_CODIGO').AsInteger;
      Caixa_Nome               := SqlAux.FieldByName('CAX_CAIXA_DESCRICAO').AsString;
      Caixa_SolicitaCPF        := SqlAux.FieldByName('CAX_SOLICITA_CPF').AsInteger;
      Caixa_Soclicita_Vendedor := SqlAux.FieldByName('CAX_SOLICITA_VENDEDOR').AsInteger;
      Caixa_Impressora         := SqlAux.FieldByName('CAX_IMPRESSORA').AsString;
      Caixa_Cupom_Vias         := SqlAux.FieldByName('CAX_CUPOM_VIAS').AsInteger;

      // Libera o acesso ao sistema
      Result := true;

   finally
      FreeAndNil(SqlAux);
   end;
end;

end.
