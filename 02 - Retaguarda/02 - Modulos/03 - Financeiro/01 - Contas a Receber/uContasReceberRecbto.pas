unit uContasReceberRecbto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzDBLbl, JvBaseEdits,
  Vcl.Mask, JvExMask, JvToolEdit, RzLabel, Vcl.Imaging.pngimage, DateUtils,
  Vcl.ExtCtrls, JvExControls, JvDBLookup, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, JvDBControls, ACBrBase, ACBrEnterTab,
  RzPanel, RzEdit, RzDBEdit, RzDBBnEd;

type
  TFrContasReceberRecebto = class(TForm)
    Panel1: TPanel;
    Image3: TImage;
    ACBrEnterTab1: TACBrEnterTab;
    Panel2: TPanel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eForma: TJvDBLookupCombo;
    eData: TJvDBDateEdit;
    eAnotacoes: TDBEdit;
    tbFormas: TFDQuery;
    dsFormas: TJvDataSource;
    ed_juros: TJvDBCalcEdit;
    Label3: TLabel;
    ed_multa: TJvDBCalcEdit;
    Label5: TLabel;
    eValor: TJvDBCalcEdit;
    Label6: TLabel;
    ed_acrescimos: TJvDBCalcEdit;
    Label7: TLabel;
    ed_desconto: TJvDBCalcEdit;
    Label8: TLabel;
    ed_total_receber: TJvDBCalcEdit;
    Label4: TLabel;
    RzPanel2: TRzPanel;
    Label9: TLabel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    btnGravar: TButton;
    Button2: TButton;
    Label2: TLabel;
    Bevel1: TBevel;
    dsQuery: TDataSource;
    edPlnContasRec: TRzDBButtonEdit;
    Label70: TLabel;
    QueryCta: TFDQuery;
    QueryCtaID: TIntegerField;
    QueryCtaCTA_DESCRICAO: TStringField;
    dsQueryCta: TDataSource;
    cbConta: TJvDBLookupCombo;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure ed_jurosEnter(Sender: TObject);
    procedure ed_jurosExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPlnContasRecButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularJuros(DataVencto: TDateTime);
    procedure CalcularMulta(DataVencto: TDateTime);

  public
    { Public declarations }
    ValorParcela : Real;
    DataVencto   : TDateTime;
    ValorReceber : Real;
  end;

var
  FrContasReceberRecebto: TFrContasReceberRecebto;

implementation

uses
   Classe.Empresa, uModuloRet, uContasReceber, uListaPlanoContas,
  Classe.Financeiro;

{$R *.dfm}

procedure TFrContasReceberRecebto.CalcularJuros(DataVencto: TDateTime);
var
   JurosCaren   : Real;
   JurosTaxa    : Real;
   DiasVencidos : Integer;
   TotalJuros   : Real;
   aQuery       : TFDQuery;
begin
   {Armazena os dados básicos}
   JurosCaren := FrContasReceber.QueryContas.FieldByName('rec_juros_caren').AsInteger;
   JurosTaxa  := FrContasReceber.QueryContas.FieldByName('rec_juros').AsInteger;

   {Carrega as taxas e os juros}
   if JurosTaxa > 0 then
   begin

      // Checa se a parcela esta vencida
      if Date > DataVencto then
      begin
         // Armazena a quantidade dias vencidos
         DiasVencidos := DaysBetWeen(Date, DataVencto);

         if DiasVencidos > JurosCaren then
         begin
            try
               {Checa se já foi utilizado multa em algumas das parcelas}
               aQuery            := TFDQuery.Create(self);
               aQuery.Connection := FrModuloRet.DBConexao;

               aQuery.SQL.Add('select 1 rec_tax_juros from C000112 where id_C000111 = :id_C000111 and rec_tax_juros > 0');
               aQuery.ParamByName('id_C000111').AsFloat := FrContasReceber.QueryContasID_C11.AsInteger;
               aQuery.Open();

               // Multiplica o juros pela quantidade de dias vencidos
               TotalJuros := (JurosTaxa * (DiasVencidos - JurosCaren));


               if aQuery.IsEmpty then
                  dsQuery.DataSet.FieldByName('rec_tax_juros').AsFloat := TotalJuros;

            finally
               aQuery.Close;
               FreeAndNil( aQuery );
            end;
         end;

      end;

   end;

end;

procedure TFrContasReceberRecebto.CalcularMulta(DataVencto: TDateTime);
var
   DiasVencidos : Integer;
   TotalJuros   : Real;
   aQuery       : TFDQuery;
begin

   {Carrega a multa sobre atraso}
   if ClassFinanceiro.MultaCarencia > 0 then
   begin

      // Checa se a parcela esta vencida
      if Date > DataVencto then
      begin

         // Armazena a quantidade dias vencidos
         DiasVencidos := DaysBetWeen(Date, DataVencto);

         if DiasVencidos > ClassFinanceiro.MultaCarencia then
         begin
            try
               {Checa se já foi utilizado multa em algumas das parcelas}
               aQuery            := TFDQuery.Create(self);
               aQuery.Connection := FrModuloRet.DBConexao;

               aQuery.SQL.Add('select 1 rec_vlr_multa from C000112 where id_C000111 = :id_C000111 and rec_vlr_multa > 0');
               aQuery.ParamByName('id_C000111').AsFloat := FrContasReceber.QueryContasID_C11.AsInteger;
               aQuery.Open();

               if aQuery.IsEmpty then
                  dsQuery.DataSet.FieldByName('rec_vlr_multa').AsFloat := ClassFinanceiro.MultaTaxa;

            finally
               aQuery.Close;
               FreeAndNil( aQuery );
            end;
         end;

      end;
   end;
end;

procedure TFrContasReceberRecebto.btnGravarClick(Sender: TObject);
var
   rSubA, rSubB : Double;
begin
   rSubA := dsQuery.DataSet.FieldByName('REC_VLR_RECEBER').AsFloat;
   rSubB := dsQuery.DataSet.FieldByName('REC_VLR_RECEBIDO').AsFloat;

   if eForma.Field.IsNull then
   begin
      Application.MessageBox('Obrigatório informar a Forma do Recebimento','TechCore-RTG',mb_IconStop or mb_Ok);
      eForma.SetFocus;
      Abort;
   end;

   if edPlnContasRec.Text = EmptyStr then
   begin
      Application.MessageBox('Obrigatório informar o Plano de Contas','TechCore-RTG',mb_IconStop or mb_Ok);
      edPlnContasRec.SetFocus;
      Abort;
   end;

   if cbConta.Text = EmptyStr then
   begin
      Application.MessageBox('Obrigatório informar a Conta de Recebimento.','TechCore-RTG',mb_IconStop or mb_Ok);
      cbConta.SetFocus;
      Abort;
   end;

   if eData.Field.IsNull then
   begin
      Application.MessageBox('Obrigatório informar a Data do Recebimento.','TechCore-RTG',mb_IconStop or mb_Ok);
      eData.SetFocus;
      Abort;
   end;

   if eValor.Value <= 0 then
   begin
      Application.MessageBox('Obrigatório informar o Valor do Recebimento.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValor.SetFocus;
      Abort;
   end;

   if rSubA < rSubB then
   begin
      Application.MessageBox('O valor informado não pode ser maior do que o valor devido.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValor.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrContasReceberRecebto.Button2Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrContasReceberRecebto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if Self.ModalResult = mrCancel then
   begin
      if Application.MessageBox('Tem certeza que deseja cancelar e sair?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
         CanClose := false;
   end;
end;

procedure TFrContasReceberRecebto.FormCreate(Sender: TObject);
var
   pQuery : TFDQuery;
begin
   // Carrega as formas de pagamentos
   tbFormas.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbFormas.Open();

   {Carrega o plano de contas definido}
   with FrContasReceber do
   begin
      case QueryContas.FieldByName('rec_origem').AsInteger of
         1,2,4 :
         begin
            try

               pQuery := TFDQuery.Create(self);
               pQuery.Connection := FrModuloRet.DBConexao;

               pQuery.SQL.Add('Select');
               pQuery.SQL.Add('  pln_conta_codigo || '' - '' || pln_descricao as pln_descricao');
               pQuery.SQL.Add('from');
               pQuery.SQL.Add('  C000018');
               pQuery.SQL.Add('where');
               pQuery.SQL.Add('  id = :id');
               pQuery.ParamByName('id').AsInteger := QueryContas.FieldByName('id_pln_ctas').AsInteger;
               pQuery.Open();

               {Exibe o plano de contas}
               dsQuery.DataSet.FieldByName('rec_pln_ctas_desc').AsString := pQuery.FieldByName('pln_descricao').AsString;

            finally
               FreeAndNil( pQuery );
            end;
         end;

         3 :
         begin
            if (ClassFinanceiro.PlnCtasRec_ID > 0) and (dsQuery.State = dsInsert) then
            begin
               dsQuery.DataSet.FieldByName('id_pln_ctas').AsInteger      := ClassFinanceiro.PlnCtasRec_ID;
               dsQuery.DataSet.FieldByName('rec_pln_ctas_desc').AsString := ClassFinanceiro.PlnCtasRec_Dsc;
            end;
         end;
      end;

   end;

   {Carrega as contas}
   QueryCta.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   QueryCta.Open();

end;

procedure TFrContasReceberRecebto.FormShow(Sender: TObject);
begin
   {Efetua a checagem e calculo de Juros}
   CalcularJuros(FrContasReceber.QueryContas.FieldByName('rec_vencimento').AsDateTime);

   {Efetua a checagem e calculo de Multa}
   CalcularMulta(FrContasReceber.QueryContas.FieldByName('rec_vencimento').AsDateTime);

   // Exibe o valor do saldo a receber
   dsQuery.DataSet.FieldByName('rec_vlr_receber').AsFloat := ValorReceber;
end;

procedure TFrContasReceberRecebto.edPlnContasRecButtonClick(Sender: TObject);
begin
   {Carrega a lista de de plano de contas}
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);

      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         dsQuery.DataSet.FieldByName('id_pln_ctas').AsInteger      := FrListaPlanoContas.QueryID.AsInteger;
         dsQuery.DataSet.FieldByName('rec_pln_ctas_desc').AsString := FrListaPlanoContas.QueryPLN_DESCRICAO_III.AsString
      end;
   finally
      FreeAndNil( FrListaPlanoContas );
   end;
end;

procedure TFrContasReceberRecebto.ed_jurosEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrContasReceberRecebto.ed_jurosExit(Sender: TObject);
var
   txJuros : Real;
   vlJuros : Real;
   vlMulta : Real;
   vlAcres : Real;
   vlDesco : Real;
begin
   TEdit(Sender).Color := clWindow;

   {Taxa dos juros}
   txJuros := ed_Juros.Field.AsFloat;

   {Valor dos juros}
   vlJuros := (ValorReceber * txJuros) / 100;

   {Multa aplicada}
   vlMulta := ed_Multa.Field.AsFloat;

   {Valor dos acréscimos}
   vlAcres := ed_acrescimos.Field.AsFloat;

   {Valor dos descontos}
   vlDesco := ed_desconto.Field.AsFloat;

   {Grava o valor total dos juros}
   dsQuery.DataSet.FieldByName('rec_vlr_juros').AsFloat := vlJuros;

   {Grava o valor total a receber}
   dsQuery.DataSet.FieldByName('rec_vlr_receber').AsFloat := (ValorReceber + vlJuros + vlMulta + vlAcres - vlDesco);

end;

end.
