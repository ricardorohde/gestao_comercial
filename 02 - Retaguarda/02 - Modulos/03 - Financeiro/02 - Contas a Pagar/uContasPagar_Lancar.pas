unit uContasPagar_Lancar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, DateUtils, ACBrUtil,
  JvExDBGrids, JvDBGrid, RzEdit, RzBtnEdt, Vcl.StdCtrls, JvBaseEdits,
  RzSpnEdt, Vcl.Mask, JvExMask, JvToolEdit, RzLabel, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, ACBrBase, ACBrEnterTab, Vcl.Menus, Vcl.Samples.Spin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvDBControls, JvSpin, RzPanel, RzRadGrp, Vcl.DBCtrls;

type
  TFrContasPagar_Lancar = class(TForm)
    pnLeft: TPanel;
    Image3: TImage;
    Button1: TButton;
    Button2: TButton;
    btnGravar: TButton;
    pnRight: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    eDataVencto: TJvDateEdit;
    eHistorico: TEdit;
    eFornecedor: TRzButtonEdit;
    PopUp00: TPopupMenu;
    SelecionarFornecedor: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    ACBrEnterTab1: TACBrEnterTab;
    dsDados: TJvDataSource;
    eParcelas: TJvSpinEdit;
    eDiaVencto: TJvSpinEdit;
    eGrid: TJvDBGrid;
    RzPanel2: TRzPanel;
    Label3: TLabel;
    Image2: TImage;
    grpTipoVencto: TRzRadioGroup;
    Label9: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    eDataLancto: TJvDBDateEdit;
    eDoctoNumero: TDBEdit;
    QueryContas: TFDQuery;
    dsQueryContas: TDataSource;
    dsQueryParcelas: TDataSource;
    QueryParcelas: TFDQuery;
    SchemaAD: TFDSchemaAdapter;
    QueryContasID: TLargeintField;
    QueryContasID_EMPRESA: TIntegerField;
    QueryContasID_FORNECEDOR: TIntegerField;
    QueryContasID_ORIGEM: TIntegerField;
    QueryContasID_PLANO_CONTAS: TIntegerField;
    QueryContasPAG_DATA_INCLUSAO: TDateField;
    QueryContasPAG_DOCUMENTO: TStringField;
    QueryContasPAG_ORIGEM: TIntegerField;
    QueryContasPAG_STATUS: TIntegerField;
    QueryContasPAG_FORNECEDOR: TStringField;
    QueryContasFOR_RAZAO_SOCIAL: TStringField;
    eValorTotal: TJvDBCalcEdit;
    Button3: TButton;
    QueryParcelasID: TLargeintField;
    QueryParcelasID_C000210: TLargeintField;
    QueryParcelasPAG_PARCELA: TIntegerField;
    QueryParcelasPAG_DOCUMENTO: TStringField;
    QueryParcelasPAG_VENCIMENTO: TDateField;
    QueryParcelasPAG_ANOTACOES: TStringField;
    QueryParcelasPAG_STATUS: TIntegerField;
    QueryContasPAG_JUROS_CAREN: TIntegerField;
    QueryContasPAG_MULTA_CAREN: TIntegerField;
    QueryContasPAG_VALOR: TFMTBCDField;
    QueryContasPAG_JUROS: TFMTBCDField;
    QueryContasPAG_MULTA: TFMTBCDField;
    QueryParcelasPAG_VALOR: TFMTBCDField;
    QueryParcelasPAG_VLR_ATUALIZADO: TFMTBCDField;
    QueryParcelasPAG_VLR_RECEBIDO: TFMTBCDField;
    QueryParcelasPAG_VLR_SALDO: TFMTBCDField;
    QueryParcelasID_PLN_CTAS: TIntegerField;
    procedure SelecionarFornecedorClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eDataLanctoEnter(Sender: TObject);
    procedure eDataLanctoExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure tbDadosAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
    procedure grpTipoVenctoClick(Sender: TObject);
    procedure eGridDblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure QueryContasNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrContasPagar_Lancar: TFrContasPagar_Lancar;

implementation

uses
   uListaFornecedores, Classe.Empresa, uModuloRet, uContas_Pagar_Alterar,
  Classe.Financeiro;

{$R *.dfm}

procedure TFrContasPagar_Lancar.btnGravarClick(Sender: TObject);
begin
   if not SchemaAD.UpdatesPending then
   begin
      Application.MessageBox('Antes de continuar preencha todos os campos e clique em Gerar Parcela(s).','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   // Grava os dados no banco de dados
   SchemaAD.ApplyUpdates(0);

   // Fecha o formulário
   Self.ModalResult := mrOk;
end;

procedure TFrContasPagar_Lancar.Button1Click(Sender: TObject);
var
   I : Integer;
   myDay, myMes, myAno : Word;
begin
   // Confere o preenchimento dos campos antes de gerar as parcelas
   if OnlyNumber( eDataLancto.Text ) = '' then
   begin
      Application.MessageBox('Obrigatório informar a Data de Lançamento.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataLancto.SetFocus;
      Abort;
   end;

   case grpTipoVencto.ItemIndex of
      0 : begin
         if eDiaVencto.Value = 0 then
         begin
            Application.MessageBox('Informe o dia do vencimento das demais parcelas.','TechCore-RTG',mb_IconError or mb_ok);
            eDiaVencto.SetFocus;
            Abort;
         end;
      end;

      1 : begin
         if eDiaVencto.Value = 0 then
         begin
            Application.MessageBox('Informe os dias entre as demais parcelas.','TechCore-RTG',mb_IconError or mb_ok);
            eDiaVencto.SetFocus;
            Abort;
         end;
      end;
   end;

   if eFornecedor.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar o Fornecedor.','TechCore-RTG',mb_IconStop or mb_Ok);
      eFornecedor.SetFocus;
      Abort;
   end;

   if OnlyNumber( eDataVencto.Text ) = '' then
   begin
      Application.MessageBox('Obrigatório informar a Data de Vencimento.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataVencto.SetFocus;
      Abort;
   end;

   if eParcelas.Value = 0 then
   begin
      Application.MessageBox('Obrigatório informar a Quantidade de Parcelas.','TechCore-RTG',mb_IconStop or mb_Ok);
      eParcelas.SetFocus;
      Abort;
   end;

   if eValorTotal.Value <= 0 then
   begin
      Application.MessageBox('Obrigatório informar o Valor Total.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValorTotal.SetFocus;
      Abort;
   end;

   // Decodifica a data atual
   DecodeDate(eDataVencto.Date,myAno,myMes,myDay);

   // Gravaem cache os dados da conta
   QueryContas.Post;

   // Gera as parcelas conforme informado
   for i := 1 to eParcelas.AsInteger do
   begin

      // Pega o dia especificado para vencimento e monta a data do próximo vencimento
      QueryParcelas.Append;

      // Se for a primeira parcela, insere a data definida como vencimento
      if I = 1 then
         QueryParcelas.FieldByName('PAG_VENCIMENTO').AsDateTime := eDataVencto.Date
      else
      begin
         // Gera o próximo mês de vencimento
         if myMes = 12 then
            myMes := 1;

         Inc(myMes);

         // Dia fixo para o vencimento das segunda parcela em diante
         if grpTipoVencto.ItemIndex = 0 then
            QueryParcelas.FieldByName('PAG_VENCIMENTO').AsDateTime := EncodeDate(myAno, myMes, eDiaVencto.AsInteger)
         else
            QueryParcelas.FieldByName('PAG_VENCIMENTO').AsDateTime := IncDay(eDatavencto.Date, (I * eDiaVencto.AsInteger));
      end;

      // Insere alguns dados padrão
      QueryParcelas.FieldByName('PAG_PARCELA').AsInteger  := I;
      QueryParcelas.FieldByName('PAG_DOCUMENTO').AsString := eDoctoNumero.Text;
      QueryParcelas.FieldByName('PAG_VALOR').AsFloat      := eValorTotal.Value / eParcelas.AsInteger;
      QueryParcelas.FieldByName('PAG_ANOTACOES').AsString := eHistorico.Text;
      QueryParcelas.Post;
   end;

end;

procedure TFrContasPagar_Lancar.Button2Click(Sender: TObject);
begin
   // Confirma se cancela as alterações
   if QueryContas.UpdatesPending then
      if Application.MessageBox('Tem certeza que deseja cancelar e sair?','TechCore-PDV',mb_IconQuestion or mb_YesNo) = mrNo then
         Abort;

   // Cancela a inclusão e sai do formulário
   QueryContas.CancelUpdates;
   Self.Close;
end;

procedure TFrContasPagar_Lancar.Button3Click(Sender: TObject);
var
   I : Integer;
begin
   if (SchemaAD.UpdatesPending) then
   begin
      if Application.MessageBox('Isto irá reiniciar o processo de inclusão de contas, deseja continuar?','TechCore-RTG',mb_IConQuestion or mb_YesNo) = mrNo then
         Abort;

      // Cancela a cache atual
      SchemaAD.CancelUpdates;
      QueryContas.Insert;
      QueryParcelas.Append;

      for i:= 0 to ComponentCount - 1 do
      begin
         if (Components[i] is TCustomEdit) then
            (Components[i] as TCustomEdit).Clear;
      end;

      eDataLancto.SetFocus;
   end
   else
      Application.MessageBox('Não existem da dados incluidos.','TechCore-RTG',mb_IconStop or mb_Ok);
end;

procedure TFrContasPagar_Lancar.eDataLanctoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00E4E4E4;
end;

procedure TFrContasPagar_Lancar.eDataLanctoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrContasPagar_Lancar.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if QueryContas.UpdatesPending then
   begin
      Application.MessageBox('Antes de sair é necessário Gravar ou Cancelar as alterações','TechCore-RTG',mb_IconStop or mb_Ok);
      eFornecedor.SetFocus;
      CanClose := false;
   end;
end;

procedure TFrContasPagar_Lancar.FormCreate(Sender: TObject);
begin
   // Define a data atual como data de lançamento
   eDataLancto.Date := Date;

   {Conecta a tabela de contas}
   QueryContas.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   QueryContas.Open();

   {Coloca o cursor em inserção}
   QueryContas.Insert;

   // Conecta na tabela parcelas
   QueryParcelas.Open();
   QueryParcelas.Append;

   {Define o tamanho das colunas do grid}
   eGrid.Columns[0].Width := 25;
   eGrid.Columns[1].Width := 75;
   eGrid.Columns[2].Width := 75;
end;

procedure TFrContasPagar_Lancar.FormShow(Sender: TObject);
begin
   {Posiciona o cursor}
   eFornecedor.SetFocus;
end;

procedure TFrContasPagar_Lancar.grpTipoVenctoClick(Sender: TObject);
begin
   case grpTipoVencto.ItemIndex of
      0 : begin
         Label9.Caption := 'Dia de vencimento:';
         eDiaVencto.SetFocus;
      end;

      1 : begin
         Label9.Caption := 'Dias entre parcelas:';
         eDiaVencto.SetFocus;
      end;
   end;
end;

procedure TFrContasPagar_Lancar.QueryContasNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_empresa').AsInteger         := FEmpresaClass.ID;
   DataSet.FieldByName('id_plano_contas').AsInteger    := FEmpresaClass.PlnCtasP;
   DataSet.FieldByName('pag_data_inclusao').AsDateTime := Date;

   {Insere a carencia e taxa de juros}
   DataSet.FieldByName('pag_juros').AsFloat         := ClassFinanceiro.JurosTaxa;
   DataSet.FieldByName('pag_juros_caren').AsInteger := ClassFinanceiro.JurosCarencia;

   {Insere a carencia e o valor da multa}
   DataSet.FieldByName('pag_multa').AsFloat         := ClassFinanceiro.MultaTaxa;
   DataSet.FieldByName('pag_multa_caren').AsInteger := ClassFinanceiro.MultaCarencia;
end;

procedure TFrContasPagar_Lancar.eGridDblClick(Sender: TObject);
begin
   // Carrega o formulário para Alterar as parcelas
   try
      FrContas_Pagar_Alterar                 := TFrContas_Pagar_Alterar.Create(Self);
      FrContas_Pagar_Alterar.dsQuery.DataSet := QueryParcelas;
      FrContas_Pagar_Alterar.ConectarTabela  := false;

      if FrContas_Pagar_Alterar.ShowModal = mrOk then
         QueryParcelas.Post;

   finally
      FreeAndNil( FrContas_Pagar_Alterar );
   end;
end;

procedure TFrContasPagar_Lancar.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrContasPagar_Lancar.SelecionarFornecedorClick(Sender: TObject);
begin
   FrListaFornecedores := TFrListaFornecedores.Create(self);
   try
      if FrListaFornecedores.ShowModal = mrOk then
      begin
         QueryContasID_FORNECEDOR.AsInteger := FrListaFornecedores.tbDadosID.AsInteger;
         eFornecedor.Text                   := FrListaFornecedores.tbDadosFOR_RAZAO_SOCIAL.AsString;
      end;
   finally
      FreeAndNil( FrListaFornecedores );
   end;
end;

procedure TFrContasPagar_Lancar.tbDadosAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
begin
   // Limpa a cache de dados pendentes
   DataSet.CommitUpdates;

   // Aviso de contas gravadas
   Application.MessageBox('Contas geradas com sucesso','TechCore-RTG',mb_IconInformation or mb_Ok);
end;

end.
