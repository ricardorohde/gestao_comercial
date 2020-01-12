unit uEmpresaInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, ACBrEnterTab, ACBrValidador, ACBrBase, ACBrSocket, ACBrCEP,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, RzPanel, RzRadGrp, RzDBRGrp,
  JvExMask, JvToolEdit, JvDBControls, RzEdit, RzDBEdit, RzDBBnEd, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, RzDlgBtn, RzButton, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  System.ImageList, Vcl.ImgList, JvImageList, ACBrUtil;

type
  TFrEmpresaInicio = class(TForm)
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnOK: TRzToolButton;
    btnError: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    pnFundo: TRzPanel;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    tbDadosEMP_CODIGO: TIntegerField;
    tbDadosEMP_DATA_REG: TSQLTimeStampField;
    tbDadosEMP_RAZAO: TStringField;
    tbDadosEMP_FANTASIA: TStringField;
    tbDadosEMP_CNPJ: TStringField;
    tbDadosEMP_IESTADUAL: TStringField;
    tbDadosEMP_IMUNICIPAL: TStringField;
    tbDadosEMP_CEP: TStringField;
    tbDadosEMP_ENDERECO: TStringField;
    tbDadosEMP_NUMERO: TIntegerField;
    tbDadosEMP_COMPLEMENTO: TStringField;
    tbDadosEMP_BAIRRO: TStringField;
    tbDadosEMP_CIDADE: TStringField;
    tbDadosEMP_CODIGO_CIDADE: TIntegerField;
    tbDadosEMP_UF: TStringField;
    tbDadosEMP_CODIGO_UF: TIntegerField;
    tbDadosEMP_PAIS: TStringField;
    tbDadosEMP_CODIGO_PAIS: TIntegerField;
    tbDadosEMP_FONEFIXO: TStringField;
    tbDadosEMP_FONEMOVEL: TStringField;
    tbDadosEMP_SKYPE: TStringField;
    tbDadosEMP_FACEBOOK: TStringField;
    tbDadosEMP_EMAIL: TStringField;
    tbDadosEMP_SITE: TStringField;
    tbDadosEMP_RESP_NOME: TStringField;
    tbDadosEMP_RESP_CPF: TStringField;
    tbDadosEMP_RESP_RG: TStringField;
    tbDadosEMP_RESP_FONEMOVEL: TStringField;
    tbDadosEMP_RESP_DATANASC: TDateField;
    tbDadosEMP_RESP_EMAIL: TStringField;
    tbDadosEMP_RAMO_ATIVIDADE: TIntegerField;
    tbDadosEMP_SEGMENTO: TIntegerField;
    tbDadosEMP_CRT: TIntegerField;
    tbDadosEMP_ICMS_CREDITO: TIntegerField;
    tbDadosEMP_ICMS_ALIQUOTA: TBCDField;
    tbDadosEMP_IESTADUAL_SUST: TStringField;
    tbDadosEMP_LOGOTIPO: TMemoField;
    tbDadosEMP_NFE_AMBIENTE: TIntegerField;
    tbDadosEMP_NFE_HNUMERO: TIntegerField;
    tbDadosEMP_NFE_HLOTE: TIntegerField;
    tbDadosEMP_NFE_HSERIE: TIntegerField;
    tbDadosEMP_NFE_HMODELO: TIntegerField;
    tbDadosEMP_NFE_PNUMERO: TIntegerField;
    tbDadosEMP_NFE_PLOTE: TIntegerField;
    tbDadosEMP_NFE_PSERIE: TIntegerField;
    tbDadosEMP_NFE_PMODELO: TIntegerField;
    tbDadosEMP_NFE_TIPO_EMISSAO: TIntegerField;
    tbDadosEMP_NFE_TIPO_XJUST: TStringField;
    tbDadosEMP_NFE_TIPO_DANFE: TIntegerField;
    tbDadosEMP_NFE_LOGOTIPO: TBlobField;
    tbDadosEMP_NFE_WEBSERVER: TStringField;
    tbDadosEMP_NFE_SSL_TYPE: TIntegerField;
    tbDadosEMP_NFE_CERTIFICADO: TStringField;
    tbDadosEMP_NFE_PROXY_HOST: TStringField;
    tbDadosEMP_NFE_PROXY_PORTA: TIntegerField;
    tbDadosEMP_NFE_PROXY_USUARIO: TStringField;
    tbDadosEMP_NFE_PROXY_SENHA: TStringField;
    tbDadosEMP_NFE_EMAIL_HOST: TStringField;
    tbDadosEMP_NFE_EMAIL_PORTA: TIntegerField;
    tbDadosEMP_NFE_EMAIL_USUARIO: TStringField;
    tbDadosEMP_NFE_EMAIL_SENHA: TStringField;
    tbDadosEMP_NFE_EMAIL_SEGURO: TIntegerField;
    tbDadosEMP_NFE_EMAIL_ASSUNTO: TStringField;
    tbDadosEMP_NFE_EMAIL_MESSAGE: TStringField;
    tbDadosEMP_NFE_FOLDER_XSD: TStringField;
    tbDadosEMP_NFE_FOLDER_LOGS: TStringField;
    tbDadosEMP_OBSERVACAO: TStringField;
    tbDadosEMP_DATA_FUNDACAO: TDateField;
    tbDadosEMP_STATUS: TIntegerField;
    tbDadosEMP_NFE_FOLDER_PDFS: TStringField;
    tbDadosEMP_NFE_MODELO_DF: TIntegerField;
    tbDadosEMP_NFE_VERSAO_DF: TIntegerField;
    tbDadosEMP_NFE_AVISO_IPI_I: TStringField;
    tbDadosEMP_NFE_AVISO_ICMS_A: TStringField;
    tbDadosEMP_NFE_PRINT_LEI_12741: TIntegerField;
    tbDadosEMP_ATIVA_RETAGUARDA: TIntegerField;
    tbDadosEMP_ATIVA_CAIXA: TIntegerField;
    tbDadosEMP_NCM_FONTE: TStringField;
    tbDadosEMP_NCM_CHAVE: TStringField;
    tbDadosEMP_DECIMAL_CUSTO: TIntegerField;
    tbDadosEMP_DECIMAL_VENDA: TIntegerField;
    tbDadosEMP_DECIMAL_QTDE: TIntegerField;
    tbDadosEMP_SERVER_REST_HOST: TStringField;
    tbDadosEMP_SERVER_REST_PORT: TIntegerField;
    tbDadosEMP_PLN_PDV: TIntegerField;
    tbDadosEMP_PLN_PDV_DESC: TStringField;
    tbDadosEMP_PLN_NFE_S: TIntegerField;
    tbDadosEMP_PLN_NFE_SDESC: TStringField;
    tbDadosEMP_PLN_NFE_E: TIntegerField;
    tbDadosEMP_PLN_NFE_EDESC: TStringField;
    tbDadosEMP_PLN_PED_V: TIntegerField;
    tbDadosEMP_PLN_PED_VDESC: TStringField;
    tbDadosEMP_PLN_PED_C: TIntegerField;
    tbDadosEMP_PLN_PED_CDESC: TStringField;
    tbDadosEMP_PLN_OS: TIntegerField;
    tbDadosEMP_PLN_OS_DESC: TStringField;
    tbDadosEMP_CLI_PDV: TIntegerField;
    tbDadosEMP_CLI_PDV_DESC: TStringField;
    tbDadosEMP_PLN_CTAS_PAG: TIntegerField;
    tbDadosEMP_PLN_CTAS_PAG_DSC: TStringField;
    tbDadosEMP_PLN_CTAS_REC: TIntegerField;
    tbDadosEMP_PLN_CTAS_REC_DSC: TStringField;
    tbDadosEMP_USAR_LOGIN: TStringField;
    dsDados: TDataSource;
    SearchCep: TACBrCEP;
    ChecaDoc: TACBrValidador;
    ACBrEnterTab1: TACBrEnterTab;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    eBairro: TDBEdit;
    eCep: TRzDBButtonEdit;
    eCidade: TDBEdit;
    eCnpj: TDBEdit;
    eCodigo: TDBEdit;
    eComplemento: TDBEdit;
    eDataCadastro: TDBEdit;
    eEmail: TDBEdit;
    eEndereco: TDBEdit;
    eFacebook: TDBEdit;
    eFantasia: TDBEdit;
    eFoneFixo: TDBEdit;
    eInscEstadual: TDBEdit;
    eMunicipal: TDBEdit;
    eNumero: TDBEdit;
    eRamoAtividade: TJvDBComboBox;
    eRazao: TDBEdit;
    eRegimeTrib: TRzDBRadioGroup;
    eSegmento: TJvDBComboBox;
    eSite: TDBEdit;
    eSkype: TDBEdit;
    eUf: TDBEdit;
    eWhatsApp: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label4: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label48: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    sysIcones16: TJvImageList;
    procedure eCepButtonClick(Sender: TObject);
    procedure eCnpjExit(Sender: TObject);
    procedure eCodigoEnter(Sender: TObject);
    procedure eCodigoExit(Sender: TObject);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbDadosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEmpresaInicio: TFrEmpresaInicio;

implementation

{$R *.dfm}

procedure TFrEmpresaInicio.actAlterarExecute(Sender: TObject);
begin
   if (tbDados.State in [dsInsert, dsEdit]) or (tbDados.IsEmpty) then
      exit;

   tbDados.Edit;
end;

procedure TFrEmpresaInicio.actCadastrarExecute(Sender: TObject);
begin
   if tbDados.State in [dsInsert, dsEdit] then
      exit;

   tbDados.Insert;
end;

procedure TFrEmpresaInicio.actCancelarExecute(Sender: TObject);
begin
   if not (tbDados.State in [dsInsert, dsEdit]) then
      exit;

   tbDados.Cancel;
end;

procedure TFrEmpresaInicio.actGravarExecute(Sender: TObject);
begin
   if not (tbDados.State in [dsInsert, dsEdit]) then
      exit;

   tbDados.Post;
end;

procedure TFrEmpresaInicio.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrEmpresaInicio.dsDadosStateChange(Sender: TObject);
begin
   pnFundo.Enabled := tbDados.State in [dsInsert, dsEdit];

   // Posiciona o cursor no campo razão social
   if tbDados.State in [dsInsert, dsEdit] then
      eRazao.SetFocus;
end;

procedure TFrEmpresaInicio.eCepButtonClick(Sender: TObject);
begin
   // Efetua a busca do cep informado
   if (eCep.Text <> '') then
   begin
      case (SearchCep.BuscarPorCEP(eCep.Text)) of
         0 : begin
            Application.MessageBox('Não foram encontrados resultados para o CEP informado.','TechCore-RTG',mb_IconStop or mb_Ok);
            eCep.Clear;
         end;

         1 : begin
            tbDados.FieldByName('EMP_ENDERECO').AsString       := AnsiUpperCase(SearchCep.Enderecos[0].Logradouro);
            tbDados.FieldByName('EMP_CODIGO_CIDADE').AsInteger := SearchCep.Enderecos[0].IBGE_Municipio.ToInteger;
            tbDados.FieldByName('EMP_BAIRRO').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Bairro);
            tbDados.FieldByName('EMP_CIDADE').AsString         := AnsiUpperCase(SearchCep.Enderecos[0].Municipio);
            tbDados.FieldByName('EMP_CODIGO_UF').AsInteger     := SearchCep.Enderecos[0].IBGE_UF.ToInteger;
            tbDados.FieldByName('EMP_UF').AsString             := AnsiUpperCase(SearchCep.Enderecos[0].UF);

            eNumero.SetFocus;
         end;

         2..100 : begin
            Application.MessageBox('Foram encontrados mais de um endereço para este CEP.','TechCore-RTG',mb_IconStop or mb_Ok);
            eCep.Clear;
         end;
      end;
   end
   else
      Application.MessageBox('Informe o número do CEP que deseja consultar.','TechCore-RTG',mb_IconStop or mb_Ok);
end;

procedure TFrEmpresaInicio.eCnpjExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;

   {Checa se o Cnpj informado está correto}
   Checadoc.TipoDocto := docCNPJ;
   ChecaDoc.Documento := eCnpj.Text;
   if not ChecaDoc.Validar then
   begin
      Application.MessageBox('Erro, Cnpj informado não é válido.','TechCore-RTG',mb_IconStop or mb_Ok);
      eCnpj.SetFocus;
   end;

end;

procedure TFrEmpresaInicio.eCodigoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TFrEmpresaInicio.eCodigoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrEmpresaInicio.FormCreate(Sender: TObject);
begin
   tbDados.Open();
end;

procedure TFrEmpresaInicio.tbDadosBeforePost(DataSet: TDataSet);
begin
   {checa o preenchimento das informações}
   if Length(eRazao.Text) < 5 then
   begin
      Application.MessageBox('Informe uma Razão Social válida','Techcore-RTG', mb_IconStop or mb_ok);
      eRazao.SetFocus;
      Abort;
   end;

   if Length(eFantasia.Text) < 5 then
   begin
      Application.MessageBox('Informe um Nome Fantasial válido','Techcore-RTG', mb_IconStop or mb_ok);
      eFantasia.SetFocus;
      Abort;
   end;

   if OnlyNumber(eCnpj.Text) = EmptyStr then
   begin
      Application.MessageBox('Informe um número de Cnpj válido','Techcore-RTG', mb_IconStop or mb_ok);
      eCnpj.SetFocus;
      Abort;
   end;

   if OnlyNumber(eCep.Text) = EmptyStr then
   begin
      Application.MessageBox('Informe um número de CEP válido','Techcore-RTG', mb_IconStop or mb_ok);
      eCep.SetFocus;
      Abort;
   end;

   if Length(eEndereco.Text) < 5 then
   begin
      Application.MessageBox('Informe um Edereço válido','Techcore-RTG', mb_IconStop or mb_ok);
      eEndereco.SetFocus;
      Abort;
   end;

   if Length(eBairro.Text) < 5 then
   begin
      Application.MessageBox('Informe um Bairro válido','Techcore-RTG', mb_IconStop or mb_ok);
      eBairro.SetFocus;
      Abort;
   end;

   if Length(eCidade.Text) < 5 then
   begin
      Application.MessageBox('Informe uma Cidade válido','Techcore-RTG', mb_IconStop or mb_ok);
      eCidade.SetFocus;
      Abort;
   end;

end;

procedure TFrEmpresaInicio.tbDadosNewRecord(DataSet: TDataSet);
begin
   {Configurações iniciais do cadastro}
   DataSet.FieldByName('emp_data_reg').AsDateTime := Now;
   DataSet.FieldByName('emp_nfe_ambiente').AsInteger     := 2;  // Homologação
   DataSet.FieldByName('emp_icms_credito').AsInteger     := 1;  // Não transfere crédito
   DataSet.FieldByName('emp_icms_aliquota').AsFloat      := 0.00;
   DataSet.FieldByName('emp_crt').AsInteger              := 1;  // Simples nacional
   DataSet.FieldByName('emp_ramo_atividade').AsInteger   := 2;
   DataSet.FieldByName('emp_segmento').AsInteger         := 4;
   DataSet.FieldByName('emp_nfe_tipo_emissao').AsInteger := 0;
   DataSet.FieldByName('emp_nfe_ssl_type').AsInteger     := 1;
   DataSet.FieldByName('emp_nfe_tipo_danfe').AsInteger   := 1;

   {Dados da NF-e em produção}
   DataSet.FieldByName('emp_nfe_pnumero').AsInteger    := 0;
   DataSet.FieldByName('emp_nfe_pserie').AsInteger     := 1;
   DataSet.FieldByName('emp_nfe_plote').AsInteger      := 0;
   DataSet.FieldByName('emp_nfe_pmodelo').AsInteger    := 55;

   {Dados da NF-e em homologação}
   DataSet.FieldByName('emp_nfe_hnumero').AsInteger    := 0;
   DataSet.FieldByName('emp_nfe_hserie').AsInteger     := 1;
   DataSet.FieldByName('emp_nfe_hlote').AsInteger      := 0;
   DataSet.FieldByName('emp_nfe_hmodelo').AsInteger    := 55;

   {dados da localidade}
   DataSet.FieldByName('emp_pais').AsString            := 'BRASIL';
   DataSet.FieldByName('emp_codigo_pais').AsInteger    := 1058;

end;

end.
