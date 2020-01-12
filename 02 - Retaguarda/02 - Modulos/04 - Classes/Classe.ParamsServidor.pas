unit Classe.ParamsServidor;

interface

type
   TParamsServidor = class
  private
    FF_Protocolo: String;
    FF_Descricao: String;
    FF_Senha: String;
    FF_Database: String;
    FF_HostIP: String;
    FF_Usuario: String;
    FF_Porta: Integer;

    procedure SetF_Database(const Value: String);
    procedure SetF_Descricao(const Value: String);
    procedure SetF_HostIP(const Value: String);
    procedure SetF_Porta(const Value: Integer);
    procedure SetF_Protocolo(const Value: String);
    procedure SetF_Senha(const Value: String);
    procedure SetF_Usuario(const Value: String);

  public
      property       F_Descricao    : String read FF_Descricao write SetF_Descricao;
      property       F_HostIP       : String read FF_HostIP write SetF_HostIP;
      property       F_Porta        : Integer read FF_Porta write SetF_Porta;
      property       F_Protocolo    : String read FF_Protocolo write SetF_Protocolo;
      property       F_Database     : String read FF_Database write SetF_Database;
      property       F_Usuario      : String read FF_Usuario write SetF_Usuario;
      property       F_Senha        : String read FF_Senha write SetF_Senha;
   end;

implementation

{ TParamsServidor }

procedure TParamsServidor.SetF_Database(const Value: String);
begin
  FF_Database := Value;
end;

procedure TParamsServidor.SetF_Descricao(const Value: String);
begin
  FF_Descricao := Value;
end;

procedure TParamsServidor.SetF_HostIP(const Value: String);
begin
  FF_HostIP := Value;
end;

procedure TParamsServidor.SetF_Porta(const Value: Integer);
begin
  FF_Porta := Value;
end;

procedure TParamsServidor.SetF_Protocolo(const Value: String);
begin
  FF_Protocolo := Value;
end;

procedure TParamsServidor.SetF_Senha(const Value: String);
begin
  FF_Senha := Value;
end;

procedure TParamsServidor.SetF_Usuario(const Value: String);
begin
  FF_Usuario := Value;
end;

end.
