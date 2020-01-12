unit uEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, JvDBImage, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, RzRadGrp,
  RzDBRGrp, RzPanel, RzEdit, RzDBEdit, RzDBBnEd, JvExMask, JvToolEdit,
  JvDBControls, Vcl.Mask, Vcl.ComCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  JvExComCtrls, JvComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrEnterTab, ACBrValidador,
  ACBrBase, ACBrSocket, ACBrCEP, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, RzButton, System.Actions, Vcl.ActnList, WinApi.ShellAPI, FileCtrl,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Imaging.pngimage,
  JvImage, JvDataSource, RzCmboBx, RzDBCmbo, ACBrDFe, ACBrNFe, ACBrUtil,
  Vcl.ExtDlgs, JPEG, JvExControls, JvSpeedButton, JvDBCheckBox, RzDBSpin;

type
  TFrEmpresas = class(TForm)
    SearchCep: TACBrCEP;
    ChecaDoc: TACBrValidador;
    ACBrEnterTab1: TACBrEnterTab;
    tbDados: TFDQuery;
    SqlAux: TFDQuery;
    dsDados: TDataSource;
    tbDadosID: TIntegerField;
    tbDadosEMP_CODIGO: TIntegerField;
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
    tbDadosEMP_RESP_EMAIL: TStringField;
    tbDadosEMP_RAMO_ATIVIDADE: TIntegerField;
    tbDadosEMP_SEGMENTO: TIntegerField;
    tbDadosEMP_CRT: TIntegerField;
    tbDadosEMP_ICMS_CREDITO: TIntegerField;
    tbDadosEMP_IESTADUAL_SUST: TStringField;
    tbDadosEMP_LOGOTIPO: TMemoField;
    tbDadosEMP_NFE_HNUMERO: TIntegerField;
    tbDadosEMP_NFE_HLOTE: TIntegerField;
    tbDadosEMP_NFE_HSERIE: TIntegerField;
    tbDadosEMP_NFE_HMODELO: TIntegerField;
    tbDadosEMP_NFE_PNUMERO: TIntegerField;
    tbDadosEMP_NFE_PLOTE: TIntegerField;
    tbDadosEMP_NFE_PSERIE: TIntegerField;
    tbDadosEMP_NFE_PMODELO: TIntegerField;
    tbDadosEMP_DATA_FUNDACAO: TDateField;
    tbDadosEMP_STATUS: TIntegerField;
    tbDadosEMP_OBSERVACAO: TStringField;
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnError: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    tbDadosEMP_NFE_AMBIENTE: TIntegerField;
    tbDadosEMP_RESP_DATANASC: TDateField;
    tbDadosEMP_DATA_REG: TSQLTimeStampField;
    RzPanel2: TRzPanel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzPanel3: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    tabParamNfe: TTabSheet;
    pnNfe: TRzPanel;
    RzGroupBox2: TRzGroupBox;
    Label22: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzGroupBox3: TRzGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    BtnLogoRelatorios: TSpeedButton;
    SpeedButton2: TSpeedButton;
    RzDBRadioGroup1: TRzDBRadioGroup;
    RzDBRadioGroup2: TRzDBRadioGroup;
    tbDadosEMP_NFE_TIPO_EMISSAO: TIntegerField;
    tbDadosEMP_NFE_TIPO_XJUST: TStringField;
    tbDadosEMP_NFE_TIPO_DANFE: TIntegerField;
    RzGroupBox4: TRzGroupBox;
    eTipoEmissao: TRzDBComboBox;
    tbDadosEMP_NFE_LOGOTIPO: TBlobField;
    eLogoNfe: TJvDBImage;
    xJust: TRzDBEdit;
    RzGroupBox5: TRzGroupBox;
    eCertificado: TRzDBButtonEdit;
    RzGroupBox6: TRzGroupBox;
    RzDBComboBox1: TRzDBComboBox;
    RzGroupBox7: TRzGroupBox;
    RzDBComboBox2: TRzDBComboBox;
    RzGroupBox8: TRzGroupBox;
    RzDBEdit9: TRzDBEdit;
    Label46: TLabel;
    RzDBEdit10: TRzDBEdit;
    Label47: TLabel;
    RzDBEdit11: TRzDBEdit;
    Label49: TLabel;
    RzDBEdit12: TRzDBEdit;
    Label50: TLabel;
    RzGroupBox9: TRzGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    eFolderXSD: TRzDBButtonEdit;
    eFolderLogs: TRzDBButtonEdit;
    RzGroupBox10: TRzGroupBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzDBEdit15: TRzDBEdit;
    RzDBEdit16: TRzDBEdit;
    RzDBEdit17: TRzDBEdit;
    Label57: TLabel;
    RzDBEdit18: TRzDBEdit;
    Label58: TLabel;
    RzDBComboBox3: TRzDBComboBox;
    Label59: TLabel;
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
    ACBrNFe1: TACBrNFe;
    OpenImg: TOpenPictureDialog;
    pnDetalhes: TRzPanel;
    eNumero: TDBEdit;
    eEndereco: TDBEdit;
    eCep: TRzDBButtonEdit;
    eComplemento: TDBEdit;
    eUf: TDBEdit;
    eCidade: TDBEdit;
    eBairro: TDBEdit;
    eMunicipal: TDBEdit;
    ePais: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    eRazao: TDBEdit;
    eCodigoPais: TDBEdit;
    eInscEstadual: TDBEdit;
    eCnpj: TDBEdit;
    eFantasia: TDBEdit;
    eFoneFixo: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnLogomarca: TSpeedButton;
    SpeedButton1: TSpeedButton;
    eLogo: TJvDBImage;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    eAliquota: TDBEdit;
    eCreditoICMS: TJvDBComboBox;
    eRegimeTrib: TRzDBRadioGroup;
    eSegmento: TJvDBComboBox;
    eFacebook: TDBEdit;
    eSkype: TDBEdit;
    eWhatsApp: TDBEdit;
    eSite: TDBEdit;
    eRamoAtividade: TJvDBComboBox;
    RzGroupBox1: TRzGroupBox;
    Label21: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    eResRg: TDBEdit;
    eResNome: TDBEdit;
    eRespCpf: TDBEdit;
    eResNasc: TJvDBDateEdit;
    eResFoneMovel: TDBEdit;
    eResEmail: TDBEdit;
    eEmail: TDBEdit;
    eDataCadastro: TDBEdit;
    Label29: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label25: TLabel;
    Label33: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label30: TLabel;
    Label48: TLabel;
    Label28: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label41: TLabel;
    eCodigo: TDBEdit;
    Label10: TLabel;
    Label31: TLabel;
    Label45: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label44: TLabel;
    Label34: TLabel;
    Label4: TLabel;
    eFolderPDFs: TRzDBButtonEdit;
    Label60: TLabel;
    RzDBComboBox4: TRzDBComboBox;
    Label61: TLabel;
    Label62: TLabel;
    RzDBComboBox5: TRzDBComboBox;
    tbDadosEMP_NFE_FOLDER_PDFS: TStringField;
    tbDadosEMP_NFE_MODELO_DF: TIntegerField;
    tbDadosEMP_NFE_VERSAO_DF: TIntegerField;
    tabMsgICMsIPI: TTabSheet;
    pnAvisos: TRzPanel;
    RzGroupBox11: TRzGroupBox;
    RzGroupBox12: TRzGroupBox;
    tbDadosEMP_NFE_AVISO_IPI_I: TStringField;
    tbDadosEMP_NFE_AVISO_ICMS_A: TStringField;
    eMsgIPI: TRzDBMemo;
    eMsgICMs: TRzDBMemo;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    OpenDialog: TOpenDialog;
    RzDBComboBox6: TRzDBComboBox;
    Label63: TLabel;
    tbDadosEMP_NFE_PRINT_LEI_12741: TIntegerField;
    JvDBCheckBox1: TJvDBCheckBox;
    tbDadosEMP_ATIVA_RETAGUARDA: TIntegerField;
    tbDadosEMP_ATIVA_CAIXA: TIntegerField;
    RzGroupBox13: TRzGroupBox;
    Label64: TLabel;
    Label65: TLabel;
    RzDBSpinEdit1: TRzDBSpinEdit;
    RzDBSpinEdit2: TRzDBSpinEdit;
    RzDBSpinEdit3: TRzDBSpinEdit;
    Label66: TLabel;
    tbDadosEMP_NCM_FONTE: TStringField;
    tbDadosEMP_NCM_CHAVE: TStringField;
    tbDadosEMP_DECIMAL_CUSTO: TIntegerField;
    tbDadosEMP_DECIMAL_VENDA: TIntegerField;
    tbDadosEMP_DECIMAL_QTDE: TIntegerField;
    RzGroupBox14: TRzGroupBox;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    tbDadosEMP_SERVER_REST_HOST: TStringField;
    tbDadosEMP_SERVER_REST_PORT: TIntegerField;
    TabSheet1: TTabSheet;
    tbDadosEMP_PLN_PDV: TIntegerField;
    tbDadosEMP_PLN_NFE_S: TIntegerField;
    tbDadosEMP_PLN_NFE_E: TIntegerField;
    tbDadosEMP_PLN_PED_V: TIntegerField;
    tbDadosEMP_PLN_PED_C: TIntegerField;
    tbDadosEMP_PLN_OS: TIntegerField;
    tbDadosEMP_PLN_PDV_DESC: TStringField;
    tbDadosEMP_CLI_PDV: TIntegerField;
    tbDadosEMP_CLI_PDV_DESC: TStringField;
    pnCaixa: TRzPanel;
    RzDBButtonEdit2: TRzDBButtonEdit;
    Label68: TLabel;
    RzDBButtonEdit1: TRzDBButtonEdit;
    Label67: TLabel;
    TabSheet2: TTabSheet;
    pnConfigGeral: TRzPanel;
    Label69: TLabel;
    RzDBButtonEdit3: TRzDBButtonEdit;
    RzDBButtonEdit6: TRzDBButtonEdit;
    Label72: TLabel;
    RzDBButtonEdit7: TRzDBButtonEdit;
    Label73: TLabel;
    Label74: TLabel;
    RzDBButtonEdit8: TRzDBButtonEdit;
    tbDadosEMP_PLN_NFE_SDESC: TStringField;
    tbDadosEMP_PLN_NFE_EDESC: TStringField;
    tbDadosEMP_PLN_PED_VDESC: TStringField;
    tbDadosEMP_PLN_PED_CDESC: TStringField;
    tbDadosEMP_PLN_OS_DESC: TStringField;
    tbDadosEMP_PLN_CTAS_PAG: TIntegerField;
    tbDadosEMP_PLN_CTAS_PAG_DSC: TStringField;
    tbDadosEMP_PLN_CTAS_REC: TIntegerField;
    tbDadosEMP_PLN_CTAS_REC_DSC: TStringField;
    RzDBButtonEdit9: TRzDBButtonEdit;
    Label75: TLabel;
    JvDBCheckBox2: TJvDBCheckBox;
    tbDadosEMP_USAR_LOGIN: TStringField;
    tbDadosEMP_ICMS_ALIQUOTA: TFMTBCDField;
    procedure eCepButtonClick(Sender: TObject);
    procedure eRazaoEnter(Sender: TObject);
    procedure eRazaoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbDadosAfterPost(DataSet: TDataSet);
    procedure dsDadosStateChange(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure actSairUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eCnpjExit(Sender: TObject);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbDadosNewRecord(DataSet: TDataSet);
    procedure eRespCpfExit(Sender: TObject);
    procedure tbDadosBeforePost(DataSet: TDataSet);
    procedure eCertificadoButtonClick(Sender: TObject);
    procedure eFolderXSDButtonClick(Sender: TObject);
    procedure eFolderLogsButtonClick(Sender: TObject);
    procedure BtnLogoRelatoriosClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure eFolderPDFsButtonClick(Sender: TObject);
    procedure JvSpeedButton1Click(Sender: TObject);
    procedure eMsgIPIEnter(Sender: TObject);
    procedure eMsgIPIExit(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit4ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit5ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit6ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit7ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit8ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit9ButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure PathClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrEmpresas: TFrEmpresas;

implementation

{$R *.dfm}

uses uPrincipal, Classe.Empresa, uSelecionarCertificado, Classe.NFe, uEmissorNfe,
  uModuloRet, uListaPlanoContas, uListaClientes;

const
  SELDIRHELP = 1000;

procedure TFrEmpresas.PathClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(TEdit(Sender).Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := TEdit(Sender).Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], SELDIRHELP) then
    TEdit(Sender).Text := Dir;
end;

procedure TFrEmpresas.RzDBButtonEdit1ButtonClick(Sender: TObject);
begin
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);
      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         tbDadosEMP_PLN_PDV.AsInteger     := FrListaPlanoContas.QueryID.AsInteger;
         tbDadosEMP_PLN_PDV_DESC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                             + ' - '
                                             + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil(FrListaPlanoContas);
   end;
end;

procedure TFrEmpresas.RzDBButtonEdit2ButtonClick(Sender: TObject);
begin
   try
      FrListaClientes := TFrListaClientes.Create(self);
      if FrListaClientes.ShowModal = mrOk then
      begin
         tbDadosEMP_CLI_PDV.AsInteger     := FrListaClientes.QueryID.AsInteger;
         tbDadosEMP_CLI_PDV_DESC.AsString := Format('%.6d',[FrListaClientes.QueryCLI_CODIGO.AsInteger])
                                             + ' - '
                                             + FrListaClientes.QueryCLI_RAZAO_SOCIAL.AsString;
      end;
   finally
      FreeAndNil(FrListaClientes);
   end;
end;

procedure TFrEmpresas.RzDBButtonEdit3ButtonClick(Sender: TObject);
begin
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);
      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         tbDadosEMP_PLN_NFE_E.AsInteger    := FrListaPlanoContas.QueryID.AsInteger;
         tbDadosEMP_PLN_NFE_EDESC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil(FrListaPlanoContas);
   end;
end;

procedure TFrEmpresas.RzDBButtonEdit4ButtonClick(Sender: TObject);
begin
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);
      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         tbDadosEMP_PLN_CTAS_PAG.AsInteger    := FrListaPlanoContas.QueryID.AsInteger;
         tbDadosEMP_PLN_CTAS_PAG_DSC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil(FrListaPlanoContas);
   end;
end;

procedure TFrEmpresas.RzDBButtonEdit5ButtonClick(Sender: TObject);
begin
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);
      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         tbDadosEMP_PLN_CTAS_REC.AsInteger    := FrListaPlanoContas.QueryID.AsInteger;
         tbDadosEMP_PLN_CTAS_REC_DSC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil(FrListaPlanoContas);
   end;
end;

procedure TFrEmpresas.RzDBButtonEdit6ButtonClick(Sender: TObject);
begin
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);
      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         tbDadosEMP_PLN_PED_C.AsInteger    := FrListaPlanoContas.QueryID.AsInteger;
         tbDadosEMP_PLN_PED_CDESC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil(FrListaPlanoContas);
   end;
end;

procedure TFrEmpresas.RzDBButtonEdit7ButtonClick(Sender: TObject);
begin
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);
      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         tbDadosEMP_PLN_PED_V.AsInteger    := FrListaPlanoContas.QueryID.AsInteger;
         tbDadosEMP_PLN_PED_VDESC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil(FrListaPlanoContas);
   end;
end;

procedure TFrEmpresas.RzDBButtonEdit8ButtonClick(Sender: TObject);
begin
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);
      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         tbDadosEMP_PLN_NFE_S.AsInteger    := FrListaPlanoContas.QueryID.AsInteger;
         tbDadosEMP_PLN_NFE_SDESC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil(FrListaPlanoContas);
   end;
end;

procedure TFrEmpresas.RzDBButtonEdit9ButtonClick(Sender: TObject);
begin
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);
      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         tbDadosEMP_PLN_OS.AsInteger     := FrListaPlanoContas.QueryID.AsInteger;
         tbDadosEMP_PLN_OS_DESC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil(FrListaPlanoContas);
   end;
end;

procedure TFrEmpresas.eFolderPDFsButtonClick(Sender: TObject);
begin
   PathClick(eFolderPDFs);
end;

procedure TFrEmpresas.SpeedButton2Click(Sender: TObject);
begin
   // Se estiver editando, remove a imagem
   if tbDados.State in [dsInsert,dsEdit] then
      tbDados.FieldByName('EMP_NFE_LOGOTIPO').Clear;
end;

procedure TFrEmpresas.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrEmpresas.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrEmpresas.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrEmpresas.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrEmpresas.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrEmpresas.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrEmpresas.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrEmpresas.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrEmpresas.actSairExecute(Sender: TObject);
begin
   Self.Close
end;

procedure TFrEmpresas.actSairUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrEmpresas.BtnLogoRelatoriosClick(Sender: TObject);
var
   iv, ih : integer;
   eImgLogo : TBitmap;
begin

   eImgLogo := TBitmap.Create;
   try
      try

         if OpenImg.Execute then
         begin
            eImgLogo.LoadFromFile(OpenImg.FileName);
            ih := eImgLogo.height;
            iv := eImgLogo.width;

            if ( ih > 203 ) or ( ih < 100 ) or ( iv > 203 ) or ( iv < 100 ) then
            begin
               Application.MessageBox('Erro, Dimensões do logotipo não permitidas.' + #13#10 + 'Dimensões: 360x250','TechCore-RTG',mb_IconStop or mb_Ok);
               Exit;
            end;

            // Exibe o logotipo
            TBlobField(tbDados.FieldByName('EMP_NFE_LOGOTIPO')).LoadFromFile(OpenImg.FileName);
         end;

      except
         on e:Exception do
            Application.MessageBox(pChar('Este não parece ser um arquivo de imagem válido.' + 'Erro: ' + #13#10 + E.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
      end;

   finally
      FreeAndNil( eImgLogo );
   end;
end;

procedure TFrEmpresas.dsDadosStateChange(Sender: TObject);
begin
   {Ajusta o formulário para inserção ou alterãção dos dados}
   if dsDados.State in [dsInsert,dsEdit] then
      if pgControl.ActivePage = tabPrincipal then
         pgControl.ActivePage := tabDetalhes;

   pnDetalhes.Enabled    := tbDados.State in [dsInsert,dsEdit];
   pnNfe.Enabled         := tbDados.State in [dsInsert,dsEdit];
   pnAvisos.Enabled      := tbDados.State in [dsInsert,dsEdit];
   pnCaixa.Enabled       := tbDados.State in [dsInsert,dsEdit];
   pnConfigGeral.Enabled := tbDados.State in [dsInsert,dsEdit];

end;

procedure TFrEmpresas.eCepButtonClick(Sender: TObject);
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

procedure TFrEmpresas.eCnpjExit(Sender: TObject);
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

procedure TFrEmpresas.eRazaoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TFrEmpresas.eRazaoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrEmpresas.eRespCpfExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;

   {Checa se o Cnpj informado está correto}
   Checadoc.TipoDocto := docCPF;
   ChecaDoc.Documento := eRespCpf.Text;
   if not ChecaDoc.Validar then
   begin
      Application.MessageBox('Erro, Cpf informado não é válido.','TechCore-RTG',mb_IconStop or mb_Ok);
      eRespCpf.SetFocus;
   end;

end;

procedure TFrEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil( FrEmpresas );
end;

procedure TFrEmpresas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrEmpresas.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário}
   pgControl.ActivePage := tabPrincipal;

   {Carrega as empresas cadastradas}
   tbDados.Open();
end;

procedure TFrEmpresas.JvSpeedButton1Click(Sender: TObject);
begin
   eMsgIPI.Lines.Clear;
   eMsgIPI.Lines.Add('DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL e NÃO GERA DIREITO A CRÉDITO FISCAL DE IPI.')
end;

procedure TFrEmpresas.eFolderXSDButtonClick(Sender: TObject);
begin
   PathClick(eFolderXSD);
end;

procedure TFrEmpresas.eMsgIPIEnter(Sender: TObject);
begin
   ACBrEnterTab1.EnterAsTab := false;
end;

procedure TFrEmpresas.eMsgIPIExit(Sender: TObject);
begin
   ACBrEnterTab1.EnterAsTab := true;
end;

procedure TFrEmpresas.eCertificadoButtonClick(Sender: TObject);
var
   I : Integer;
   ASerie : String;
   AddRow : Boolean;
begin
   FrSelecionarCertificado := TFrSelecionarCertificado.Create(Self);
   try
      ACBrNFe1.SSL.LerCertificadosStore;

      AddRow := False;

      with FrSelecionarCertificado.StringGrid1 do
      begin
         ColWidths[0] := 220;
         ColWidths[1] := 250;
         ColWidths[2] := 120;
         ColWidths[3] := 80;
         ColWidths[4] := 150;
         Cells[ 0, 0 ] := 'Numero de Série';
         Cells[ 1, 0 ] := 'Razão Social';
         Cells[ 2, 0 ] := 'CNPJ';
         Cells[ 3, 0 ] := 'Validade';
         Cells[ 4, 0 ] := 'Certificadora';
      end;

      For I := 0 to ACBrNFe1.SSL.ListaCertificados.Count-1 do
      begin
         with ACBrNFe1.SSL.ListaCertificados[I] do
         begin
            ASerie := NumeroSerie;
            if (CNPJ <> '') then
            begin
               with FrSelecionarCertificado.StringGrid1 do
               begin
                  if Addrow then
                     RowCount := RowCount + 1;

                  Cells[ 0, RowCount-1] := NumeroSerie;
                  Cells[ 1, RowCount-1] := RazaoSocial;
                  Cells[ 2, RowCount-1] := CNPJ;
                  Cells[ 3, RowCount-1] := FormatDateBr(DataVenc);
                  Cells[ 4, RowCount-1] := Certificadora;
                  AddRow := True;
               end;
            end;
         end;
      end;

      if FrSelecionarCertificado.ShowModal = mrOK then
         eCertificado.Text := FrSelecionarCertificado.StringGrid1.Cells[ 0, frSelecionarCertificado.StringGrid1.Row ];

   finally
     FreeAndNil( FrSelecionarCertificado );
   end;
end;

procedure TFrEmpresas.eFolderLogsButtonClick(Sender: TObject);
begin
   PathClick(eFolderLogs);
end;

procedure TFrEmpresas.tbDadosAfterPost(DataSet: TDataSet);
begin
   {Atualiza o cursor dos dados da empresa}
   tbDados.Refresh;

   // Efetua o refresh na classe empresa
   if Assigned(FEmpresaClass) then
   begin
      FreeAndNil(FEmpresaClass);
      FEmpresaClass := TEmpresa.Create(tbDadosID.AsInteger);
   end;

   // Checa se o emissor de notas fiscasi esta aberto
   if Assigned( FrEmissorNfe ) then
      Application.MessageBox('Foi detectado que o emissor de notas fiscais esta aberto, para que as alterações tenham efeitos feche o emissor antes de emitir uam nova nota fiscal.'
      ,'TechCore-RTG',mb_IconWarning or mb_Ok);

end;

procedure TFrEmpresas.tbDadosBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNO then
      Abort;
end;

procedure TFrEmpresas.tbDadosBeforePost(DataSet: TDataSet);
begin
   // Confere o preenchimento
   if ( eTipoEmissao.ItemIndex <> 0 ) and ( xJust.Text = '' ) then
   begin
      Application.MessageBox('Erro, Informe a justificativa da entrada em Contingência.','TechCore-RTG',mb_IconStop or mb_Ok);
      xJust.SetFocus;
      Abort;
   end;

end;

procedure TFrEmpresas.tbDadosNewRecord(DataSet: TDataSet);
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
end;

end.
