unit uContasPagar_Pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, JvDataSource, JvBaseEdits, JvDBControls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvExControls,
  JvDBLookup, RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzDBLbl,
  RzPanel, RzEdit, RzDBEdit, RzDBBnEd, DateUtils, RzStatus, Vcl.ComCtrls;

type
  TFrContasPagar_Pagar = class(TForm)
    pnLeft: TPanel;
    Image3: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    eForma: TJvDBLookupCombo;
    eData: TJvDBDateEdit;
    eAnotacoes: TDBEdit;
    ed_juros: TJvDBCalcEdit;
    ed_multa: TJvDBCalcEdit;
    eValor: TJvDBCalcEdit;
    ed_acrescimos: TJvDBCalcEdit;
    ed_descontos: TJvDBCalcEdit;
    ed_total_pagar: TJvDBCalcEdit;
    ACBrEnterTab1: TACBrEnterTab;
    tbFormas: TFDQuery;
    dsFormas: TJvDataSource;
    RzPanel2: TRzPanel;
    dsQuery: TDataSource;
    Label2: TLabel;
    Label9: TLabel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    Button3: TButton;
    Button4: TButton;
    edPlnContasPag: TRzDBButtonEdit;
    Label70: TLabel;
    Bevel1: TBevel;
    cbConta: TJvDBLookupCombo;
    Label12: TLabel;
    QueryCta: TFDQuery;
    dsQueryCta: TDataSource;
    QueryCtaID: TIntegerField;
    QueryCtaCTA_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ed_jurosEnter(Sender: TObject);
    procedure ed_jurosExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPlnContasPagButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularJuros(DataVencto : TDateTime);
    procedure CalcularMulta(DataVencto : TDateTime);
  public
    { Public declarations }
    ValorReceber : Real;
  end;

var
  FrContasPagar_Pagar: TFrContasPagar_Pagar;

implementation

uses
   Classe.Empresa, uContasPagar, uModuloRet, Classe.Financeiro,
  uListaPlanoContas;

{$R *.dfm}

procedure TFrContasPagar_Pagar.Button3Click(Sender: TObject);
var
   rSubA, rSubB : Double;
begin
   rSubA := dsQuery.DataSet.FieldByName('pag_vlr_receber').AsFloat;
   rSubB := dsQuery.DataSet.FieldByName('pag_vlr_recebido').AsFloat;

   if eForma.Field.IsNull then
   begin
      Application.MessageBox('Obrigatório informar a Forma do Pagamento','TechCore-RTG',mb_IconStop or mb_Ok);
      eForma.SetFocus;
      Abort;
   end;

   if cbConta.Field.IsNull then
   begin
      Application.MessageBox('Obrigatório informar a Conta utilizada no Pagamento','TechCore-RTG',mb_IconStop or mb_Ok);
      cbConta.SetFocus;
      Abort;
   end;

   if edPlnContasPag.Text = EmptyStr then
   begin
      Application.MessageBox('Obrigatório informar o Plano de Contas','TechCore-RTG',mb_IconStop or mb_Ok);
      edPlnContasPag.SetFocus;
      Abort;
   end;

   if eData.Field.IsNull then
   begin
      Application.MessageBox('Obrigatório informar a Data do Pagamento.','TechCore-RTG',mb_IconStop or mb_Ok);
      eData.SetFocus;
      Abort;
   end;

   if eValor.Value <= 0 then
   begin
      Application.MessageBox('Obrigatório informar o Valor do Pagamento.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValor.SetFocus;
      Abort;
   end;

   if rSubA < rSubB then
   begin
      Application.MessageBox('O valor informado não pode ser maior do que o Valor a Pagar.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValor.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrContasPagar_Pagar.Button4Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrContasPagar_Pagar.CalcularJuros(DataVencto: TDateTime);
var
   JurosCaren   : Real;
   JurosTaxa    : Real;
   DiasVencidos : Integer;
   TotalJuros   : Real;
   aQuery       : TFDQuery;
begin
   {Armazena os dados básicos}
   JurosCaren := FrContasPagar.QueryContas.FieldByName('pag_juros_caren').AsInteger;
   JurosTaxa  := FrContasPagar.QueryContas.FieldByName('pag_juros').AsInteger;

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

               aQuery.SQL.Add('select 1 pag_tax_juros from c000212 where id_c000211 = :id_c000211 and pag_tax_juros > 0');
               aQuery.ParamByName('id_c000211').AsFloat := FrContasPagar.QueryContasID_C11.AsInteger;
               aQuery.Open();

               // Multiplica o juros pela quantidade de dias vencidos
               TotalJuros := (JurosTaxa * (DiasVencidos - JurosCaren));


               if aQuery.IsEmpty then
                  dsQuery.DataSet.FieldByName('pag_tax_juros').AsFloat := TotalJuros;

            finally
               aQuery.Close;
               FreeAndNil( aQuery );
            end;
         end;

      end;

   end;

end;

procedure TFrContasPagar_Pagar.CalcularMulta(DataVencto: TDateTime);
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

               aQuery.SQL.Add('select 1 pag_vlr_multa from c000212 where id_c000211 = :id_c000211 and pag_vlr_multa > 0');
               aQuery.ParamByName('id_c000211').AsFloat := FrContasPagar.QueryContasID_C11.AsInteger;
               aQuery.Open();

               if aQuery.IsEmpty then
                  dsQuery.DataSet.FieldByName('pag_vlr_multa').AsFloat := ClassFinanceiro.MultaTaxa;

            finally
               aQuery.Close;
               FreeAndNil( aQuery );
            end;
         end;

      end;
   end;

end;

procedure TFrContasPagar_Pagar.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if Self.ModalResult = mrCancel then
   begin
      if Application.MessageBox('Tem certeza que deseja cancelar e sair?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
         CanClose := false;
   end;
end;

procedure TFrContasPagar_Pagar.FormCreate(Sender: TObject);
var
   pQuery : TFDQuery;
begin
   // Carrega as formas de pagamentos
   tbFormas.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbFormas.Open();

   {Carrega o plano de contas definido}
   with FrContasPagar do
   begin
      case QueryContas.FieldByName('pag_origem').AsInteger of
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
               pQuery.ParamByName('id').AsInteger := QueryContas.FieldByName('id_plano_contas').AsInteger;
               pQuery.Open();

               {Exibe o plano de contas}
               dsQuery.DataSet.FieldByName('pag_pln_ctas_desc').AsString := pQuery.FieldByName('pln_descricao').AsString;

            finally
               FreeAndNil( pQuery );
            end;
         end;

         3 :
         begin
            if (ClassFinanceiro.PlnCtasRec_ID > 0) and (dsQuery.State = dsInsert) then
            begin
               dsQuery.DataSet.FieldByName('id_pln_ctas').AsInteger      := ClassFinanceiro.PlnCtasRec_ID;
               dsQuery.DataSet.FieldByName('pag_pln_ctas_desc').AsString := ClassFinanceiro.PlnCtasRec_Dsc;
            end;
         end;
      end;

   end;

   {Carrega as contas}
   QueryCta.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   QueryCta.Open();
end;

procedure TFrContasPagar_Pagar.FormShow(Sender: TObject);
begin
   {Efetua a checagem e calculo de Juros}
   CalcularJuros(FrContasPagar.QueryContas.FieldByName('pag_vencimento').AsDateTime);

   {Efetua a checagem e calculo de Multa}
   CalcularMulta(FrContasPagar.QueryContas.FieldByName('pag_vencimento').AsDateTime);

   {Exibe o valor do saldo a receber da parcela}
   dsQuery.DataSet.FieldByName('pag_vlr_receber').AsFloat := ValorReceber;
end;

procedure TFrContasPagar_Pagar.edPlnContasPagButtonClick(Sender: TObject);
begin
   {Carrega a lista de de plano de contas}
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);

      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         dsQuery.DataSet.FieldByName('id_pln_ctas').AsInteger      := FrListaPlanoContas.QueryID.AsInteger;
         dsQuery.DataSet.FieldByName('pag_pln_ctas_desc').AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil( FrListaPlanoContas );
   end;
end;

procedure TFrContasPagar_Pagar.ed_jurosEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrContasPagar_Pagar.ed_jurosExit(Sender: TObject);
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
   vlDesco := ed_descontos.Field.AsFloat;

   {Grava o valor total dos juros}
   dsQuery.DataSet.FieldByName('pag_vlr_juros').AsFloat := vlJuros;

   {Grava o valor total a receber}
   dsQuery.DataSet.FieldByName('pag_vlr_receber').AsFloat := (ValorReceber + vlJuros + vlMulta + vlAcres - vlDesco);

end;

end.
