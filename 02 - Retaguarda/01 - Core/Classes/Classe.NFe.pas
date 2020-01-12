unit Classe.NFe;

interface

Uses
   System.SysUtils, System.classes, FireDAC.Comp.Client, FireDac.Stan.Intf, Data.DB;

type
   TNotaFiscal = class
   private
      FIDNFe            : integer;
      FNumeroNFe        : Integer;
      FLoteNFe          : Integer;
      FSerieNFe         : Integer;
      FIDCliente        : integer;
      FIDEmpresa        : integer;
      FIDTransportador  : integer;
      FValorFrete       : Double;
      FValorSeguro      : Double;
      FValorDesconto    : Double;
      FValorOutros      : Double;
      FStatusNfe        : Integer;
      FSubTotal         : Double;

   public
      property IDNFe           : integer read FIDNFe           write FIDNFe;
      property NumeroNFe       : integer read FNumeroNFe       write FNumeroNFe;
      property LoteNFe         : integer read FLoteNFe         write FLoteNFe;
      property IDSerieNFe      : integer read FSerieNFe        write FSerieNFe;
      property IDCliente       : integer read FIDCliente       write FIDCliente;
      property IDEmpresa       : integer read FIDEmpresa       write FIDEmpresa;
      property IDTransportador : integer read FIDTransportador write FIDTransportador;
      property ValorFrete      : Double  read FValorFrete      write FValorFrete;
      property ValorSeguro     : Double  read FValorSeguro     write FValorSeguro;
      property ValorDesconto   : Double  read FValorDesconto   write FValorDesconto;
      property ValorOutros     : Double  read FValorOutros     write FValorOutros;
      property SubTotal        : Double  read FSubTotal        write FSubTotal;
   end;

type
   TParametrosNFe = class
   private
      FNFe_Ambiente       : Integer;
      FNFe_PModelo        : Integer;
      FNFe_PSerie         : Integer;
      FNFe_HModelo        : Integer;
      FNFe_HSerie         : Integer;
      FNFe_TipoEmissao    : Integer;
      FNFe_xJust          : String;
      FNFe_TipoDanfe      : Integer;
      FNFe_Logotipo       : TStringStream;
      FNFe_WebServer      : String;
      FNFe_SSLType        : Integer;
      FNFe_Certificado    : String;
      FNFe_ProxyHost      : String;
      FNFe_ProxyPorta     : Integer;
      FNFe_ProxyUsuario   : String;
      FNFe_ProxySenha     : String;
      FNFe_EmailHost      : String;
      FNFe_EmailPorta     : Integer;
      FNFe_EmailUsuario   : String;
      FNFe_EmailSenha     : String;
      FNFe_EmailAssunto   : String;
      FNFe_EmailMsg       : String;
      FNFe_EmailSeguro    : Integer;
      FNFe_FolderSXD      : String;
      FNFe_FolderLogs     : String;
      FNFe_FolderPDFs     : String;
      FNFE_ModeloDF       : Integer;
      FNFE_VersaoDF       : Integer;
      FNFe_Print_Lei12741 : Integer;

      procedure GetParametros(ID_Empresa : Integer);

   public
      Constructor Create(ID_Empresa : Integer);
      Constructor Destroy;

      property NFe_Ambiente        : Integer      Read FNFe_Ambiente       Write FNFe_Ambiente;
      property NFe_PModelo         : Integer      Read FNFe_PModelo        Write FNFe_PModelo;
      property NFe_PSerie          : Integer      Read FNFe_PSerie         Write FNFe_PSerie;
      property NFe_HModelo         : Integer      Read FNFe_HModelo        Write FNFe_HModelo;
      property NFe_HSerie          : Integer      Read FNFe_HSerie         Write FNFe_HSerie;
      property NFe_TipoEmissao     : Integer      Read FNFe_TipoEmissao    Write FNFe_TipoEmissao;
      property NFe_xJust           : String       Read FNFe_xJust          Write FNFe_xJust;
      property NFe_TipoDanfe       : Integer      Read FNFe_TipoDanfe      Write FNFe_TipoDanfe;
      property NFe_Logotipo        : TStringStream Read FNFe_Logotipo       Write FNFe_Logotipo;
      property NFe_WebServer       : String       Read FNFe_WebServer      Write FNFe_WebServer;
      property NFe_SSLType         : Integer      Read FNFe_SSLType        Write FNFe_SSLType;
      property NFe_Certificado     : String       Read FNFe_Certificado    Write FNFe_Certificado;
      property NFe_ProxyHost       : String       Read FNFe_ProxyHost      Write FNFe_ProxyHost;
      property NFe_ProxyPorta      : Integer      Read FNFe_ProxyPorta     Write FNFe_ProxyPorta;
      property NFe_ProxyUsuario    : String       Read FNFe_ProxyUsuario   Write FNFe_ProxyUsuario;
      property NFe_ProxySenha      : String       Read FNFe_ProxySenha     Write FNFe_ProxySenha;
      property NFe_EmailHost       : String       Read FNFe_EmailHost      Write FNFe_EmailHost;
      property NFe_EmailPorta      : Integer      Read FNFe_EmailPorta     Write FNFe_EmailPorta;
      property NFe_EmailUsuario    : String       Read FNFe_EmailUsuario   Write FNFe_EmailUsuario;
      property NFe_EmailSenha      : String       Read FNFe_EmailSenha     Write FNFe_EmailSenha;
      property NFe_EmailAssunto    : String       Read FNFe_EmailAssunto   Write FNFe_EmailAssunto;
      property NFe_EmailMsg        : String       Read FNFe_EmailMsg       Write FNFe_EmailMsg;
      property NFe_EmailSeguro     : Integer      Read FNFe_EmailSeguro    Write FNFe_EmailSeguro;
      property NFe_FolderSXD       : String       Read FNFe_FolderSXD      Write FNFe_FolderSXD;
      property NFe_Folderlogs      : String       Read FNFe_Folderlogs     Write FNFe_Folderlogs;
      property NFe_FolderPDFs      : String       Read FNFe_FolderPDFs     Write FNFe_FolderPDFs;
      property NFe_ModeloDF        : Integer      Read FNFe_ModeloDF       Write FNFe_ModeloDF;
      property NFE_VersaoDF        : Integer      Read FNFe_VersaoDF       Write FNFe_VersaoDF;
      property NFe_Print_Lei12741  : integer      Read FNFe_Print_Lei12741 Write FNFe_Print_Lei12741;

   end;

var
   ConfigNFe : TParametrosNFe;
   ClassNotaFiscal : TNotaFiscal;

implementation
   Uses
      uModuloRet;

{ TParametrosNFe }

constructor TParametrosNFe.Create(ID_Empresa: Integer);
begin
   // Inicializa as propriedades
   FNFe_Ambiente        := -1;
   FNFe_PModelo         := -1;
   FNFe_PSerie          := -1;
   FNFe_HModelo         := -1;
   FNFe_HSerie          := -1;
   FNFe_TipoEmissao     := -1;
   FNFe_xJust           := '';
   FNFe_TipoDanfe       := -1;
   FNFe_Logotipo        := nil;
   FNFe_WebServer       := '';
   FNFe_SSLType         := -1;
   FNFe_Certificado     := '';
   FNFe_ProxyHost       := '';
   FNFe_ProxyPorta      := -1;
   FNFe_ProxyUsuario    := '';
   FNFe_ProxySenha      := '';
   FNFe_EmailHost       := '';
   FNFe_EmailPorta      := -1;
   FNFe_EmailUsuario    := '';
   FNFe_EmailSenha      := '';
   FNFe_EmailAssunto    := '';
   FNFe_EmailMsg        := '';
   FNFe_EmailSeguro     := -1;
   FNFe_FolderSXD       := '';
   FNFe_FolderLogs      := '';
   FNFe_FolderPDFs      := '';
   FNFe_ModeloDF        := -1;
   FNFe_VersaoDF        := -1;
   FNFe_Print_Lei12741  := -1;

   // Carrega os dados
   GetParametros(ID_Empresa);
end;


constructor TParametrosNFe.Destroy;
begin
   NFe_Logotipo.Free;
end;

procedure TParametrosNFe.GetParametros(ID_Empresa: Integer);
var
   SqlAux : TFDQuery;
begin

   SqlAux            := TFDQuery.Create(nil);
   SqlAux.Connection := FrmoduloRet.DBConexao;
   try
      SqlAux.Close;
      SqlAux.SQL.Clear;
      SqlAux.SQL.Add('SELECT * FROM C000501 WHERE ID = :ID');
      SqlAux.ParamByName('ID').AsInteger := ID_Empresa;
      SqlAux.Open();

      // Carrega os dados para a memória
      NFe_Ambiente        := SqlAux.FieldByName('EMP_NFE_AMBIENTE').AsInteger;
      NFe_PModelo         := SqlAux.FieldByName('EMP_NFE_PMODELO').AsInteger;
      NFe_PSerie          := SqlAux.FieldByName('EMP_NFE_PSERIE').AsInteger;
      NFe_HModelo         := SqlAux.FieldByName('EMP_NFE_HMODELO').AsInteger;
      NFe_HSerie          := SqlAux.FieldByName('EMP_NFE_HSERIE').AsInteger;
      NFe_TipoEmissao     := SqlAux.FieldByName('EMP_NFE_TIPO_EMISSAO').AsInteger;
      NFe_xJust           := SqlAux.FieldByName('EMP_NFE_TIPO_XJUST').AsString;
      NFe_TipoDanfe       := SqlAux.FieldByName('EMP_NFE_TIPO_DANFE').AsInteger;

      // Extrai o arquivo de imagem do banco de dados
      if not SqlAux.FieldByName('EMP_NFE_LOGOTIPO').IsNull then
      begin
         NFe_Logotipo := TStringStream.Create;
         NFe_Logotipo.WriteString(SqlAux.FieldByName('EMP_NFE_LOGOTIPO').AsString);
      end;

      NFe_WebServer       := SqlAux.FieldByName('EMP_NFE_WEBSERVER').AsString;
      NFe_SSLType         := SqlAux.FieldByName('EMP_NFE_SSL_TYPE').AsInteger;
      NFe_Certificado     := SqlAux.FieldByName('EMP_NFE_CERTIFICADO').AsString;
      NFe_ProxyHost       := SqlAux.FieldByName('EMP_NFE_PROXY_HOST').AsString;
      NFe_ProxyPorta      := SqlAux.FieldByName('EMP_NFE_PROXY_PORTA').AsInteger;
      NFe_ProxyUsuario    := SqlAux.FieldByName('EMP_NFE_PROXY_USUARIO').AsString;
      NFe_ProxySenha      := SqlAux.FieldByName('EMP_NFE_PROXY_SENHA').AsString;
      NFe_EmailHost       := SqlAux.FieldByName('EMP_NFE_EMAIL_HOST').AsString;
      NFe_EmailPorta      := SqlAux.FieldByName('EMP_NFE_EMAIL_PORTA').AsInteger;
      NFe_EmailUsuario    := SqlAux.FieldByName('EMP_NFE_EMAIL_USUARIO').AsString;
      NFe_EmailSenha      := SqlAux.FieldByName('EMP_NFE_EMAIL_SENHA').AsString;
      NFe_EmailAssunto    := SqlAux.FieldByName('EMP_NFE_EMAIL_ASSUNTO').AsString;
      NFe_EmailMsg        := SqlAux.FieldByName('EMP_NFE_EMAIL_MESSAGE').AsString;
      NFe_EmailSeguro     := SqlAux.FieldByName('EMP_NFE_EMAIL_SEGURO').AsInteger;
      NFe_FolderSXD       := SqlAux.FieldByName('EMP_NFE_FOLDER_XSD').AsString;
      NFe_FolderLogs      := SqlAux.FieldByName('EMP_NFE_FOLDER_LOGS').AsString;
      NFe_FolderPDFs      := SqlAux.FieldByName('EMP_NFE_FOLDER_PDFS').AsString;
      NFe_ModeloDF        := SqlAux.FieldByName('EMP_NFE_MODELO_DF').AsInteger;
      NFe_VersaoDF        := SqlAux.FieldByName('EMP_NFE_VERSAO_DF').AsInteger;
      NFe_Print_Lei12741  := SqlAux.FieldByName('EMP_NFE_PRINT_LEI_12741').AsInteger;

   finally
      FreeAndNil(SqlAux);
   end;

end;

end.
