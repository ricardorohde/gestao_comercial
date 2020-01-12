unit Classe.Usuarios;

interface
uses
   System.SysUtils,
   FireDAC.Comp.Client,
   Data.DB;

type
   TUsuarios = class

  private
    FUser_Status: Integer;
    FUser_Nome: String;
    FUser_Apelido: String;
    FUser_Admin: boolean;

  published
   property User_Nome      : String    Read FUser_Nome      Write FUser_Nome;
   property User_Apelido   : String    Read FUser_Apelido   Write FUser_Apelido;
   property User_Status    : Integer   Read FUser_Status    Write FUser_Status;
   property User_Admin     : boolean   Read FUser_Admin     Write FUser_Admin;

   end;

type
   TPermissoes = class(TUsuarios)

  private
    FUser_Alterar: boolean;
    FUser_Visualizar: boolean;
    FUser_Cadastrar: boolean;
    FUser_Nfe_Enviar: boolean;
    FUser_Nfe_Cancelar: boolean;
    FUser_Excluir: boolean;
    FUser_Imprimir: boolean;
    FUser_Nfe_Cce: boolean;
    FUser_Form: Integer;
    FUser_Form_Nome: String;

    procedure CarregarDados(ID : Integer);

  published
    Constructor Create(ID : Integer);

    property User_Form         : Integer   Read FUser_Form         Write FUser_Form;
    property User_Form_Nome    : String    Read FUser_Form_Nome    Write FUser_Form_Nome;
    property User_Visualizar   : boolean   Read FUser_Visualizar   Write FUser_Visualizar;
    property User_Cadastrar    : boolean   Read FUser_Cadastrar    Write FUser_Cadastrar;
    property User_Alterar      : boolean   Read FUser_Alterar      Write FUser_Alterar;
    property User_Excluir      : boolean   Read FUser_Excluir      Write FUser_Excluir;
    property User_Imprimir     : boolean   Read FUser_Imprimir     Write FUser_Imprimir;
    property User_Nfe_Enviar   : boolean   Read FUser_Nfe_Enviar   Write FUser_Nfe_Enviar;
    property User_Nfe_CCe      : boolean   Read FUser_Nfe_Cce      Write FUser_Nfe_Cce;
    property User_Nfe_Cancelar : boolean   Read FUser_Nfe_Cancelar Write FUser_Nfe_Cancelar;

   end;

var
   UserPermissoes :TPermissoes;

implementation

{ TUsuarios }

uses uModuloRet;


{ TUsuarios }

procedure TPermissoes.CarregarDados(ID: Integer);
var
   aQuery : TFDQuery;
begin
   try
      aQuery            := TFDQuery.Create(nil);
      aQuery.Connection := FrModuloRet.DBConexao;

      {Carrega os dados básicos do usuário}
      aQuery.SQL.Clear;
      aQuery.SQL.Add('SELECT FUN_NOME, FUN_APELIDO, FUN_STATUS, FUN_ADMIN FROM C000301 WHERE ID = :ID');
      aQuery.ParamByName('ID').AsInteger := ID;
      aQuery.Open();

      FUser_Nome      := aQuery.FieldByName('fun_nome').AsString;
      FUser_Apelido   := aQuery.FieldByName('fun_apelido').AsString;
      FUser_Status    := aQuery.FieldByName('fun_status').AsInteger;
      FUser_Admin     := aQuery.FieldByName('fun_admin').AsBoolean;

      {Carrega os dados das permissoes}
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('SELECT * FROM C001001 WHERE ID = :ID');
      aQuery.ParamByName('ID').AsInteger := ID;
      aQuery.Open();

      FUser_Form         := aQuery.FieldByName('id_formulario').AsInteger;
      FUser_Form_Nome    := aQuery.FieldByName('f_frm_nome').AsString;
      FUser_Visualizar   := aQuery.FieldByName('f_visualizar').AsBoolean;
      FUser_Cadastrar    := aQuery.FieldByName('f_cadastrar').AsBoolean;
      FUser_Alterar      := aQuery.FieldByName('f_alterar').AsBoolean;
      FUser_Excluir      := aQuery.FieldByName('f_excluir').AsBoolean;
      FUser_Imprimir     := aQuery.FieldByName('f_imprimir').AsBoolean;
      FUser_Nfe_Enviar   := aQuery.FieldByName('f_nfe_enviar').AsBoolean;
      FUser_Nfe_CCe      := aQuery.FieldByName('f_nfe_cce').AsBoolean;
      FUser_Nfe_Cancelar := aQuery.FieldByName('f_nfe_cancelar').AsBoolean;

   finally
      FreeAndNil(aQuery);
   end;
end;

constructor TPermissoes.Create(ID: Integer);
begin
   FUser_Status   := -1;
   FUser_Nome     := '';
   FUser_Apelido  := '';

   {Carrega os dados do usuário}
   CarregarDados(ID);
end;

end.
