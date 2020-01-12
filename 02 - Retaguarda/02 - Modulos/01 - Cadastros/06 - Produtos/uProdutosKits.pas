unit uProdutosKits;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExMask, JvToolEdit, JvBaseEdits,
  RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Vcl.Mask, RzDBEdit, RzDBBnEd, Data.DB, JvDBControls, Vcl.DBCtrls,
  ACBrBase, ACBrEnterTab, RzDBCmbo;

type
  TFrProdutosKit = class(TForm)
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    Label14: TLabel;
    RzDialogButtons1: TRzDialogButtons;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ed_produto: TRzDBButtonEdit;
    dsQueryKit: TDataSource;
    ed_qtde: TJvDBCalcEdit;
    ed_valor: TJvDBCalcEdit;
    RzDBEdit1: TRzDBEdit;
    ACBrEnterTab1: TACBrEnterTab;
    procedure ed_produtoButtonClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure ed_produtoEnter(Sender: TObject);
    procedure ed_produtoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Prd_ID : Integer;
  end;

var
  FrProdutosKit: TFrProdutosKit;

implementation

{$R *.dfm}

uses uProdutos, uListaProdutos;

procedure TFrProdutosKit.ed_produtoButtonClick(Sender: TObject);
begin
   {Carrega o produto selecionado}
   FrListaProdutos            := TFrListaProdutos.Create(self);
   FrListaProdutos.TipoQuery  := 1; // Listagem simples

   if FrListaProdutos.ShowModal = mrOk then
   begin
      with dsQueryKit do
      begin
         DataSet.FieldByName('prd_id').AsInteger       := FrListaProdutos.tbDadosID.AsInteger;
         DataSet.FieldByName('prd_descricao').AsString := FrListaProdutos.tbDados.FieldByName('prd_descricao').AsString;
         DataSet.FieldByName('prd_unidade').AsString   := FrListaProdutos.tbDados.FieldByName('prd_unidade').AsString;
         DataSet.FieldByName('prd_qtde').AsInteger     := 1;
      end;
   end;
end;

procedure TFrProdutosKit.ed_produtoEnter(Sender: TObject);
begin
   (Sender as TCustomEdit).Brush.Color := clSilver;
end;

procedure TFrProdutosKit.ed_produtoExit(Sender: TObject);
begin
   (Sender as TCustomEdit).Brush.Color := clWindow;
end;

procedure TFrProdutosKit.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if ed_produto.Text = EmptyStr then
   begin
      Application.MessageBox('Informe o produto a ser incluido.','TechCore-RTG',mb_IconStop or mb_ok);
      ed_produto.SetFocus;
      Abort;
   end;

   if ed_qtde.AsInteger <= 0 then
   begin
      Application.MessageBox('Informe a quantidade a ser incluida.','TechCore-RTG',mb_IconStop or mb_ok);
      ed_qtde.SetFocus;
      Abort;
   end;

   if ed_valor.AsInteger <= 0 then
   begin
      Application.MessageBox('Informe o valor unitário do produto que irá compor o KIT.','TechCore-RTG',mb_IconStop or mb_ok);
      ed_valor.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;

end;

end.
