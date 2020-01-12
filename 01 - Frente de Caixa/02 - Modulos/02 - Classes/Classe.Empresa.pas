unit Classe.Empresa;

interface

uses
   Vcl.Forms,
   Windows,
   system.MaskUtils,
   System.SysUtils,
   FireDAC.Comp.Client,
   Data.DB;

type
   TEmpresa = Class
   Private
     FID                               : Integer;
     FCodigo                           : Integer;
     FRazaoSocial                      : String;
     FNomeFantasia                     : String;
     FCnpj                             : String;
     FIEstadual                        : String;
     FIEstadualSubst                   : String;
     FIMunicipal                       : String;
     FCep                              : String;
     FEndereco                         : String;
     FNumero                           : Integer;
     FComplemento                      : String;
     FBairro                           : String;
     FCidade                           : String;
     FCodCidade                        : Integer;
     FUF                               : String;
     FCodUF                            : Integer;
     FCodigoPais                       : Integer;
     FNomePais                         : String;
     FFoneFixo                         : String;
     FWhatsApp                         : String;
     FSkype                            : String;
     FFacebook                         : String;
     FEmail                            : String;
     FSite                             : String;
     FRespNome                         : String;
     FRespDataNasc                     : TDateTime;
     FRespCpf                          : String;
     FRespRg                           : String;
     FRespFoneMovel                    : String;
     FRespEmail                        : String;
     FCrt                              : Integer;
     FIcmsCredito                      : Integer;
     FIcmsAliquota                     : Real;
     FObservacao                       : AnsiString;
     FTipoOperacional                  : Integer;
     FSegmento                         : Integer;
     FRamoAtividade                    : Integer;
     FCreditoICMS                      : Integer;
     FMsgCreditoIPI                    : AnsiString;
     FMsgCreditoICMS                   : AnsiString;
     FDataFundacao                     : TDateTime; // Data inicial de atividade da empresa
     FNcm_Fonte                        : String;
     FNcm_Chave                        : String;
     FResult_Empresa                   : Boolean;
     FEmailHost                        : string;
     FEmailPorta                       : Integer;
     FEmailUserName                    : string;
     FEmailPassword                    : string;
     FEmailCorpo                       : string;
     FEmailAssunto                     : string;
     FEmailSeguro                      : Integer;
     FServerRest_Host                  : String;
     FServerRest_Port                  : Integer;
     FPln_Pdv                          : Integer;
     FPln_Pdv_Desc                     : String;
     FCli_Pdv                          : Integer;
     FCli_Pdv_Desc                     : String;

     function GetDadosEmpresa : boolean;

   Public
     Constructor Create;

     property ID                       : Integer    Read  FID                 Write FID;
     property Codigo                   : Integer    Read  FCodigo             Write FCodigo;
     property RazaoSocial              : String     Read  FRazaoSocial        Write FRazaoSocial;
     property NomeFantasia             : String     Read  FNomeFantasia       Write FNomeFantasia;
     property CNPJ                     : String     Read  FCNPJ               Write FCNPJ;
     property IEstadual                : String     Read  FIEstadual          Write FIEstadual;
     property IEstadualSubst           : String     Read  FIEstadualSubst     Write FIEstadualSubst;
     property IMunicipal               : String     Read  FIMunicipal         Write FIMunicipal;
     property Endereco                 : String     Read  FEndereco           Write FEndereco;
     property Numero                   : Integer    Read  FNumero             Write FNumero;
     property Bairro                   : String     Read  FBairro             Write FBairro;
     property Complemento              : String     Read  FComplemento        Write FComplemento;
     property Cep                      : String     Read  FCep                Write FCep;
     property FoneFixo                 : String     Read  FFoneFixo           Write FFoneFixo;
     property WhatsApp                 : String     Read  FWhatsApp           Write FWhatsApp;
     property Skype                    : String     Read  FSkype              Write FSkype;
     property FaceBook                 : String     Read  FFacebook           Write FFacebook;
     property Email                    : String     Read  FEmail              Write FEmail;
     property Site                     : String     Read  FSite               Write FSite;
     property Cidade                   : String     Read  FCidade             Write FCidade;
     property CodCidade                : Integer    Read  FCodCidade          Write FCodCidade;
     property UF                       : String     Read  FUF                 Write FUF;
     property CodUf                    : Integer    Read  FCodUF              Write FCodUF;
     property NomePais                 : String     Read  FNomePais           Write FNomePais;
     property CodigoPais               : Integer    Read  FCodigoPais         Write FCodigoPais;
     property Crt                      : Integer    Read  FCrt                Write FCrt;
     property IcmsCredito              : Integer    Read  FIcmsCredito        Write FIcmsCredito;
     property IcmsAliquota             : Real       Read  FIcmsAliquota       Write FIcmsAliquota;
     property TipoOperacional          : Integer    Read  FTipoOperacional    Write FTipoOperacional;
     property RamoAtividade            : Integer    Read  FRamoAtividade      Write FRamoAtividade;
     property Segmento                 : Integer    Read  FSegmento           Write FSegmento;
     property Observacao               : AnsiString Read  FObservacao         Write FObservacao;
     property CreditoICMS              : Integer    Read  FCreditoICMS        Write FCreditoICMS;
     property MsgCreditoICMS           : AnsiString Read  FMsgCreditoICMS     Write FMsgCreditoICMS;
     property MsgCreditoIPI            : AnsiString Read  FMsgCreditoIPI      Write FMsgCreditoIPI;
     property DataFundacao             : TDateTime  Read  FDataFundacao       Write FDataFundacao;
     property Result_Empresa           : Boolean    Read  FResult_Empresa     Write FResult_Empresa;
     property Ncm_Fonte                : String     Read  FNcm_Fonte          Write FNcm_Fonte;
     property Ncm_Chave                : String     Read  FNcm_Chave          Write FNcm_Chave;

     // Dados do responsável
     property RespNome                 : String     Read  FRespNome           Write FRespNome;
     property RespCpf                  : String     Read  FRespCpf            Write FRespCpf;
     property RespRG                   : String     Read  FRespRG             Write FRespRG;
     property RespDataNasc             : TDateTime  Read  FRespDataNasc       Write FRespDataNasc;
     property RespFoneMovel            : String     Read  FRespFoneMovel      Write FRespFoneMovel;
     property RespEmail                : String     Read  FRespEmail          Write FRespEmail;

     // Dados para envio de e-mails
     property EmailHost                : string     Read FEmailHost           Write FEmailHost;
     property EmailPorta               : Integer    Read FEmailPorta          Write FEmailPorta;
     property EmailUserName            : string     Read FEmailUserName       Write FEmailUserName;
     property EmailPassword            : string     Read FEmailPassword       Write FEmailPassword;
     property EmailCorpo               : string     Read FEmailCorpo          Write FEmailCorpo;
     property EmailAssunto             : string     Read FEmailAssunto        Write FEmailAssunto;
     property EmailSeguro              : Integer    Read FEmailSeguro         Write FEmailSeguro;

     // Paraêmtros para o servidor REST
     property ServerRest_Host          : String     Read FServerRest_Host     Write FServerRest_Host;
     property ServerRest_Port          : Integer    Read FServerRest_Port     Write FServerRest_Port;

     // Parâmetros básicos do caixa
     property Cli_Pdv                  : Integer    Read FCli_Pdv             Write FCli_Pdv;
     property Cli_Pdv_Desc             : String     Read FCli_Pdv_Desc        Write FCli_Pdv_Desc;
     property Pln_Pdv                  : Integer    Read FPln_Pdv             Write FPln_Pdv;
     property Pln_Pdv_Desc             : String     Read FPln_Pdv_Desc        Write FPln_Pdv_Desc;


   end;

var
   FEmpresaClass : TEmpresa;

implementation

uses
   uModulo;

constructor TEmpresa.Create;
begin

     FID              := -1;
     FCodigo          := -1;
     FRazaoSocial     := '';
     FNomeFantasia    := '';
     FCnpj            := '';
     FIEstadual       := '';
     FIEstadualSubst  := '';
     FIMunicipal      := '';
     FCep             := '';
     FEndereco        := '';
     FNumero          := -1;
     FComplemento     := '';
     FBairro          := '';
     FCidade          := '';
     FCodCidade       := -1;
     FUF              := '';
     FCodUF           := -1;
     FCodigoPais      := -1;
     FNomePais        := '';
     FFoneFixo        := '';
     FWhatsApp        := '';
     FSkype           := '';
     FFacebook        := '';
     FEmail           := '';
     FSite            := '';
     FRespNome        := '';
     FRespDataNasc    := Date;
     FRespCpf         := '';
     FRespRg          := '';
     FRespFoneMovel   := '';
     FRespEmail       := '';
     FCrt             := -1;
     FIcmsCredito     := -1;
     FIcmsAliquota    := 0.00;
     FObservacao      := '';
     FTipoOperacional := -1;
     FSegmento        := -1;
     FRamoAtividade   := -1;
     FCreditoICMS     := -1;
     FMsgCreditoIPI   := '';
     FMsgCreditoICMS  := '';
     FDataFundacao    := Date; // Data inicial de atividade da empresa
     FNcm_Fonte       := '';
     FNcm_Chave       := '';
     FServerRest_Host := '';
     FServerRest_Port := 0;
     FPln_Pdv         := -1;
     FPln_Pdv_Desc    := '';
     FCli_Pdv         := -1;
     FCli_Pdv_Desc    := '';

     FResult_Empresa := GetDadosEmpresa;

end;

function TEmpresa.GetDadosEmpresa : boolean;
var
   SqlAux : TFDQuery;
begin

   SqlAux            := TFDQuery.Create(application);
   SqlAux.Connection := FrModulo.DBCon_Local;
   try
      SqlAux.Close;
      SqlAux.SQL.Clear;
      SqlAux.SQL.Add('SELECT * FROM C000501');
      SqlAux.Open();

      // Se não retornou nada encerra a aplicação
      if SqlAux.IsEmpty then
      begin
         Result := false;
         exit;
      end;

      // Carrega os dados para a memória
      ID                := SqlAux.FieldByName('ID').AsInteger;
      Codigo            := SqlAux.FieldByName('EMP_CODIGO').AsInteger;
      RazaoSocial       := SqlAux.FieldByName('EMP_RAZAO').AsString;
      NomeFantasia      := SqlAux.FieldByName('EMP_FANTASIA').AsString;
      Cnpj              := SqlAux.FieldByName('EMP_Cnpj').AsString;
      IEstadual         := SqlAux.FieldByName('EMP_IESTADUAL').AsString;
      IMunicipal        := SqlAux.FieldByName('EMP_IMUNICIPAL').AsString;
      Cep               := SqlAux.FieldByName('EMP_CEP').AsString;
      Cep               := FormatMaskText('!99999-999;0;',Cep);
      Endereco          := SqlAux.FieldByName('EMP_ENDERECO').AsString;
      Numero            := SqlAux.FieldByName('EMP_NUMERO').AsInteger;
      Complemento       := SqlAux.FieldByName('EMP_COMPLEMENTO').AsString;
      Bairro            := SqlAux.FieldByName('EMP_BAIRRO').AsString;
      Cidade            := SqlAux.FieldByName('EMP_CIDADE').AsString;
      CodCidade         := SqlAux.FieldByName('EMP_CODIGO_CIDADE').AsInteger;
      UF                := SqlAux.FieldByName('EMP_UF').AsString;
      CodUF             := SqlAux.FieldByName('EMP_CODIGO_UF').AsInteger;
      CodigoPais        := SqlAux.FieldByName('EMP_CODIGO_PAIS').AsInteger;
      NomePais          := SqlAux.FieldByName('EMP_PAIS').AsString;
      FoneFixo          := SqlAux.FieldByName('EMP_FONEFIXO').AsString;
      WhatsApp          := SqlAux.FieldByName('EMP_FONEMOVEL').AsString;
      Email             := SqlAux.FieldByName('EMP_EMAIL').AsString;
      Site              := SqlAux.FieldByName('EMP_SITE').AsString;
      Crt               := SqlAux.FieldByName('EMP_CRT').AsInteger;
      Ncm_Fonte         := SqlAux.FieldByName('EMP_NCM_FONTE').AsString;
      Ncm_Chave         := SqlAux.FieldByName('EMP_NCM_CHAVE').AsString;

      // Dados do envio do e-mail
      EmailHost         := SqlAux.FieldByName('EMP_NFE_EMAIL_HOST').AsString;
      EmailPorta        := SqlAux.FieldByName('EMP_NFE_EMAIL_PORTA').AsInteger;
      EmailUserName     := SqlAux.FieldByName('EMP_NFE_EMAIL_USUARIO').AsString;
      EmailPassword     := SqlAux.FieldByName('EMP_NFE_EMAIL_SENHA').AsString;
      EmailCorpo        := SqlAux.FieldByName('EMP_NFE_EMAIL_MESSAGE').AsString;
      EmailAssunto      := SqlAux.FieldByName('EMP_NFE_EMAIL_ASSUNTO').AsString;
      EmailSeguro       := SqlAux.FieldByName('EMP_NFE_EMAIL_SEGURO').AsInteger;

      // Dados do Servidor Rest
      ServerRest_Host   := SqlAux.FieldByName('Emp_Server_Rest_Host').AsString;
      ServerRest_Port   := SqlAux.FieldByName('Emp_Server_Rest_Port').AsInteger;

      // Dados do cliente
      Pln_Pdv           := SqlAux.FieldByName('Emp_Pln_Pdv').AsInteger;
      Pln_Pdv_Desc      := SqlAux.FieldByName('Emp_Pln_Pdv_Desc').AsString;
      Cli_Pdv           := SqlAux.FieldByName('Emp_Cli_Pdv').AsInteger;
      Cli_Pdv_Desc      := SqlAux.FieldByName('Emp_Cli_Pdv_Desc').AsString;

      Result := true;

   finally
      FreeAndNil(SqlAux);
   end;

end;

end.
