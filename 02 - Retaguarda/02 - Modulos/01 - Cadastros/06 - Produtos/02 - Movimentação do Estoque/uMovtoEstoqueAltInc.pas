unit uMovtoEstoqueAltInc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Vcl.DBCtrls, RzDBCmbo, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  Vcl.Mask, RzEdit, RzDBEdit, RzDBBnEd, Vcl.StdCtrls, RzCmboBx, Data.DB,
  JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TfrmovtoEstoqueAltInc = class(TForm)
    txtObservacoes: TRzDBMemo;
    Label1: TLabel;
    Label3: TLabel;
    txtTipo: TRzDBComboBox;
    txtProduto: TRzDBButtonEdit;
    Label4: TLabel;
    Label6: TLabel;
    txtQuant: TJvDBCalcEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtDocto: TDBEdit;
    RzDialogButtons1: TRzDialogButtons;
    dsQuery: TDataSource;
    txtJustificativa: TJvDBComboBox;
    RzDBEdit1: TRzDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure txtProdutoButtonClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure RzDialogButtons1ClickCancel(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmovtoEstoqueAltInc: TfrmovtoEstoqueAltInc;

implementation

{$R *.dfm}

uses uMovtoEstoque, uListaProdutos;

procedure TfrmovtoEstoqueAltInc.FormCreate(Sender: TObject);
begin
   TEdit(txtObservacoes).CharCase := ecUpperCase;
end;

procedure TfrmovtoEstoqueAltInc.RzDialogButtons1ClickCancel(Sender: TObject);
begin
   Self.Close;
end;

procedure TfrmovtoEstoqueAltInc.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if txtProduto.Text = EmptyStr then
   begin
      Application.MessageBox('Selecione o produto a ser ajustado.','TechCore-RTG',mb_IconStop or mb_ok);
      txtProduto.SetFocus;
      Abort;
   end;

   if txtQuant.AsInteger < 1 then
   begin
      Application.MessageBox('Informe a quantidade a ser movimentada.','TechCore-RTG',mb_IconStop or mb_ok);
      txtQuant.SetFocus;
      Abort;
   end;

   if txtJustificativa.ItemIndex < 0 then
   begin
      Application.MessageBox('Informe a justificativa do movimento.','TechCore-RTG',mb_IconStop or mb_ok);
      txtJustificativa.SetFocus;
      Abort;
   end;

   if (txtJustificativa.ItemIndex in [3,4,5,6]) and (txtDocto.Text = EmptyStr) then
   begin
      Application.MessageBox('Informe o número do documento vinculado.','TechCore-RTG',mb_IconStop or mb_ok);
      txtDocto.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOK;
end;

procedure TfrmovtoEstoqueAltInc.txtProdutoButtonClick(Sender: TObject);
begin
   try
      FrListaProdutos           := TFrListaProdutos.Create(self);
      FrListaProdutos.TipoQuery := 1;

      if FrListaProdutos.ShowModal = mrOk then
      begin
         with dsQuery.DataSet do
         begin
            FieldByName('id_produto').AsInteger   := FrListaProdutos.tbDadosID.AsInteger;
            FieldByName('prd_descricao').AsString := FrListaProdutos.tbDadosPRD_DESCRICAO.AsString;
            FieldByName('prd_unidade').AsString   := FrListaProdutos.tbDadosPRD_UNIDADE.AsString;
         end;
      end;

   finally
      FreeAndNil(FrListaProdutos);
   end;
end;

end.
