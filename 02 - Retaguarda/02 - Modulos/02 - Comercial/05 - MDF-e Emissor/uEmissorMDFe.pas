unit uEmissorMDFe;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvExComCtrls,
   JvComCtrls, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, RzEdit,
   RzDBEdit, RzDBBnEd, JvExMask, JvToolEdit, JvDBControls, Vcl.StdCtrls,
   Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, blcksock, pcnConversao, pmdfeConversaoMDFe, ACBrDFeUtil,
   JvDBGrid, JvExControls, JvDBLookup, FireDAC.Stan.Intf, ACBrUtil, DateUtils, ACBrDFeSSL,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
   FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   RzPanel, RzButton, System.Actions, Vcl.ActnList,
   Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, ACBrEnterTab, ACBrSocket,
   ACBrCEP, ACBrBase, ACBrValidador, Vcl.Imaging.pngimage, JvImage, RzCmboBx,
  dxGDIPlusClasses, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, ACBrDFe,
  ACBrMDFe, ACBrDFeReport, ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFeRLClass,
  Vcl.Menus;

type
   TFrEmissorMDFe = class(TForm)
      Query: TFDQuery;
    dsQuery: TJvDataSource;
      ActionManager1: TActionManager;
      actCadastrar: TAction;
      actAlterar: TAction;
    actConsultar: TAction;
    actPreVisualizar: TAction;
      actSair: TAction;
      RzToolbar1: TRzToolbar;
      btnNew: TRzToolButton;
      btnEdit: TRzToolButton;
      btnCancel: TRzToolButton;
      btnError: TRzToolButton;
      btnExit: TRzToolButton;
      RzSpacer1: TRzSpacer;
      RzSpacer2: TRzSpacer;
      RzSpacer3: TRzSpacer;
      RzSpacer4: TRzSpacer;
      RzPanel2: TRzPanel;
    lbTitulo: TLabel;
      Label14: TLabel;
      Bevel3: TBevel;
      Image2: TImage;
      QueryEmitente: TFDQuery;
      dsEmitentes: TDataSource;
      QueryID: TIntegerField;
      QueryID_EMP: TIntegerField;
      QueryMD_TIP_AMBIENTE: TIntegerField;
      QueryMD_TIP_EMITENTE: TIntegerField;
      QueryMD_TIP_TRANSPORTADOR: TIntegerField;
      QueryMD_TIP_MODAL: TIntegerField;
      QueryMD_TIP_EMISSAO: TIntegerField;
      QueryMD_TIP_APLICATIVO: TIntegerField;
      QueryMD_MODELO: TIntegerField;
      QueryMD_NUMERO: TIntegerField;
      QueryMD_SERIE: TIntegerField;
      QueryMD_LOTE: TIntegerField;
      QueryMD_COD_SEGURANCA: TStringField;
      QueryMD_COD_DIVISOR: TIntegerField;
      QueryMD_DH_EMISSAO: TSQLTimeStampField;
      QueryMD_DH_INICIO_VIAGEM: TSQLTimeStampField;
      QueryMD_VER_APLICATIVO: TStringField;
      QueryMD_COD_MUNICIPIO: TStringField;
      QueryMD_NOM_MUNICIPIO: TStringField;
      QueryMD_UF_INICIAL: TStringField;
      QueryMD_UF_FINAL: TStringField;
      QueryMD_STATUS: TIntegerField;
      QueryMD_VLR_CARGA: TFMTBCDField;
      QueryMD_COD_UNIDADE: TIntegerField;
      QueryMD_QTD_CARGA: TFMTBCDField;
      QueryMD_INF_COMPLEMENTARES: TStringField;
      QueryMD_SEF_CSTAT: TIntegerField;
      QueryMD_INF_FISCO: TStringField;
      QueryMD_SEF_RECIBO: TStringField;
      QueryMD_SEF_PROTOCOLO: TStringField;
      QueryMD_SEF_CHAVE: TStringField;
      QueryMD_SEF_XML: TMemoField;
      QueryMD_SEF_CAN_CHAVE: TStringField;
      QueryMD_SEF_CAN_RECIBO: TStringField;
      QueryMD_SEF_CAN_PROTOCOLO: TStringField;
      ACBrMDFe1: TACBrMDFe;
    ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL;
    actEnviar: TAction;
    Btn: TRzToolButton;
    RzSpacer5: TRzSpacer;
    QueryEmitenteID: TIntegerField;
    QueryEmitenteEMP_RAZAO: TStringField;
    QueryEmitenteEMP_FANTASIA: TStringField;
    QueryEmitenteEMP_CNPJ: TStringField;
    QueryEmitenteEMP_IESTADUAL: TStringField;
    QueryEmitenteEMP_UF: TStringField;
    QueryEmitenteEMP_CODIGO_UF: TIntegerField;
    QueryEmitenteEMP_ENDERECO: TStringField;
    QueryEmitenteEMP_NUMERO: TIntegerField;
    QueryEmitenteEMP_COMPLEMENTO: TStringField;
    QueryEmitenteEMP_BAIRRO: TStringField;
    QueryEmitenteEMP_CODIGO_CIDADE: TIntegerField;
    QueryEmitenteEMP_CIDADE: TStringField;
    QueryEmitenteEMP_CEP: TStringField;
    QueryEmitenteEMP_FONEFIXO: TStringField;
    QueryEmitenteEMP_EMAIL: TStringField;
    PopupMenu1: TPopupMenu;
    actPercurso: TAction;
    Percurso1: TMenuItem;
    actDocumentos: TAction;
    Documentos1: TMenuItem;
    actVeiculos: TAction;
    DadosdoVeiculo1: TMenuItem;
    actCabecalho: TAction;
    N1: TMenuItem;
    AlterarCabecalho1: TMenuItem;
    actEncerrar: TAction;
    EncerrarMDFe2: TMenuItem;
    QueryMD_SEF_ENC_PROTOCOLO: TStringField;
    QueryMD_SEF_ENC_DATA: TDateField;
    QueryMD_SEF_ENC_COD_UF: TIntegerField;
    QueryMD_SEF_ENC_COD_MUNICIPIO: TIntegerField;
    QueryMD_SEF_SQ_EVENTO: TIntegerField;
    actCancelar: TAction;
    QueryMD_SEF_CAN_DATA: TDateField;
    QueryMD_SEF_CAN_EVT_XML: TMemoField;
    N2: TMenuItem;
    CancelarMDFe1: TMenuItem;
    PopupMenu2: TPopupMenu;
    actImprimir: TAction;
    actPrintCancel: TAction;
    ImprimirCancelado1: TMenuItem;
    actPrintEnceramento: TAction;
    ImprimirEncerramento1: TMenuItem;
    QueryMD_SEF_ENC_EVT_XML: TMemoField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbEmitente: TJvDBSearchComboBox;
    DataIni: TJvDateEdit;
    Datafim: TJvDateEdit;
    Button1: TButton;
    eGrid: TJvDBGrid;
      procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
      procedure QueryAfterPost(DataSet: TDataSet);
      procedure QueryBeforeDelete(DataSet: TDataSet);
      procedure actCadastrarExecute(Sender: TObject);
      procedure actConsultarExecute(Sender: TObject);
      procedure actPreVisualizarExecute(Sender: TObject);
      procedure actSairExecute(Sender: TObject);
      procedure actCadastrarUpdate(Sender: TObject);
      procedure actAlterarUpdate(Sender: TObject);
      procedure actGravarUpdate(Sender: TObject);
      procedure eCpfEnter(Sender: TObject);
      procedure eCodigoExit(Sender: TObject);
      procedure eCodigoEnter(Sender: TObject);
      procedure Button1Click(Sender: TObject);
      procedure QueryMD_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
      procedure eGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
      procedure QueryNewRecord(DataSet: TDataSet);
      procedure actEnviarExecute(Sender: TObject);
      procedure actEnviarUpdate(Sender: TObject);
    procedure actPercursoExecute(Sender: TObject);
    procedure actDocumentosExecute(Sender: TObject);
    procedure actCabecalhoExecute(Sender: TObject);
    procedure actVeiculosExecute(Sender: TObject);
    procedure actEncerrarExecute(Sender: TObject);
    procedure actEncerrarUpdate(Sender: TObject);
    procedure ACBrMDFe1StatusChange(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actPrintCancelExecute(Sender: TObject);
    procedure actPrintEnceramentoExecute(Sender: TObject);
    procedure actPrintCancelUpdate(Sender: TObject);
    procedure actPrintEnceramentoUpdate(Sender: TObject);
    procedure actPercursoUpdate(Sender: TObject);
    procedure actCancelarUpdate(Sender: TObject);
      private
      { Private declarations }
      procedure CarregaParametrosMDFE(id : integer);
      procedure ConfiguraEmissorMDFe(id_emitente : integer);
      procedure CarregarEmitidos;
      procedure MontarEmitirMenifesto(EnviarMdfe: Boolean = false);
      function  ValidarDados : boolean;
   public
      { Public declarations }
   end;

var
   FrEmissorMDFe: TFrEmissorMDFe;

implementation

uses
   Classe.Empresa, uModuloRet, uCabecalhoMDFe, Classe.ParametrosMDFe,
  uEmissorNfeStatusSefaz, Classe.NFe, uPercursoMDFe, uDoctos,
  uVeiculoTracao, uEncerramento, Biblioteca, uEmissorMdfeCancelar;

{$R *.dfm}

procedure TFrEmissorMDFe.ACBrMDFe1StatusChange(Sender: TObject);
begin
   case ACBrMDFe1.Status of
      stMDFeIdle:
         prcStatusMessage('MDF-e', '', False);

      stMDFeStatusServico:
         begin
            prcStatusMessage('Enviando MDF-e: ', 'Aguarde... Verificando o Status do Serviço.', True);
         end;

      stMDFeRecepcao:
         begin
            prcStatusMessage('Enviando MDF-e: ' + Format('%.6d', [Query.FieldByName('md_numero').AsInteger]), 'Aguarde... Transmitindo NF-e.', True);
         end;

      stMDFeRetRecepcao:
         begin
            prcStatusMessage('Enviando MDF-e: ' + Format('%.6d', [Query.FieldByName('md_numero').AsInteger]), 'Aguarde... Recebendo dados da NF-e.', True);
         end;

      stMDFeConsulta:
         begin
            prcStatusMessage('Cosultando MDF-e: ' + Format('%.6d', [Query.FieldByName('md_numero').AsInteger]), 'Aguarde... Consultando NF-e', True);
         end;
   end;
end;

procedure TFrEmissorMDFe.actAlterarUpdate(Sender: TObject);
begin
   if Query.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not(Query.State in [dsInsert, dsEdit]);
end;

procedure TFrEmissorMDFe.actCabecalhoExecute(Sender: TObject);
begin
   Query.Edit;

   FrCabecalhoMDFe := TFrCabecalhoMDFe.Create(self);
   try
      if FrCabecalhoMDFe.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel
   finally
      FreeAndNil(FrCabecalhoMDFe);
   end;
end;

procedure TFrEmissorMDFe.actCadastrarExecute(Sender: TObject);
begin
   Query.Insert;

   FrCabecalhoMDFe := TFrCabecalhoMDFe.Create(self);
   try
      if FrCabecalhoMDFe.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel
   finally
      FreeAndNil(FrCabecalhoMDFe);
   end;
end;

procedure TFrEmissorMDFe.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not(Query.State in [dsInsert, dsEdit]);
end;

procedure TFrEmissorMDFe.actCancelarExecute(Sender: TObject);
var
   sTextoCancelar: String;
begin
   FrEmissorMdfeCancelar := TFrEmissorMdfeCancelar.Create(self);
   try
      if FrEmissorMdfeCancelar.ShowModal = mrCancel then
         Abort
      else
         sTextoCancelar := FrEmissorMdfeCancelar.eJustificativa.Text;
   finally
      FreeAndNil(FrEmissorMdfeCancelar);
   end;

   if Application.MessageBox('Tem certeza que deseja cancela este manifesto?', 'TechCore-PDV', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Prepara o objeto
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromString(Query.FieldByName('md_sef_xml').AsString);

   // Prepara o objeto evento
   ACBrMDFe1.EventoMDFe.Evento.Clear;

   // Cria o eento a ser enviado
   with ACBrMDFe1.EventoMDFe.Evento.New do
   begin
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCancelamento;
      infEvento.detEvento.xJust := sTextoCancelar;
   end;

   prcStatusMessage('Solicitando o Cancelamento da MDF-e: ' + Format('%.6d', [Query.FieldByName('md_numero').AsInteger]), 'Aguarde... Enviando Cancelamento da NF-e.', True);

   // Envia o pedido de cancelamento
   ACBrMDFe1.EnviarEvento(Query.FieldByName('md_lote').AsInteger);

   // Checa o retorno do cancelamento
   if ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [135, 136, 155] then
   begin

      if ACBrMDFe1.Consultar then
      begin

         try
            // Armazena os dados de retorno do cancelamento
            Query.Edit;
            Query.FieldByName('md_sef_can_data').AsDateTime      := ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
            Query.FieldByName('md_sef_can_protocolo').AsString   := ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
            Query.FieldByName('md_sef_can_evt_xml').AsAnsiString := ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.Xml;
            Query.FieldByName('md_status').AsInteger             := 3;
            Query.Post;

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

procedure TFrEmissorMDFe.actCancelarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not (Query.IsEmpty) and (Query.FieldByName('md_status').AsInteger = 2);
end;

procedure TFrEmissorMDFe.actPercursoExecute(Sender: TObject);
begin
   FrPercurso := TFrPercurso.Create(self);
   try
      FrPercurso.ShowModal;
   finally
      FreeAndNil(FrPercurso);
   end;
end;

procedure TFrEmissorMDFe.actPercursoUpdate(Sender: TObject);
begin
   TAction(sender).Enabled := not(Query.IsEmpty) and (Query.FieldByName('md_status').AsInteger in [0,1]);
end;

procedure TFrEmissorMDFe.actPreVisualizarExecute(Sender: TObject);
begin
   // Valida os dados antes de continuar
   if not ValidarDados then
      Abort;

   // Gera o manifesto e efetua a impressão
   if Query.FieldByName('md_status').AsInteger < 2 then
   begin
      MontarEmitirMenifesto;

      ACBrMDFe1.Manifestos.Clear;
      ACBrMDFe1.Manifestos.LoadFromString(Query.FieldByName('md_sef_xml').AsString);
      ACBrMDFe1.Manifestos.Imprimir;
   end
   else
   begin
      ACBrMDFe1.Manifestos.Clear;
      ACBrMDFe1.Manifestos.LoadFromString(Query.FieldByName('md_sef_xml').AsString);
      ACBrMDFe1.Manifestos.Imprimir;
   end;
end;

procedure TFrEmissorMDFe.actPrintCancelExecute(Sender: TObject);
begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromString(Query.FieldByName('md_sef_xml').AsString);

   ACBrMDFe1.EventoMDFe.Evento.Clear;
   ACBrMDFe1.EventoMDFe.LerXMLFromString(Query.FieldByName('md_sef_can_evt_xml').AsString);
   ACBrMDFe1.ImprimirEvento;
end;

procedure TFrEmissorMDFe.actPrintCancelUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := Query.FieldByName('md_sef_can_evt_xml').AsString <> EmptyStr;
end;

procedure TFrEmissorMDFe.actPrintEnceramentoExecute(Sender: TObject);
begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromString(Query.FieldByName('md_sef_xml').AsString);

   ACBrMDFe1.EventoMDFe.Evento.Clear;
   ACBrMDFe1.EventoMDFe.LerXMLFromString(Query.FieldByName('md_sef_enc_evt_xml').AsString);
   ACBrMDFe1.ImprimirEvento;
end;

procedure TFrEmissorMDFe.actPrintEnceramentoUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Query.FieldByName('md_sef_enc_evt_xml').AsString <> EmptyStr;
end;

procedure TFrEmissorMDFe.actConsultarExecute(Sender: TObject);
begin
   try
      ACBrMDFe1.Manifestos.Clear;
      ACBrMDFe1.Manifestos.LoadFromString(Query.FieldByName('md_sef_xml').AsString);

      if ACBrMDFe1.Consultar then
      begin

         {
           0 : Text := 'Em digitação'; // Sem número
           1 : Text := 'Em digitação'; // Com número
           2 : Text := 'Autorizada';
           3 : Text := 'Cancelada';
           4 : Text := 'Rejeitada';
           5 : Text := 'Denegada';
         }
         case (ACBrMDFe1.WebServices.Consulta.cStat) of
            100:
               begin
                  try
                     Query.Edit;
                     Query.FieldByName('MD_DH_EMISSAO').AsDateTime  := ACBrMDFe1.WebServices.Consulta.DhRecbto;
                     Query.FieldByName('MD_SEF_PROTOCOLO').AsString := ACBrMDFe1.WebServices.Consulta.Protocolo;
                     Query.FieldByName('MD_STATUS').Asinteger       := 2; // Autorizado o uso do mdfe
                     Query.Post;
                  except
                     Query.Cancel;
                     Raise Exception.Create('Erro ao atualiza o XML na base de dados');
                  end;
               end;

            101:
               begin
                  try
                     Query.Edit;
                     Query.FieldByName('MD_DH_EMISSAO').AsDateTime        := ACBrMDFe1.WebServices.Consulta.DhRecbto;
                     Query.FieldByName('MD_SEF_CAN_EVT_XML').AsAnsiString := ACBrMDFe1.WebServices.Consulta.procEventoMDFe.Items[0].RetEventoMDFe.XML;
                     Query.FieldByName('MD_SEF_CAN_CHAVE').AsString       := ACBrMDFe1.WebServices.Consulta.MDFeChave;
                     Query.FieldByName('MD_SEF_CAN_PROTOCOLO').AsString   := ACBrMDFe1.WebServices.Consulta.Protocolo;
                     Query.FieldByName('MD_STATUS').Asinteger             := 3; // mdfe cancelado
                     Query.Post;
                  except
                     Query.Cancel;
                     Raise Exception.Create('Erro ao atualiza o XML na base de dados');
                  end;
               end;

            110:
               begin
                  try
                     Query.Edit;
                     Query.FieldByName('MD_SEF_XML').AsString       := ACBrMDFe1.Manifestos.Items[0].Xml;
                     Query.FieldByName('MD_SEF_CHAVE').AsString     := ACBrMDFe1.WebServices.Consulta.MDFeChave;
                     Query.FieldByName('MD_SEF_PROTOCOLO').AsString := ACBrMDFe1.WebServices.Consulta.Protocolo;
                     Query.FieldByName('MD_STATUS').Asinteger       := 5; // mdfe denegada
                     Query.Post;
                  except
                     Query.Cancel;
                     Raise Exception.Create('Erro ao atualiza o XML na base de dados');
                  end;
               end;

            132:
               begin
                  try
                     Query.Edit;
                     Query.FieldByName('MD_SEF_ENC_EVT_XML').AsAnsiString := ACBrMDFe1.WebServices.Consulta.procEventoMDFe.Items[0].RetEventoMDFe.XML;
                     Query.FieldByName('MD_SEF_ENC_PROTOCOLO').AsString   := ACBrMDFe1.WebServices.Consulta.procEventoMDFe.Items[0].RetEventoMDFe.InfEvento.detEvento.nProt;
                     Query.FieldByName('MD_SEF_ENC_DATA').AsDateTime      := ACBrMDFe1.WebServices.Consulta.procEventoMDFe.Items[0].RetEventoMDFe.InfEvento.dhEvento;
                     Query.FieldByName('MD_STATUS').Asinteger             := 6; // mdfe encerrada
                     Query.Post;
                  except
                     Query.Cancel;
                     Raise Exception.Create('Erro ao atualiza o XML na base de dados');
                  end;
               end;
         end;

         FrEmissorNfeStatusSefaz := TFrEmissorNfeStatusSefaz.Create(self);

         // Ajusta o formulário para o detalhamento do mdfe
         FrEmissorNfeStatusSefaz.Caption         := 'MDF-e Emissor de manifestos eletronicos.';
         FrEmissorNfeStatusSefaz.lTitulo.Caption := 'Situação do Manifesto na Sefaz.';

         FrEmissorNfeStatusSefaz.MemoDados.Clear;
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('');
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('SITUAÇÃO DO MANIFESTO NO SEFAZ:');
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('Chave............: ' + ACBrMDFe1.WebServices.Consulta.MDFeChave);
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('Protocolo........: ' + ACBrMDFe1.WebServices.Consulta.Protocolo);
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('Código Retorno...: ' + IntToStr(ACBrMDFe1.WebServices.Consulta.cStat));
         FrEmissorNfeStatusSefaz.MemoDados.Lines.Add('Situação.........: ' + ACBrMDFe1.WebServices.Consulta.xMotivo);
         FrEmissorNfeStatusSefaz.ShowModal;

      end;

   finally
      FreeAndNil(FrEmissorNfeStatusSefaz);
   end;
end;

procedure TFrEmissorMDFe.actDocumentosExecute(Sender: TObject);
begin
   FrDoctos := TFrDoctos.Create(self);
   try
      FrDoctos.ShowModal;
   finally
      FreeAndNil(FrDoctos);
   end;
end;

procedure TFrEmissorMDFe.actEncerrarExecute(Sender: TObject);
begin
   FrEncerramento         := TFrEncerramento.Create(self);
   FrEncerramento.UfFinal := Query.FieldByName('md_uf_final').AsString;
   try

      if FrEncerramento.ShowModal = mrOk then
      begin

         ACBrMDFe1.Manifestos.Clear;
         ACBrMDFe1.Manifestos.LoadFromString(Self.Query.FieldByName('md_sef_xml').AsString);
         ACBrMDFe1.EventoMDFe.Evento.Clear;

         with ACBrMDFe1.EventoMDFe.Evento.New do
         begin
           infEvento.chMDFe     := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.chMDFe;
           infEvento.CNPJCPF    := QueryEmitente.FieldByName('emp_cnpj').AsString;
           infEvento.dhEvento   := now;
           infEvento.tpEvento   := teEncerramento;
           infEvento.nSeqEvento := 1;

           infEvento.detEvento.nProt := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
           infEvento.detEvento.dtEnc := FrEncerramento.RzDateTimeEdit1.Date;
           infEvento.detEvento.cUF   := FrEncerramento.cbUF.Value.ToInteger();
           infEvento.detEvento.cMun  := FrEncerramento.Query.FieldByName('id').AsInteger;
         end;

         if ACBrMDFe1.EnviarEvento(Query.FieldByName('md_lote').AsInteger) then
         begin

            if ACBrMDFe1.Consultar then
            begin

               try
                  // Armazena os dados de retorno do cancelamento
                  Query.Edit;
                  Query.FieldByName('md_sef_enc_data').AsDateTime      := ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
                  Query.FieldByName('md_sef_enc_protocolo').AsString   := ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
                  Query.FieldByName('md_sef_enc_env_xml').AsAnsiString := ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.Xml;
                  Query.FieldByName('md_status').AsInteger             := 6;

                  Query.Post;

                  Application.MessageBox('Cancelamento efetuado com sucesso.', 'TechCore-RTG', mb_IconInformation or mb_ok);

               except
                  on E: Exception do
                     Application.MessageBox('Cancelamento efetuado com sucesso, porem houveram erros ao atualizar o banco de dados.', 'TechCore-RTG', mb_IconInformation or mb_ok);
               end;

            end
            else
               raise Exception.Create('Cancelamento efetuado com sucesso, porem houveram erros ao atualizar o banco de dados.');
         end;

      end;
   finally
      FreeAndNil(FrEncerramento);
   end;
end;

procedure TFrEmissorMDFe.actEncerrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := Query.FieldByName('md_status').AsInteger = 2;
end;

procedure TFrEmissorMDFe.actEnviarExecute(Sender: TObject);
begin
   // Valida os dados antes de continuar
   if not ValidarDados then
      Abort;

   // Gera o manifesto e envia
   MontarEmitirMenifesto(true);
end;

procedure TFrEmissorMDFe.actEnviarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not(Query.IsEmpty) and (Query.FieldByName('md_status').AsInteger in [0,1]);
end;

procedure TFrEmissorMDFe.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not(Query.IsEmpty);
end;

procedure TFrEmissorMDFe.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrEmissorMDFe.actVeiculosExecute(Sender: TObject);
begin
   FrVeiculoTracao := TFrVeiculoTracao.Create(self);
   try
      FrVeiculoTracao.ShowModal;
   finally
      FreeAndNil(FrVeiculoTracao);
   end;
end;

procedure TFrEmissorMDFe.Button1Click(Sender: TObject);
begin
   // configura o emissor
   ConfiguraEmissorMDFe(QueryEmitente.FieldByName('id').AsInteger);

   // exibe os emitidos
   CarregarEmitidos;
end;

procedure TFrEmissorMDFe.CarregaParametrosMDFE(id: integer);
begin
  // Carrega os parâmetros para empresa selecionada
   if not Assigned(ClassParametroMDFe) then
      ClassParametroMDFe := TParametrosMDFe.Create(id)
   else
   begin
      FreeAndNil(ClassParametroMDFe);
      ClassParametroMDFe := TParametrosMDFe.Create(id)
   end;
end;

procedure TFrEmissorMDFe.CarregarEmitidos;
begin
   // Carrega todos os mdfes emitidos no período acima
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('select');
   Query.SQL.Add('   *');
   Query.SQL.Add('from');
   Query.SQL.Add('   C000700');
   Query.SQL.Add('where');
   Query.SQL.Add('   id_emp = :id');
   Query.SQL.Add('and');
   Query.SQL.Add('   md_tip_ambiente = :tipo_ambiente');
   Query.SQL.Add('and');
   Query.SQL.Add('   Cast(md_dh_emissao as Date) between :a_data and :b_data');
   Query.SQL.Add('order by');
   Query.SQL.Add('   id desc');

   Query.ParamByName('a_data').AsDateTime       := DataIni.Date;
   Query.ParamByName('b_data').AsDateTime       := DataFim.Date;
   Query.ParamByName('id').AsInteger            := QueryEmitente.FieldByName('id').AsInteger;
   Query.ParamByName('tipo_ambiente').AsInteger := ClassParametroMDFe.Ambiente;
   Query.Open();
end;

procedure TFrEmissorMDFe.ConfiguraEmissorMDFe(id_emitente : integer);
begin

   // Carrega os parâmetros para empresa selecionada
   CarregaParametrosMDFE(QueryEmitente.FieldByName('id').AsInteger);

   // Configura o visual do emissor
   case ClassParametroMDFe.Ambiente of
      0:
         begin
            lbTitulo.Caption := 'MDF-e - Ambiente de Produção';
            lbTitulo.Font.Color := clGreen;
         end;

      1:
         begin
            lbTitulo.Caption := 'MDF-e - Ambiente de Homologação';
            lbTitulo.Font.Color := clMaroon;
         end;
   end;

   // Parâemtros da nota fiscal
   if not Assigned(ConfigNFe) then
      ConfigNFe := TParametrosNFe.Create(id_emitente);

   with ACBrMDFe1.Configuracoes do
   begin

      // certificado
      Certificados.NumeroSerie := ConfigNFe.NFe_Certificado; // usar o padrão da nota fiscal

      // webservice
      WebServices.UF                       := ConfigNFe.NFe_WebServer; // Usar padrão da nota fiscal
      WebServices.Visualizar               := False;
      WebServices.Salvar                   := False;
      WebServices.TimeOut                  := 10000;
      WebServices.AguardarConsultaRet      := 5000;
      WebServices.Tentativas               := 5;
      WebServices.IntervaloTentativas      := 3000;
      WebServices.AjustaAguardaConsultaRet := False;
      WebServices.Ambiente                 := TpcnTipoAmbiente(ClassParametroMDFe.Ambiente);

      // Determina a forma de emissão da nota fiscal
      Geral.FormaEmissao := TpcnTipoEmissao(ClassParametroMDFe.TipoEmissao);

      // diretórios e outros
      arquivos.SepararPorCNPJ   := True;
      arquivos.SepararPorMes    := True;
      arquivos.AdicionarLiteral := True;
      arquivos.Salvar           := False;
      arquivos.PathSalvar       := ClassParametroMDFe.PathLog;
      arquivos.PathSchemas      := ClassParametroMDFe.PathXSD;

      // forma de comunicação com o webservice
      Geral.SSLLib        := libWinCrypt;
      Geral.SSLCryptLib   := cryWinCrypt;
      Geral.SSLHttpLib    := httpWinHttp;
      Geral.SSLXmlSignLib := xsMsXml;

   end;

   // Determina o nível criptografia utiliza na comunicação com o servidor
   ACBrMDFe1.SSL.SSLType := TSSLType(ConfigNFe.NFe_SSLType);

   // Descarrega da memória os certificados digitis
   ACBrMDFe1.SSL.DescarregarCertificado;

   // Formato de impressão
   ACBrMDFe1.DAMDFE.TipoDAMDFe := TpcnTipoImpressao(ClassParametroMDFe.TipoDanfe);

   // Exibe o site do emitente no cabeçalho
   ACBrMDFe1.DAMDFE.Site := FEmpresaClass.Site;

   // Exibe os dados do desenvolvedor
   ACBrMDFe1.DAMDFE.Sistema := 'TechCore-RTG';

   // Exibe o logo tipo na danfe
   if Assigned(ConfigNFe.NFe_Logotipo) then
      ACBrMDFe1.DAMDFE.Logo := ConfigNFe.NFe_Logotipo.DataString;
end;

procedure TFrEmissorMDFe.eCodigoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TFrEmissorMDFe.eCodigoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrEmissorMDFe.eCpfEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TFrEmissorMDFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(FrEmissorMDFe);
end;

procedure TFrEmissorMDFe.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   { Se houver registro em inclusão ou alteração, imprede a saida }
   if Query.State in [dsInsert, dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrEmissorMDFe.FormCreate(Sender: TObject);
begin

   // Ajusta as larguras do grid
   eGrid.Columns[0].Width := 64;
   eGrid.Columns[1].Width := 43;
   eGrid.Columns[2].Width := 135;
   eGrid.Columns[3].Width := 135;
   eGrid.Columns[4].Width := 110;

   // Carrega os emitentes
   QueryEmitente.Close;
   QueryEmitente.SQL.Clear;
   QueryEmitente.SQL.Add('Select');
   QueryEmitente.SQL.Add(' id, emp_razao,     emp_fantasia, emp_cnpj,   emp_iestadual,   emp_uf,');
   QueryEmitente.SQL.Add(' emp_codigo_uf,     emp_endereco, emp_numero, emp_complemento, emp_bairro,');
   QueryEmitente.SQL.Add(' emp_codigo_cidade, emp_cidade,   emp_cep,    emp_fonefixo,    emp_email');
   QueryEmitente.SQL.Add('from');
   QueryEmitente.SQL.Add(' C000501');
   QueryEmitente.SQL.Add('where');
   QueryEmitente.SQL.Add(' emp_status = 1');
   QueryEmitente.SQL.Add('order by id');
   QueryEmitente.Open();

   // Posiciona o cursor na empresa selecionad na abertura do sistema
   QueryEmitente.Locate('id', FEmpresaClass.ID, []);

   // Ajusta as datas
   DataIni.Date := IncDay(Date,-30);
   DataFim.Date := Date;

   // configura o emissor
   ConfiguraEmissorMDFe(QueryEmitente.FieldByName('id').AsInteger);

   // Carrega os mdfes emitidos
   CarregarEmitidos;
end;

procedure TFrEmissorMDFe.eGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Query.IsEmpty then
      exit;

   if Column.Title.Caption = 'Status' then
   begin

      // Efetua a coloração de acordo o status
      case Query.FieldByName('md_status').Asinteger of
         0 : begin
               (Sender as TDBGrid).Canvas.Font.Color := clBlack;
               (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
            end;

         1 : begin
               (Sender as TDBGrid).Canvas.Font.Color  := clBlack;
               (Sender as TDBGrid).Canvas.Brush.Color := $0018C8E7;
            end;

         2 : begin
               (Sender as TDBGrid).Canvas.Font.Color  := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := $00408000;
            end;

         3 : begin
               (Sender as TDBGrid).Canvas.Font.Color  := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := clBlack;
            end;

         4 : begin
               (Sender as TDBGrid).Canvas.Font.Color  := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := clMaroon;
            end;

         5 : begin
               (Sender as TDBGrid).Canvas.Font.Color  := clWindow;
               (Sender as TDBGrid).Canvas.Brush.Color := $000071E1;
            end;

         6 : begin
               (Sender as TDBGrid).Canvas.Font.Color  := clBlack;
               (Sender as TDBGrid).Canvas.Brush.Color := clOlive;
            end;
      end;

      { Pinta o Grid }
      (Sender as TDBGrid).Canvas.FillRect(Rect);
      (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

   end;

end;

procedure TFrEmissorMDFe.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := Query.State in [dsInsert, dsEdit];
end;

procedure TFrEmissorMDFe.QueryAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrEmissorMDFe.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?', 'TechCore-RTG', mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrEmissorMDFe.QueryMD_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if (DisplayText) and (not Query.IsEmpty) then
   begin
      case Sender.Asinteger of
         0 : Text := 'Em Digitação';
         1 : Text := 'Aguardando';
         2 : Text := 'Autorizado';
         3 : Text := 'Cancelado';
         4 : Text := 'Rejeitado';
         5 : Text := 'Denegado';
         6 : Text := 'Encerrado';
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrEmissorMDFe.QueryNewRecord(DataSet: TDataSet);
begin
   // Carrega os parâmetros para empresa selecionada no momento da emissão
   CarregaParametrosMDFE(QueryEmitente.FieldByName('id').AsInteger);

   Query.FieldByName('id_emp').AsInteger            := QueryEmitente.FieldByName('id').AsInteger;
   Query.FieldByName('md_numero').AsInteger         := 0;
   Query.FieldByName('md_status').AsInteger         := 0;
   Query.FieldByName('md_tip_ambiente').AsInteger   := ClassParametroMDFe.Ambiente;
   Query.FieldByName('md_dh_emissao').AsDateTime    := Now;
   Query.FieldByName('md_serie').AsInteger          := ClassParametroMDFe.nSerie;
   Query.FieldByName('md_lote').AsInteger           := ClassParametroMDFe.nLote;
   Query.FieldByName('md_tip_emitente').AsInteger   := 1;
   Query.FieldByName('md_modelo').AsInteger         := ClassParametroMDFe.Modelo;
   Query.FieldByName('md_tip_emissao').AsInteger    := ClassParametroMDFe.TipoEmissao;
   Query.FieldByName('md_tip_aplicativo').AsInteger := 1;
   Query.FieldByName('md_ver_aplicativo').AsString  := '1.0';

end;

function TFrEmissorMDFe.ValidarDados : boolean;
var
   xQuery : TFDQuery;
   ID : integer;
begin
   Result := false;

   // checa se todos os dados foram preenchidos antes de enviar
   xQuery            := TFDQuery.Create(self);
   xQuery.Connection := FrModuloRet.DBConexao;
   try

      // percurso
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('select 1 from C000702 where id_C000700 = :id');
      xQuery.ParamByName('id').AsInteger := Query.FieldByName('id').AsInteger;
      xQuery.Open();

      if xQuery.IsEmpty then
      begin
         Application.MessageBox('Não foram informados os percursos do transporte.','TechCore-RTG',mb_IconWarning or mb_ok);
         Abort;
      end;

      // documentos
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('select id from C000705 where id_C000700  = :id');
      xQuery.ParamByName('id').AsInteger := Query.FieldByName('id').AsInteger;
      xQuery.Open();

      if xQuery.IsEmpty then
      begin
         Application.MessageBox('Informe o(s) município(s) de descarga do transporte no meu "Documentos".','TechCore-RTG',mb_IconWarning or mb_ok);
         Abort;
      end
      else
         ID := xQuery.FieldByName('id').AsInteger;

      // chaves das notas fiscais
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('select id from C000706 where id_C000705 = :id');
      xQuery.ParamByName('id').AsInteger := ID;
      xQuery.Open();

      if xQuery.IsEmpty then
      begin
         Application.MessageBox('Informe a(s) chave(s) da(s) nota(s) fiscais.','TechCore-RTG',mb_IconWarning or mb_ok);
         Abort;
      end;

      // veículos
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('select id from C000703 where id_C000700 = :id');
      xQuery.ParamByName('id').AsInteger := Query.FieldByName('id').AsInteger;
      xQuery.Open();

      if xQuery.IsEmpty then
      begin
         Application.MessageBox('Informe os dados do veículo utrilizado no transporte.','TechCore-RTG',mb_IconWarning or mb_ok);
         Abort;
      end
      else
         ID :=  xQuery.FieldByName('id').AsInteger;

      // motoristas
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('select id from C000704 where id_C000703 = :id');
      xQuery.ParamByName('id').AsInteger := ID;
      xQuery.Open();

      if xQuery.IsEmpty then
      begin
         Application.MessageBox('É necessário Informar o(s) motorista(s).','TechCore-RTG',mb_IconWarning or mb_ok);
         Abort;
      end;

      Result := true;

   finally
      FreeAndNil(xQuery);
   end;
end;

procedure TFrEmissorMDFe.MontarEmitirMenifesto(EnviarMdfe: Boolean);
var
   nMdf, IDCondutor, QtdeNfe : integer;
   cQuery, xQuery : TFDQuery;
begin
   QtdeNfe := 0;

   // configura o emissor
   ConfiguraEmissorMDFe(QueryEmitente.FieldByName('id').AsInteger);

   ACBrMDFe1.Manifestos.Clear;

   // Gera o código da segurança, caso não exista (gera uma nova chave)
   if Query.FieldByName('md_cod_seguranca').IsNull then
   begin
      nMdf := GerarCodigoDFe(Random(999999));
      Query.Edit;
      Query.FieldByName('md_cod_seguranca').AsInteger := nMdf;
      Query.FieldByName('md_status').AsInteger        := 1;
      Query.Post;
   end
   else
      nMdf := Query.FieldByName('md_cod_seguranca').AsInteger;

   with ACBrMDFe1.Manifestos.Add.MDFe do
   begin

      Ide.cUF     := QueryEmitente.FieldByName('emp_codigo_uf').AsInteger;
      Ide.tpAmb   := TpcnTipoAmbiente(ClassParametroMDFe.Ambiente);
      Ide.tpEmit  := TTpEmitenteMDFe(Query.FieldByName('md_tip_emitente').AsInteger);
      ide.modelo  := ClassParametroMDFe.Modelo.ToString;
      Ide.serie   := ClassParametroMDFe.nSerie;
      Ide.nMDF    := Query.FieldByName('md_numero').AsInteger;
      Ide.cMDF    := nMdf;

      // TMDFeModal = ( moRodoviario, moAereo, moAquaviario, moFerroviario );
      Ide.modal       := TModalMDFe(Query.FieldByName('md_tip_modal').AsInteger);
      Ide.dhEmi       := Query.FieldByName('md_dh_emissao').AsDateTime;
      Ide.dhIniViagem := Query.FieldByName('md_dh_inicio_viagem').AsDateTime;

      // TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
      Ide.tpEmis  := TpcnTipoEmissao(Query.FieldByName('md_tip_emissao').AsInteger);

      // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
      Ide.procEmi := peAplicativoContribuinte;
      Ide.verProc := '1.0';
      Ide.UFIni   := Query.FieldByName('md_uf_inicial').AsString;
      Ide.UFFim   := Query.FieldByName('md_uf_final').AsString;;

      with Ide.infMunCarrega.New do
      begin
         cMunCarrega := Query.FieldByName('md_cod_municipio').AsInteger;
         xMunCarrega := Query.FieldByName('md_nom_municipio').AsString;
      end;

      Emit.CNPJCPF := QueryEmitente.FieldByName('emp_cnpj').AsString;
      Emit.IE      := QueryEmitente.FieldByName('emp_iestadual').AsString;
      Emit.xNome   := QueryEmitente.FieldByName('emp_razao').AsString;
      Emit.xFant   := QueryEmitente.FieldByName('emp_fantasia').AsString;

      Emit.EnderEmit.xLgr    := QueryEmitente.FieldByName('emp_endereco').AsString;
      Emit.EnderEmit.nro     := QueryEmitente.FieldByName('emp_numero').AsString;
      Emit.EnderEmit.xCpl    := QueryEmitente.FieldByName('emp_complemento').AsString;
      Emit.EnderEmit.xBairro := QueryEmitente.FieldByName('emp_bairro').AsString;
      Emit.EnderEmit.cMun    := QueryEmitente.FieldByName('emp_codigo_cidade').AsInteger;
      Emit.EnderEmit.xMun    := QueryEmitente.FieldByName('emp_cidade').AsString;
      Emit.EnderEmit.CEP     := QueryEmitente.FieldByName('emp_cep').AsInteger;
      Emit.EnderEmit.UF      := QueryEmitente.FieldByName('emp_uf').AsString;
      Emit.EnderEmit.fone    := QueryEmitente.FieldByName('emp_fonefixo').AsString;
      Emit.enderEmit.email   := QueryEmitente.FieldByName('emp_email').AsString;

      // Carrega os dados do veículo de tração
      xQuery            := TFDQuery.Create(self);
      xQuery.Connection := FrModuloRet.DBConexao;
      cQuery            := TFDQuery.Create(self);
      cQuery.Connection := FrModuloRet.DBConexao;

      try
         // Percurso
         xQuery.Close;
         xQuery.SQL.Clear;
         xQuery.SQL.Add('select * from c000702 where id_c000700 = :id');
         xQuery.ParamByName('id').AsInteger := Query.FieldByName('id').AsInteger;
         xQuery.Open();
         xQuery.First;

         repeat
            with Ide.infPercurso.New do
            begin
               UFPer := xQuery.FieldByName('md_percurso').AsString;
               xQuery.Next;
            end;
         until (xQuery.Eof);

         // Veiculo de tração
         xQuery.Close;
         xQuery.SQL.Clear;
         xQuery.SQL.Add('select * from c000703 where id_c000700 = :id');
         xQuery.ParamByName('id').AsInteger := Query.FieldByName('id').AsInteger;
         xQuery.Open();

         rodo.veicTracao.placa   := xQuery.FieldByName('md_veic_placa').AsString;
         rodo.veicTracao.RENAVAM := xQuery.FieldByName('md_veic_renavam').AsString;
         rodo.veicTracao.tara    := xQuery.FieldByName('md_tara').AsInteger;
         rodo.veicTracao.capKG   := xQuery.FieldByName('md_tara').AsInteger;
         rodo.veicTracao.capM3   := xQuery.FieldByName('md_cap_m3').AsInteger;
         rodo.veicTracao.UF      := xQuery.FieldByName('md_uf').AsString;

         // TpcteTipoRodado = (trNaoAplicavel, trTruck, trToco, trCavaloMecanico, trVAN, trUtilitario, trOutros);
         // Para o MDF-e não utilizar o trNaoAplicavel.
         rodo.veicTracao.tpRod :=   TpcteTipoRodado(xQuery.FieldByName('md_tip_rod').AsInteger);

         // TpcteTipoCarroceria = (tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider);
         rodo.veicTracao.tpCar := TpcteTipoCarroceria(xQuery.FieldByName('md_tip_carro').AsInteger);

         // ID do condutor
         IDCondutor := xQuery.FieldByName('id').AsInteger;

         xQuery.Close;
         xQuery.SQL.Clear;
         xQuery.SQL.Add('select * from c000704 where id_c000703 = :id');
         xQuery.ParamByName('id').AsInteger := IDCondutor;
         xQuery.Open();
         xQuery.First;

         repeat
            with rodo.veicTracao.condutor.New do
            begin
               xNome := xQuery.FieldByName('md_condutor_nome').AsString;
               CPF   := xQuery.FieldByName('md_condutor_cpf').AsString;
            end;

            // próximo registro
            xQuery.Next;
         until (xQuery.Eof);

         // Município de descarga
         xQuery.Close;
         xQuery.SQL.Clear;
         xQuery.SQL.Add('select * from c000705 where id_c000700 = :id');
         xQuery.ParamByName('id').AsInteger := Query.FieldByName('id').AsInteger;
         xQuery.Open();
         xQuery.First;

         repeat
            with infDoc.infMunDescarga.New do
            begin
               cMunDescarga := xQuery.FieldByName('md_cMunDescarga').AsInteger;
               xMunDescarga := xQuery.FieldByName('md_xMunDescarga').AsString;

               cQuery.Close;
               cQuery.SQL.Clear;
               cQuery.SQL.Add('select * from c000706 where id_c000705 = :id');
               cQuery.ParamByName('id').AsInteger := xQuery.FieldByName('id').AsInteger;
               cQuery.Open();
               cQuery.First;

               repeat

                  infNFe.New.chNFe := cQuery.FieldByName('md_chave_nfe').AsString;
                  cQuery.Next;

                  // Acrescenta a quantidade de nfe
                  Inc(QtdeNfe);

               until (cQuery.Eof);

            end;

            xQuery.Next;
         until (xQuery.Eof);

      finally
         FreeAndNil(xQuery);
      end;

      tot.qNFe   := QtdeNfe;
      tot.vCarga := Query.FieldByName('md_vlr_carga').AsFloat;

      // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);
      tot.cUnid  := TUnidMed(Query.FieldByName('md_cod_unidade').AsInteger);
      tot.qCarga := Query.FieldByName('md_qtd_carga').AsFloat;

      infAdic.infCpl     := Query.FieldByName('md_inf_complementares').AsString;
      infAdic.infAdFisco := Query.FieldByName('md_inf_fisco').AsString;

   end;

   // Gera o arquivo XML
   ACBrMDFe1.Manifestos.GerarMDFe;

   // Grava o arquivi xml na base de dados
   Query.Edit;
   Query.FieldByName('md_status').AsInteger   := 1;
   Query.FieldByName('md_sef_chave').AsString := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.Id,5,50);
   Query.FieldByName('md_sef_xml').AsString   := ACBrMDFe1.Manifestos.Items[0].XML;
   Query.Post;

   // Checa se é somente impressão ou envio
   if EnviarMdfe then
   begin

      if ACBrMDFe1.Enviar(1) then
      begin
         // Grava os dados de retorno b=na base de dados
         if ACBrMDFe1.WebServices.Retorno.cStat = 100 then
         begin
            Query.Edit;
            Query.FieldByName('md_status').AsInteger := 2;
            Query.FieldByName('md_sef_xml').AsString := ACBrMDFe1.Manifestos.Items[0].XML;
            Query.FieldByName('md_sef_recibo').AsString    := ACBrMDFe1.WebServices.Retorno.Protocolo;
            Query.FieldByName('md_sef_protocolo').AsString := ACBrMDFe1.WebServices.Retorno.Protocolo;
            Query.Post;
         end;

      end
      else
      Application.MessageBox('Erro ao enviar o manifesteo para a sefaz','TechCore-RTG',mb_IconStop or mb_ok);

   end;

end;

end.
