unit uNcmCest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvExComCtrls,
  JvComCtrls, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, RzPanel, RzRadGrp,
  JvExStdCtrls, JvMemo, Vcl.Mask, RzEdit, RzDBEdit, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzButton,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzDBRGrp, Vcl.DBCtrls, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, ACBrBase, ACBrSocket, ACBrIBPTax, RzStatus,
  Vcl.Menus, JvCombobox, JvEdit, Vcl.Imaging.pngimage;

type
  TFrNcmCest = class(TForm)
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
    ActionNCM: TActionManager;
    actCadastrar: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    tbDados: TFDQuery;
    dsDados: TJvDataSource;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosNCM_DATA_REG: TSQLTimeStampField;
    tbDadosNCM_CODIGO: TStringField;
    tbDadosNCM_DESCRICAO: TStringField;
    tbDadosNCM_VIGENCIA_INI: TDateField;
    tbDadosNCM_VIGENCIA_FIM: TDateField;
    tbDadosNCM_VERSAO: TStringField;
    tbDadosNCM_CHAVE: TStringField;
    tbDadosNCM_FONTE: TStringField;
    tbDadosNCM_STATUS: TIntegerField;
    tbDadosNCM_CEST: TStringField;
    btnRefresh: TRzToolButton;
    RzSpacer6: TRzSpacer;
    RzSpacer7: TRzSpacer;
    actUpAtualizar: TAction;
    ACBrIBPTax1: TACBrIBPTax;
    tbPesq: TFDQuery;
    OpenDlg: TOpenDialog;
    tbPesqID_EMPRESA: TIntegerField;
    tbPesqNCM_DATA_REG: TSQLTimeStampField;
    tbPesqNCM_CODIGO: TStringField;
    tbPesqNCM_DESCRICAO: TStringField;
    tbPesqNCM_VIGENCIA_INI: TDateField;
    tbPesqNCM_VIGENCIA_FIM: TDateField;
    tbPesqNCM_VERSAO: TStringField;
    tbPesqNCM_CHAVE: TStringField;
    tbPesqNCM_FONTE: TStringField;
    tbPesqNCM_STATUS: TIntegerField;
    tbPesqNCM_CEST: TStringField;
    Pop01: TPopupMenu;
    actUpRefazer: TAction;
    actUpExcluir: TAction;
    GerarNovaTabeladeNCM1: TMenuItem;
    AtualizarTabeladeNCM1: TMenuItem;
    N1: TMenuItem;
    LimparTabeladeNCM1: TMenuItem;
    RzPanel2: TRzPanel;
    Label42: TLabel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    pgControl: TJvPageControl;
    tabPrincipal: TTabSheet;
    brProgress: TRzProgressStatus;
    JvDBGrid1: TJvDBGrid;
    tabDetalhes: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    eNCM: TRzDBEdit;
    eNcmDesc: TRzDBEdit;
    eDescricao: TRzDBMemo;
    eStatus: TRzDBRadioGroup;
    eTaxaImp: TJvDBCalcEdit;
    eTaxaNac: TJvDBCalcEdit;
    eTaxaEst: TJvDBCalcEdit;
    tbPesqNCM_TAXA_IMP: TFMTBCDField;
    tbPesqNCM_TAXA_NAC: TFMTBCDField;
    tbPesqNCM_TAXA_EST: TFMTBCDField;
    tbPesqNCM_TAXA_MUN: TFMTBCDField;
    tbDadosNCM_TAXA_IMP: TFMTBCDField;
    tbDadosNCM_TAXA_NAC: TFMTBCDField;
    tbDadosNCM_TAXA_EST: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure actCadastrarExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actUpAtualizarExecute(Sender: TObject);
    procedure tbDadosNCM_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actUpRefazerExecute(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
    procedure actUpExcluirExecute(Sender: TObject);
    procedure actCadastrarUpdate(Sender: TObject);
    procedure actAlterarUpdate(Sender: TObject);
    procedure actGravarUpdate(Sender: TObject);
    procedure actUpAtualizarUpdate(Sender: TObject);
    procedure actUpRefazerUpdate(Sender: TObject);
  private
    procedure AtualizarChaveFonteEmpresa(sChave, sFonte : String);
  public
    { Public declarations }
  end;

var
  FrNcmCest: TFrNcmCest;

implementation

uses
   Classe.Empresa, uModuloRet, uPrincipal;

{$R *.dfm}

procedure TFrNcmCest.actAlterarExecute(Sender: TObject);
begin
   tbDados.Edit;
end;

procedure TFrNcmCest.actAlterarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrNcmCest.actCadastrarExecute(Sender: TObject);
begin
   tbDados.Insert;
end;

procedure TFrNcmCest.actCadastrarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrNcmCest.actCancelarExecute(Sender: TObject);
begin
   tbDados.Cancel;
end;

procedure TFrNcmCest.actExcluirExecute(Sender: TObject);
begin
   tbDados.Delete;
end;

procedure TFrNcmCest.actGravarExecute(Sender: TObject);
begin
   tbDados.Post;
end;

procedure TFrNcmCest.actGravarUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrNcmCest.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrNcmCest.actUpAtualizarExecute(Sender: TObject);
var
   I : Integer;
begin

   if not OpenDlg.Execute() then exit;

   try
      if ACBrIBPTax1.AbrirTabela(OpenDlg.FileName) then
      begin

         try

            {Ajusta o formulário}
            brProgress.Visible       := true;
            brProgress.TotalParts    := ACBrIBPTax1.Itens.Count;
            brProgress.PartsComplete := 0;

            {Conecta o cursor a tabela de ncms}
            tbPesq.Open();


            for I := 0 to ACBrIBPTax1.Itens.Count - 1 do
            begin
               tbPesq.Close;
               tbPesq.SQL.Clear;
               tbPesq.SQL.Add('UPDATE C000300 SET');
               tbPesq.SQL.Add('ncm_descricao    = :ncm_descricao,');
               tbPesq.SQL.Add('ncm_taxa_imp     = :ncm_taxa_imp,');
               tbPesq.SQL.Add('ncm_taxa_nac     = :ncm_taxa_nac,');
               tbPesq.SQL.Add('ncm_taxa_est     = :ncm_taxa_est,');
               tbPesq.SQL.Add('ncm_taxa_mun     = :ncm_taxa_mun,');
               tbPesq.SQL.Add('ncm_vigencia_ini = :ncm_vigencia_ini,');
               tbPesq.SQL.Add('ncm_vigencia_fim = :ncm_vigencia_fim,');
               tbPesq.SQL.Add('ncm_versao       = :ncm_versao,');
               tbPesq.SQL.Add('ncm_chave        = :ncm_chave,');
               tbPesq.SQL.Add('ncm_fonte        = :ncm_fonte');
               tbPesq.SQL.Add('where ncm_codigo = :ncm_codigo and ncm_ex = :ncm_ex');
               tbPesq.ParamByName('ncm_descricao').AsString      := ACBrIBPTax1.Itens[I].Descricao;
               tbPesq.ParamByName('ncm_taxa_imp').AsFloat        := ACBrIBPTax1.Itens[I].FederalImportado;
               tbPesq.ParamByName('ncm_taxa_nac').AsFloat        := ACBrIBPTax1.Itens[I].FederalNacional;
               tbPesq.ParamByName('ncm_taxa_est').AsFloat        := ACBrIBPTax1.Itens[I].Estadual;
               tbPesq.ParamByName('ncm_taxa_mun').AsFloat        := ACBrIBPTax1.Itens[I].Municipal;
               tbPesq.ParamByName('ncm_vigencia_ini').AsDateTime := ACBrIBPTax1.VigenciaInicio;
               tbPesq.ParamByName('ncm_vigencia_fim').AsDateTime := ACBrIBPTax1.VigenciaFim;
               tbPesq.ParamByName('ncm_versao').AsString         := ACBrIBPTax1.VersaoArquivo;
               tbPesq.ParamByName('ncm_chave').AsString          := ACBrIBPTax1.ChaveArquivo;
               tbPesq.ParamByName('ncm_fonte').AsString          := ACBrIBPTax1.Fonte;
               tbPesq.ParamByName('ncm_codigo').AsString         := ACBrIBPTax1.Itens[I].NCM;
               tbPesq.ParamByName('ncm_ex').AsString             := ACBrIBPTax1.Itens[I].Excecao;
               tbPesq.ExecSQL;

               Application.ProcessMessages;
               brProgress.PartsComplete := I;

            end;

            // Atualiza a chave e a fonte na tabela empresa
            AtualizarChaveFonteEmpresa(ACBrIBPTax1.ChaveArquivo, ACBrIBPTax1.Fonte);

            // Mensagem de sucesso na importação
            Application.MessageBox('Tabela atualizada com sucesso.','TechCore-PDV',mb_IconInformation or mb_Ok);

         except
            on E: Exception do
               Application.MessageBox(pChar('Erro ao atualizar a tabela.' + #13#10 + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
         end;

      end;

   finally
      {Ajusta o formulário}
      brProgress.Visible := true;

      {Desconecta o cursor de atualização}
      tbPesq.Close;

      {Atualiza o cursor dos ncms}
      tbDados.Refresh;
   end;

end;

procedure TFrNcmCest.actUpAtualizarUpdate(Sender: TObject);
begin
   if tbDados.IsEmpty then
      TAction(Sender).Enabled := false
   else
      TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrNcmCest.actUpExcluirExecute(Sender: TObject);
begin
   {Confirma se continua o processo}
   if Application.MessageBox('Este processo irá excluir todos os NCMs e CESTs cadastrados, tem certeza que deseja continuar? ','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Exit;

   {Apaga todos os registro da tabela}
   try

      try

         tbPesq.Close;
         tbPesq.SQL.Clear;
         tbPesq.SQL.Add('DELETE FROM C000300');
         tbPesq.ExecSQL;

         // Atualiza a chave e a fonte na tabela empresa
         AtualizarChaveFonteEmpresa('', '');

      except
         on E: Exception do
         begin
            {Alerta de erro}
            Application.MessageBox(pChar('Erro ao limpar a tabela.' + #13#10 + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);

            {Atualiza o cursor}
            tbDados.Refresh;

            Application.ProcessMessages;
         end;
      end;

   finally
      {Atualiza o cursor}
      tbDados.Refresh;
   end;

end;

procedure TFrNcmCest.actUpRefazerExecute(Sender: TObject);
var
   I : Integer;
   aQuery : TFDQuery;
begin
   {Confirma se continua o processo}
   if Application.MessageBox('Este processo irá excluir todos os NCMs e CESTs cadastrados, tem certeza que deseja continuar? ','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Exit;

   {Se carrega do o arquivo}
   if not OpenDlg.Execute() then exit;

   if ACBrIBPTax1.AbrirTabela(OpenDlg.FileName) then
   begin

      // Cria o objeto
      aQuery            := TFDQuery.Create(self);
      aQuery.Connection := FrModuloRet.DBConexao;

      try

         {Apaga todos os registros da tabela}
         try

            aQuery.Close;
            aQuery.SQL.Clear;
            aQuery.SQL.Add('DELETE FROM C000300');
            aQuery.ExecSQL;

            // Zera o campo indice da tabela
            //aQuery.Close;
            //aQuery.SQL.Clear;
            //aQuery.SQL.Add('ALTER TABLE c000300 ALTER COLUMN ID RESTART WITH 0');
            //aQuery.ExecSQL;

         except
            on E: Exception do
            begin
               {Alerta de erro}
               Application.MessageBox(pChar('Erro ao limpar a tabela.' + #13#10 + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);

               {Atualiza o cursor}
               tbDados.Refresh;

               Application.ProcessMessages;
            end;
         end;

         try

            {Ajusta o formulário}
            brProgress.Visible       := true;
            brProgress.TotalParts    := ACBrIBPTax1.Itens.Count;
            brProgress.PartsComplete := 0;

            {Conecta o cursor a tabela de ncms}
            //aQuery.SQL.Clear;
            //aQuery.SQL.Add('SELECT * FROM C000300');
            //aQuery.Open();

            {Inicia o processo de inserção dos ncms}
            for I := 0 to ACBrIBPTax1.Itens.Count - 1 do
            begin
               aQuery.Close;
               aQuery.SQL.Clear;
               aQuery.SQL.Add('INSERT INTO C000300(');
               aQuery.SQL.Add('NCM_CODIGO, NCM_EX, NCM_DESCRICAO, NCM_TAXA_IMP, NCM_TAXA_NAC, NCM_TAXA_EST, NCM_TAXA_MUN, NCM_VIGENCIA_INI, NCM_VIGENCIA_FIM,');
               aQuery.SQL.Add('NCM_VERSAO, NCM_CHAVE,  NCM_FONTE,  NCM_STATUS');
               aQuery.SQL.Add(')VALUES(');
               aQuery.SQL.Add(':NCM_CODIGO, :NCM_EX, :NCM_DESCRICAO, :NCM_TAXA_IMP, :NCM_TAXA_NAC, :NCM_TAXA_EST, :NCM_TAXA_MUN, :NCM_VIGENCIA_INI, :NCM_VIGENCIA_FIM,');
               aQuery.SQL.Add(':NCM_VERSAO, :NCM_CHAVE,  :NCM_FONTE,  :NCM_STATUS)');
               aQuery.ParamByName('ncm_codigo').AsString         := ACBrIBPTax1.Itens[I].NCM;
               aQuery.ParamByName('ncm_ex').AsString             := ACBrIBPTax1.Itens[I].Excecao;
               aQuery.ParamByName('ncm_descricao').AsString      := ACBrIBPTax1.Itens[I].Descricao;
               aQuery.ParamByName('ncm_taxa_imp').AsFloat        := ACBrIBPTax1.Itens[I].FederalImportado;
               aQuery.ParamByName('ncm_taxa_nac').AsFloat        := ACBrIBPTax1.Itens[I].FederalNacional;
               aQuery.ParamByName('ncm_taxa_est').AsFloat        := ACBrIBPTax1.Itens[I].Estadual;
               aQuery.ParamByName('ncm_vigencia_ini').AsDateTime := ACBrIBPTax1.VigenciaInicio;
               aQuery.ParamByName('ncm_vigencia_fim').AsDateTime := ACBrIBPTax1.VigenciaFim;
               aQuery.ParamByName('ncm_versao').AsString         := ACBrIBPTax1.VersaoArquivo;
               aQuery.ParamByName('ncm_chave').AsString          := ACBrIBPTax1.ChaveArquivo;
               aQuery.ParamByName('ncm_fonte').AsString          := ACBrIBPTax1.Fonte;
               aQuery.ParamByName('ncm_status').AsInteger        := 1;
               aQuery.ExecSQL;

               brProgress.PartsComplete := I;

               Application.ProcessMessages;
            end;

            // Atualiza a chave e a fonte na tabela empresa
            AtualizarChaveFonteEmpresa(ACBrIBPTax1.ChaveArquivo, ACBrIBPTax1.Fonte);

            // Mensagem de sucesso na importação
            Application.MessageBox('Tabela atualizada com sucesso.','TechCore-PDV',mb_IconInformation or mb_Ok);

         except
            on E: Exception do
            begin
               {Alerta de erro}
               Application.MessageBox(pChar('Erro ao atualizar a tabela.' + #13#10 + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);

               {Atualiza o cursor}
               tbDados.Refresh;

               Application.ProcessMessages;
            end;
         end;

      finally
         FrModuloRet.DBConexao.Commit;

         FreeAndNil( aQuery );

         {Atualiza o cursor dos NCMs}
         tbDados.Refresh;

         {Ajusta o formulário}
         brProgress.Visible := false;
      end;

   end;

end;

procedure TFrNcmCest.actUpRefazerUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not ( tbDados.State in [dsInsert,dsEdit] );
end;

procedure TFrNcmCest.AtualizarChaveFonteEmpresa(sChave, sFonte: String);
var
   aQuery : TFDQuery;
begin

   try
      aQuery            := TFDQuery.Create(self);
      aQuery.Connection := FrModuloRet.DBConexao;

      aQuery.SQL.Add('UPDATE C000501 SET EMP_NCM_FONTE = :EMP_NCM_FONTE, EMP_NCM_CHAVE = :EMP_NCM_CHAVE WHERE ID = :ID');
      aQuery.ParamByName('EMP_NCM_FONTE').AsString := sFonte;
      aQuery.ParamByName('EMP_NCM_CHAVE').AsString := sChave;
      aQuery.ParamByName('ID').AsInteger           := FEmpresaClass.ID;
      aQuery.ExecSQL;

   finally
      FreeAndNil( aQuery );
   end;

end;

procedure TFrNcmCest.dsDadosStateChange(Sender: TObject);
begin
   if tbDados.State in [dsInsert,dsEdit] then
      pgControl.ActivePage := tabDetalhes
   else
      pgControl.ActivePage := tabPrincipal;
end;

procedure TFrNcmCest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeandNil( FrNcmCest );
end;

procedure TFrNcmCest.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   {Se houver registro em inclusão ou alteração, imprede a saida}
   if tbDados.State in [dsInsert,dsEdit] then
   begin
      Application.MessageBox('Antes de fechar o formulário, grave ou cancele a alteração ou Inclusão.','TechCore-RTG',mb_IconStop or mb_Ok);
      CanClose := false;
   end;
end;

procedure TFrNcmCest.FormCreate(Sender: TObject);
begin
   {Ajusta o formulário}
   pgControl.ActivePage := tabPrincipal;

   {Carrega a tabela de NCM}
   tbdados.Open();
end;

procedure TFrNcmCest.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := tbDados.State in [dsInsert,dsEdit];
end;

procedure TFrNcmCest.tbDadosNCM_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'S';
         2 : Text := 'N';
      end;
   end
   else
      Text := Sender.AsString;
end;

end.
