unit Classe.EmpresaPDV;

interface

uses
   Vcl.Forms,
   Windows,
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

     procedure GetDadosEmpresa;

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

     // Dados do responsável
     property RespNome                 : String     Read  FRespNome           Write FRespNome;
     property RespCpf                  : String     Read  FRespCpf            Write FRespCpf;
     property RespRG                   : String     Read  FRespRG             Write FRespRG;
     property RespDataNasc             : TDateTime  Read  FRespDataNasc       Write FRespDataNasc;
     property RespFoneMovel            : String     Read  FRespFoneMovel      Write FRespFoneMovel;
     property RespEmail                : String     Read  FRespEmail          Write FRespEmail;

   end;

var
   FEmpresaClass : TEmpresa;

implementation

uses
   Modulo;

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

     GetDadosEmpresa;

end;

procedure TEmpresa.GetDadosEmpresa;
var
   SqlAux : TFDQuery;
begin

   SqlAux            := TFDQuery.Create(nil);
   SqlAux.Connection := DM.DBConexao;
   try
      SqlAux.Close;
      SqlAux.SQL.Clear;
      SqlAux.SQL.Add('SELECT * FROM C000501');
      SqlAux.Open();

      // Se não retornou nada encerra a aplicação
      {if SqlAux.IsEmpty then
      begin
         Application.MessageBox('Dados do emitente não localizados, o sistema será encerrado.','TechCore-RTG',mb_IconStop or mb_Ok);
         Application.Terminate;
      end;}

      // Carrega os dados para a memória
      ID                := SqlAux.FieldByName('ID').AsInteger;
      Codigo            := SqlAux.FieldByName('EMP_CODIGO').AsInteger;
      RazaoSocial       := SqlAux.FieldByName('EMP_RAZAO').AsString;
      NomeFantasia      := SqlAux.FieldByName('EMP_FANTASIA').AsString;
      Cnpj              := SqlAux.FieldByName('EMP_Cnpj').AsString;
      IEstadual         := SqlAux.FieldByName('EMP_IESTADUAL').AsString;
      IMunicipal        := SqlAux.FieldByName('EMP_IMUNICIPAL').AsString;
      Cep               := SqlAux.FieldByName('EMP_CEP').AsString;
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
      //Skype             := SqlAux.FieldByName('EMP_SKYPE').AsString;
      //Facebook          := SqlAux.FieldByName('EMP_FACEBOOK').AsString;
      Email             := SqlAux.FieldByName('EMP_EMAIL').AsString;
      Site              := SqlAux.FieldByName('EMP_SITE').AsString;
      //RespNome          := SqlAux.FieldByName('EMP_RESP_NOME').AsString;
      //RespDataNasc      := SqlAux.FieldByName('EMP_RESP_DATANASC').AsDateTime;
      //RespCpf           := SqlAux.FieldByName('EMP_RESP_CPF').AsString;
      //RespRg            := SqlAux.FieldByName('EMP_RESP_RG').AsString;
      //RespFoneMovel     := SqlAux.FieldByName('EMP_RESP_FONEMOVEL').AsString;
      //RespEmail         := SqlAux.FieldByName('EMP_RESP_EMAIL').AsString;
      Crt               := SqlAux.FieldByName('EMP_CRT').AsInteger;
      //IcmsCredito       := SqlAux.FieldByName('EMP_ICMS_CREDITO').AsInteger;
      //IcmsAliquota      := SqlAux.FieldByName('EMP_ICMS_ALIQUOTA').AsFloat;
      //Observacao        := SqlAux.FieldByName('EMP_OBSERVACAO').AsAnsiString;
      //Segmento          := SqlAux.FieldByName('EMP_SEGMENTO').AsInteger;
      //RamoAtividade     := SqlAux.FieldByName('EMP_RAMO_ATIVIDADE').AsInteger;
      //FMsgCreditoICMS   := SqlAux.FieldByName('EMP_NFE_AVISO_ICMS_A').AsAnsiString;
      //FMsgCreditoIPI    := SqlAux.FieldByName('EMP_NFE_AVISO_IPI_I').AsAnsiString;
      //DataFundacao      := SqlAux.FieldByName('EMP_DATA_FUNDACAO').AsDateTime;

   finally
      FreeAndNil(SqlAux);
   end;

end;

end.
