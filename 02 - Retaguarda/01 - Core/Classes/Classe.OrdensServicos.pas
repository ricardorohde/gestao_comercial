unit Classe.OrdensServicos;

interface
Uses
   WinApi.Windows,
   System.SysUtils,
   Vcl.Controls,
   Vcl.Forms,
   FireDac.Comp.Client;

type
   TOrdemServico = class
  private
    FExibeMsg: string;
    FLinha2: string;
    FLinha1: string;

    procedure LoadConfiguracoes(id : integer);

  public
    constructor Create(id : integer);
    procedure SetExibeMsg(const Value: string);
    procedure SetLinha1(const Value: string);
    procedure SetLinha2(const Value: string);

    property ExibeMsg : string read FExibeMsg write SetExibeMsg;
    property Linha1 : string read FLinha1 write SetLinha1;
    property Linha2 : string read FLinha2 write SetLinha2;

   end;

var
   ClassOrdensServicos : TOrdemServico;

implementation

{ TOrdemServico }

uses uModuloRet;

constructor TOrdemServico.Create(id : integer);
begin
   // Carrega os dados das configurações
   LoadConfiguracoes(id);
end;

procedure TOrdemServico.LoadConfiguracoes(id: integer);
var
   aQuery : TFDQuery;
begin
   try
      aQuery            := TFDQuery.Create(nil);
      aQuery.Connection := FrModuloRet.DBConexao;

      aQuery.SQL.Add('select * from C000073 where id_emp = :id_emp');
      aQuery.ParamByName('id_emp').AsInteger := id;
      aQuery.Open();

      ExibeMsg := aQuery.FieldByName('70_exibe_titulo').AsString;
      Linha1   := aQuery.FieldByName('70_msg_linha1').AsString;
      Linha2   := aQuery.FieldByName('70_msg_linha2').AsString;

   finally
      FreeAndNil(aQuery);
   end;
end;

procedure TOrdemServico.SetExibeMsg(const Value: string);
begin
  FExibeMsg := Value;
end;

procedure TOrdemServico.SetLinha1(const Value: string);
begin
  FLinha1 := Value;
end;

procedure TOrdemServico.SetLinha2(const Value: string);
begin
  FLinha2 := Value;
end;

end.
