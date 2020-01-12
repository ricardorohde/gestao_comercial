unit uRegrasTributacao;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RzPanel, RzButton,
   Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExControls, JvDBLookup,
   Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzRadGrp, RzDBRGrp, Vcl.Grids,
   Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, JvExComCtrls,
   JvComCtrls, System.Actions, Vcl.ActnList,
   Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, JvExMask, JvToolEdit,
   JvBaseEdits, JvDBControls, RzTabs, JvExExtCtrls, JvBevel, RzCmboBx,
   RzDBCmbo, RzRadChk, RzDBChk, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
   FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, JvDataSource,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Buttons,
   JvExStdCtrls, JvEdit;

type
   TFrRegrasTributacao = class(TForm)
      ActionManager1: TActionManager;
      actCadastrar: TAction;
      actAlterar: TAction;
      actExcluir: TAction;
      actGravar: TAction;
      actCancelar: TAction;
      actSair: TAction;
      RzPanel1: TRzPanel;
      pgControl: TJvPageControl;
      tabPrincipal: TTabSheet;
      gGrid: TJvDBGrid;
      tabDetalhes: TTabSheet;
      RzPanel2: TRzPanel;
      Label8: TLabel;
      Label9: TLabel;
      Bevel3: TBevel;
      Image2: TImage;
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
      RzPanel3: TRzPanel;
      eOperacao: TRzDBComboBox;
      Label1: TLabel;
      Label2: TLabel;
      eFinalidade: TRzDBComboBox;
      Label3: TLabel;
      JvBevel1: TJvBevel;
      lbRegimeTrib: TLabel;
      pgControlTrib: TRzPageControl;
      tabICMsJ: TRzTabSheet;
      tabICMsF: TRzTabSheet;
      tabIPI: TRzTabSheet;
      tabPIS: TRzTabSheet;
      tabCofins: TRzTabSheet;
      Label5: TLabel;
      eCfopPJ: TRzDBEdit;
      Label6: TLabel;
      RzGroupBox1: TRzGroupBox;
      Label7: TLabel;
      eICMsMod: TRzDBComboBox;
      Label10: TLabel;
      eICMSAliqPJ: TJvDBCalcEdit;
      Label11: TLabel;
      eICMSRedBasCalc: TJvDBCalcEdit;
      RzGroupBox2: TRzGroupBox;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      eICMsSTMod: TRzDBComboBox;
      eICMsSTAliq: TJvDBCalcEdit;
      eICMsSTRedBasCalc: TJvDBCalcEdit;
      Label15: TLabel;
      eICMsMVA: TJvDBCalcEdit;
      Label16: TLabel;
      eCFOpPF: TRzDBEdit;
      Label17: TLabel;
      Label18: TLabel;
      eICMsAliqPF: TJvDBCalcEdit;
      eIPICst: TRzDBComboBox;
      Label19: TLabel;
      eIPIAliq: TJvDBCalcEdit;
      Label20: TLabel;
      Label21: TLabel;
      eIPICodigo: TRzDBEdit;
      Label22: TLabel;
      ePISCst: TRzDBComboBox;
      Label23: TLabel;
      ePISAliqST: TJvDBCalcEdit;
      Label24: TLabel;
      ePISAliq: TJvDBCalcEdit;
      Label25: TLabel;
      eCofinsCST: TRzDBComboBox;
      Label26: TLabel;
      Label27: TLabel;
      eCofinsAliq: TJvDBCalcEdit;
      eCofinsAliqST: TJvDBCalcEdit;
      tbDados: TFDQuery;
      dsDados: TJvDataSource;
      tbDadosID: TIntegerField;
      tbDadosID_EMPRESA: TIntegerField;
      tbDadosTRB_ICMS_CST: TStringField;
      tbDadosTRB_ICMS_CFOP: TIntegerField;
      tbDadosTRB_ICMS_MODAL: TIntegerField;
      tbDadosTRB_ICMS_RBCALC: TFMTBCDField;
      tbDadosTRB_ICMS_NC_CST: TStringField;
      tbDadosTRB_ICMS_NC_CFOP: TIntegerField;
      tbDadosTRB_ICMS_NC_ALIQ: TFMTBCDField;
      tbDadosTRB_ICMS_ST_ALIQ: TFMTBCDField;
      tbDadosTRB_ICMS_ST_MODAL: TIntegerField;
      tbDadosTRB_ICMS_ST_RBCALC: TFMTBCDField;
      tbDadosTRB_ICMS_ST_MVA: TFMTBCDField;
      tbDadosTRB_IPI_CODIGO: TIntegerField;
      tbDadosTRB_IPI_SELO: TStringField;
      tbDadosTRB_IPI_QTDE_SELO: TIntegerField;
      tbDadosTRB_IPI_ALIQ: TFMTBCDField;
      tbDadosTRB_PIS_CST: TStringField;
      tbDadosTRB_PIS_ALIQ: TFMTBCDField;
      tbDadosTRB_PIS_ALIQ_ST: TFMTBCDField;
      tbDadosTRB_COFINS_CST: TStringField;
      tbDadosTRB_COFINS_ALIQ: TFMTBCDField;
      tbDadosTRB_COFINS_ALIQ_ST: TFMTBCDField;
      tbDadosTRB_OPERACAO: TIntegerField;
      tbDadosTRB_FINALIDADE: TIntegerField;
      tbDadosTRB_STATUS: TIntegerField;
      tbDadosAC: TIntegerField;
      tbDadosAL: TIntegerField;
      tbDadosAP: TIntegerField;
      tbDadosAM: TIntegerField;
      tbDadosBA: TIntegerField;
      tbDadosCE: TIntegerField;
      tbDadosDF: TIntegerField;
      tbDadosES: TIntegerField;
      tbDadosGO: TIntegerField;
      tbDadosMA: TIntegerField;
      tbDadosMT: TIntegerField;
      tbDadosMS: TIntegerField;
      tbDadosMG: TIntegerField;
      tbDadosPA: TIntegerField;
      tbDadosPB: TIntegerField;
      tbDadosPR: TIntegerField;
      tbDadosPE: TIntegerField;
      tbDadosPI: TIntegerField;
      tbDadosRJ: TIntegerField;
      tbDadosRN: TIntegerField;
      tbDadosRS: TIntegerField;
      tbDadosRO: TIntegerField;
      tbDadosRR: TIntegerField;
      tbDadosSC: TIntegerField;
      tbDadosSP: TIntegerField;
      tbDadosSE: TIntegerField;
      tbDadosTO: TIntegerField;
      tbDadosDESCRICAO: TStringField;
      tbDadosTRB_IPI_CST: TStringField;
      tbCst: TFDQuery;
      dsCst: TJvDataSource;
      eCstPJ: TRzDBLookupComboBox;
      eCStPF: TRzDBLookupComboBox;
      tbDadosTRB_DATA_REG: TSQLTimeStampField;
      RzPanel4: TRzPanel;
      RzGroupBox3: TRzGroupBox;
      RzDBCheckBox1: TRzDBCheckBox;
      RzDBCheckBox2: TRzDBCheckBox;
      RzDBCheckBox3: TRzDBCheckBox;
      RzDBCheckBox4: TRzDBCheckBox;
      RzDBCheckBox5: TRzDBCheckBox;
      RzDBCheckBox6: TRzDBCheckBox;
      RzDBCheckBox7: TRzDBCheckBox;
      RzDBCheckBox8: TRzDBCheckBox;
      RzDBCheckBox9: TRzDBCheckBox;
      RzDBCheckBox10: TRzDBCheckBox;
      RzDBCheckBox11: TRzDBCheckBox;
      RzDBCheckBox12: TRzDBCheckBox;
      RzDBCheckBox13: TRzDBCheckBox;
      RzDBCheckBox14: TRzDBCheckBox;
      RzDBCheckBox15: TRzDBCheckBox;
      RzDBCheckBox16: TRzDBCheckBox;
      RzDBCheckBox17: TRzDBCheckBox;
      RzDBCheckBox18: TRzDBCheckBox;
      RzDBCheckBox19: TRzDBCheckBox;
      RzDBCheckBox20: TRzDBCheckBox;
      RzDBCheckBox21: TRzDBCheckBox;
      RzDBCheckBox22: TRzDBCheckBox;
      RzDBCheckBox23: TRzDBCheckBox;
      RzDBCheckBox24: TRzDBCheckBox;
      RzDBCheckBox25: TRzDBCheckBox;
      RzDBCheckBox26: TRzDBCheckBox;
      RzDBCheckBox27: TRzDBCheckBox;
      RzDBRadioGroup1: TRzDBRadioGroup;
      SpeedButton1: TSpeedButton;
      SpeedButton2: TSpeedButton;
      eICMsMVaRB: TJvDBCalcEdit;
      Label4: TLabel;
      tbDadosTRB_ICMS_ST_MVA_RB: TFMTBCDField;
      Label28: TLabel;
      RzDBComboBox1: TRzDBComboBox;
      tbDadosTRB_FRENTE_CAIXA: TIntegerField;
      ed_descricao: TJvEdit;
      tbDadosTRB_DESCRICAO: TStringField;
      Label29: TLabel;
      tbDadosTRB_CRT: TIntegerField;
      RzDBCheckBox28: TRzDBCheckBox;
      tbDadosTRB_IND_TOT: TIntegerField;
      RzDBCheckBox29: TRzDBCheckBox;
      tbDadosTRB_INTEGRA_CALCULO: TStringField;
      tbDadosTRB_ICMS_ALIQ: TFMTBCDField;
      procedure FormCreate(Sender: TObject);
      procedure tbDadosNewRecord(DataSet: TDataSet);
      procedure actSairExecute(Sender: TObject);
      procedure actGravarExecute(Sender: TObject);
      procedure tbDadosAfterPost(DataSet: TDataSet);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure tbDadosTRB_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tbDadosTRB_OPERACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure actCadastrarExecute(Sender: TObject);
      procedure actAlterarExecute(Sender: TObject);
      procedure actExcluirExecute(Sender: TObject);
      procedure actCancelarExecute(Sender: TObject);
      procedure actCadastrarUpdate(Sender: TObject);
      procedure actAlterarUpdate(Sender: TObject);
      procedure actGravarUpdate(Sender: TObject);
      procedure tbDadosBeforePost(DataSet: TDataSet);
      procedure dsDadosStateChange(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure SpeedButton2Click(Sender: TObject);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbDadosBeforeDelete(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrRegrasTributacao: TFrRegrasTributacao;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrRegrasTributacao.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrRegrasTributacao.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not(tbDados.State in [dsInsert, dsEdit]);
end;

procedure TFrRegrasTributacao.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrRegrasTributacao.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not(tbDados.State in [dsInsert, dsEdit]);
end;

procedure TFrRegrasTributacao.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrRegrasTributacao.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrRegrasTributacao.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrRegrasTributacao.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert, dsEdit];
end;

procedure TFrRegrasTributacao.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrRegrasTributacao.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert, dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrRegrasTributacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(FrRegrasTributacao);
end;

procedure TFrRegrasTributacao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   { Se houver registro em inclusão ou alteração, imprede a saida }
   if tbDados.State in [dsInsert, dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.', 'TechCore-RTG - Regras de Tributos', mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrRegrasTributacao.FormCreate(Sender: TObject);
begin
   // Ajusta o formulário
   pgControl.ActivePage := tabPrincipal;
   pgControlTrib.ActivePage := tabICMsJ;

   // Exibe o Regime Tributário
   case FEmpresaClass.Crt of
      1:
         lbRegimeTrib.Caption := '1 - Simples Nacional';
      2:
         lbRegimeTrib.Caption := '2 - Simples Nacional -> Excesso da Receita';
      3:
         lbRegimeTrib.Caption := '3 - Regime Normal';
   end;

   // Carrega todas as tabela vinculada a empresa
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.ParamByName('TRB_CRT').AsInteger := FEmpresaClass.Crt;
   tbDados.Open();

   // Carrega todas as Situações Trinutárias do ICMS
   tbCst.ParamByName('CST_CRT').AsInteger := FEmpresaClass.Crt;
   tbCst.Open();

   // Ajusta o grid na criação do form
   gGrid.Columns[0].Width := 130;

end;

procedure TFrRegrasTributacao.SpeedButton1Click(Sender: TObject);
var
   i: integer;
begin
   // Checa se foi selecionado ao menos um estado
   for i := 0 to RzGroupBox3.ControlCount - 1 do
   begin
      if (RzGroupBox3.Controls[i] is TRzDBCheckBox) then
         tbDados.FieldByName((RzGroupBox3.Controls[i] as TRzDBCheckBox).DataField).AsInteger := 1;
   end;
end;

procedure TFrRegrasTributacao.SpeedButton2Click(Sender: TObject);
var
   i: integer;
begin
   // Checa se foi selecionado ao menos um estado
   for i := 0 to RzGroupBox3.ControlCount - 1 do
   begin
      if (RzGroupBox3.Controls[i] is TRzDBCheckBox) then
         tbDados.FieldByName((RzGroupBox3.Controls[i] as TRzDBCheckBox).DataField).AsInteger := 2;
   end;
end;

procedure TFrRegrasTributacao.tbDadosAfterPost(DataSet: TDataSet);
begin
   DataSet.Refresh;
end;

procedure TFrRegrasTributacao.tbDadosBeforeDelete(DataSet: TDataSet);
var
   aQuery : TFDQuery;
begin
   // Confirma se exclue a regra
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG') = mrNo then
      Abort;
end;

procedure TFrRegrasTributacao.tbDadosBeforePost(DataSet: TDataSet);
var
   i: integer;
   UF: Boolean;
begin
   // Checa o preenchimentos dos campos
   if eOperacao.ItemIndex < 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar o tipo de Operação.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      eOperacao.SetFocus;
      Abort;
   end;

   if eFinalidade.ItemIndex < 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Finalidade da Operação.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      eFinalidade.SetFocus;
      Abort;
   end;

   if ed_descricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descricao da Operação.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      ed_descricao.SetFocus;
      Abort;
   end;

   if eCfopPJ.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o CFOP Pessoa Jurídica.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      pgControlTrib.ActivePage := tabICMsJ;
      eCfopPJ.SetFocus;
      Abort;
   end;

   if eCstPJ.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Código CST Pessoa Jurídica.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      pgControlTrib.ActivePage := tabICMsJ;
      eCstPJ.SetFocus;
      Abort;
   end;

   // Checa se foi selecionado ao menos um estado
   for i := 0 to RzGroupBox3.ControlCount - 1 do
   begin
      if (RzGroupBox3.Controls[i] is TRzDBCheckBox) then
         if (RzGroupBox3.Controls[i] as TRzDBCheckBox).Checked then
         begin
            UF := true;
            Break;
         end
         else
            UF := false;
   end;

   if not UF then
   begin
      Application.MessageBox('Erro, Selecione ao menos um Estado para a Regra.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      Abort;
   end;

end;

procedure TFrRegrasTributacao.tbDadosNewRecord(DataSet: TDataSet);
begin
   // Dados padrões no cadastro
   DataSet.FieldByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   DataSet.FieldByName('TRB_CRT').AsInteger := FEmpresaClass.Crt;
end;

procedure TFrRegrasTributacao.tbDadosTRB_OPERACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         0:
            Text := '0 - NF-e de Entrada';
         1:
            Text := '1 - NF-e de Saida';
      end;
   end
   else
      Text := Sender.AsString;
end;

procedure TFrRegrasTributacao.tbDadosTRB_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1:
            Text := 'S';
         2:
            Text := 'N';
      end;
   end
   else
      Text := Sender.AsString;
end;

end.
