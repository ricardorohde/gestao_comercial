unit uConfigFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvToolEdit, JvBaseEdits,
  JvDBControls, JvExMask, JvSpin, JvDBSpinEdit, Vcl.ExtCtrls, RzPanel,
  RzDlgBtn, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzDBBnEd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrBase, ACBrEnterTab;

type
  TFrConfigFinanceiro = class(TForm)
    edPlnContasRec: TRzDBButtonEdit;
    Label71: TLabel;
    edPlnContasPag: TRzDBButtonEdit;
    Label70: TLabel;
    RzDialogButtons1: TRzDialogButtons;
    edCarenciaJuros: TJvDBSpinEdit;
    edJuros: TJvDBCalcEdit;
    Label1: TLabel;
    edCarenciaMulta: TJvDBSpinEdit;
    edMulta: TJvDBCalcEdit;
    Label2: TLabel;
    Query: TFDQuery;
    dsQuery: TDataSource;
    QueryID: TIntegerField;
    QueryID_EMP: TIntegerField;
    QueryID_PLN_CTAS_PAG: TIntegerField;
    QueryPLN_CTAS_PAG_DESC: TStringField;
    QueryID_PLN_CTAS_REC: TIntegerField;
    QueryPLN_CTAS_REC_DESC: TStringField;
    QueryF_JUROS: TFMTBCDField;
    QueryF_JUROS_CAREN: TIntegerField;
    QueryF_MULTA: TFMTBCDField;
    QueryF_MULTA_CAREN: TIntegerField;
    ACBrEnterTab1: TACBrEnterTab;
    procedure edPlnContasPagEnter(Sender: TObject);
    procedure edPlnContasPagExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure edPlnContasPagButtonClick(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure edPlnContasRecButtonClick(Sender: TObject);
    procedure QueryNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrConfigFinanceiro: TFrConfigFinanceiro;

implementation

{$R *.dfm}

uses uModuloRet, Classe.Empresa, uListaPlanoContas;

procedure TFrConfigFinanceiro.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if Query.State in [dsInsert, dsEdit] then
   begin
      if Application.MessageBox('Tem certeza que deseja cancelar e sair?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
         CanClose := false
      else
         Query.Close;
   end
   else
      Query.Close;
end;

procedure TFrConfigFinanceiro.FormCreate(Sender: TObject);
begin
   {Carrega os dados}
   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.Open();

   {Coloca o cursor em modo de edição ou inclusão}
   if Query.IsEmpty then
      Query.Insert
   else
      Query.Edit;
end;

procedure TFrConfigFinanceiro.QueryBeforePost(DataSet: TDataSet);
begin
   if edPlnContasPag.Text = EmptyStr then
   begin
      Application.MessageBox('Informe o plano padrão para Contas a Pagar.','TechCore-RTG',mb_IconStop or mb_ok);
      edPlnContasPag.SetFocus;
      Abort;
   end;

   if edPlnContasRec.Text = EmptyStr then
   begin
      Application.MessageBox('Informe o plano padrão para Contas a Receber.','TechCore-RTG',mb_IconStop or mb_ok);
      edPlnContasRec.SetFocus;
      Abort;
   end;

   if edCarenciajuros.AsInteger < 0 then
   begin
      Application.MessageBox('Informe o tempo de carência antes de aplicaro Juros informado.','TechCore-RTG',mb_IconStop or mb_ok);
      edCarenciaJuros.SetFocus;
      Abort;
   end;

   if edJuros.AsInteger < 0 then
   begin
      Application.MessageBox('Informe o percentual de juros a ser aplicado após a carência.','TechCore-RTG',mb_IconStop or mb_ok);
      edJuros.SetFocus;
      Abort;
   end;

   if edCarenciaMulta.AsInteger < 0 then
   begin
      Application.MessageBox('Informe o tempo de carência antes de aplicar a Multa por Atraso.','TechCore-RTG',mb_IconStop or mb_ok);
      edCarenciaMulta.SetFocus;
      Abort;
   end;

   if edMulta.AsInteger < 0 then
   begin
      Application.MessageBox('Informe o Valor da Multa a ser aplicado após a carência.','TechCore-RTG',mb_IconStop or mb_ok);
      edMulta.SetFocus;
      Abort;
   end;

   Application.MessageBox('Informações gravadas com sucesso.','TechCore-RTG',mb_IconInformation or mb_ok);

   Self.ModalResult := mrOk;

end;

procedure TFrConfigFinanceiro.QueryNewRecord(DataSet: TDataSet);
begin
   {Faz o vinculo com a empresa ativa}
   Query.FieldByName('id_emp').AsInteger := FEmpresaClass.ID;
end;

procedure TFrConfigFinanceiro.edPlnContasPagButtonClick(Sender: TObject);
begin
   {Carrega a lista de de plano de contas}
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);

      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         QueryID_PLN_CTAS_PAG.AsInteger  := FrListaPlanoContas.QueryID.AsInteger;
         QueryPLN_CTAS_PAG_DESC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil( FrListaPlanoContas );
   end;
end;

procedure TFrConfigFinanceiro.edPlnContasPagEnter(Sender: TObject);
begin
   (Sender as TCustomEdit).Brush.Color := clSilver;
end;

procedure TFrConfigFinanceiro.edPlnContasPagExit(Sender: TObject);
begin
   (Sender as TCustomEdit).Brush.Color := clWhite;
end;

procedure TFrConfigFinanceiro.edPlnContasRecButtonClick(Sender: TObject);
begin
   {Carrega a lista de de plano de contas}
   try
      FrListaPlanoContas := TFrListaPlanoContas.Create(self);

      if FrListaPlanoContas.ShowModal = mrOk then
      begin
         QueryID_PLN_CTAS_REC.AsInteger  := FrListaPlanoContas.QueryID.AsInteger;
         QueryPLN_CTAS_REC_DESC.AsString := FrListaPlanoContas.QueryPLN_CONTA_CODIGO.AsString
                                                   + ' - '
                                                   + FrListaPlanoContas.QueryPLN_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil( FrListaPlanoContas );
   end;

end;

procedure TFrConfigFinanceiro.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if Query.State in [dsInsert, dsEdit] then
      Query.Post
   else
      Self.Close;
end;

end.
