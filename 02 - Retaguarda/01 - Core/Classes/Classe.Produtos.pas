unit Classe.Produtos;

interface
   Uses
      System.SysUtils;

type
   TProdutos = class
  private
    Fprd_id: integer;
    Fprd_unidade: string;
    Fprd_cod_terceiro: string;
    Fprd_descricao: string;
    Fprd_codigo: integer;
    Fprd_cod_barras: string;
    Fprd_id_tipo: integer;
    Fprd_id_grupo: integer;

    procedure Setprd_cod_barras(const Value: string);
    procedure Setprd_cod_terceiro(const Value: string);
    procedure Setprd_codigo(const Value: integer);
    procedure Setprd_descricao(const Value: string);
    procedure Setprd_id(const Value: integer);
    procedure Setprd_unidade(const Value: string);
    procedure Setprd_id_grupo(const Value: integer);
    procedure Setprd_id_tipo(const Value: integer);

  published
    constructor Create;

    property prd_id            : integer read Fprd_id write Setprd_id;
    property prd_id_tipo       : integer read Fprd_id_tipo write Setprd_id_tipo;
    property prd_id_grupo      : integer read Fprd_id_grupo write Setprd_id_grupo;
    property prd_codigo        : integer read Fprd_codigo write Setprd_codigo;
    property prd_cod_barras    : string read Fprd_cod_barras write Setprd_cod_barras;
    property prd_cod_terceiro  : string read Fprd_cod_terceiro write Setprd_cod_terceiro;
    property prd_descricao     : string read Fprd_descricao write Setprd_descricao;
    property prd_unidade       : string read Fprd_unidade write Setprd_unidade;
  end;

var
   ClassProdutos : TProdutos;

implementation

{ TProdutos }

constructor TProdutos.Create;
begin

end;

procedure TProdutos.Setprd_codigo(const Value: integer);
begin
  Fprd_codigo := Value;
end;

procedure TProdutos.Setprd_cod_barras(const Value: string);
begin
  Fprd_cod_barras := Value;
end;

procedure TProdutos.Setprd_cod_terceiro(const Value: string);
begin
  Fprd_cod_terceiro := Value;
end;

procedure TProdutos.Setprd_descricao(const Value: string);
begin
  Fprd_descricao := Value;
end;

procedure TProdutos.Setprd_id(const Value: integer);
begin
  Fprd_id := Value;
end;

procedure TProdutos.Setprd_id_grupo(const Value: integer);
begin
  Fprd_id_grupo := Value;
end;

procedure TProdutos.Setprd_id_tipo(const Value: integer);
begin
  Fprd_id_tipo := Value;
end;

procedure TProdutos.Setprd_unidade(const Value: string);
begin
  Fprd_unidade := Value;
end;

end.
