unit Classe.Empresa;

interface

uses
   System.SysUtils,
   FireDAC.Comp.Client,
   Data.DB;

function Trunca(const Valor:Double; Decimais:Integer = 2): Double;

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
     FDecimal_Custo                    : Integer;
     FDecimal_Venda                    : Integer;
     FDecimal_Qtde                     : Integer;
    FPlnCtasP: Integer;

    FPlnPedidoV: Integer;

    FPlnNfeS_Desc: String;
    FPlnNfeE: Integer;
    FPlnOS_Desc: String;
    FPlnCtasR_Desc: String;
    FPlnCtasP_Desc: String;
    FPlnPedidoC: Integer;
    FPlnPedidoV_Desc: String;
    FPlnNfeS: Integer;
    FPlnNfeE_Desc: String;
    FPlnOS: Integer;
    FPlnCtasR: Integer;
    FPlnPedidoC_Desc: String;
    FUsar_Login : string;

    procedure GetDadosEmpresa(iCodigo : Integer);

   Public
     Constructor Create(id_empresa : Integer);

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
     property Decimal_Custo            : Integer    Read  FDecimal_custo      Write FDecimal_custo;
     property Decimal_Venda            : Integer    Read  FDecimal_venda      Write FDecimal_Venda;
     property Decimal_Qtde             : Integer    Read  FDecimal_Qtde       Write FDecimal_Qtde;
     property Usar_Login               : String     Read  FUsar_Login         Write FUsar_Login;

     // Dados do responsável
     property RespNome                 : String     Read  FRespNome           Write FRespNome;
     property RespCpf                  : String     Read  FRespCpf            Write FRespCpf;
     property RespRG                   : String     Read  FRespRG             Write FRespRG;
     property RespDataNasc             : TDateTime  Read  FRespDataNasc       Write FRespDataNasc;
     property RespFoneMovel            : String     Read  FRespFoneMovel      Write FRespFoneMovel;
     property RespEmail                : String     Read  FRespEmail          Write FRespEmail;

     {plano de contas Pedidos}
     property PlnPedidoV               : Integer    Read  FPlnPedidoV         Write FPlnPedidoV;
     property PlnPedidoV_Desc          : String     Read  FPlnPedidoV_Desc    Write FPlnPedidoV_Desc;
     property PlnPedidoC               : Integer    Read  FPlnPedidoC         Write FPlnPedidoC;
     property PlnPedidoC_Desc          : String     Read  FPlnPedidoC_Desc    Write FPlnPedidoC_Desc;

     {plano de contas Notas fiscais}
     property PlnNfeE                  : Integer    Read  FPlnNfeE            Write FPlnNfeE;
     property PlnNfeE_Desc             : String     Read  FPlnNfeE_Desc       Write FPlnNfeE_Desc;
     property PlnNfeS                  : Integer    Read  FPlnNfeS            Write FPlnNfeS;
     property PlnNfeS_Desc             : String     Read  FPlnNfeS_Desc       Write FPlnNfeS_Desc;

     {plano de contas Contas a Pagar e Receber}
     property PlnCtasP                 : Integer    Read  FPlnCtasP           Write FPlnCtasP;
     property PlnCtasP_Desc            : String     Read  FPlnCtasP_Desc      Write FPlnCtasP_Desc;
     property PlnCtasR                 : Integer    Read  FPlnCtasR           Write FPlnCtasR;
     property PlnCtasR_Desc            : String     Read  FPlnCtasR_Desc      Write FPlnCtasR_Desc;

     {plano de contas Contas a Pagar e Receber}
     property PlnOS                    : Integer    Read  FPlnOS              Write FPlnOS;
     property PlnOS_Desc               : String     Read  FPlnOS_Desc         Write FPlnOS_Desc;
   end;

var
   FEmpresaClass : TEmpresa;

implementation

uses
   Classe.NFe, uModuloRet;

{ TParametrosNFE }

constructor TEmpresa.Create(id_empresa : Integer);
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
     FUsar_Login      := 'S';

     GetDadosEmpresa(id_empresa);

end;

procedure TEmpresa.GetDadosEmpresa(iCodigo : Integer);
var
   SqlAux : TFDQuery;
begin

   SqlAux            := TFDQuery.Create(nil);
   SqlAux.Connection := FrModuloRet.DBConexao;
   try
      SqlAux.Close;
      SqlAux.SQL.Clear;
      SqlAux.SQL.Add('SELECT * FROM C000501 WHERE ID = :ID');
      SqlAux.ParamByName('ID').AsInteger := iCodigo;
      SqlAux.Open();

      // Carrega os dados para a memória
      ID                := SqlAux.FieldByName('ID').AsInteger;
      Codigo            := SqlAux.FieldByName('EMP_CODIGO').AsInteger;
      RazaoSocial       := SqlAux.FieldByName('EMP_RAZAO').AsString;
      NomeFantasia      := SqlAux.FieldByName('EMP_FANTASIA').AsString;
      Cnpj              := SqlAux.FieldByName('EMP_Cnpj').AsString;
      IEstadual         := SqlAux.FieldByName('EMP_IESTADUAL').AsString;
      IEstadualSubst    := SqlAux.FieldByName('EMP_IESTADUAL_SUST').AsString;
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
      Skype             := SqlAux.FieldByName('EMP_SKYPE').AsString;
      Facebook          := SqlAux.FieldByName('EMP_FACEBOOK').AsString;
      Email             := SqlAux.FieldByName('EMP_EMAIL').AsString;
      Site              := SqlAux.FieldByName('EMP_SITE').AsString;
      RespNome          := SqlAux.FieldByName('EMP_RESP_NOME').AsString;
      RespDataNasc      := SqlAux.FieldByName('EMP_RESP_DATANASC').AsDateTime;
      RespCpf           := SqlAux.FieldByName('EMP_RESP_CPF').AsString;
      RespRg            := SqlAux.FieldByName('EMP_RESP_RG').AsString;
      RespFoneMovel     := SqlAux.FieldByName('EMP_RESP_FONEMOVEL').AsString;
      RespEmail         := SqlAux.FieldByName('EMP_RESP_EMAIL').AsString;
      Crt               := SqlAux.FieldByName('EMP_CRT').AsInteger;
      IcmsCredito       := SqlAux.FieldByName('EMP_ICMS_CREDITO').AsInteger;
      IcmsAliquota      := SqlAux.FieldByName('EMP_ICMS_ALIQUOTA').AsFloat;
      Observacao        := SqlAux.FieldByName('EMP_OBSERVACAO').AsAnsiString;
      Segmento          := SqlAux.FieldByName('EMP_SEGMENTO').AsInteger;
      RamoAtividade     := SqlAux.FieldByName('EMP_RAMO_ATIVIDADE').AsInteger;
      FMsgCreditoICMS   := SqlAux.FieldByName('EMP_NFE_AVISO_ICMS_A').AsAnsiString;
      FMsgCreditoIPI    := SqlAux.FieldByName('EMP_NFE_AVISO_IPI_I').AsAnsiString;
      DataFundacao      := SqlAux.FieldByName('EMP_DATA_FUNDACAO').AsDateTime;
      Decimal_custo     := SqlAux.FieldByName('EMP_DECIMAL_CUSTO').AsInteger;
      Decimal_Venda     := SqlAux.FieldByName('EMP_DECIMAL_VENDA').AsInteger;
      Decimal_Qtde      := SqlAux.FieldByName('EMP_DECIMAL_QTDE').AsInteger;
      FUsar_Login       := SqlAux.FieldByName('EMP_USAR_LOGIN').AsString;

      {plano de contas Pedidos}
      PlnPedidoV         := SqlAux.FieldByName('emp_pln_ped_v').AsInteger;
      PlnPedidoV_Desc    := SqlAux.FieldByName('emp_pln_ped_vdesc').AsString;
      PlnPedidoC         := SqlAux.FieldByName('emp_pln_ped_c').AsInteger;
      PlnPedidoC_Desc    := SqlAux.FieldByName('emp_pln_ped_cdesc').AsString;

      {plano de contas Notas fiscais}
      PlnNfeE            := SqlAux.FieldByName('emp_pln_nfe_s').AsInteger;
      PlnNfeE_Desc       := SqlAux.FieldByName('emp_pln_nfe_sdesc').AsString;
      PlnNfeS            := SqlAux.FieldByName('emp_pln_nfe_e').AsInteger;
      PlnNfeS_Desc       := SqlAux.FieldByName('emp_pln_nfe_edesc').AsString;

      {plano de contas Contas a Pagar e Receber}
      PlnCtasP           := SqlAux.FieldByName('emp_pln_ctas_pag').AsInteger;
      PlnCtasP_Desc      := SqlAux.FieldByName('emp_pln_ctas_pag_dsc').AsString;
      PlnCtasR           := SqlAux.FieldByName('emp_pln_ctas_rec').AsInteger;
      PlnCtasR_Desc      := SqlAux.FieldByName('emp_pln_ctas_rec_dsc').AsString;

      {plano de contas Contas a Pagar e Receber}
      PlnOS              := SqlAux.FieldByName('emp_pln_os').AsInteger;
      PlnOS_Desc         := SqlAux.FieldByName('emp_pln_os_desc').AsString;

   finally
      FreeAndNil(SqlAux);
   end;

end;

function Trunca(const Valor:Double; Decimais:Integer = 2): Double;
var
  I, C  : Integer;
  S, S2 : String;
  V     : Boolean;
begin
  S := FloatToStr(Valor);
  C := 0; V := False;

  For I := 1 to Length(S) do
  begin

    if not V then V := S[I] = ',';
    S2 := S2 + S[I];
    if V then Inc(C);
    if C > Decimais then Break;
  end;
  Result := StrToFloat(S2);
end;
end.
