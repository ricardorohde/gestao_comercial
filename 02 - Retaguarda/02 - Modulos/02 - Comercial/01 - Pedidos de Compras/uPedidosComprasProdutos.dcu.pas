unit uPedidosComprasProdutos.dcu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzDlgBtn, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, RzDBBnEd, Vcl.ExtCtrls, Data.DB, JvDataSource, ACBrBase,
  ACBrEnterTab, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrPedidosComprasProdutos = class(TForm)
    pnProduto: TPanel;
    eCodigo: TRzDBButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    eProduto: TRzDBEdit;
    Label3: TLabel;
    eValorUnit: TJvDBCalcEdit;
    Label4: TLabel;
    eQtde: TJvDBCalcEdit;
    eValorTotal: TJvDBCalcEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RzDialogButtons1: TRzDialogButtons;
    dsDados: TJvDataSource;
    RzDBEdit1: TRzDBEdit;
    Label8: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    pnValores: TPanel;
    PopupMenu1: TPopupMenu;
    SelecionarProduto1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    aQuery: TFDQuery;
    procedure eQtdeExit(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure SelecionarProduto1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { usada para exibor ou não os kits }
    Prd_Kit : boolean;

    { usada para determinar o tipo de query }
    TipoQuery : Integer;
  end;

var
  FrPedidosComprasProdutos: TFrPedidosComprasProdutos;

implementation

uses
   uListaProdutos, uModuloRet, Classe.Empresa;

{$R *.dfm}

procedure TFrPedidosComprasProdutos.eQtdeExit(Sender: TObject);
begin
   eValorTotal.Value := (eValorUnit.Value * eQtde.Value);
end;

procedure TFrPedidosComprasProdutos.FormCreate(Sender: TObject);
begin
   {Ajustar casas decimais}
   eValorUnit.DecimalPlaces := FEmpresaClass.Decimal_Venda;

   {Ajustar quantidade}
   eQtde.DecimalPlaces := FEmpresaClass.Decimal_Qtde;
end;

procedure TFrPedidosComprasProdutos.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if eCodigo.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Produto','TechCore-RTG',mb_IconStop or mb_Ok);
      eCodigo.SetFocus;
      Abort;
   end;

   if eValorUnit.Value = 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Valor Unitário.','TechCore-RTG',mb_IconStop or mb_Ok);
      eValorUnit.SetFocus;
      Abort;
   end;

   if eQtde.Value = 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Quantidade.','TechCore-RTG',mb_IconStop or mb_Ok);
      eQtde.SetFocus;
      Abort;
   end;

   if dsDados.DataSet.State = dsInsert then
   begin
      {Grava os dados e inicia um novo registro}
      dsDados.DataSet.Post;
      dsDados.DataSet.Insert;

      {Posiciona o cursor}
      eCodigo.SetFocus;
   end
   else
      Self.ModalResult := mrOk;

end;

procedure TFrPedidosComprasProdutos.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPedidosComprasProdutos.SelecionarProduto1Click(Sender: TObject);
begin
   try
      FrListaProdutos           := TFrListaProdutos.Create(self);
      FrListaProdutos.TipoQuery := 2; // Pedido de compras

      if FrListaProdutos.ShowModal = mrOk then
      begin
         dsDados.DataSet.FieldByName('ID_PRODUTO').AsInteger     := FrListaProdutos.tbDadosID.AsInteger;
         dsDados.DataSet.FieldByName('ITM_QTDE').AsFloat         := 1;
         dsDados.DataSet.FieldByName('ITM_VLR_UNITARIO').AsFloat := FrListaProdutos.tbDadosPRD_VLR_CUSTO.AsFloat;
         dsDados.DataSet.FieldByName('ITM_VLR_TOTAL').AsFloat    := 0;
      end;

   finally
      eValorUnit.SetFocus;
      FreeAndNil( FrListaProdutos );
   end;
end;

end.
