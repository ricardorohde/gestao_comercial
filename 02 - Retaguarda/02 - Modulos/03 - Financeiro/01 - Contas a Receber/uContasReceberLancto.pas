unit uContasReceberLancto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, DateUtils,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, ACBrUtil,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvDataSource,
  Vcl.Menus, ACBrBase, ACBrEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, RzEdit, RzBtnEdt, RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, JvBaseEdits, RzSpnEdt, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.ComCtrls, JvExComCtrls, JvStatusBar, System.Actions, Vcl.ActnList,
  JvSpin, RzPanel, JvExControls, JvDBLookup, RzDBEdit, RzDBBnEd, RzRadGrp,
  JvDBControls, JvDBSpinEdit, Vcl.DBCtrls, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Vcl.Buttons;

type
  TFrContasReceberLancto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button2: TButton;
    btnGravar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    eGrid: TJvDBGrid;
    ACBrEnterTab1: TACBrEnterTab;
    PopUp00: TPopupMenu;
    SelecionarCliente1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    dsDados: TJvDataSource;
    QueryParcelas: TFDQuery;
    AlterarParcela1: TMenuItem;
    Image3: TImage;
    RzPanel2: TRzPanel;
    Label3: TLabel;
    Image2: TImage;
    Label9: TLabel;
    PlanodeContas1: TMenuItem;
    grpTipoVencto: TRzRadioGroup;
    Label10: TLabel;
    Bevel1: TBevel;
    QueryContas: TFDQuery;
    dsQueryContas: TDataSource;
    dsQueryParcelas: TDataSource;
    eDataLancto: TJvDBDateEdit;
    QueryContasID: TIntegerField;
    QueryContasID_EMPRESA: TIntegerField;
    QueryContasID_CLIENTE: TIntegerField;
    QueryContasID_ORIGEM: TIntegerField;
    QueryContasID_CONTAS: TIntegerField;
    QueryContasREC_DATA_REGISTRO: TSQLTimeStampField;
    QueryContasREC_VLR_CONTA: TFMTBCDField;
    QueryContasREC_STATUS: TIntegerField;
    QueryContasREC_ORIGEM: TIntegerField;
    QueryParcelasID: TIntegerField;
    QueryParcelasID_C000110: TIntegerField;
    QueryParcelasREC_PARCELA: TIntegerField;
    QueryParcelasREC_VALOR: TFMTBCDField;
    QueryParcelasREC_DOCUMENTO: TStringField;
    QueryParcelasREC_VENCIMENTO: TDateField;
    QueryParcelasREC_ANOTACOES: TStringField;
    QueryParcelasREC_VLR_ATUALIZADO: TFMTBCDField;
    QueryParcelasREC_VLR_RECEBIDO: TFMTBCDField;
    QueryParcelasREC_VLR_SALDO: TFMTBCDField;
    eCliente: TRzDBButtonEdit;
    QueryContasCLI_RAZAO_SOCIAL: TStringField;
    eDataVencto: TJvDateEdit;
    eDiaVencto: TJvSpinEdit;
    eParcelas: TJvSpinEdit;
    eHistorico: TEdit;
    SchemaAD: TFDSchemaAdapter;
    Button3: TButton;
    BitBtn1: TBitBtn;
    eDoctoNumero: TDBEdit;
    QueryContasREC_CLIENTE: TStringField;
    QueryContasREC_DOCUMENTO: TStringField;
    eValorTotal: TJvDBCalcEdit;
    QueryParcelasREC_STATUS: TIntegerField;
    QueryContasID_PLN_CTAS: TIntegerField;
    QueryContasREC_JUROS: TFMTBCDField;
    QueryContasREC_JUROS_CAREN: TIntegerField;
    QueryContasREC_MULTA: TFMTBCDField;
    QueryContasREC_MULTA_CAREN: TIntegerField;
    procedure SelecionarCliente1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure eClienteEnter(Sender: TObject);
    procedure eClienteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QueryParcelasBeforeApplyUpdates(DataSet: TFDDataSet);
    procedure Button2Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure grpTipoVenctoClick(Sender: TObject);
    procedure QueryContasNewRecord(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QueryContasBeforePost(DataSet: TDataSet);
    procedure eGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrContasReceberLancto: TFrContasReceberLancto;

implementation

uses
   Classe.Empresa, uListaClientes, uContasReceberAlteraLancto,
  uModuloRet, Classe.Financeiro;

{$R *.dfm}

procedure TFrContasReceberLancto.BitBtn1Click(Sender: TObject);
var
   I : Integer;
   myDay, myMes, myAno : Word;
begin
   // Confere o preenchimento dos campos
   if eCliente.Text = '' then
   begin
      Application.MessageBox('Obrigatório selecionar o Cliente.','TechCore-RTG',mb_IconStop or mb_Ok);
      eCliente.SetFocus;
      Abort;
   end;

   if OnlyNumber( eDataVencto.Text ) = '' then
   begin
      Application.MessageBox('Obrigatório informar a Data de Vencimento da primeira parcela.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataVencto.SetFocus;
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

   if eParcelas.Value = 0 then
   begin
      Application.MessageBox('Obrigatório informar a Quantidade de parcelas.','TechCore-RTG',mb_IconStop or mb_Ok);
      eParcelas.SetFocus;
      Abort;
   end;

   if eValorTotal.Value <= 0 then
   begin
      Application.MessageBox('Obrigatório informar a Valor.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValorTotal.SetFocus;
      Abort;
   end;

   // Decodifica a data atual
   DecodeDate(eDataVencto.Date, myAno, myMes, myDay);

   // Gravaem cache os dados da conta
   QueryContas.Post;

   // Gera as parcelas conforme informado
   for i := 1 to eParcelas.AsInteger do
   begin

      // Pega o dia especificado para vencimento e monta a data do próximo vencimento
      QueryParcelas.Append;

      // Se for a primeira parcela, insere a data definida como vencimento
      if I = 1 then
         QueryParcelas.FieldByName('REC_VENCIMENTO').AsDateTime := eDataVencto.Date
      else
      begin
         // Gera o próximo mês de vencimento
         if myMes = 12 then
            myMes := 1;

         Inc(myMes);

         // Dia fixo para o vencimento das segunda parcela em diante
         if grpTipoVencto.ItemIndex = 0 then
            QueryParcelas.FieldByName('REC_VENCIMENTO').AsDateTime := EncodeDate(myAno, myMes, eDiaVencto.AsInteger)
         else
            QueryParcelas.FieldByName('REC_VENCIMENTO').AsDateTime := IncDay(eDatavencto.Date, (I * eDiaVencto.AsInteger));
      end;

      // Insere alguns dados padrão
      QueryParcelas.FieldByName('REC_PARCELA').AsInteger  := I;
      QueryParcelas.FieldByName('REC_DOCUMENTO').AsString := eDoctoNumero.Text;
      QueryParcelas.FieldByName('REC_VALOR').AsFloat      := eValorTotal.Value / eParcelas.AsInteger;
      QueryParcelas.FieldByName('REC_ANOTACOES').AsString := eHistorico.Text;
      QueryParcelas.Post;

   end;
end;

procedure TFrContasReceberLancto.btnGravarClick(Sender: TObject);
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

procedure TFrContasReceberLancto.Button2Click(Sender: TObject);
begin
   // Confirma se cancela as alterações
   if SchemaAD.UpdatesPending then
      if Application.MessageBox('Tem certeza que deseja cancelar e sair?','TechCore-PDV',mb_IconQuestion or mb_YesNo) = mrNo then
         Abort;

   // Cancela a inclusão e sai do formulário
   SchemaAD.CancelUpdates;
   Self.Close;
end;

procedure TFrContasReceberLancto.Button3Click(Sender: TObject);
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

procedure TFrContasReceberLancto.eClienteEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrContasReceberLancto.eClienteExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrContasReceberLancto.eGridDblClick(Sender: TObject);
begin
   // Carrega o formulário para Alterar as parcelas
   try
      FrcontasReceberAlteraLancto                 := TFrcontasReceberAlteraLancto.Create(Self);
      FrcontasReceberAlteraLancto.dsDados.DataSet := QueryParcelas;
      FrcontasReceberAlteraLancto.ConectarTabela  := false;

      if FrcontasReceberAlteraLancto.ShowModal = mrOk then
         QueryParcelas.Post;

   finally
      FreeAndNil( FrcontasReceberAlteraLancto );
   end;
end;

procedure TFrContasReceberLancto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if SchemaAD.UpdatesPending then
   begin
      Application.MessageBox('Antes de sair é necessário Gravar ou Cancelar as alterações','TechCore-RTG',mb_IconStop or mb_Ok);
      eCliente.SetFocus;
      CanClose := false;
   end;
end;

procedure TFrContasReceberLancto.FormCreate(Sender: TObject);
begin
   // Define a data atual como data de lançamento
   eDataLancto.Date := Date;

   // Conecta a tabela
   QueryContas.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   QueryContas.Open();
   QueryContas.Insert;

   // Conecta na tabela parcelas
   QueryParcelas.Open();
   QueryParcelas.Append;

   {Define o tamanho das colunas do grid}
   eGrid.Columns[0].Width := 25;
   eGrid.Columns[1].Width := 75;
   eGrid.Columns[2].Width := 75;
end;

procedure TFrContasReceberLancto.FormShow(Sender: TObject);
begin
   {Posiciona o cursor}
   eCliente.SetFocus;
end;

procedure TFrContasReceberLancto.SelecionarCliente1Click(Sender: TObject);
begin
   FrListaClientes := TFrListaClientes.Create(self);
   try

      if FrListaClientes.ShowModal = mrOk then
      begin
         QueryContas.FieldByName('ID_CLIENTE').AsInteger := FrListaClientes.QueryID.AsInteger;
         eCliente.Text  := FrListaClientes.QueryCLI_RAZAO_SOCIAL.AsString;
      end;

   finally
      FreeAndNil( FrListaClientes );
   end;
end;

procedure TFrContasReceberLancto.grpTipoVenctoClick(Sender: TObject);
begin
   case grpTipoVencto.ItemIndex of
      0 : begin
         Label4.Caption := 'Dia de vencimento:';
         eDiaVencto.SetFocus;
      end;

      1 : begin
         Label4.Caption := 'Dias entre parcelas:';
         eDiaVencto.SetFocus;
      end;
   end;
end;

procedure TFrContasReceberLancto.QueryContasBeforePost(DataSet: TDataSet);
begin
   DataSet.FieldByName('REC_VLR_CONTA').AsFloat := eValorTotal.Value;
end;

procedure TFrContasReceberLancto.QueryContasNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_empresa').AsInteger         := FEmpresaClass.ID;
   DataSet.FieldByName('id_pln_ctas').AsInteger        := FEmpresaClass.PlnCtasR;
   DataSet.FieldByName('rec_data_registro').AsDateTime := Now;

   {Insere a carencia e taxa de juros}
   DataSet.FieldByName('rec_juros').AsFloat         := ClassFinanceiro.JurosTaxa;
   DataSet.FieldByName('rec_juros_caren').AsInteger := ClassFinanceiro.JurosCarencia;

   {Insere a carencia e o valor da multa}
   DataSet.FieldByName('rec_multa').AsFloat         := ClassFinanceiro.MultaTaxa;
   DataSet.FieldByName('rec_multa_caren').AsInteger := ClassFinanceiro.MultaCarencia;
end;

procedure TFrContasReceberLancto.QueryParcelasBeforeApplyUpdates(DataSet: TFDDataSet);
begin
   if Application.MessageBox('Confirma o lançamento das contas no sistema?','TechCore-PDV',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

end.
