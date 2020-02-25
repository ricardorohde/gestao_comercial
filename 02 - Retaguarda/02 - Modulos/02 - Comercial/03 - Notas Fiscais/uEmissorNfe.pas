unit uEmissorNfe;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.IoUtils, System.Types, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.Actions, MaskUtils,
   Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, DateUtils,
   Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
   Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzPanel,
   RzButton, Vcl.Imaging.pngimage, Vcl.Buttons, PngBitBtn, Vcl.Menus,
   ACBrBase, ACBrDFe, ACBrNFe, ACBrNFeNotasFiscais, ACBrDFeSSL, pcnConversao, pcnConversaoNFE, blcksock,
   ACBrNFeDANFEClass, ACBrUtil, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
   Math, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
   FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvDataSource,
   System.ImageList, Vcl.ImgList, JvImageList, RzLabel, RzDBLbl, RzStatus,
   ACBrNFeDANFeRLClass, ACBrDFeReport, ACBrDFeDANFeReport,
   ACBrMail, Xml.XMLDoc, Xml.XMLIntf;

type
   TFrEmissorNfe = class(TForm)
      RzPanel2: TRzPanel;
      eGrid: TJvDBGrid;
      Grid_Itens: TJvDBGrid;
      Panel2: TPanel;
      Panel4: TPanel;
      Label5: TLabel;
      JvDBCalcEdit4: TJvDBCalcEdit;
      Panel5: TPanel;
      Label7: TLabel;
      Panel1: TPanel;
      Label10: TLabel;
      JvDBCalcEdit7: TJvDBCalcEdit;
      ActionManager1: TActionManager;
      actCadastrar: TAction;
      actExcluir: TAction;
      actPrint: TAction;
      actCancelar: TAction;
      actSair: TAction;
      actPopAlterar: TAction;
      actPopFrete: TAction;
      actIncluirProdutos: TAction;
      actAlterarProdutos: TAction;
      actExcluirProdutos: TAction;
      actPagamentos: TAction;
      actFreteTransporte: TAction;
      RzPanel1: TRzPanel;
      Label2: TLabel;
      Panel3: TPanel;
      Label1: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Bevel1: TBevel;
      Bevel2: TBevel;
      Label11: TLabel;
      Bevel4: TBevel;
      JvDBCalcEdit1: TJvDBCalcEdit;
      JvDBCalcEdit2: TJvDBCalcEdit;
      JvDBCalcEdit3: TJvDBCalcEdit;
      JvDBCalcEdit8: TJvDBCalcEdit;
      PngBitBtn1: TPngBitBtn;
      eDataFim: TJvDateEdit;
      eDataIni: TJvDateEdit;
      Pop01: TPopupMenu;
      AlterarCabealho1: TMenuItem;
      FreteSeguroeDesconto1: TMenuItem;
      Pagamentos1: TMenuItem;
      N3: TMenuItem;
      FreteeTransporte1: TMenuItem;
      Pop02: TPopupMenu;
      IncluirProdutos1: TMenuItem;
      AlterarProdutoSelecionado1: TMenuItem;
      N1: TMenuItem;
      ExcluirProdutos1: TMenuItem;
      ACBrNFe1: TACBrNFe;
      actTransmitirNFe: TAction;
      tbCliente: TFDQuery;
      tbDados: TFDQuery;
      dsDados: TJvDataSource;
      tbDadosID: TIntegerField;
      tbDadosID_EMPRESA: TIntegerField;
      tbDadosID_PEDIDO: TIntegerField;
      tbDadosID_CLIENTE: TIntegerField;
      tbDadosID_FUNCIONARIO: TIntegerField;
      tbDadosID_TABELA_PRECOS: TIntegerField;
      tbDadosNFE_NUMERO: TIntegerField;
      tbDadosNFE_TIPO_OPERACAO: TIntegerField;
      tbDadosNFE_NATUREZA_OPERACAO: TStringField;
      tbDadosNFE_DH_EMISSAO: TSQLTimeStampField;
      tbDadosNFE_FINALIDADE: TIntegerField;
      tbDadosNFE_INDICADOR_PRESENCA: TIntegerField;
      tbDadosCLI_RAZAO_SOCIAL: TStringField;
      tbDadosCLI_CNPJ: TStringField;
      tbDadosCLI_UF: TStringField;
      tbDadosNFE_MODELO: TIntegerField;
      tbDadosNFE_SERIE: TIntegerField;
      tbDadosNFE_STATUS: TIntegerField;
      tbDadosNFE_FATURADA: TIntegerField;
      tbDadosNFE_DH_SAIDA: TSQLTimeStampField;
      tbDadosNFE_VENDEDOR: TStringField;
      tbDadosNFE_TIPO_FRETE: TIntegerField;
      tbItens: TFDQuery;
      dsItens: TJvDataSource;
      tbDadosNFE_AMBIENTE: TIntegerField;
      tbDadosNFE_LOTE: TIntegerField;
      Panel6: TPanel;
      lbTitulo: TLabel;
      Image2: TImage;
      Panel7: TPanel;
      Label9: TLabel;
      Bevel3: TBevel;
      tbDadosNFE_TIPO_DANFE: TIntegerField;
      tbDadosNFE_VLR_FRETE: TFMTBCDField;
      tbDadosNFE_VLR_SEGURO: TFMTBCDField;
      tbDadosNFE_VLR_OUTROS: TFMTBCDField;
      tbDadosNFE_VLR_DESCONTO: TFMTBCDField;
      tbDadosID_TRANSPORTADORA: TIntegerField;
      tbDadosNFE_VEICULO_PLACA: TStringField;
      tbDadosNFE_VEICULO_UF: TStringField;
      tbDadosNFE_VEICULO_RNTC: TStringField;
      tbDadosNFE_CODIGO_PROTECAO: TIntegerField;
      tbDadosNFE_CHAVE_ACESSO: TStringField;
      Bevel5: TBevel;
      Label6: TLabel;
      lbChave: TRzDBLabel;
      tbDadosTRA_RAZAO_SOCIAL: TStringField;
      tbDadosTRA_CNPJ: TStringField;
      tbDadosTRA_UF: TStringField;
      tbItensID: TIntegerField;
      tbItensID_NOTA_FISCAL: TIntegerField;
      tbItensID_PRODUTO: TIntegerField;
      tbItensID_TRIBUTOS: TIntegerField;
      tbItensPRD_CST: TStringField;
      tbItensPRD_CFOP: TIntegerField;
      tbItensPRD_NCM: TStringField;
      tbItensPRD_CEST: TStringField;
      tbItensPRD_ORIGEM: TIntegerField;
      tbItensPRD_ICMS_ALIQ: TFMTBCDField;
      tbItensPRD_ICMS_MODAL: TIntegerField;
      tbItensPRD_ICMS_RBCALC: TFMTBCDField;
      tbItensPRD_ICMS_ST_ALIQ: TFMTBCDField;
      tbItensPRD_ICMS_ST_MODAL: TIntegerField;
      tbItensPRD_ICMS_ST_RBCALC: TFMTBCDField;
      tbItensPRD_ICMS_ST_MVA: TFMTBCDField;
      tbItensPRD_IPI_CST: TStringField;
      tbItensPRD_IPI_ALIQ: TFMTBCDField;
      tbItensPRD_IPI_CODIGO: TStringField;
      tbItensPRD_PIS_CST: TStringField;
      tbItensPRD_PIS_ALIQ: TFMTBCDField;
      tbItensPRD_PIS_ALIQ_ST: TFMTBCDField;
      tbItensPRD_COFINS_CST: TStringField;
      tbItensPRD_COFINS_ALIQ: TFMTBCDField;
      tbItensPRD_COFINS_ALIQ_ST: TFMTBCDField;
      tbItensPRD_QTDE: TBCDField;
      tbItensPRD_VLR_UNITARIO: TBCDField;
      actReferenciadas: TAction;
      N2: TMenuItem;
      NFeReferenciada1: TMenuItem;
      tbClienteID: TIntegerField;
      tbClienteID_EMPRESA: TIntegerField;
      tbClienteCLI_CODIGO: TIntegerField;
      tbClienteCLI_DATA_REG: TSQLTimeStampField;
      tbClienteCLI_RAZAO_SOCIAL: TStringField;
      tbClienteCLI_NOME_FANTASIA: TStringField;
      tbClienteCLI_CNPJ: TStringField;
      tbClienteCLI_IESTADUAL: TStringField;
      tbClienteCLI_IMUNICIPAL: TStringField;
      tbClienteCLI_CEP: TStringField;
      tbClienteCLI_ENDERECO: TStringField;
      tbClienteCLI_NUMERO: TIntegerField;
      tbClienteCLI_COMPLEMENTO: TStringField;
      tbClienteCLI_BAIRRO: TStringField;
      tbClienteCLI_CIDADE: TStringField;
      tbClienteCLI_CODIGO_CIDADE: TIntegerField;
      tbClienteCLI_UF: TStringField;
      tbClienteCLI_CODIGO_UF: TIntegerField;
      tbClienteCLI_PAIS: TStringField;
      tbClienteCLI_CODIGO_PAIS: TIntegerField;
      tbClienteCLI_FONE_FIXO: TStringField;
      tbClienteCLI_EMAIL: TStringField;
      tbClienteCLI_SITE: TStringField;
      tbClienteCLI_TIPO_PESSOA: TIntegerField;
      tbClienteCLI_CONTRIB_ICMS: TIntegerField;
      tbItensPRD_INFORMACOES: TStringField;
      tbItensPRD_ICMS_ST_MVA_RB: TFMTBCDField;
      tbItensPRD_IPI_VALOR: TFMTBCDField;
      tbDadosNFE_XML: TMemoField;
      tbDadosNFE_VOLUME_QTDE: TIntegerField;
      tbDadosNFE_VOLUME_ESPECIE: TStringField;
      tbDadosNFE_VOLUME_MARCA: TStringField;
      tbDadosNFE_VOLUME_NUMERO: TStringField;
      tbDadosNFE_VOLUME_PESO_L: TFMTBCDField;
      tbDadosNFE_VOLUME_PESO_B: TFMTBCDField;
      N4: TMenuItem;
      actInformacoes: TAction;
      InformaesComplementares1: TMenuItem;
      tbDadosNFE_INFO_CONTRIB: TStringField;
      tbDadosNFE_INFO_FISCO: TStringField;
      ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
      tbDadosNFE_XML_RECIBO: TStringField;
      tbDadosNFE_XML_PROTOCOLO: TStringField;
      tbDadosTIPO_DE_REGISTRO: TIntegerField;
      actOperacoes: TAction;
      actCancelarNFe: TAction;
      Pop03: TPopupMenu;
      tbDadosNFE_CANCELADA_XML: TMemoField;
      tbDadosNFE_CANCELADA_DATA: TSQLTimeStampField;
      tbDadosNFE_CANCELADA_PROTOCOLO: TStringField;
      tbDadosNFE_CANCELADA_XML_EVENTO: TMemoField;
      actPrintEventoCancelado: TAction;
      ImprimirCancelamento: TMenuItem;
      actCanceladosEmail: TAction;
      actCCeGerar: TAction;
      Pop04: TPopupMenu;
      actCCeEnviarEmail: TAction;
      actCCeComprovante: TAction;
      N6: TMenuItem;
      tbDadosNFE_CCE_XML_EVENTO: TMemoField;
      tbDadosNFE_CCE_PROTOCOLO: TStringField;
      tbDadosNFE_CCE_DATA: TSQLTimeStampField;
      tbDadosNFE_CCE_CONTADOR: TIntegerField;
      ACBrMail1: TACBrMail;
      tbDadosCLI_EMAIL: TStringField;
      actSendXML: TAction;
      NotasFiscais1: TMenuItem;
      NotasFiscais2: TMenuItem;
      CartasdeCorrees2: TMenuItem;
      Cancelamentos1: TMenuItem;
      EnviararquivosXMLPDFporEmailNFe1: TMenuItem;
      CancelarNotaFiscal1: TMenuItem;
      EnviarCancelamentoporEmailXML1: TMenuItem;
      GerarCartadeCorreo2: TMenuItem;
      EnviarCartadeCorreoporEmailXML1: TMenuItem;
      N5: TMenuItem;
      actConsultarNFe: TAction;
      ConsultarNFe1: TMenuItem;
      tbDadosNFE_PEDIDO_NUMERO: TIntegerField;
      tbItensPRD_VLR_SUBTOTAL: TFMTBCDField;
      tbItensPRD_TAXA_NCM_FED: TFMTBCDField;
      tbItensPRD_TAXA_NCM_EST: TFMTBCDField;
      tbItensPRD_TAXA_NCM_MUN: TFMTBCDField;
      ImageList1: TImageList;
      RzToolbar1: TRzToolbar;
      btnNew: TRzToolButton;
      btnEdit: TRzToolButton;
      btnCancel: TRzToolButton;
      btnOK: TRzToolButton;
      btnError: TRzToolButton;
      btnExit: TRzToolButton;
      RzSpacer1: TRzSpacer;
      RzSpacer2: TRzSpacer;
      RzSpacer5: TRzSpacer;
      RzSpacer6: TRzSpacer;
      RzSpacer3: TRzSpacer;
      btnNew1: TRzToolButton;
      RzSpacer7: TRzSpacer;
      RzSpacer4: TRzSpacer;
      btnNew2: TRzToolButton;
      RzSpacer8: TRzSpacer;
      btnNew3: TRzToolButton;
      Action1: TAction;
      ProdutosManual1: TMenuItem;
      tbItensPRD_INCLUSAO: TIntegerField;
      tbItensPRD_DESCRICAO: TStringField;
      tbItensPRD_NCM_EX: TStringField;
      tbItensPRD_UNIDADE: TStringField;
      tbItensPRD_CODIGO: TStringField;
      tbItensPRD_CODIGO_BARRAS: TStringField;
      tbItensNFE_QTDE_ITENS: TAggregateField;
      RzDBLabel1: TRzDBLabel;
      tbItensPRD_VLR_SEGURO: TFMTBCDField;
      tbItensPRD_VLR_OUTROS: TFMTBCDField;
      tbItensPRD_VLR_DESCONTO: TFMTBCDField;
      tbItensPRD_VLR_FRETE: TFMTBCDField;
      tbItensPRD_VLR_TOTAL: TFMTBCDField;
      tbDadosNFE_VLR_PRODUTOS: TFMTBCDField;
      actFaturamento: TAction;
      RzSpacer9: TRzSpacer;
      RzToolButton1: TRzToolButton;
      Query110: TFDQuery;
      Query111: TFDQuery;
      Query110ID: TIntegerField;
      Query110ID_EMPRESA: TIntegerField;
      Query110ID_CLIENTE: TIntegerField;
      Query110ID_ORIGEM: TIntegerField;
      Query110ID_CONTAS: TIntegerField;
      Query110REC_DATA_REGISTRO: TSQLTimeStampField;
      Query110REC_VLR_CONTA: TFMTBCDField;
      Query110REC_STATUS: TIntegerField;
      Query110REC_ORIGEM: TIntegerField;
      Query110REC_CLIENTE: TStringField;
      Query110REC_DOCUMENTO: TStringField;
      Query111ID: TIntegerField;
      Query111ID_C000110: TIntegerField;
      Query111REC_PARCELA: TIntegerField;
      Query111REC_VALOR: TFMTBCDField;
      Query111REC_DOCUMENTO: TStringField;
      Query111REC_VENCIMENTO: TDateField;
      Query111REC_ANOTACOES: TStringField;
      Query111REC_VLR_ATUALIZADO: TFMTBCDField;
      Query111REC_VLR_RECEBIDO: TFMTBCDField;
      Query111REC_VLR_SALDO: TFMTBCDField;
      Query111REC_STATUS: TIntegerField;
      dsQueryFatContas: TDataSource;
      aQuery: TFDQuery;
      SchemaRec: TFDSchemaAdapter;
      tbDadosID_PLN_CONTAS: TIntegerField;
      tbDadosPLN_CONTAS_DESC: TStringField;
      tbDadosNFE_FAT_NO_PEDIDO: TStringField;
      tbDadosNFE_PEDIDO_ENTREGUE: TIntegerField;
      Query210: TFDQuery;
      Query211: TFDQuery;
      dsQuery210: TDataSource;
      SchemaPag: TFDSchemaAdapter;
      Query210ID: TLargeintField;
      Query210ID_EMPRESA: TIntegerField;
      Query210ID_FORNECEDOR: TIntegerField;
      Query210ID_ORIGEM: TIntegerField;
      Query210ID_PLANO_CONTAS: TIntegerField;
      Query210PAG_DATA_INCLUSAO: TDateField;
      Query210PAG_VALOR: TFMTBCDField;
      Query210PAG_DOCUMENTO: TStringField;
      Query210PAG_ORIGEM: TIntegerField;
      Query210PAG_STATUS: TIntegerField;
      Query210PAG_FORNECEDOR: TStringField;
      Query211ID: TLargeintField;
      Query211ID_C000210: TLargeintField;
      Query211PAG_PARCELA: TIntegerField;
      Query211PAG_VALOR: TFMTBCDField;
      Query211PAG_DOCUMENTO: TStringField;
      Query211PAG_VENCIMENTO: TDateField;
      Query211PAG_ANOTACOES: TStringField;
      Query211PAG_VLR_ATUALIZADO: TFMTBCDField;
      Query211PAG_VLR_RECEBIDO: TFMTBCDField;
      Query211PAG_VLR_SALDO: TFMTBCDField;
      Query211PAG_STATUS: TIntegerField;
      Query210PAG_JUROS: TFMTBCDField;
      Query210PAG_JUROS_CAREN: TIntegerField;
      Query210PAG_MULTA: TFMTBCDField;
      Query210PAG_MULTA_CAREN: TIntegerField;
      Query110REC_JUROS: TFMTBCDField;
      Query110REC_JUROS_CAREN: TIntegerField;
      Query110REC_MULTA: TFMTBCDField;
      Query110REC_MULTA_CAREN: TIntegerField;
      Query110ID_PLN_CTAS: TIntegerField;
      actExportarNFe: TAction;
      ExportarparaArquivoXml1: TMenuItem;
      FileSaveDialog1: TFileSaveDialog;
      tbItensPRD_IND_TOT: TIntegerField;
      tbItensPRD_VLR_12741_NAC: TBCDField;
      tbItensPRD_VLR_12741_EST: TBCDField;
      tbItensPRD_VLR_12741_MUN: TBCDField;
      tbDadosNFE_VLR_TOTAL: TFMTBCDField;
      tbDadosNFE_PARA_PAGTOS: TFMTBCDField;
      zQuery: TFDQuery;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure actSairExecute(Sender: TObject);
      procedure actTransmitirNFeExecute(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure actCadastrarExecute(Sender: TObject);
      procedure tbDadosAfterInsert(DataSet: TDataSet);
      procedure tbDadosNewRecord(DataSet: TDataSet);
      procedure tbDadosCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tbDadosID_CLIENTEChange(Sender: TField);
      procedure tbDadosID_FUNCIONARIOChange(Sender: TField);
      procedure tbDadosAfterPost(DataSet: TDataSet);
      procedure tbDadosNFE_FATURADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tbDadosNFE_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
      procedure tbDadosNFE_TIPO_FRETEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tbDadosNFE_TIPO_OPERACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure actExcluirExecute(Sender: TObject);
      procedure actExcluirUpdate(Sender: TObject);
      procedure actPrintUpdate(Sender: TObject);
      procedure actTransmitirNFeUpdate(Sender: TObject);
      procedure tbDadosBeforeDelete(DataSet: TDataSet);
      procedure PngBitBtn1Click(Sender: TObject);
      procedure actPopAlterarExecute(Sender: TObject);
      procedure actPopFreteExecute(Sender: TObject);
      procedure actPopAlterarUpdate(Sender: TObject);
      procedure tbDadosNFE_CHAVE_ACESSOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tbDadosTRA_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure actFreteTransporteExecute(Sender: TObject);
      procedure tbDadosID_TRANSPORTADORAChange(Sender: TField);
      procedure tbItensAfterDelete(DataSet: TDataSet);
      procedure tbItensAfterPost(DataSet: TDataSet);
      procedure tbItensBeforeDelete(DataSet: TDataSet);
      procedure tbItensID_PRODUTOChange(Sender: TField);
      procedure actIncluirProdutosExecute(Sender: TObject);
      procedure actAlterarProdutosExecute(Sender: TObject);
      procedure actExcluirProdutosExecute(Sender: TObject);
      procedure actPagamentosExecute(Sender: TObject);
      procedure actReferenciadasExecute(Sender: TObject);
      procedure actPopFreteUpdate(Sender: TObject);
      procedure actExcluirProdutosUpdate(Sender: TObject);
      procedure actPagamentosUpdate(Sender: TObject);
      procedure actFreteTransporteUpdate(Sender: TObject);
      procedure actReferenciadasUpdate(Sender: TObject);
      procedure actIncluirProdutosUpdate(Sender: TObject);
      procedure actInformacoesExecute(Sender: TObject);
      procedure ACBrNFe1StatusChange(Sender: TObject);
      procedure actCancelarNFeUpdate(Sender: TObject);
      procedure actCancelarNFeExecute(Sender: TObject);
      procedure actOperacoesExecute(Sender: TObject);
      procedure Action1Update(Sender: TObject);
      procedure actNfeCanceladaExecute(Sender: TObject);
      procedure actPrintEventoCanceladoExecute(Sender: TObject);
      procedure actPrintExecute(Sender: TObject);
      procedure actCCeGerarExecute(Sender: TObject);
      procedure actCCeEnviarEmailUpdate(Sender: TObject);
      procedure actCCeComprovanteExecute(Sender: TObject);
      procedure actCanceladosEmailExecute(Sender: TObject);
      procedure actCCeEnviarEmailExecute(Sender: TObject);
      procedure actCCeComprovanteUpdate(Sender: TObject);
      procedure actSendXMLUpdate(Sender: TObject);
      procedure actSendXMLExecute(Sender: TObject);
      procedure actCCeGerarUpdate(Sender: TObject);
      procedure actConsultarNFeUpdate(Sender: TObject);
      procedure actConsultarNFeExecute(Sender: TObject);
      procedure actPrintEventoCanceladoUpdate(Sender: TObject);
      procedure tbDadosAfterDelete(DataSet: TDataSet);
      procedure Action1Execute(Sender: TObject);
      procedure tbItensNFE_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tbItensNewRecord(DataSet: TDataSet);
      procedure actFaturamentoUpdate(Sender: TObject);
      procedure actFaturamentoExecute(Sender: TObject);
      procedure tbDadosBeforeInsert(DataSet: TDataSet);
      procedure actExportarNFeExecute(Sender: TObject);
      procedure actExportarNFeUpdate(Sender: TObject);
    procedure tbItensPRD_CODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
   private
      { Private declarations }
      NotaF: NotaFiscal;

      // Para tratar o caption dos cancelados
      sCaption: String;

      procedure ConfigurarEmissorNFe;
      procedure GerarNumeroCodigoNfe;
      procedure GerarNotaFiscal(Transmitir: Boolean; ID_Nfe: Integer);
      procedure FaturarEntrada;
      procedure FaturarSaida;
   public
      { Public declarations }
   end;

var
   FrEmissorNfe: TFrEmissorNfe;

implementation

uses
   Classe.NFe, Classe.Empresa, uEmissorNfeCab, uEmissorNfeFreteOutros, uEmissorNfeFrete, uEmissorNfeProdutos,
   uEmissorNfePagtos, uEmissorNfeReferenciadas, uEmissorNfeInfosAdicionais, Biblioteca, uEmissorNfeCancelar, uEmissorNfeCCe, uEmissorNfeStatusSefaz,
   uPedidosVendas, uPedidosVendasGerenciar, uModuloRet, Classe.Financeiro;

{$R *.dfm}

procedure TFrEmissorNfe.ACBrNFe1StatusChange(Sender: TObject);
begin

   case ACBrNFe1.Status of
      stIdle:
         prcStatusMessage('NF-e', '', False);

      stNFeStatusServico:
         begin
            prcStatusMessage('Enviando NF-e: ', 'Aguarde... Verificando o Status do Serviço.', True);
         end;

      stNFeRecepcao:
         begin
            prcStatusMessage('Enviando NF-e: ' + Format('%.6d', [ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF]), 'Aguarde... Transmitindo NF-e.', True);
         end;

      stNfeRetRecepcao:
         begin
            prcStatusMessage('Enviando NF-e: ' + Format('%.6d', [ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF]), 'Aguarde... Recebendo dados da NF-e.', True);
         end;

      stNFeConsulta:
         begin
            prcStatusMessage('Cosultando NF-e: ' + Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]), 'Aguarde... Consultando NF-e', True);
         end;

   end;

end;

procedure TFrEmissorNfe.actAlterarProdutosExecute(Sender: TObject);
begin
   tbItens.Edit;

   FrEmissorNfeProdutos := TFrEmissorNfeProdutos.Create(self);
   FrEmissorNfeProdutos.id_tab_precos := tbDados.FieldByName('ID_TABELA_PRECOS').Asinteger;
   try
      if FrEmissorNfeProdutos.ShowModal = mrOk then
         tbItens.Post
      else
         tbItens.Cancel;
   finally
      FreeAndNil(FrEmissorNfeProdutos);
   end;
end;

procedure TFrEmissorNfe.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrEmissorNfe.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrEmissorNfe.actExcluirProdutosExecute(Sender: TObject);
begin
   tbItens.Delete;
end;

procedure TFrEmissorNfe.actExcluirProdutosUpdate(Sender: TObject);
begin
   {
     0 - Em Digitação 
     1 - Aguardando 
     2 - Autorizada 
     3 - Cancelada  
     5 - Denegada
   }
   if (tbDados.IsEmpty) then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('tipo_de_registro').Asinteger = 3 then // se a nota for derivada de um pedido
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 2 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 5 then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actExcluirUpdate(Sender: TObject);
begin
   // Ajusta o menu conforme o status do cursor e da nota fiscal
   if (tbDados.IsEmpty) or (tbDadosNFE_STATUS.Asinteger in [2, 3, 4, 5]) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True;
end;

procedure TFrEmissorNfe.actExportarNFeExecute(Sender: TObject);
var
   fXml: TStringList;
begin
   { Força sempre abrir o path no diretório da aplicação }

   // Retorna um nível
   ChDir('..');

   // Entra na pasta dde notas fiscais
   ChDir('Notas Fiscais');

   FileSaveDialog1.DefaultFolder := GetCurrentDir;
   FileSaveDialog1.DefaultExtension := '.xml';
   FileSaveDialog1.FileName := tbDadosNFE_CHAVE_ACESSO.AsString;

   if FileSaveDialog1.Execute then
   begin
      fXml := TStringList.Create;
      fXml.Clear;

      fXml.Add(tbDadosNFE_XML.AsString);
      fXml.SaveToFile(FileSaveDialog1.FileName);
      fXml.Free;

      Application.MessageBox('NF-e exportada com sucesso.', 'TechCore-RTG', mb_IconInformation or mb_ok);
   end;

end;

procedure TFrEmissorNfe.actExportarNFeUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not(tbDados.IsEmpty) and (tbDadosNFE_STATUS.Asinteger in [2, 3]);
end;

procedure TFrEmissorNfe.actFaturamentoExecute(Sender: TObject);
begin
   if Application.MessageBox('Tem certeza que deseja faturar esta nota fiscal?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   { Fatura as notas de saida }
   if tbDadosNFE_TIPO_OPERACAO.Asinteger = 1 then
      FaturarSaida
   else
      FaturarEntrada;
end;

procedure TFrEmissorNfe.actFaturamentoUpdate(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (tbDados.FieldByName('nfe_status').Asinteger in [0, 3]) or (tbDados.FieldByName('nfe_faturada').Asinteger = 2) then
      (Sender as TAction).Enabled := False
   else
      (Sender as TAction).Enabled := True
end;

procedure TFrEmissorNfe.actFreteTransporteExecute(Sender: TObject);
begin
   tbDados.Edit;

   FremissorNfeFrete := TFremissorNfeFrete.Create(self);
   try
      if FremissorNfeFrete.ShowModal = mrOk then
         tbDados.Post
      else
         tbDados.Cancel;
   finally
      FreeAndNil(FremissorNfeFrete);
   end;
end;

procedure TFrEmissorNfe.actFreteTransporteUpdate(Sender: TObject);
begin
   {
     0 - Em Digitação 
     1 - Aguardando 
     2 - Autorizada 
     3 - Cancelada  
     5 - Denegada
   }
   if (tbDados.IsEmpty) then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('tipo_de_registro').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 2 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 5 then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actIncluirProdutosExecute(Sender: TObject);
begin
   tbItens.Insert;

   FrEmissorNfeProdutos := TFrEmissorNfeProdutos.Create(self);
   FrEmissorNfeProdutos.id_tab_precos := tbDados.FieldByName('ID_TABELA_PRECOS').Asinteger;
   try
      if FrEmissorNfeProdutos.ShowModal = mrOk then
         tbItens.Post
      else
         tbItens.Cancel;
   finally
      FreeAndNil(FrEmissorNfeProdutos);
   end;
end;

procedure TFrEmissorNfe.actIncluirProdutosUpdate(Sender: TObject);
begin
   {
     0 - Em Digitação 
     1 - Aguardando 
     2 - Autorizada 
     3 - Cancelada  
     5 - Denegada
   }
   if (tbDados.IsEmpty) then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('tipo_de_registro').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 2 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 5 then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actInformacoesExecute(Sender: TObject);
begin
   tbDados.Edit;

   FrEmissorNfeInfosAdicionais := TFrEmissorNfeInfosAdicionais.Create(self);
   try
      if FrEmissorNfeInfosAdicionais.ShowModal = mrOk then
         tbDados.Post
      else
         tbDados.Cancel;
   finally
      FreeAndNil(FrEmissorNfeInfosAdicionais);
   end;
end;

procedure TFrEmissorNfe.Action1Execute(Sender: TObject);
begin
   tbItens.Insert;

   FrEmissorNfeProdutos := TFrEmissorNfeProdutos.Create(self);
   FrEmissorNfeProdutos.id_tab_precos := tbDados.FieldByName('ID_TABELA_PRECOS').Asinteger;

   try
      if FrEmissorNfeProdutos.ShowModal = mrOk then
         tbItens.Post
      else
         tbItens.Cancel;
   finally
      FreeAndNil(FrEmissorNfeProdutos);
   end;
end;

procedure TFrEmissorNfe.Action1Update(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (tbDadosNFE_STATUS.Asinteger <> 3) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actNfeCanceladaExecute(Sender: TObject);
begin
   //
end;

procedure TFrEmissorNfe.actOperacoesExecute(Sender: TObject);
begin
   // Teste
end;

procedure TFrEmissorNfe.actPagamentosExecute(Sender: TObject);
begin
   // Cria o objeto nota fiscal se não existir
   if not Assigned(ClassNotaFiscal) then
      ClassNotaFiscal := TNotaFiscal.Create;

   // Insere o id da nota fiscal
   ClassNotaFiscal.IDNFe := tbDados.FieldByName('id').AsInteger;

   FrEmissorNfePagtos := TFrEmissorNfePagtos.Create(self);
   try
      FrEmissorNfePagtos.ShowModal;
   finally
      tbDados.Refresh;
      FreeAndNil(FrEmissorNfePagtos);
   end;
end;

procedure TFrEmissorNfe.actPagamentosUpdate(Sender: TObject);
begin
   {
     0 - Em Digitação 
     1 - Aguardando 
     2 - Autorizada 
     3 - Cancelada  
     5 - Denegada
   }
   if (tbDados.IsEmpty) then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('tipo_de_registro').Asinteger = 3 then // se a nota for derivada de um pedido
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 2 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 5 then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True

end;

procedure TFrEmissorNfe.actPopAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;

   try
      FrEmissorNfeCab := TFrEmissorNfeCab.Create(self);
      if FrEmissorNfeCab.ShowModal = mrOk then
      begin
         tbDados.Post;
         tbItens.Refresh;
      end
      else
         tbDados.Cancel;
   finally
      FreeAndNil(FrEmissorNfeCab);
   end;

end;

procedure TFrEmissorNfe.actPopAlterarUpdate(Sender: TObject);
begin
   {
     0 - Em Digitação 
     1 - Aguardando 
     2 - Autorizada 
     3 - Cancelada  
     5 - Denegada
   }
   if (tbDados.IsEmpty) then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 2 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 5 then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actCanceladosEmailExecute(Sender: TObject);
var
   EmailMsg: TStringList;
   EmailDest: String;
begin

   // Checa se o componente está configurado
   if (ConfigNFe.NFe_EmailHost = '') then
   begin
      Application.MessageBox('Antes de usar este recurso, configura os parâmetros de envio dos emails.', 'TechCore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;

   if tbDadosCLI_EMAIL.AsString = '' then
   begin
      if Application.MessageBox('Cliente sem endereço de e-mail cadastrado, deseja informar um e-mail? ', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
         Abort;

      if not InputQuery('E-mail do destinatário:', 'E-mail:', EmailDest) then
      begin
         Application.MessageBox('Não é posível enviar o e-mail se um e-mail válido.', 'TechCore-RTG', mb_IconStop or mb_ok);
         Abort;
      end;
   end;

   ACBrNFe1.NotasFiscais.Clear;
   ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_CANCELADA_XML.AsString);

   EmailMsg := TStringList.Create;
   EmailMsg.Add(ConfigNFe.NFe_EmailMsg);

   try
      ACBrMail1.Host := ConfigNFe.NFe_EmailHost;
      ACBrMail1.Port := ConfigNFe.NFe_EmailPorta.ToString;
      ACBrMail1.Username := ConfigNFe.NFe_EmailUsuario;
      ACBrMail1.Password := ConfigNFe.NFe_EmailSenha;
      ACBrMail1.From := ConfigNFe.NFe_EmailUsuario;
      ACBrMail1.SetSSL := ConfigNFe.NFe_EmailSeguro.ToBoolean; // SSL - ConexÃ£o Segura
      ACBrMail1.SetTLS := False; // Auto TLS
      ACBrMail1.ReadingConfirmation := False; // Pede confirmaÃ§Ã£o de leitura do email
      ACBrMail1.UseThread := False; // Aguarda Envio do Email(nÃ£o usa thread)
      ACBrMail1.FromName := FEmpresaClass.NomeFantasia;

      prcStatusMessage('NF-e: ' + Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]), 'Aguarde... Enviando NF-e Anexo.', True);

      ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(EmailDest, ConfigNFe.NFe_EmailAssunto, EmailMsg, True // Enviar PDF junto
         , nil // Lista com emails que serÃ£o enviado cópias - TStrings
         , nil); // Lista de anexos - TStrings

      Application.MessageBox('E-mail enviado com sucesso.', 'TechCore-RTG', mb_IconInformation or mb_ok);

   finally
      EmailMsg.Free;
      prcStatusMessage('...', '...', False);
   end;

end;

procedure TFrEmissorNfe.actCancelarNFeExecute(Sender: TObject);
var
   sTextoCancelar: String;
begin

   { Antes de cancela o pedido, verifica se existem parcelas pagas }
   try
      aQuery.Close;
      aQuery.SQL.Clear;
      aQuery.SQL.Add('Select');
      aQuery.SQL.Add('  count(1) as rec');
      aQuery.SQL.Add('from');
      aQuery.SQL.Add('  C000112 AS t1');
      aQuery.SQL.Add('join');
      aQuery.SQL.Add('  C000110 AS t2');
      aQuery.SQL.Add('on');
      aQuery.SQL.Add('  t1.ID_C000110 = t2.ID');
      aQuery.SQL.Add('where');
      aQuery.SQL.Add('  t2.id_empresa = :id_empresa');
      aQuery.SQL.Add('and');
      aQuery.SQL.Add('  t2.id_origem  = :id_org');
      aQuery.SQL.Add('and');
      aQuery.SQL.Add('  t2.rec_origem = 2');
      aQuery.ParamByName('id_empresa').Asinteger := FEmpresaClass.ID;
      aQuery.ParamByName('id_org').Asinteger := tbDadosID.Asinteger;
      aQuery.Open();

      if aQuery.FieldByName('rec').Asinteger > 0 then
      begin
         Application.MessageBox('Não é possível cancelar este pedido, existem pagamentos efetuados.', 'TechCore-RTG', mb_IconError or mb_ok);
         Abort;
      end;

   finally
      aQuery.Close;
   end;

   FrEmissorNfeCancelar := TFrEmissorNfeCancelar.Create(self);
   try
      if FrEmissorNfeCancelar.ShowModal = mrCancel then
         Abort
      else
         sTextoCancelar := FrEmissorNfeCancelar.eJustificativa.Text;
   finally
      FreeAndNil(FrEmissorNfeCancelar);
   end;

   if Application.MessageBox('Tem certeza que deseja cancela esta nota fiscal?', 'TechCore-PDV', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Prepara o objeto
   ACBrNFe1.NotasFiscais.Clear;
   ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_XML.AsString);

   // Prepara o objeto evento
   ACBrNFe1.EventoNFe.Evento.Clear;

   // Cria o eento a ser enviado
   with ACBrNFe1.EventoNFe.Evento.Add do
   begin
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCancelamento;
      infEvento.detEvento.xJust := sTextoCancelar;
   end;

   prcStatusMessage('Solicitando o Cancelamento da NF-e: ' + Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]), 'Aguarde... Enviando Cancelamento da NF-e.', True);

   // Envia o pedido de cancelamento
   ACBrNFe1.EnviarEvento(1);

   // Checa o retorno do cancelamento
   if ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [135, 136, 155] then
   begin

      if ACBrNFe1.Consultar then
      begin

         try
            // Armazena os dados de retorno do cancelamento
            tbDados.Edit;
            tbDadosNFE_CANCELADA_DATA.AsDateTime := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
            tbDadosNFE_CANCELADA_PROTOCOLO.AsString := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
            tbDadosNFE_CANCELADA_XML_EVENTO.AsAnsiString := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.Xml;
            tbDadosNFE_CANCELADA_XML.AsAnsiString := ACBrNFe1.NotasFiscais.Items[0].Xml;
            tbDadosNFE_STATUS.Asinteger := 3;
            tbDados.Post;

            Application.MessageBox('Cancelamento efetuado com sucesso.', 'TechCore-RTG', mb_IconInformation or mb_ok);

         except
            on E: Exception do
               Application.MessageBox('Cancelamento efetuado com sucesso, porem houveram erros ao atualizar o banco de dados.', 'TechCore-RTG', mb_IconInformation or mb_ok);
         end;

      end
      else
         raise Exception.Create('Cancelamento efetuado com sucesso, porem houveram erros ao atualizar o banco de dados.');
   end
   else
      raise Exception.Create('Solicitação de cancelamento Rejeitada');
end;

procedure TFrEmissorNfe.actCancelarNFeUpdate(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (tbDadosNFE_STATUS.Asinteger <> 2) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True;
end;

procedure TFrEmissorNfe.actCCeComprovanteExecute(Sender: TObject);
begin
   ACBrNFe1.NotasFiscais.Clear;
   ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_XML.AsAnsiString);

   ACBrNFe1.EventoNFe.Evento.Clear;
   ACBrNFe1.EventoNFe.LerXMLFromString(tbDadosNFE_CCE_XML_EVENTO.AsAnsiString);
   ACBrNFe1.ImprimirEvento;
end;

procedure TFrEmissorNfe.actCCeComprovanteUpdate(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (tbDadosNFE_CCE_XML_EVENTO.IsNull) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actCCeEnviarEmailExecute(Sender: TObject);
var
   arquivos: TStringDynArray;
   arquivo: string;

   EmailMsg: TStringList;
   EmailDest: String;
   sListaAnexo: TStringList;
   sNomeXML: String;
   P: TXMLDocument;
   L: String;
begin

   // Checa se o componente está configurado
   if (ConfigNFe.NFe_EmailHost = '') then
   begin
      Application.MessageBox('Antes de usar este recurso, configura os parâmetros de envio dos emails.', 'TechCore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;

   if tbDadosCLI_EMAIL.AsString = '' then
   begin
      if Application.MessageBox('Cliente sem endereço de e-mail cadastrado, deseja informar um e-mail? ', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
         Abort;

      if not InputQuery('E-mail do destinatário:', 'E-mail:', EmailDest) then
      begin
         Application.MessageBox('Não é posível enviar o e-mail se um e-mail válido.', 'TechCore-RTG', mb_IconStop or mb_ok);
         Abort;
      end;
   end;

   ACBrNFe1.NotasFiscais.Clear;
   ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_XML.AsString);

   EmailMsg := TStringList.Create;
   EmailMsg.Add(ConfigNFe.NFe_EmailMsg);

   try
      ACBrMail1.Host := ConfigNFe.NFe_EmailHost;
      ACBrMail1.Port := ConfigNFe.NFe_EmailPorta.ToString;
      ACBrMail1.Username := ConfigNFe.NFe_EmailUsuario;
      ACBrMail1.Password := ConfigNFe.NFe_EmailSenha;
      ACBrMail1.From := ConfigNFe.NFe_EmailUsuario;
      ACBrMail1.SetSSL := ConfigNFe.NFe_EmailSeguro.ToBoolean; // SSL - Conexão Segura
      ACBrMail1.SetTLS := False; // Auto TLS
      ACBrMail1.ReadingConfirmation := False; // Pede confirmação de leitura do email
      ACBrMail1.UseThread := False; // Aguarda Envio do Email(não usa thread)
      ACBrMail1.FromName := FEmpresaClass.NomeFantasia;

      prcStatusMessage('NF-e: ' + Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]), 'Aguarde... Enviando NF-e Anexo.', True);

      // Força a setar na raiz da aplicação
      ChDir(ExtractFilePath(Application.ExeName));
      ChDir('../');

      // Checa se o diretório temporário dos eventos existe, se não o cria
      if not DirectoryExists('temp/eventos/cce') then
      begin
         if not DirectoryExists('temp') then
            MkDir('temp');

         if not DirectoryExists('temp/eventos') then
            MkDir('temp/eventos');

         if not DirectoryExists('temp/eventos/cce') then
            MkDir('temp/eventos/cce');
      end;

      // Altera o path da aplicação para a pasta temporária
      ChDir('temp/eventos/cce');

      // Resgata a chave da NF-e
      sNomeXML := tbDadosNFE_CHAVE_ACESSO.AsString;
      sNomeXML := sNomeXML + '_' + tbDadosNFE_CCE_CONTADOR.AsString + '_procEventoNFe.xml';

      // Carrega o conteudo do banco para a classe
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.EventoNFe.LerXMLFromString(tbDadosNFE_CCE_XML_EVENTO.AsAnsiString);

      P := TXMLDocument.Create(nil);
      P.Active := True;
      P.Encoding := 'UTF-8';
      P.LoadFromXML(tbDadosNFE_CCE_XML_EVENTO.AsString);
      P.SaveToFile(sNomeXML);
      P.Active := False;

      // Adiciona o arquivo xml a lista de anexos
      sListaAnexo := TStringList.Create;
      sListaAnexo.Add(sNomeXML);

      ACBrNFe1.EnviarEmailEvento(EmailDest, ConfigNFe.NFe_EmailAssunto, EmailMsg, nil // Sem cópiar e-mails
         , sListaAnexo // Lista com anexos
         , nil); // Sem e-mail de resposta

      Application.MessageBox('E-mail enviado com sucesso.', 'TechCore-RTG', mb_IconInformation or mb_ok);

      // Removendo os arquivos temporários das carta de correções
      ChDir('../../../');
      if TDirectory.Exists('temp') then
      begin
         // obtem todos os arquivos dentro do diretório.
         arquivos := TDirectory.GetFiles('temp/eventos/cce');

         // deleta todos os arquivos.
         for arquivo in arquivos do
            TFile.Delete(arquivo);

         // se não existir mais arquivos, remove o diretorio.
         if TDirectory.IsEmpty('temp/eventos/cce') then
         begin
            TDirectory.Delete('temp/eventos/cce');
            TDirectory.Delete('temp/eventos');
            TDirectory.Delete('temp');
         end;
      end;

   finally
      FreeAndNil(P);
      sListaAnexo.Free;
      EmailMsg.Free;
      prcStatusMessage('...', '...', False);
   end;
end;

procedure TFrEmissorNfe.actCCeEnviarEmailUpdate(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (tbDadosNFE_CCE_XML_EVENTO.IsNull) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actCCeGerarExecute(Sender: TObject);
var
   iCont: Integer;
   sTextoCce: String;
begin

   // Armazena a posição do contador
   iCont := tbDadosNFE_CCE_CONTADOR.Asinteger;

   FrEmissorNfeCCe := TFrEmissorNfeCCe.Create(self);
   FrEmissorNfeCCe.iCont.Min := iCont;
   FrEmissorNfeCCe.iCont.Value := iCont;
   FrEmissorNfeCCe.eText.Text := sTextoCce;

   try
      if FrEmissorNfeCCe.ShowModal = mrCancel then
         exit
      else
      begin
         // Texto da carta de correção
         sTextoCce := FrEmissorNfeCCe.eText.Text;

         // Contador de cartas enviadas
         if FrEmissorNfeCCe.iCont.IntValue = iCont then
            Inc(iCont)
         else
            iCont := FrEmissorNfeCCe.iCont.IntValue;
      end;

   finally
      FrEmissorNfeCCe.Free;
   end;

   // Confirma se gera a carta de correção
   if Application.MessageBox('Confirma o envio da Carta de Correção?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Prepara o objeto evento
   ACBrNFe1.EventoNFe.Evento.Clear;
   ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_XML.AsAnsiString);

   // Cria o evento a ser enviado
   with ACBrNFe1.EventoNFe.Evento.Add do
   begin
      infEvento.chNFe := tbDadosNFE_CHAVE_ACESSO.AsString;
      infEvento.CNPJ := OnlyNumber(FEmpresaClass.CNPJ);
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCCe;
      infEvento.nSeqEvento := iCont;
      infEvento.detEvento.xCorrecao := sTextoCce;
   end;

   prcStatusMessage('Enviando a Carta de Correção da NF-e: ' + Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]), 'Aguarde... Transmitindo CC-e', True);

   try
      if ACBrNFe1.EnviarEvento(1) then
      begin

         if ACBrNFe1.WebServices.EnvEvento.cStat = 128 then
         begin
            if ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [135, 136, 155] then
            begin

               // Armazena os dados de retorno do cancelamento
               tbDados.Edit;
               tbDadosNFE_CCE_DATA.AsDateTime := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
               tbDadosNFE_CCE_PROTOCOLO.AsString := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
               tbDadosNFE_CCE_XML_EVENTO.AsAnsiString := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.Xml;
               tbDadosNFE_CCE_CONTADOR.Asinteger := iCont;
               tbDados.Post;

               Application.MessageBox('Carta de Correção Registrada com Sucesso', 'TechCore-RTG', mb_IconInformation or mb_ok);

               // Limpa o texto da cache
               sTextoCce := '';

            end
            else
               raise Exception.Create('Carta de Correção Rejeitada');
         end
         else
            raise Exception.Create('Erro não especificado.');
      end
      else
         raise Exception.Create('Carta de Correção não processada.');

   finally
      prcStatusMessage('...', '...', False);
   end;
end;

procedure TFrEmissorNfe.actCCeGerarUpdate(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (tbDadosNFE_STATUS.Asinteger <> 2) or (tbDadosNFE_CCE_CONTADOR.Asinteger > 19) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True;

   // Exibe o total de carta de correções emitidas
   TAction(Sender).Caption := sCaption + ' (' + Format('%.3d', [tbDadosNFE_CCE_CONTADOR.Asinteger]) + ')';
end;

procedure TFrEmissorNfe.actConsultarNFeExecute(Sender: TObject);
var
   A, B: Integer;
begin
   try
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_XML.AsString);

      if ACBrNFe1.Consultar then
      begin

         {
           0 : Text := 'Em digitação'; // Sem número
           1 : Text := 'Em digitação'; // Com número
           2 : Text := 'Autorizada';
           3 : Text := 'Cancelada';
           4 : Text := 'Rejeitada';
           5 : Text := 'Denegada';
         }
         case (ACBrNFe1.WebServices.Consulta.cStat) of
            100:
               begin
                  try
                     tbDados.Edit;
                     tbDados.FieldByName('NFE_XML').AsAnsiString := ACBrNFe1.NotasFiscais.Items[0].Xml;
                     tbDados.FieldByName('NFE_DH_SAIDA').AsDateTime := ACBrNFe1.WebServices.Consulta.protNFe.dhRecbto;
                     tbDados.FieldByName('NFE_CHAVE_ACESSO').AsAnsiString := ACBrNFe1.WebServices.Consulta.NFeChave;
                     tbDados.FieldByName('NFE_XML_PROTOCOLO').AsAnsiString := ACBrNFe1.WebServices.Consulta.Protocolo;
                     tbDadosNFE_STATUS.Asinteger := 2; // Autorizado o uso da nfe

                     // Se houverem eventos vinculados a nota fiscal, atualiza o banco de dados
                     if ACBrNFe1.WebServices.Consulta.procEventoNFe.Count > 0 then
                     begin

                        // Loop para varrer os eventos encontrados
                        for A := 0 to ACBrNFe1.WebServices.Consulta.procEventoNFe.Count - 1 do
                        begin

                           // Armazena o XML do evento
                           case ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.infEvento.tpEvento of
                              teCancelamento:
                                 tbDados.FieldByName('NFE_CANCELADA_XML_EVENTO').AsAnsiString := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.Xml;
                              teCCe:
                                 tbDados.FieldByName('NFE_CCE_XML_EVENTO').AsAnsiString := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.Xml;
                           end;

                           // Varre os detalhes dos eventos
                           for B := 0 to ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Count - 1 do
                           begin

                              case ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B].RetInfEvento.tpEvento of
                                 teCancelamento:
                                    begin
                                       tbDados.FieldByName('NFE_CANCELADA_PROTOCOLO').AsAnsiString := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A]
                                        .RetEventoNFe.retEvento.Items[B].RetInfEvento.nProt;
                                       tbDados.FieldByName('NFE_CANCELADA_DATA').AsDateTime := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B]
                                        .RetInfEvento.dhRegEvento;
                                    end;

                                 teCCe:
                                    begin
                                       tbDados.FieldByName('NFE_CCE_PROTOCOLO').AsAnsiString := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B]
                                        .RetInfEvento.nProt;
                                       tbDados.FieldByName('NFE_CCE_DATA').AsDateTime := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B]
                                        .RetInfEvento.dhRegEvento;
                                       tbDados.FieldByName('NFE_CCE_CONTADOR').Asinteger := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B]
                                        .RetInfEvento.nSeqEvento;
                                    end;
                              end;

                           end;
                        end;

                     end;

                     tbDados.Post;
                  except
                     tbDados.Cancel;
                     Raise Exception.Create('Erro ao atualiza o XML na base de dados');
                  end;
               end;

            101:
               begin
                  try
                     tbDados.Edit;
                     tbDados.FieldByName('NFE_CANCELADA_XML').AsAnsiString := ACBrNFe1.NotasFiscais.Items[0].Xml;
                     tbDados.FieldByName('NFE_DH_SAIDA').AsDateTime := ACBrNFe1.WebServices.Consulta.protNFe.dhRecbto;
                     tbDados.FieldByName('NFE_XML_PROTOCOLO').AsAnsiString := ACBrNFe1.WebServices.Consulta.Protocolo;
                     tbDadosNFE_STATUS.Asinteger := 3; // Nota fiscal Cancelada

                     // Se houverem eventos vinculados a nota fiscal, atualiza o banco de dados
                     if ACBrNFe1.WebServices.Consulta.procEventoNFe.Count > 0 then
                     begin

                        // Loop para varrer os eventos encontrados
                        for A := 0 to ACBrNFe1.WebServices.Consulta.procEventoNFe.Count - 1 do
                        begin

                           // Armazena o XML do evento
                           case ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.infEvento.tpEvento of
                              teCancelamento:
                                 tbDados.FieldByName('NFE_CANCELADA_XML_EVENTO').AsAnsiString := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.Xml;
                              teCCe:
                                 tbDados.FieldByName('NFE_CCE_XML_EVENTO').AsAnsiString := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.Xml;
                           end;

                           // Varre os detalhes dos eventos
                           for B := 0 to ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Count - 1 do
                           begin

                              case ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B].RetInfEvento.tpEvento of
                                 teCancelamento:
                                    begin
                                       tbDados.FieldByName('NFE_CANCELADA_PROTOCOLO').AsAnsiString := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A]
                                        .RetEventoNFe.retEvento.Items[B].RetInfEvento.nProt;
                                       tbDados.FieldByName('NFE_CANCELADA_DATA').AsDateTime := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B]
                                        .RetInfEvento.dhRegEvento;
                                    end;

                                 teCCe:
                                    begin
                                       tbDados.FieldByName('NFE_CCE_PROTOCOLO').AsAnsiString := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B]
                                        .RetInfEvento.nProt;
                                       tbDados.FieldByName('NFE_CCE_DATA').AsDateTime := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B]
                                        .RetInfEvento.dhRegEvento;
                                       tbDados.FieldByName('NFE_CCE_CONTADOR').Asinteger := ACBrNFe1.WebServices.Consulta.procEventoNFe.Items[A].RetEventoNFe.retEvento.Items[B]
                                        .RetInfEvento.nSeqEvento;
                                    end;
                              end;

                           end;
                        end;

                     end;

                     tbDados.Post;
                  except
                     tbDados.Cancel;
                     Raise Exception.Create('Erro ao atualiza o XML na base de dados');
                  end;
               end;

            110:
               begin
                  try
                     tbDados.Edit;
                     tbDados.FieldByName('NFE_XML').AsAnsiString := ACBrNFe1.NotasFiscais.Items[0].Xml;
                     tbDados.FieldByName('NFE_CHAVE_ACESSO').AsAnsiString := ACBrNFe1.WebServices.Consulta.NFeChave;
                     tbDados.FieldByName('NFE_XML_PROTOCOLO').AsAnsiString := ACBrNFe1.WebServices.Consulta.Protocolo;
                     tbDadosNFE_STATUS.Asinteger := 5; // Nota fiscal denegada
                     tbDados.Post;
                  except
                     tbDados.Cancel;
                     Raise Exception.Create('Erro ao atualiza o XML na base de dados');
                  end;
               end;
         end;

         FrEmissorNfeStatusSefaz := TFrEmissorNfeStatusSefaz.Create(self);
         FrEmissorNfeStatusSefaz.MemoDados.Clear;
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('');
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('SITUAÇÃO DA NOTA FICAL NA SEFAZ:');
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('Chave............: ' + ACBrNFe1.WebServices.Consulta.NFeChave);
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('Protocolo........: ' + ACBrNFe1.WebServices.Consulta.Protocolo);
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('Código Retorno...: ' + IntToStr(ACBrNFe1.WebServices.Consulta.cStat));
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('Situação.........: ' + ACBrNFe1.WebServices.Consulta.xMotivo);
         FrEmissorNfeStatusSefaz.ShowModal;

      end;

   finally
      FreeAndNil(FrEmissorNfeStatusSefaz);
   end;
end;

procedure TFrEmissorNfe.actConsultarNFeUpdate(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (not tbDadosNFE_STATUS.Asinteger in [0, 1]) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actPopFreteExecute(Sender: TObject);
begin
   tbDados.Edit;

   FrEmissorNfeFreteOutros := TFrEmissorNfeFreteOutros.Create(self);
   try
      if FrEmissorNfeFreteOutros.ShowModal = mrOk then
         tbDados.Post
      else
         tbDados.Cancel;
   finally
      FreeAndNil(FrEmissorNfeFreteOutros);
   end;
end;

procedure TFrEmissorNfe.actPopFreteUpdate(Sender: TObject);
begin
   {
     0 - Em Digitação 
     1 - Aguardando 
     2 - Autorizada 
     3 - Cancelada  
     5 - Denegada
   }
   if (tbDados.IsEmpty) then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('tipo_de_registro').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 2 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 5 then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actPrintEventoCanceladoExecute(Sender: TObject);
begin
   // Checa se é uma nota fiscal cancelada
   if tbDadosNFE_STATUS.Asinteger = 3 then
   begin
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_XML.AsAnsiString);

      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.EventoNFe.LerXMLFromString(tbDadosNFE_CANCELADA_XML_EVENTO.AsAnsiString);
      ACBrNFe1.ImprimirEvento;
   end;
end;

procedure TFrEmissorNfe.actPrintEventoCanceladoUpdate(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (tbDadosNFE_STATUS.Asinteger <> 3) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actPrintExecute(Sender: TObject);
begin
   // Antes de imprimir gera a nota fiscal
   if (tbDadosNFE_XML.IsNull) or (tbDadosNFE_STATUS.Asinteger in [0, 1]) then
      GerarNotaFiscal(False, tbDadosID.Asinteger);

   // Limpa o componente antes de carregar a nota fiscal
   ACBrNFe1.NotasFiscais.Clear;

   // Se for uma nota autorizada ou denegada
   if tbDadosNFE_STATUS.Asinteger in [0, 1, 2, 5] then
      ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_XML.AsString);

   // Se for um nota fiscal cancelada
   if tbDadosNFE_STATUS.Asinteger = 3 then
      ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_CANCELADA_XML.AsString);

   // Imprimi a nota fiscal
   ACBrNFe1.NotasFiscais.Imprimir;
end;

procedure TFrEmissorNfe.actPrintUpdate(Sender: TObject);
begin
   // Ajusta o menu conforme o status do cursor e da nota fiscal
   if (tbDados.IsEmpty) or (tbItens.IsEmpty) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True;

   // Alterar o caption do menu conforme a condição
   if tbDadosNFE_STATUS.Asinteger in [0, 1] then
      TAction(Sender).Caption := 'Visualizar'
   else
      TAction(Sender).Caption := 'Imprimir'
end;

procedure TFrEmissorNfe.actReferenciadasExecute(Sender: TObject);
begin
   FrEmissorNfeReferenciadas := TFrEmissorNfeReferenciadas.Create(self);
   try
      FrEmissorNfeReferenciadas.ShowModal;
   finally
      FreeAndNil(FrEmissorNfeReferenciadas);
   end;
end;

procedure TFrEmissorNfe.actReferenciadasUpdate(Sender: TObject);
begin
   {
     0 - Em Digitação 
     1 - Aguardando 
     2 - Autorizada 
     3 - Cancelada  
     5 - Denegada
   }
   if (tbDados.IsEmpty) then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 2 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 3 then
      TAction(Sender).Enabled := False
   else if tbDados.FieldByName('nfe_status').Asinteger = 5 then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.actSairExecute(Sender: TObject);
begin
   self.Close;
end;

procedure TFrEmissorNfe.actSendXMLExecute(Sender: TObject);
var
   EmailMsg: TStringList;
   EmailDest: String;
begin

   // Checa se o componente está configurado
   if (ConfigNFe.NFe_EmailHost = '') then
   begin
      Application.MessageBox('Antes de usar este recurso, configura os parâmetros de envio dos emails.', 'TechCore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;

   if tbDadosCLI_EMAIL.AsString = '' then
   begin
      if Application.MessageBox('Cliente sem endereço de e-mail cadastrado, deseja informar um e-mail? ', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
         Abort;

      if not InputQuery('E-mail do destinatário:', 'E-mail:', EmailDest) then
      begin
         Application.MessageBox('Não é posível enviar o e-mail se um e-mail válido.', 'TechCore-RTG', mb_IconStop or mb_ok);
         Abort;
      end;
   end
   else
      EmailDest := tbDadosCLI_EMAIL.AsString;

   ACBrNFe1.NotasFiscais.Clear;
   ACBrNFe1.NotasFiscais.LoadFromString(tbDadosNFE_XML.AsString);

   EmailMsg := TStringList.Create;
   EmailMsg.Add(ConfigNFe.NFe_EmailMsg);

   try
      ACBrMail1.Host := ConfigNFe.NFe_EmailHost;
      ACBrMail1.Port := ConfigNFe.NFe_EmailPorta.ToString;
      ACBrMail1.Username := ConfigNFe.NFe_EmailUsuario;
      ACBrMail1.Password := ConfigNFe.NFe_EmailSenha;
      ACBrMail1.From := ConfigNFe.NFe_EmailUsuario;
      ACBrMail1.SetSSL := ConfigNFe.NFe_EmailSeguro.ToBoolean; // SSL - conexão segura
      ACBrMail1.SetTLS := False; // Auto TLS
      ACBrMail1.ReadingConfirmation := False; // Pede confirmaÃ§Ã£o de leitura do email
      ACBrMail1.UseThread := False; // Aguarda Envio do Email(nÃ£o usa thread)
      ACBrMail1.FromName := FEmpresaClass.NomeFantasia;

      prcStatusMessage('NF-e: ' + Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]), 'Aguarde... Enviando NF-e Anexo.', True);

      ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(EmailDest, ConfigNFe.NFe_EmailAssunto, EmailMsg, True // Enviar PDF junto
         , nil // Lista com emails que serÃ£o enviado cópias - TStrings
         , nil); // Lista de anexos - TStrings

      Application.MessageBox('E-mail enviado com sucesso.', 'TechCore-RTG', mb_IconInformation or mb_ok);

   finally
      EmailMsg.Free;
      prcStatusMessage('...', '...', False);
   end;
end;

procedure TFrEmissorNfe.actSendXMLUpdate(Sender: TObject);
begin
   if (tbDados.IsEmpty) or (tbDadosNFE_XML.IsNull) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True
end;

procedure TFrEmissorNfe.GerarNotaFiscal(Transmitir: Boolean; ID_Nfe: Integer);
Var
   // Cria um cursor auxiliar
   tbPesq: TFDQuery;

   // Para exibição dos crédito do ICMS
   pCreditoICMS: String;
   vCreditoICMS: String;

   // Campo informações adicionais
   sAvisoIPI, sAvisoICMs, sAvisoICMsTemp: String;
   sInfoAdic: AnsiString;
   sInfoAdFisco: AnsiString;

   // Armazena o valor total da lei da transparência
   ValorLei12741: Double;

   // Para o calculo do IPI
   BS_CalculoIPI, Valor_IPI, Valor_IPI_Total: Double;

   // Para o calculo do PIS
   BS_CalculoPIS, Valor_PIS, Valor_PIS_TOtal: Double;

   // Para o calculo do COFINS
   BS_CalculoCOFINS, Valor_COFINS, vALOR_COFINS_Total: Double;

   // Para o calculo do ICMs Interno
   BS_CalculoICMs, BS_CalculoICMs_Total, Valor_ICMs, Valor_Icms_Total: Double;

   // Para o calculo do ICMs_ST
   BS_CalculoICMsST, BS_CalculoICMsST_Total, RB_Aliq_MVa, Valor_ICMsST, Valor_IcmsST_Total: Double;

   // Forma de pagamento
   fpTipoPagto: TpcnFormaPagamento;

   // Fatura e Duplicatas
   ValorFatura: Real;

begin

   // Inicializa as variaveis
   ValorFatura := 0.00;

   // Limpa o componente emissor
   ACBrNFe1.NotasFiscais.Clear;

   // Seta o componente emissor ao objeto
   NotaF := ACBrNFe1.NotasFiscais.Add;

   with NotaF.NFe do
   begin

      // Determina o ambiente de trabalho da nota fiscal
      Ide.tpAmb := TpcnTipoAmbiente(tbDados.FieldByName('nfe_ambiente').Asinteger);

      // Tipo de nota fiscal (entrada / saida)
      Ide.tpNF := TpcnTipoNFe(tbDados.FieldByName('nfe_tipo_operacao').Asinteger);

      // Se o status for em digitação e o número ainda zerado, gera o próximo numero e código de proteção
      if (tbDados.FieldByName('nfe_status').Asinteger = 0) and (tbDados.FieldByName('nfe_numero').Asinteger = 0) then
         if Transmitir = True then
            GerarNumeroCodigoNfe;

      Ide.cNF := tbDados.FieldByName('nfe_codigo_protecao').Asinteger; // Gerado na função -> GerarNumeroCodigoNfe
      Ide.nNF := tbDados.FieldByName('nfe_numero').Asinteger;
      Ide.natOp := tbDados.FieldByName('nfe_natureza_operacao').AsString;
      Ide.modelo := tbDados.FieldByName('nfe_modelo').Asinteger;
      Ide.serie := tbDados.FieldByName('nfe_serie').Asinteger;
      Ide.dEmi := tbDados.FieldByName('nfe_dh_emissao').AsDateTime;
      Ide.dSaiEnt := now;
      Ide.hSaiEnt := now;

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira
      // Data:       07/11/2018
      // Aplicação:  Emissão de notas fiscais
      // Descrição:  Determina o tipo de emissão conforme o préviamente configurado no componente
      // ------------------------------------------------------------------------------------------ //
      if Ide.tpEmis <> teNormal then
      begin
         Ide.dhCont := now;
         Ide.xJust := ConfigNFe.NFe_xJust;
      end;

      Ide.verProc := '1.0.0.1'; // Versão do seu sistema
      Ide.cUF := FEmpresaClass.CodUf;
      Ide.cMunFG := FEmpresaClass.CodCidade;

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       10/06/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Ajusta o campo finalidade da nota fiscal                                       //
      // ------------------------------------------------------------------------------------------ //
      Ide.finNFe := TpcnFinalidadeNFe(tbDados.FieldByName('nfe_finalidade').Asinteger);

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       10/06/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Determina o tipo de atendimento                                                //
      // ------------------------------------------------------------------------------------------ //
      Ide.indPres := TpcnPresencaComprador(tbDados.FieldByName('nfe_indicador_presenca').Asinteger);

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       08/06/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Carrega os dadosdo emitente da nota fsical                                     //
      // ------------------------------------------------------------------------------------------ //
      Emit.xNome := FEmpresaClass.RazaoSocial;
      Emit.xFant := FEmpresaClass.NomeFantasia;
      Emit.CNPJCPF := OnlyNumber(FEmpresaClass.CNPJ);

      With Emit.EnderEmit do
      begin
         xLgr := FEmpresaClass.Endereco;
         nro := FEmpresaClass.Numero.ToString();
         xCpl := FEmpresaClass.Complemento;
         xBairro := FEmpresaClass.Bairro;
         xMun := FEmpresaClass.Cidade;
         cMun := FEmpresaClass.CodCidade;
         UF := FEmpresaClass.UF;
         CEP := FEmpresaClass.CEP.ToInteger();
         xPais := FEmpresaClass.NomePais;
         cPais := FEmpresaClass.CodigoPais;
         fone := FEmpresaClass.FoneFixo;
      end;

      Emit.IE := OnlyNumber(FEmpresaClass.IEstadual);

      // Regime tributário do emitente
      case FEmpresaClass.Crt of
         1:
            Emit.Crt := crtSimplesNacional;
         2:
            Emit.Crt := crtSimplesExcessoReceita;
         3:
            Emit.Crt := crtRegimeNormal;
      end;

      // Carrega os dados do cliente para emissão
      tbCliente.Close;
      tbCliente.ParamByName('ID').Asinteger := tbDados.FieldByName('id_cliente').Asinteger;
      tbCliente.Open();

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       08/06/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Carrega os dados do destinatário da nota fiscal                                //
      // ------------------------------------------------------------------------------------------ //
      Dest.xNome := tbClienteCLI_RAZAO_SOCIAL.AsString;
      Dest.CNPJCPF := tbClienteCLI_CNPJ.AsString;

      With Dest.EnderDest do
      begin
         xLgr := tbClienteCLI_ENDERECO.AsString;
         nro := tbClienteCLI_NUMERO.AsString;
         xCpl := tbClienteCLI_COMPLEMENTO.AsString;
         xBairro := tbClienteCLI_BAIRRO.AsString;
         cMun := tbClienteCLI_CODIGO_CIDADE.Asinteger;
         xMun := tbClienteCLI_CIDADE.AsString;
         UF := tbClienteCLI_UF.AsString;
         CEP := tbClienteCLI_CEP.Asinteger;
         xPais := tbClienteCLI_PAIS.AsString;
         cPais := tbClienteCLI_CODIGO_PAIS.Asinteger;
         fone := tbClienteCLI_FONE_FIXO.AsString;
      end;

      // Checa se o contribuinte ou consumifor final
      case tbClienteCLI_CONTRIB_ICMS.Asinteger of

         1:
            begin
               if tbClienteCLI_IESTADUAL.AsString = '' then
               begin
                  Dest.indIEDest := inNaoContribuinte;
                  Ide.indFinal := cfConsumidorFinal;
               end
               else
               begin
                  Dest.IE := tbClienteCLI_IESTADUAL.AsString;
                  Dest.indIEDest := inContribuinte;
                  Ide.indFinal := cfNao;
               end;
            end;

         2, 9:
            begin
               Dest.indIEDest := inNaoContribuinte;
               Ide.indFinal := cfConsumidorFinal;
            end;

      end;

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       08/06/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Checa se esta é uma operação interna, interestadual                            //
      // ou exterior                                                                    //
      // ------------------------------------------------------------------------------------------ //
      if tbCliente.FieldByName('cli_uf').AsString = 'EX' then
         Ide.idDest := doExterior
      else if FEmpresaClass.CodUf = tbCliente.FieldByName('cli_codigo_uf').Asinteger then
         Ide.idDest := doInterna
      else
         Ide.idDest := doInterestadual;

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       07/11/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Se houver notas referenciadas, as insere                                       //
      // ------------------------------------------------------------------------------------------ //
      tbPesq := TFDQuery.Create(self);
      tbPesq.Connection := FrModuloRet.DBConexao;
      try
         tbPesq.SQL.Add('SELECT NFE_REF_CHAVE FROM C000603 WHERE ID_NOTA_FISCAL = :ID_NOTA_FISCAL');
         tbPesq.ParamByName('ID_NOTA_FISCAL').Asinteger := tbDadosID.Asinteger;
         tbPesq.Open();

         // Psociona o cursor
         tbPesq.First;

         // Se houver notas referenciadas
         if not tbPesq.IsEmpty then
         begin

            repeat
               Ide.NFref.Add.refNFe := tbPesq.FieldByName('nfe_ref_chave').AsString;

               // Próximo registro
               tbPesq.Next;

            until tbPesq.Eof;

         end;
      finally
         FreeAndNil(tbPesq);
      end;

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       08/06/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Carrega os dados dos produtos inseridos na nota fiscal                         //
      // ------------------------------------------------------------------------------------------ //

      // Desconecta o dataset do cursor
      dsItens.DataSet := nil;

      // Coloca o cursor de itens no primeiro registro
      tbItens.First;

      // Calculos da lei da transparência
      ValorLei12741 := 0.00;

      repeat

         with Det.Add do
         begin
            // Calculos do IPI
            BS_CalculoIPI := 0.00;
            Valor_IPI := 0.00;

            // Calculos do PIS
            BS_CalculoPIS := 0.00;
            Valor_PIS := 0.00;

            // Calculos do COFINS
            BS_CalculoCOFINS := 0.00;
            Valor_COFINS := 0.00;

            // Calculos do ICMs
            BS_CalculoICMs := 0.00;
            Valor_ICMs := 0.00;

            // Calculos do ICMsST
            BS_CalculoICMsST := 0.00;
            Valor_ICMsST := 0.00;
            RB_Aliq_MVa := 0.00;

            Prod.nItem := tbItens.RecNo;
            Prod.cProd := tbItensPRD_CODIGO.AsString;
            Prod.cEAN := tbItensPRD_CODIGO_BARRAS.AsString;
            Prod.xProd := tbItensPRD_DESCRICAO.AsString;
            Prod.NCM := tbItensPRD_NCM.AsString;
            Prod.CEST := tbItensPRD_CEST.AsString;
            Prod.CFOP := tbItensPRD_CFOP.AsString;
            Prod.uCom := tbItensPRD_UNIDADE.AsString;
            Prod.qCom := tbItensPRD_QTDE.AsFloat;
            Prod.vUnCom := tbItensPRD_VLR_UNITARIO.AsFloat;
            Prod.vProd := tbItensPRD_VLR_SUBTOTAL.AsFloat;
            Prod.cEANTrib := tbItensPRD_CODIGO_BARRAS.AsString;
            Prod.qTrib := tbItensPRD_QTDE.AsFloat;
            Prod.uTrib := tbItensPRD_UNIDADE.AsString;
            Prod.vUnTrib := tbItensPRD_VLR_UNITARIO.AsFloat;
            Prod.vFrete := tbItensPRD_VLR_FRETE.AsFloat;
            Prod.vSeg := tbItensPRD_VLR_SEGURO.AsFloat;
            Prod.vOutro := tbItensPRD_VLR_OUTROS.AsFloat;
            Prod.vDesc := tbItensPRD_VLR_DESCONTO.AsFloat;
            Prod.IndTot := TpcnIndicadorTotal(tbItensPRD_IND_TOT.Asinteger);
            infAdProd := tbItensPRD_INFORMACOES.AsString;

            // ------------------------------------------------------------------------------------------ //
            // Autor:      Winston Moreira                                                                //
            // Data:       08/06/2018                                                                     //
            // Aplicação:  Emissão de notas fiscais                                                       //
            // Descrição:  Insere os valores e dados dos impostos do produto                              //
            // ------------------------------------------------------------------------------------------ //
            with Imposto do
            begin

               // Se informado a aliquota, efetua o calculo do COFINS
               if (tbItensPRD_COFINS_ALIQ.AsFloat > 0.00) and (FEmpresaClass.Crt = 3) then
               begin
                  BS_CalculoCOFINS := (Prod.vProd + Prod.vFrete + Prod.vSeg + Prod.vOutro);
                  Valor_COFINS := (BS_CalculoCOFINS * (tbItensPRD_COFINS_ALIQ.AsFloat / 100));
                  vALOR_COFINS_Total := (vALOR_COFINS_Total + Valor_COFINS);
               end;

               // Se informado a aliquota, efetua o calculo do IPI
               if (tbItensPRD_IPI_ALIQ.AsFloat > 0.00) and (FEmpresaClass.Crt = 3) then
               begin
                  BS_CalculoIPI := (Prod.vProd + Prod.vFrete + Prod.vSeg + Prod.vOutro);
                  Valor_IPI := (BS_CalculoIPI * (tbItensPRD_IPI_ALIQ.AsFloat / 100));
                  Valor_IPI_Total := (Valor_IPI_Total + Valor_IPI);
               end;

               // Se informado a aliquota, efetua o calculo do PIS
               if (tbItensPRD_PIS_ALIQ.AsFloat > 0.00) and (FEmpresaClass.Crt = 3) then
               begin
                  BS_CalculoPIS := (Prod.vProd + Prod.vFrete + Prod.vSeg + Prod.vOutro);
                  Valor_PIS := (BS_CalculoPIS * (tbItensPRD_PIS_ALIQ.AsFloat / 100));
                  Valor_PIS_TOtal := (Valor_PIS_TOtal + Valor_PIS);
               end;

               // Se informado a aliquota, efetua o calculo do ICMs Interno
               if tbItens.FieldByName('prd_icms_aliq').AsFloat > 0.00 then
               begin

                  // Ajusta a base e calculo para consumidor final e revenda
                  case tbCliente.FieldByName('cli_contrib_icms').Asinteger of
                     1:
                        BS_CalculoICMs := (Prod.vProd + Prod.vFrete + Prod.vSeg + Prod.vOutro) - Prod.vDesc;
                     2, 9:
                        BS_CalculoICMs := (Prod.vProd + Valor_IPI + Prod.vFrete + Prod.vSeg + Prod.vOutro) - Prod.vDesc;
                  end;

                  BS_CalculoICMs_Total := (BS_CalculoICMs_Total + BS_CalculoICMs);

                  Valor_ICMs := (BS_CalculoICMs * (tbItensPRD_ICMS_ALIQ.AsFloat / 100));
                  Valor_Icms_Total := (Valor_Icms_Total + Valor_ICMs);
               end;

               // Se informado a aliquota, efetua o calculo do ICMSs_ST sobre o produto
               if (tbItens.FieldByName('prd_icms_st_aliq').AsFloat > 0.00) then
               begin

                  // Checa se existe redução do MVA
                  if tbItensPRD_ICMS_ST_RBCALC.AsFloat > 0.00 then
                  begin
                     RB_Aliq_MVa := (tbItensPRD_ICMS_ST_MVA.AsFloat * (tbItensPRD_ICMS_ST_RBCALC.AsFloat / 100));
                  end;

                  // Se necessário, informa o ajuste do MVA
                  if (tbItensPRD_ICMS_ALIQ.AsFloat <> tbItensPRD_ICMS_ST_ALIQ.AsFloat) and (FEmpresaClass.Crt = 3) then
                  begin
                     RB_Aliq_MVa := ((1 + (tbItensPRD_ICMS_ST_MVA.AsFloat / 100)) * (1 - (tbItensPRD_ICMS_ALIQ.AsFloat / 100)) / (1 - (tbItensPRD_ICMS_ST_ALIQ.AsFloat / 100))
                        - 1) * 100;
                     RB_Aliq_MVa := RoundTo(RB_Aliq_MVa, -2);
                  end;

                  BS_CalculoICMsST := (Prod.vProd + Valor_IPI + Prod.vFrete + Prod.vSeg + Prod.vOutro) - Prod.vDesc;
                  BS_CalculoICMsST := (BS_CalculoICMsST * (1 + (RB_Aliq_MVa / 100)));
                  BS_CalculoICMsST_Total := (BS_CalculoICMsST_Total + BS_CalculoICMsST);

                  Valor_ICMsST := (BS_CalculoICMsST * (tbItensPRD_ICMS_ST_ALIQ.AsFloat / 100)) - Valor_ICMs;
                  Valor_IcmsST_Total := (Valor_IcmsST_Total + Valor_ICMsST);
               end;

               // 1º Origem da Mercadoria
               ICMS.orig := TpcnOrigemMercadoria(tbItensPRD_ORIGEM.Asinteger);

               // 3º Checa o regime tributário do emitente
               case FEmpresaClass.Crt of

                  1, 2:
                     begin

                        // 3.1 - Determina o tipo de CSOSN utilizando o cast e string para inteiro
                        case tbItensPRD_CST.Asinteger of
                           101:
                              ICMS.CSOSN := csosn101;
                           102:
                              ICMS.CSOSN := csosn102;
                           103:
                              ICMS.CSOSN := csosn103;
                           201:
                              ICMS.CSOSN := csosn201;
                           202:
                              ICMS.CSOSN := csosn202;
                           300:
                              ICMS.CSOSN := csosn300;
                           400:
                              ICMS.CSOSN := csosn400;
                           500:
                              ICMS.CSOSN := csosn500;
                           900:
                              ICMS.CSOSN := csosn900;
                        end;

                        // Obs.: para CSOSN: 102, 103, 300, 400
                        // Não há necessidade de criar as tags, pois no simples só é necessário a origme e a classificação

                        // 3.2 - Ajusta o ICMS conforme a classificação tributária do produto
                        case ICMS.CSOSN of

                           // 3.2.1 - Se Simples e com permissão de crédito de icms
                           csosn101:
                              begin
                                 ICMS.pCredSN := FEmpresaClass.IcmsAliquota;
                                 ICMS.vCredICMSSN := (tbItensPRD_VLR_TOTAL.AsFloat * FEmpresaClass.IcmsAliquota) / 100;
                              end;

                           // 3.2.1 - Se Simples e com permissão de crédito e Substituição Tributária de icms
                           csosn201:
                              begin
                                 {
                                   ICMS.modBCST        := TpcnDeterminacaoBaseIcmsST(tbItensPRD_ICMS_ST_MODAL.AsInteger);
                                   ICMS.pMVAST         := tbItensPRD_ICMS_ST_MVA.AsFloat;
                                   ICMS.pRedBCST       := tbItensPRD_ICMS_ST_RBCALC.AsFloat;
                                   ICMS.vBCST          := BS_CalculoICMsST;
                                   ICMS.pICMSST        := tbItensPRD_ICMS_ST_ALIQ.AsFloat;
                                   ICMS.vICMSST        := Valor_ICMsST;
                                 }

                                 ICMS.pCredSN := FEmpresaClass.IcmsAliquota;
                                 ICMS.vCredICMSSN := (tbItensPRD_VLR_TOTAL.AsFloat * FEmpresaClass.IcmsAliquota) / 100;

                              end;

                           // 3.2.2 - Se Simples e sem permissão de crédito e Substituição Tributária de icms
                           csosn202, csosn203:
                              begin
                                 {
                                   ICMS.modBCST        := TpcnDeterminacaoBaseIcmsST( tbItensPRD_ICMS_ST_MODAL.AsInteger );
                                   ICMS.pMVAST         := tbItensPRD_ICMS_ST_MVA.AsFloat;
                                   ICMS.pRedBCST       := tbItensPRD_ICMS_ST_RBCALC.AsFloat;
                                   ICMS.vBCST          := BS_CalculoICMsST;
                                   ICMS.pICMSST        := tbItensPRD_ICMS_ST_ALIQ.AsFloat;
                                   ICMS.vICMSST        := Valor_ICMsST;
                                 }

                              end;

                           // 3.2.3 - Se Simples com preenchimento total
                           csosn900:
                              begin
                                 {
                                   ICMS.modBCST        := TpcnDeterminacaoBaseIcmsST( tbItensPRD_ICMS_ST_MODAL.AsInteger );
                                   ICMS.pMVAST         := tbItensPRD_ICMS_ST_MVA.AsFloat;
                                   ICMS.pRedBCST       := tbItensPRD_ICMS_ST_RBCALC.AsFloat;
                                   ICMS.vBCST          := BS_CalculoICMsST;
                                   ICMS.pICMSST        := tbItensPRD_ICMS_ST_ALIQ.AsFloat;
                                   ICMS.vICMSST        := Valor_ICMsST;
                                 }
                                 ICMS.pCredSN := FEmpresaClass.IcmsAliquota;
                                 ICMS.vCredICMSSN := (tbItensPRD_VLR_TOTAL.AsFloat * FEmpresaClass.IcmsAliquota) / 100;

                                 // Dados do ICMS
                                 if Ide.finNFe = fnDevolucao then
                                 begin
                                    ICMS.modBC := dbiValorOperacao;
                                    ICMS.pICMS := tbItensPRD_ICMS_ALIQ.AsFloat;
                                    ICMS.pRedBC := tbItensPRD_ICMS_RBCALC.AsFloat;
                                    ICMS.vBC := BS_CalculoICMs;
                                    ICMS.vICMS := Valor_ICMs;
                                 end;

                              end;

                        end;

                        // 3.3 - Gera as TAGs do IPI
                        IPI.CST := ipi99;
                        IPI.pIPI := 0.00;
                        IPI.vBC := 0.00;
                        IPI.vIPI := 0.00;
                        IPI.cEnq := tbItensPRD_IPI_CODIGO.AsString;

                        // 3.4 - Gera as TAGs do PIS
                        PIS.CST := pis99;
                        PIS.pPIS := tbItensPRD_PIS_ALIQ.AsFloat;
                        PIS.vBC := 0.00;
                        PIS.vPIS := 0.00;

                        // 3.5 - Gera as TAGs do COFINS
                        COFINS.CST := cof99;
                        COFINS.pCOFINS := tbItensPRD_COFINS_ALIQ.AsFloat;
                        COFINS.vBC := 0.00;
                        COFINS.vCOFINS := 0.00;

                     end;

                  3:
                     begin

                        // 4.1 - Determina o tipo de CST
                        case tbItensPRD_CST.Asinteger of
                           0:
                              ICMS.CST := cst00;
                           10:
                              ICMS.CST := cst10;
                           20:
                              ICMS.CST := cst20;
                           30:
                              ICMS.CST := cst30;
                           40:
                              ICMS.CST := cst40;
                           41:
                              ICMS.CST := cst41;
                           50:
                              ICMS.CST := cst50;
                           51:
                              ICMS.CST := cst51;
                           60:
                              ICMS.CST := cst60;
                           70:
                              ICMS.CST := cst70;
                           80:
                              ICMS.CST := cst80;
                           81:
                              ICMS.CST := cst81;
                           90:
                              ICMS.CST := cst90;
                        end;

                        // Dados do ICMS
                        ICMS.modBC := dbiValorOperacao;
                        ICMS.pICMS := tbItensPRD_ICMS_ALIQ.AsFloat;
                        ICMS.pRedBC := tbItensPRD_ICMS_RBCALC.AsFloat;
                        ICMS.vBC := BS_CalculoICMs;
                        ICMS.vICMS := Valor_ICMs;

                        // Dados do IPI
                        case tbItensPRD_IPI_CST.Asinteger of
                           0:
                              IPI.CST := ipi00;
                           1:
                              IPI.CST := ipi01;
                           2:
                              IPI.CST := ipi02;
                           3:
                              IPI.CST := ipi03;
                           4:
                              IPI.CST := ipi04;
                           5:
                              IPI.CST := ipi05;
                           49:
                              IPI.CST := ipi49;
                           50:
                              IPI.CST := ipi50;
                           51:
                              IPI.CST := ipi51;
                           52:
                              IPI.CST := ipi52;
                           53:
                              IPI.CST := ipi53;
                           54:
                              IPI.CST := ipi54;
                           55:
                              IPI.CST := ipi55;
                           99:
                              IPI.CST := ipi99;
                        end;

                        IPI.vBC := BS_CalculoIPI;
                        IPI.pIPI := tbItensPRD_IPI_ALIQ.AsFloat;
                        IPI.vIPI := Valor_IPI;
                        IPI.cEnq := tbItensPRD_IPI_CODIGO.AsString;

                        // Dados do PIS
                        case tbItensPRD_PIS_CST.Asinteger of
                           1:
                              PIS.CST := pis01;
                           2:
                              PIS.CST := pis02;
                           3:
                              PIS.CST := pis03;
                           4:
                              PIS.CST := pis04;
                           5:
                              PIS.CST := pis05;
                           6:
                              PIS.CST := pis05;
                           7:
                              PIS.CST := pis05;
                           8:
                              PIS.CST := pis05;
                           9:
                              PIS.CST := pis05;
                           49:
                              PIS.CST := pis49;
                           50:
                              PIS.CST := pis50;
                           51:
                              PIS.CST := pis51;
                           52:
                              PIS.CST := pis52;
                           53:
                              PIS.CST := pis53;
                           54:
                              PIS.CST := pis54;
                           55:
                              PIS.CST := pis55;
                           56:
                              PIS.CST := pis56;
                           60:
                              PIS.CST := pis60;
                           61:
                              PIS.CST := pis61;
                           62:
                              PIS.CST := pis62;
                           63:
                              PIS.CST := pis63;
                           64:
                              PIS.CST := pis64;
                           65:
                              PIS.CST := pis65;
                           66:
                              PIS.CST := pis66;
                           67:
                              PIS.CST := pis67;
                           70:
                              PIS.CST := pis70;
                           71:
                              PIS.CST := pis71;
                           72:
                              PIS.CST := pis72;
                           73:
                              PIS.CST := pis73;
                           74:
                              PIS.CST := pis74;
                           75:
                              PIS.CST := pis75;
                           98:
                              PIS.CST := pis98;
                           99:
                              PIS.CST := pis99;
                        end;

                        PIS.vBC := BS_CalculoPIS;
                        PIS.pPIS := tbItensPRD_PIS_ALIQ.AsFloat;
                        PIS.vPIS := Valor_PIS;

                        // Dados do cofins
                        case tbItensPRD_PIS_CST.Asinteger of
                           1:
                              COFINS.CST := cof01;
                           2:
                              COFINS.CST := cof02;
                           3:
                              COFINS.CST := cof03;
                           4:
                              COFINS.CST := cof04;
                           5:
                              COFINS.CST := cof05;
                           6:
                              COFINS.CST := cof05;
                           7:
                              COFINS.CST := cof05;
                           8:
                              COFINS.CST := cof05;
                           9:
                              COFINS.CST := cof05;
                           49:
                              COFINS.CST := cof49;
                           50:
                              COFINS.CST := cof50;
                           51:
                              COFINS.CST := cof51;
                           52:
                              COFINS.CST := cof52;
                           53:
                              COFINS.CST := cof53;
                           54:
                              COFINS.CST := cof54;
                           55:
                              COFINS.CST := cof55;
                           56:
                              COFINS.CST := cof56;
                           60:
                              COFINS.CST := cof60;
                           61:
                              COFINS.CST := cof61;
                           62:
                              COFINS.CST := cof62;
                           63:
                              COFINS.CST := cof63;
                           64:
                              COFINS.CST := cof64;
                           65:
                              COFINS.CST := cof65;
                           66:
                              COFINS.CST := cof66;
                           67:
                              COFINS.CST := cof67;
                           70:
                              COFINS.CST := cof70;
                           71:
                              COFINS.CST := cof71;
                           72:
                              COFINS.CST := cof72;
                           73:
                              COFINS.CST := cof73;
                           74:
                              COFINS.CST := cof74;
                           75:
                              COFINS.CST := cof75;
                           98:
                              COFINS.CST := cof98;
                           99:
                              COFINS.CST := cof99;
                        end;

                        COFINS.vBC := BS_CalculoCOFINS;
                        COFINS.pCOFINS := tbItensPRD_COFINS_ALIQ.AsFloat;
                        COFINS.vCOFINS := Valor_COFINS;

                     end;

               end; // Fim da Classificação Fiscal da empresa

               // Lei da transparência lei Lei 12.741/2012
               if Ide.finNFe <> fnDevolucao then
               begin
                  vTotTrib := (tbItensPRD_VLR_12741_NAC.AsFloat + tbItensPRD_VLR_12741_EST.AsFloat);
                  ValorLei12741 := (ValorLei12741 + vTotTrib);
               end
               else
                  vTotTrib := 0.00;

            end; // Imposto

         end; // Produto

         // Avança para o próximo produto
         tbItens.Next;

      until (tbItens.Eof);

      // Recoloca o cursor no primeiro registro após o loop
      tbItens.First;

      // Reconecta o dataset ao cursor
      dsItens.DataSet := tbItens;

      if FEmpresaClass.Crt < 3 then
      begin
         // base de calculo do icms
         if Ide.finNFe = fnDevolucao then
            Total.ICMSTot.vBC := BS_CalculoICMs_Total
         else
            Total.ICMSTot.vBC := 0.00;

         // valor do icms
         if Ide.finNFe = fnDevolucao then
            Total.ICMSTot.vICMS := Valor_Icms_Total
         else
            Total.ICMSTot.vICMS := 0.00;
      end
      else
      begin
         // base de calculo do icms
         Total.ICMSTot.vBC := BS_CalculoICMs_Total;

         // valor do icms
         Total.ICMSTot.vICMS := Valor_Icms_Total;
      end;

      // base de calculo st
      Total.ICMSTot.vBCST := BS_CalculoICMsST_Total;
      // valor st
      Total.ICMSTot.vst := Valor_IcmsST_Total;
      // ipi
      Total.ICMSTot.vIPI := Valor_IPI_Total;
      // pis
      Total.ICMSTot.vPIS := Valor_PIS_TOtal;
      // cofins
      Total.ICMSTot.vCOFINS := vALOR_COFINS_Total;
      // valor dos produtos
      Total.ICMSTot.vProd := tbDadosNFE_VLR_PRODUTOS.AsFloat;
      // valor da nota
      Total.ICMSTot.vNF := (tbDadosNFE_VLR_TOTAL.AsFloat + Valor_IcmsST_Total);
      // frete
      Total.ICMSTot.vFrete := tbDadosNFE_VLR_FRETE.AsFloat;
      // seguro
      Total.ICMSTot.vSeg := tbDadosNFE_VLR_SEGURO.AsFloat;
      // outras despesas
      Total.ICMSTot.vOutro := tbDadosNFE_VLR_OUTROS.AsFloat;
      // desconto
      Total.ICMSTot.vDesc := tbDadosNFE_VLR_DESCONTO.AsFloat;

      { Checa a finalidade e se possui informações de imposto }
      if Ide.finNFe <> fnDevolucao then
         Total.ICMSTot.vTotTrib := ValorLei12741
      else
         Total.ICMSTot.vTotTrib := 0.00;

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       07/11/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Insere os pagamentos na nota fiscal                                            //
      // ------------------------------------------------------------------------------------------ //

      tbPesq := TFDQuery.Create(self);
      tbPesq.Connection := FrModuloRet.DBConexao;
      try
         tbPesq.SQL.Add('SELECT * FROM C000602 WHERE ID_NOTA_FISCAL = :ID_NOTA_FISCAL ORDER BY PAG_VENCIMENTO ASC');
         tbPesq.ParamByName('id_nota_fiscal').Asinteger := tbDadosID.Asinteger;
         tbPesq.Open();

         // Coloca o cursor no primeiro registro
         tbPesq.First;

         repeat

            with Pag.Add do
            begin

               // forma de pagamento
               case tbPesq.FieldByName('id_forma_pagto').Asinteger of
                  1:
                     tPag := fpDinheiro;
                  2:
                     tPag := fpCheque;
                  3:
                     tPag := fpCartaoCredito;
                  4:
                     tPag := fpCartaoDebito;
                  5:
                     tPag := fpCreditoLoja;
                  6:
                     tPag := fpValeAlimentacao;
                  7:
                     tPag := fpValeRefeicao;
                  8:
                     tPag := fpValePresente;
                  9:
                     tPag := fpValeCombustivel;
                  10:
                     tPag := fpBoletoBancario;
                  90:
                     tPag := fpSemPagamento;
                  99:
                     tPag := fpOutro;
               end;

               { armazena a forma de pagamento }
               fpTipoPagto := tPag;

               // Valor do pagamento
               if tPag <> fpSemPagamento then
                  vPag := tbPesq.FieldByName('pag_vlr_total').AsFloat;

               // Se o pagamento for por meio de cartão
               case tPag of
                  fpCartaoCredito, fpCartaoDebito, fpValeAlimentacao, fpValeRefeicao:
                     begin
                        tpIntegra := tiPagNaoIntegrado;
                     end;
               end;

               // Duplicatas
               if tPag <> fpSemPagamento then
               begin
                  with Cobr.Dup.Add do
                  begin
                     nDup := Format('%.3d', [tbPesq.RecNo]);
                     dVenc := tbPesq.FieldByName('pag_vencimento').AsDateTime;
                     vDup := tbPesq.FieldByName('pag_vlr_total').AsFloat;
                  end;
               end;

            end;

            // efetua soma dos valores das duplicatas/formas depagamentos
            ValorFatura := (ValorFatura + tbPesq.FieldByName('pag_vlr_total').AsFloat);

            // Avança para o próximo pagamento
            tbPesq.Next;

         until tbPesq.Eof;

      finally
         FreeAndNil(tbPesq);
      end;

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       07/11/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Insere a fatura na nota fiscal                                                 //
      // ------------------------------------------------------------------------------------------ //
      if fpTipoPagto <> fpSemPagamento then
      begin
         Cobr.Fat.nFat := Format('%.9d', [tbDadosNFE_NUMERO.Asinteger]);
         Cobr.Fat.vOrig := ValorFatura;
         Cobr.Fat.vDesc := 0.00;
         Cobr.Fat.vLiq := ValorFatura;
      end;

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       07/11/2018                                                                     //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Insere os dados da transportadora, veículo e volumes                           //
      // ------------------------------------------------------------------------------------------ //
      Transp.modFrete := TpcnModalidadeFrete(tbDadosNFE_TIPO_FRETE.Asinteger);

      if Transp.modFrete <> mfSemFrete then
      begin

         tbPesq := TFDQuery.Create(self);
         tbPesq.Connection := FrModuloRet.DBConexao;
         try

            // Dados da transportadora
            tbPesq.SQL.Add('SELECT TRA_RAZAO_SOCIAL, TRA_CNPJ, TRA_UF, TRA_IESTADUAL, TRA_ENDERECO, TRA_CIDADE, TRA_TIPO_PESSOA FROM C000310 WHERE ID = :ID_TRANSPORTADORA');
            tbPesq.ParamByName('ID_TRANSPORTADORA').Asinteger := tbDadosID_TRANSPORTADORA.Asinteger;
            tbPesq.Open();

            Transp.Transporta.xNome := tbPesq.FieldByName('tra_razao_social').AsString;
            Transp.Transporta.CNPJCPF := tbPesq.FieldByName('tra_cnpj').AsString;

            // Se for pessoa juridica insere a Inscrição Estadual
            if tbPesq.FieldByName('tra_tipo_pessoa').Asinteger = 1 then
               Transp.Transporta.IE := tbPesq.FieldByName('tra_iestadual').AsString
            else
               Transp.Transporta.IE := 'ISENTO';

            Transp.Transporta.xEnder := tbPesq.FieldByName('tra_endereco').AsString;
            Transp.Transporta.xMun := tbPesq.FieldByName('tra_cidade').AsString;
            Transp.Transporta.UF := tbPesq.FieldByName('tra_uf').AsString;

            // Dados do veículo
            Transp.veicTransp.placa := tbDadosNFE_VEICULO_PLACA.AsString;
            Transp.veicTransp.UF := tbDadosNFE_VEICULO_UF.AsString;
            Transp.veicTransp.RNTC := tbDadosNFE_VEICULO_RNTC.AsString;

            // Dados dos volumes
            with Transp.Vol.Add do
            begin
               qVol := tbDados.FieldByName('nfe_volume_qtde').Asinteger;
               esp := tbDados.FieldByName('nfe_volume_especie').AsString;
               marca := tbDados.FieldByName('nfe_volume_marca').AsString;
               nVol := tbDados.FieldByName('nfe_volume_numero').AsString;
               pesoL := tbDados.FieldByName('nfe_volume_peso_l').AsFloat;
               pesoB := tbDados.FieldByName('nfe_volume_peso_b').AsFloat;
            end;

         finally
            FreeAndNil(tbPesq);
         end;

      end;

      // ------------------------------------------------------------------------------------------ //
      // Autor:      Winston Moreira                                                                //
      // Data:       11/08/218                                                                      //
      // Aplicação:  Emissão de notas fiscais                                                       //
      // Descrição:  Checa se permite transferir crédito de ICMS                                    //
      // 1 - Checa o tipo de operação (Entrada / Saida)                                             //
      // 2 - Checa se está permitido transferir crédito de ICMS                                     //
      // 3 - Checa o ramo de atividade do emitente para incluir o IPI ou não                        //
      // ------------------------------------------------------------------------------------------ //

      // Aviso do Crédito do IPI
      if (Ide.tpNF = tnSaida) and (FEmpresaClass.RamoAtividade = 1) then
         sAvisoIPI := FEmpresaClass.MsgCreditoIPI;

      if (Ide.tpNF = tnSaida) and (FEmpresaClass.IcmsCredito in [1, 2]) then
      begin
         sAvisoICMs := '';
         sAvisoICMsTemp := '';

         // 1º Monta a parte do texto que exibe o valor
         sAvisoICMs := Copy(FEmpresaClass.MsgCreditoICMS, 1, Pos(';', FEmpresaClass.MsgCreditoICMS));
         sAvisoICMs := StringReplace(sAvisoICMs, ';', ' ', [rfReplaceAll]);
         sAvisoICMs := sAvisoICMs + FormatFloat(',0.00', (Total.ICMSTot.vNF * FEmpresaClass.IcmsAliquota) / 100);
         sAvisoICMsTemp := sAvisoICMs + Copy(FEmpresaClass.MsgCreditoICMS, Pos(';', FEmpresaClass.MsgCreditoICMS) + 1);

         // Monta a parte do texto que exibe a aliquota
         sAvisoICMs := Copy(sAvisoICMsTemp, 1, Pos(';', sAvisoICMsTemp));
         sAvisoICMs := StringReplace(sAvisoICMs, ';', ' ', [rfReplaceAll]);
         sAvisoICMs := sAvisoICMs + FormatFloat(',0.00', FEmpresaClass.IcmsAliquota);
         sAvisoICMs := sAvisoICMs + Copy(sAvisoICMsTemp, Pos(';', sAvisoICMsTemp) + 2);

      end;
      // --> fim Crédito de ICMS

      // Informações complementares
      InfAdic.infCpl := sAvisoIPI + sAvisoICMs + tbDadosNFE_INFO_CONTRIB.AsString;

      // Informações adicionais de interesse ao fisco
      InfAdic.infAdFisco := tbDadosNFE_INFO_FISCO.AsString;

   end;

   // Gera o XML da nota com base na informações passadas
   ACBrNFe1.NotasFiscais.GerarNFe;

   // Grava a chave e o XML na base de dados
   tbDados.Edit;
   tbDadosNFE_CHAVE_ACESSO.AsString := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
   tbDadosNFE_XML.AsString := ACBrNFe1.NotasFiscais.Items[0].GerarXML;
   tbDados.Post;

   // Verifica se é somente visualização do DANFe
   if Transmitir = False then
      exit;

   // Enviando a nota fiscal para receita
   if ACBrNFe1.Enviar(tbDadosNFE_LOTE.Asinteger, False) then
   begin

      case ACBrNFe1.WebServices.Retorno.cStat of
         103:
            Application.MessageBox('Erro, Nota fiscal não recebida pela Sefaz, tente novamente.', 'TechCore-RTG', mb_IconStop or mb_ok);

         100: // Nota fiscal Uso Autorizado
            begin
               tbDados.Edit;
               tbDadosNFE_DH_SAIDA.AsDateTime := now;
               tbDadosNFE_XML_RECIBO.AsString := ACBrNFe1.WebServices.Retorno.Recibo;
               tbDadosNFE_XML_PROTOCOLO.AsString := ACBrNFe1.WebServices.Retorno.Protocolo;
               tbDadosNFE_XML.AsString := ACBrNFe1.NotasFiscais.Items[0].GerarXML;
               tbDadosNFE_STATUS.Asinteger := 2;
               tbDados.Post;
            end;

         110: // Nota fiscal Uso Denegado
            begin
               tbDados.Edit;
               tbDadosNFE_DH_SAIDA.AsDateTime := now;
               tbDadosNFE_XML_RECIBO.AsString := ACBrNFe1.WebServices.Retorno.Recibo;
               tbDadosNFE_XML_PROTOCOLO.AsString := ACBrNFe1.WebServices.Retorno.Protocolo;
               tbDadosNFE_XML.AsString := ACBrNFe1.NotasFiscais.Items[0].GerarXML;
               tbDadosNFE_STATUS.Asinteger := 5;
               tbDados.Post;

               Application.MessageBox('Nota fiscal recebida pela Sefaz, porem seu uso foi denegado.', 'TechCore-RTG', mb_IconWarning or mb_ok);
            end;

         201 .. 796: // Nota fiscal Rejeitada
            begin
               tbDados.Edit;
               tbDadosNFE_DH_SAIDA.AsDateTime := now;
               tbDadosNFE_XML_RECIBO.AsString := ACBrNFe1.WebServices.Retorno.Recibo;
               tbDadosNFE_XML_PROTOCOLO.AsString := ACBrNFe1.WebServices.Retorno.Protocolo;
               tbDadosNFE_XML.AsString := ACBrNFe1.NotasFiscais.Items[0].GerarXML;
               tbDadosNFE_STATUS.Asinteger := 4;
               tbDados.Post;

               Application.MessageBox(pChar('Nota Fiscal Rejeitada na base de dados da Sefaz.' + #13#10 + 'Rejeição: ' + ACBrNFe1.WebServices.Retorno.cStat.ToString),
                  'TechCore-RTG', mb_IconStop or mb_ok);
            end
      else
         Raise Exception.Create('Erro não identificado, tente novamente.');

      end;

   end;
end;

procedure TFrEmissorNfe.GerarNumeroCodigoNfe;
var
   aQuery: TFDQuery;
begin
   Randomize;

   aQuery := TFDQuery.Create(self);
   aQuery.Connection := FrModuloRet.DBConexao;

   // ------------------------------------------------------------------------------------------ //
   // Autor:      Winston Moreira                                                                //
   // Data:       07/11/2018                                                                     //
   // Aplicação:  Emissão de notas fiscais                                                       //
   // Descrição:  Gera o próximo número da NF-e e o Código de Proteção, as rotina que geram      //
   // o número da NF-e são executadas direto no trigger da tabela da NF-e.           //
   // ------------------------------------------------------------------------------------------ //
   try
      try

         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('Update C000600 Set');
         aQuery.SQL.Add('  nfe_status          = :nfe_status,');
         aQuery.SQL.Add('  nfe_codigo_protecao = :nfe_codigo_protecao');
         aQuery.SQL.Add('where');
         aQuery.SQL.Add('  id = :id');
         aQuery.ParamByName('nfe_status').Asinteger := 1;
         aQuery.ParamByName('nfe_codigo_protecao').Asinteger := Random(99999999);
         aQuery.ParamByName('id').Asinteger := tbDadosID.Asinteger;
         aQuery.ExecSQL;

         // Atualiza o cursor da nota fiscal
         tbDados.Refresh;

      except
         on E: Exception do
         begin
            Raise Exception.Create('Erro ao gerar o número da nota fiscal, o processo será cancelado');
            Abort;
         end;
      end;

   finally
      FreeAndNil(aQuery);
   end;

end;

procedure TFrEmissorNfe.actTransmitirNFeExecute(Sender: TObject);
begin
   GerarNotaFiscal(True, tbDadosID.Asinteger); // Gera a nota fiscal e envia para receita
end;

procedure TFrEmissorNfe.actTransmitirNFeUpdate(Sender: TObject);
begin
   // Ajusta o menu conforme o status do cursor e da nota fiscal
   if (tbDados.IsEmpty) or (tbDadosNFE_STATUS.Asinteger in [2, 3, 4, 5]) then
      TAction(Sender).Enabled := False
   else
      TAction(Sender).Enabled := True;
end;

procedure TFrEmissorNfe.ConfigurarEmissorNFe;
begin
   { Ajusta a quantidade de casas decimais no danfe }
   ACBrNFe1.DANFE.CasasDecimais.vUnCom := FEmpresaClass.Decimal_Venda;
   ACBrNFe1.DANFE.CasasDecimais.qCom   := FEmpresaClass.Decimal_Qtde;

   with ACBrNFe1.Configuracoes do
   begin

      {
        Autor:      Winston Moreira
        Data:       07/11/2018
        Aplicação:  Emissor de notas fiscais
        Descrição:  Determina o modelo e versão do emissor de nota fiscais
      }
      Geral.ModeloDF := TpcnModeloDF(ConfigNFe.NFe_ModeloDF);
      Geral.VersaoDF := TpcnVersaoDF(ConfigNFe.NFE_VersaoDF);

      {
        Autor:      Winston Moreira
        Data:       07/11/2018
        Aplicação:  Emissor de notas fiscais
        Descrição:  Configura o certificado digital
      }
      Certificados.NumeroSerie := ConfigNFe.NFe_Certificado;

      {
        Autor:      Winston Moreira
        Data:       07/11/2018
        Aplicação:  Emissor de notas fiscais
        Descrição:  Determina a forma de comunicação com WebServer
      }
      WebServices.UF := ConfigNFe.NFe_WebServer;
      WebServices.Visualizar := False;
      WebServices.Salvar := False;
      WebServices.TimeOut := 10000;
      WebServices.AguardarConsultaRet := 5000;
      WebServices.Tentativas := 5;
      WebServices.IntervaloTentativas := 3000;
      WebServices.AjustaAguardaConsultaRet := False;
      WebServices.Ambiente := TpcnTipoAmbiente(ConfigNFe.NFe_Ambiente);

      // Determina a forma de emissão da nota fiscal
      Geral.FormaEmissao := TpcnTipoEmissao(ConfigNFe.NFe_TipoEmissao);

      {
        Autor:      Winston Moreira
        Data:       07/11/2018
        Aplicação:  Emissor de notas fiscais
        Descrição:  Configuração das pastas e comportamento para tratar as pastas do emissor
      }
      arquivos.SepararPorCNPJ := True;
      arquivos.SepararPorMes := True;
      arquivos.AdicionarLiteral := True;
      arquivos.SalvarEvento := False;
      arquivos.Salvar := False;
      arquivos.PathSalvar := ConfigNFe.NFe_FolderLogs;
      arquivos.PathSchemas := ConfigNFe.NFe_FolderSXD;

      {
        Autor:      Winston Moreira
        Data:       07/11/2018
        Aplicação:  Emissor de notas fiscais
        Descrição:  Determina a criptografia utiliza na comunicação com o servidor
      }
      Geral.SSLLib := libWinCrypt;
      Geral.SSLCryptLib := cryWinCrypt;
      Geral.SSLHttpLib := httpWinHttp;
      Geral.SSLXmlSignLib := xsMsXml;

   end;

   // Determina o nível criptografia utiliza na comunicação com o servidor
   ACBrNFe1.SSL.SSLType := TSSLType(ConfigNFe.NFe_SSLType);

   {
     Autor:      Winston Moreira
     Data:       07/11/2018
     Aplicação:  Emissor de notas fiscais
     Descrição:  Descarrega da memória os certificados digitis
   }
   ACBrNFe1.SSL.DescarregarCertificado;

   // Formato de impressão
   ACBrNFe1.DANFE.TipoDANFE := TpcnTipoImpressao(ConfigNFe.NFe_TipoDanfe);

   // Exibe ou não o total dos tributos por itens
   case ConfigNFe.NFe_Print_Lei12741 of
      1:
         ACBrNFe1.DANFE.ExibeTotalTributosItem := True;
      2:
         ACBrNFe1.DANFE.ExibeTotalTributosItem := False;
   end;

   // Caminho para gerar o PDF
   ACBrNFe1.DANFE.PathPDF := ConfigNFe.NFe_FolderPDFs;

   // Exibe o site do emitente no cabeçalho
   ACBrNFe1.DANFE.Site := FEmpresaClass.Site;

   // Exibe os dados do desenvolvedor
   ACBrNFe1.DANFE.Sistema := 'TechCore-RTG';

   // Exibe o logo tipo na danfe
   if Assigned(ConfigNFe.NFe_Logotipo) then
      ACBrNFe1.DANFE.Logo := ConfigNFe.NFe_Logotipo.DataString;

end;

procedure TFrEmissorNfe.eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if tbDados.IsEmpty then
      exit;

   if Column.Title.Caption = 'Status' then
   begin

      { Efetua a coloração de acordo o status }
      case tbDados.FieldByName('NFE_STATUS').Asinteger of
         0:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clBlack;
               (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
            end;
         1:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clBlack;
               (Sender as TDBGrid).Canvas.Brush.Color := $0018C8E7;
            end;
         2:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := $00408000;
            end;
         3:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := clBlack;
            end;
         4:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := clMaroon;
            end;
         5:
            begin
               (Sender as TDBGrid).Canvas.Font.Color := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := $000071E1;
            end;
      end;

   end;

   if Column.Title.Caption = 'Fat.' then
   begin

      { Em caso de pedido já entregue, pinta a linha inteira }
      if tbDados.FieldByName('nfe_faturada').Asinteger = 2 then
      begin
         (Sender as TDBGrid).Canvas.Font.Color := clWhite;
         (Sender as TDBGrid).Canvas.Brush.Color := $00408000;
      end;

   end;

   { Pinta o Grid }
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrEmissorNfe.FaturarEntrada;
begin
   try
      try
         FrModuloRet.DBConexaoII.StartTransaction;

         // 1º Prepara a query de contas
         Query210.Open();
         Query210.Insert;
         Query210.FieldByName('id_empresa').Asinteger := FEmpresaClass.ID;
         Query210.FieldByName('id_fornecedor').Asinteger := tbDadosID_CLIENTE.Asinteger;
         Query210.FieldByName('id_origem').Asinteger := tbDadosID.Asinteger;
         Query210.FieldByName('id_plano_contas').Asinteger := FEmpresaClass.PlnNfeE;
         Query210.FieldByName('pag_origem').Asinteger := 2;
         Query210.FieldByName('pag_valor').AsFloat := tbDadosNFE_VLR_TOTAL.AsFloat;
         Query210.FieldByName('pag_documento').AsString := Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]);
         Query210.FieldByName('pag_juros').AsFloat := ClassFinanceiro.JurosTaxa;
         Query210.FieldByName('pag_juros_caren').Asinteger := ClassFinanceiro.JurosCarencia;
         Query210.FieldByName('pag_multa').AsFloat := ClassFinanceiro.MultaTaxa;
         Query210.FieldByName('pag_multa_caren').Asinteger := ClassFinanceiro.MultaCarencia;
         Query210.Post;

         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT * FROM C000602 WHERE ID_NOTA_FISCAL = :ID ORDER BY PAG_VENCIMENTO ASC');
         aQuery.ParamByName('ID').Asinteger := tbDadosID.Asinteger;
         aQuery.Open();
         aQuery.First;

         Query211.Open();

         repeat

            with Query211 do
            begin
               Append;
               FieldByName('pag_parcela').Asinteger := aQuery.RecNo;
               FieldByName('pag_valor').AsFloat := aQuery.FieldByName('pag_vlr_total').AsFloat;
               FieldByName('pag_documento').AsString := tbDadosNFE_NUMERO.AsString;
               FieldByName('pag_vencimento').AsDateTime := aQuery.FieldByName('pag_vencimento').AsDateTime;
               FieldByName('pag_anotacoes').AsString := 'Nota Fiscal N.º: ' + Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]);
               Post;
            end;

            aQuery.Next;
         until (aQuery.Eof);

         // Aplica as alterações no banco
         SchemaPag.ApplyUpdates(0);
         SchemaPag.CommitUpdates;

         // Atualiza o status do faturamento
         zQuery.Close;
         zQuery.SQL.Clear;
         zQuery.SQL.Add('update c000600 set nfe_faturada = :nfe_faturada where id = :id');
         zQuery.ParamByName('nfe_faturada').Asinteger := 2; // Exibe como faturada a nfe
         zQuery.ParamByName('id').Asinteger := tbDadosID.Asinteger;
         zQuery.ExecSQL;

         // Comita as alterações no banco
         FrModuloRet.DBConexaoII.Commit;

         // Atualiza o cursor da nfe
         tbDados.Refresh;

         // Aviso ao usuário
         Application.MessageBox('NF-e faturada com sucesso!', 'TechCore-RTG', mb_IconInformation or mb_ok);

      except
         on E: Exception do
            Application.MessageBox(pChar('Erro ao faturar a NF-e:' + E.Message), 'Techcore-RTG', mb_IconError or mb_ok);
      end;

   finally
      Query210.Close;
      Query211.Close;
      aQuery.Close;
   end;
end;

procedure TFrEmissorNfe.FaturarSaida;
begin
   try
      try
         FrModuloRet.DBConexaoII.StartTransaction;

         // 1º Prepara a query de contas
         Query110.Open();
         Query110.Insert;
         Query110.FieldByName('id_empresa').Asinteger := FEmpresaClass.ID;
         Query110.FieldByName('id_cliente').Asinteger := tbDadosID_CLIENTE.Asinteger;
         Query110.FieldByName('id_origem').Asinteger := tbDadosID.Asinteger;
         Query110.FieldByName('id_pln_ctas').Asinteger := FEmpresaClass.PlnNfeS;
         Query110.FieldByName('rec_origem').Asinteger := 2; // Determina que é uma nota fiscal
         Query110.FieldByName('rec_vlr_conta').AsFloat := tbDadosNFE_VLR_TOTAL.AsFloat;
         Query110.FieldByName('rec_documento').AsString := Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]);
         Query110.FieldByName('rec_juros').AsFloat := ClassFinanceiro.JurosTaxa;
         Query110.FieldByName('rec_juros_caren').Asinteger := ClassFinanceiro.JurosCarencia;
         Query110.FieldByName('rec_multa').AsFloat := ClassFinanceiro.MultaTaxa;
         Query110.FieldByName('rec_multa_caren').Asinteger := ClassFinanceiro.MultaCarencia;
         Query110.Post;

         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('SELECT * FROM C000602 WHERE ID_NOTA_FISCAL = :ID ORDER BY PAG_VENCIMENTO ASC');
         aQuery.ParamByName('ID').Asinteger := tbDadosID.Asinteger;
         aQuery.Open();
         aQuery.First;

         Query111.Open();

         repeat

            with Query111 do
            begin
               Append;
               FieldByName('rec_parcela').Asinteger := aQuery.RecNo;
               FieldByName('rec_valor').AsFloat := aQuery.FieldByName('pag_vlr_total').AsFloat;
               FieldByName('rec_documento').AsString := tbDadosNFE_NUMERO.AsString;
               FieldByName('rec_vencimento').AsDateTime := aQuery.FieldByName('pag_vencimento').AsDateTime;
               FieldByName('rec_anotacoes').AsString := 'Nota Fiscal N.º: ' + Format('%.6d', [tbDadosNFE_NUMERO.Asinteger]);
               Post;
            end;

            aQuery.Next;
         until (aQuery.Eof);

         // Aplica as alterações no banco
         SchemaRec.ApplyUpdates(0);
         SchemaRec.CommitUpdates;

         // Atualiza o status do faturamento
         zQuery.Close;
         zQuery.SQL.Clear;
         zQuery.SQL.Add('update c000600 set nfe_faturada = :nfe_faturada where id = :id');
         zQuery.ParamByName('nfe_faturada').Asinteger := 2; // Exibe como faturada a nfe
         zQuery.ParamByName('id').Asinteger := tbDadosID.Asinteger;
         zQuery.ExecSQL;

         // Comita as alterações no banco
         FrModuloRet.DBConexaoII.Commit;

         // Atualiza o cursor da nfe
         tbDados.Refresh;

         // Aviso ao usuário
         Application.MessageBox('NF-e faturada com sucesso!', 'TechCore-RTG', mb_IconInformation or mb_ok);

      except
         on E: Exception do
            Application.MessageBox(pChar('Erro ao faturar a NF-e:' + E.Message), 'Techcore-RTG', mb_IconError or mb_ok);
      end;

   finally
      Query110.Close;
      Query111.Close;
      aQuery.Close;
   end;
end;

procedure TFrEmissorNfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(FrEmissorNfe);
end;

procedure TFrEmissorNfe.FormCreate(Sender: TObject);
begin
   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Venda of
      2:
         tbItensPRD_VLR_UNITARIO.DisplayFormat := ',0.00';
      3:
         tbItensPRD_VLR_UNITARIO.DisplayFormat := ',0.000';
      4:
         tbItensPRD_VLR_UNITARIO.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Qtde of
      2:
         tbItensPRD_QTDE.DisplayFormat := ',0.00';
      3:
         tbItensPRD_QTDE.DisplayFormat := ',0.000';
      4:
         tbItensPRD_QTDE.DisplayFormat := ',0.0000';
   end;

   // Armazena o caption padrão do menu Gerar Carta de Correção
   sCaption := actCCeGerar.Caption;

   // Ajusta a exibição do título conforme o amebiente
   case ConfigNFe.NFe_Ambiente of
      0:
         begin
            lbTitulo.Caption := 'Notas Fiscais - Ambiente de Produção';
            lbTitulo.Font.Color := clGreen;
         end;

      1:
         begin
            lbTitulo.Caption := 'Notas Fiscais - Ambiente de Homologação';
            lbTitulo.Font.Color := clMaroon;
         end;
   end;

   { Ajusta as datas }
   eDataIni.Date := IncDay(Date, -90);
   eDataFim.Date := Date;

   // Carrega as nota fiscais no período de 90 dias
   tbDados.ParamByName('ID_EMPRESA').Asinteger := FEmpresaClass.ID;
   tbDados.ParamByName('IDATA').AsDateTime := eDataIni.Date;
   tbDados.ParamByName('FDATA').AsDateTime := eDataFim.Date;
   tbDados.ParamByName('NFE_AMBIENTE').Asinteger := ConfigNFe.NFe_Ambiente;
   tbDados.Open();

   { Carrega os itens dos pedidos }
   tbItens.Open();

   // Configura o emissor na sua abertura
   ConfigurarEmissorNFe;

   { Confgura o campo do grid }
   eGrid.Columns[0].Width := 60;
end;

procedure TFrEmissorNfe.PngBitBtn1Click(Sender: TObject);
begin
   { Filtra os pedidos conforme a data informada }
   if eDataIni.Date > eDataFim.Date then
   begin
      Application.MessageBox('A data inicial não pode ser maior que a data final.', 'TechCore-RTG', mb_IconStop or mb_ok);
      eDataIni.SetFocus;
      Abort;
   end;

   // Carrega as nota fiscais no período específicado
   tbDados.Close;
   tbDados.ParamByName('ID_EMPRESA').Asinteger := FEmpresaClass.ID;
   tbDados.ParamByName('IDATA').AsDateTime := eDataIni.Date;
   tbDados.ParamByName('FDATA').AsDateTime := eDataFim.Date;
   tbDados.ParamByName('NFE_AMBIENTE').Asinteger := ConfigNFe.NFe_Ambiente;
   tbDados.Open();
end;

procedure TFrEmissorNfe.tbDadosAfterDelete(DataSet: TDataSet);
begin
   { Se o formulário de pedidos estiver aberto, atualiza o cursor }
   if Assigned(FrPedidosVendas) then
      FrPedidosVendas.tbDados.Refresh;

   { Se o formulário de gerenciamento de pedidos estiver aberto, atualiza o cursor }
   if Assigned(FrPedidosVendasGerenciar) then
      FrPedidosVendasGerenciar.tbDados.Refresh;
end;

procedure TFrEmissorNfe.tbDadosAfterInsert(DataSet: TDataSet);
begin
   try
      FrEmissorNfeCab := TFrEmissorNfeCab.Create(self);
      if FrEmissorNfeCab.ShowModal = mrOk then
         tbDados.Post
      else
         tbDados.Cancel;
   finally
      FreeAndNil(FrEmissorNfeCab);
   end;
end;

procedure TFrEmissorNfe.tbDadosAfterPost(DataSet: TDataSet);
begin
   tbDados.Refresh;
   tbItens.Refresh;
end;

procedure TFrEmissorNfe.tbDadosBeforeDelete(DataSet: TDataSet);
var
   tbPesq: TFDQuery;
begin
   // Checa se existem notas fiscais emitidas após a nota a ser excluida
   if DataSet.FieldByName('NFE_STATUS').Asinteger > 0 then
   begin

      tbPesq := TFDQuery.Create(self);
      tbPesq.Connection := tbDados.Connection;
      try
         tbPesq.SQL.Add('SELECT 1 FROM C000600 WHERE NFE_NUMERO > :NFE_NUMERO AND ID_EMPRESA = :ID_EMPRESA AND NFE_AMBIENTE = :NFE_AMBIENTE');
         tbPesq.ParamByName('NFE_NUMERO').Asinteger := tbDadosNFE_NUMERO.Asinteger;
         tbPesq.ParamByName('NFE_AMBIENTE').Asinteger := ConfigNFe.NFe_Ambiente;
         tbPesq.ParamByName('ID_EMPRESA').Asinteger := FEmpresaClass.ID;
         tbPesq.Open();

         if not tbPesq.IsEmpty then
         begin
            Application.MessageBox('Após a emissão desta nota fiscal foram emitidas outras, não é possível a exclusão nesta condição.' + #13#10 +
               'Se possível, exclua as notas fiscais emitidas após esta e tente novamente.', 'TechCore-RTG', mb_IconStop or mb_ok);
            Abort;
         end;

      finally
         FreeAndNil(tbPesq);
      end;

   end;

   if Application.MessageBox('Tem certeza que deseja excluir este documento?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrEmissorNfe.tbDadosBeforeInsert(DataSet: TDataSet);
begin
   { Confere se foi definido o plano de contas }
   if (not FEmpresaClass.PlnNfeE > 0) or (not FEmpresaClass.PlnNfeS > 0) then
   begin
      Application.MessageBox('Antes de continuar, é necessário definir um plano de contas padrão.', 'TechCore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;
end;

procedure TFrEmissorNfe.tbDadosCLI_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_', Sender.AsString)
   else if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_', Sender.AsString);
end;

procedure TFrEmissorNfe.tbDadosID_CLIENTEChange(Sender: TField);
var
   tbPesq: TFDQuery;
begin
   tbPesq := TFDQuery.Create(self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try
      tbPesq.SQL.Add('SELECT (LPAD(CLI_CODIGO,3,0) || '' - '' || CLI_RAZAO_SOCIAL) AS CLI_RAZAO_SOCIAL, CLI_CNPJ, CLI_UF FROM C000307 WHERE ID = :ID');
      tbPesq.ParamByName('ID').Asinteger := Sender.Asinteger;
      tbPesq.Open();

      { Exibe os dados resgatados }
      tbDados.FieldByName('CLI_RAZAO_SOCIAL').AsString := tbPesq.FieldByName('CLI_RAZAO_SOCIAL').AsString;
      tbDados.FieldByName('CLI_CNPJ').AsString := tbPesq.FieldByName('CLI_CNPJ').AsString;
      tbDados.FieldByName('CLI_UF').AsString := tbPesq.FieldByName('CLI_UF').AsString;
   finally
      FreeAndNil(tbPesq);
   end;
end;

procedure TFrEmissorNfe.tbDadosID_FUNCIONARIOChange(Sender: TField);
var
   tbPesq: TFDQuery;
begin
   tbPesq := TFDQuery.Create(self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try
      tbPesq.SQL.Add('SELECT (LPAD(FUN_CODIGO,3,0) || '' - '' || FUN_APELIDO) AS FUN_COMPRADOR FROM C000301 WHERE ID = :ID');
      tbPesq.ParamByName('ID').Asinteger := Sender.Asinteger;
      tbPesq.Open();

      { Exibe os dados resgatados }
      tbDados.FieldByName('NFE_VENDEDOR').AsString := tbPesq.FieldByName('FUN_COMPRADOR').AsString;
   finally
      FreeAndNil(tbPesq);
   end;
end;

procedure TFrEmissorNfe.tbDadosID_TRANSPORTADORAChange(Sender: TField);
var
   tbPesq: TFDQuery;
begin
   tbPesq := TFDQuery.Create(self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try
      tbPesq.SQL.Add('SELECT (LPAD(TRA_CODIGO,3,0) || '' - '' || TRA_RAZAO_SOCIAL) AS TRA_RAZAO_SOCIAL, TRA_CNPJ, TRA_UF FROM C000310 WHERE ID = :ID');
      tbPesq.ParamByName('ID').Asinteger := Sender.Asinteger;
      tbPesq.Open();

      { Exibe os dados resgatados }
      tbDados.FieldByName('TRA_RAZAO_SOCIAL').AsString := tbPesq.FieldByName('TRA_RAZAO_SOCIAL').AsString;
      tbDados.FieldByName('TRA_CNPJ').AsString := tbPesq.FieldByName('TRA_CNPJ').AsString;
      tbDados.FieldByName('TRA_UF').AsString := tbPesq.FieldByName('TRA_UF').AsString;
   finally
      FreeAndNil(tbPesq);
   end;
end;

procedure TFrEmissorNfe.tbDadosNewRecord(DataSet: TDataSet);
begin
   // Insere alguns dados padrões na nota fiscal
   DataSet.FieldByName('id_empresa').Asinteger := FEmpresaClass.ID;
   DataSet.FieldByName('tipo_de_registro').Asinteger := 2;
   DataSet.FieldByName('nfe_tipo_operacao').Asinteger := 1;
   DataSet.FieldByName('nfe_tipo_danfe').Asinteger := ConfigNFe.NFe_TipoDanfe;
   DataSet.FieldByName('nfe_natureza_operacao').AsString := 'VENDA';
   DataSet.FieldByName('nfe_finalidade').Asinteger := 0;
   DataSet.FieldByName('nfe_indicador_presenca').Asinteger := 6;
   DataSet.FieldByName('nfe_dh_emissao').AsDateTime := now;
   DataSet.FieldByName('nfe_faturada').Asinteger := 1; // Não faturada
   DataSet.FieldByName('nfe_status').Asinteger := 0;
   DataSet.FieldByName('nfe_ambiente').Asinteger := ConfigNFe.NFe_Ambiente;

   // Grava o modelo e a série conforme o ambiente
   case ConfigNFe.NFe_Ambiente of
      0:
         begin
            DataSet.FieldByName('nfe_modelo').Asinteger := ConfigNFe.NFe_PModelo;
            DataSet.FieldByName('nfe_serie').Asinteger := ConfigNFe.NFe_PSerie;
         end;

      1:
         begin
            DataSet.FieldByName('nfe_modelo').Asinteger := ConfigNFe.NFe_HModelo;
            DataSet.FieldByName('nfe_serie').Asinteger := ConfigNFe.NFe_HSerie;
         end;
   end;

end;

procedure TFrEmissorNfe.tbDadosNFE_CHAVE_ACESSOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      if not(Sender.IsNull) then
         Text := Sender.AsString
      else
         Text := 'Não definida';
   end;
end;

procedure TFrEmissorNfe.tbDadosNFE_FATURADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if (DisplayText) and (not tbDados.IsEmpty) then
   begin
      case Sender.Asinteger of
         1:
            Text := 'Não';
         2:
            Text := 'Sim'
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrEmissorNfe.tbDadosNFE_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if (DisplayText) and (not tbDados.IsEmpty) then
   begin
      case Sender.Asinteger of
         0:
            Text := 'Em Digitação';
         1:
            Text := 'Aguardando';
         2:
            Text := 'Autorizada';
         3:
            Text := 'Cancelada';
         4:
            Text := 'Rejeitada';
         5:
            Text := 'Denegada';
      end;
   end
   else
      Text := Sender.AsString

end;

procedure TFrEmissorNfe.tbDadosNFE_TIPO_FRETEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   {
     Dados na tabela:
     0 - Contratação do Frete por conta do Remetente (CIF)
     1 - Contratação do Frete por conta do Destinatário (FOB)
     2 - Contratação do Frete por conta de Terceiros
     3 - Transporte Próprio por conta do Remetente
     4 - Transporte Próprio por conta do Destinatário
     9 - Sem Ocorrência de Transporte
   }
   if (DisplayText) and (not tbDados.IsEmpty) then
   begin
      case Sender.Asinteger of
         0:
            Text := '0 - Contratação do Frete por conta do Remetente (CIF)';
         1:
            Text := '1 - Contratação do Frete por conta do Destinatário (FOB)';
         2:
            Text := '2 - Contratação do Frete por conta de Terceiros';
         3:
            Text := '3 - Transporte Próprio por conta do Remetente';
         4:
            Text := '4 - Transporte Próprio por conta do Destinatário';
         5:
            Text := '9 - Sem Ocorrência de Transporte';
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrEmissorNfe.tbDadosNFE_TIPO_OPERACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   // Ajusta a exibição dos dados no carregamento dos registros do banco de dados
   if (DisplayText) and (not tbDados.IsEmpty) then
   begin
      case Sender.Asinteger of
         0:
            Text := '0 - Entrada';
         1:
            Text := '1 - Saida'
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrEmissorNfe.tbDadosTRA_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_', Sender.AsString)
   else if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_', Sender.AsString);
end;

procedure TFrEmissorNfe.tbItensAfterDelete(DataSet: TDataSet);
begin
   tbDados.Refresh;
end;

procedure TFrEmissorNfe.tbItensAfterPost(DataSet: TDataSet);
begin
   // Atualiza o cursor das notas fiscais
   tbDados.Refresh;

   // Atualiza o cursor dos produtos
   tbItens.Refresh;
end;

procedure TFrEmissorNfe.tbItensBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox(pChar('Tem certeza que deseja excluir este produto?' + #13#10 + #13#10 + 'ITEM' + Format('%.2d', [DataSet.RecNo]) + ': ' +
      DataSet.FieldByName('prd_descricao').AsString), 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrEmissorNfe.tbItensID_PRODUTOChange(Sender: TField);
var
   tbPesq: TFDQuery;
begin
   tbPesq := TFDQuery.Create(self);
   tbPesq.Connection := FrModuloRet.DBConexao;
   try
      tbPesq.SQL.Add('SELECT PRD_CODIGO, PRD_CODIGO_BRR, PRD_DESCRICAO, PRD_UNIDADE FROM C000405 WHERE ID = :ID');
      tbPesq.ParamByName('ID').Asinteger := Sender.Asinteger;
      tbPesq.Open();

      tbItens.FieldByName('PRD_CODIGO').Asinteger := tbPesq.FieldByName('PRD_CODIGO').Asinteger;
      tbItens.FieldByName('PRD_CODIGO_BARRAS').AsString := tbPesq.FieldByName('PRD_CODIGO_BRR').AsString;
      tbItens.FieldByName('PRD_DESCRICAO').AsString := tbPesq.FieldByName('PRD_DESCRICAO').AsString;
      tbItens.FieldByName('PRD_UNIDADE').AsString := tbPesq.FieldByName('PRD_UNIDADE').AsString;
   finally
      FreeAndNil(tbPesq);
   end;
end;

procedure TFrEmissorNfe.tbItensNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('ID_NOTA_FISCAL').Asinteger := tbDadosID.Asinteger;
end;

procedure TFrEmissorNfe.tbItensNFE_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
   Qtde: Integer;
begin
   if DisplayText then
   begin
      if TryStrToInt(Sender.AsString, Qtde) then
         Text := Format('%.3d', [Qtde])
      else
         Text := Format('%.3d', [0])
   end;

end;

procedure TFrEmissorNfe.tbItensPRD_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
   Retorno : integer;
begin
   if TryStrtoInt(Sender.AsString, Retorno) then
      Text := Format('%.6d',[Retorno])
   else
      Text := Sender.AsString
end;

end.
