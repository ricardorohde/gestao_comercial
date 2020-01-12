unit uPedidosVendasProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzDlgBtn, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, RzDBBnEd, Vcl.ExtCtrls, Data.DB, JvDataSource, ACBrBase,
  ACBrEnterTab, Vcl.Menus, Vcl.DBCtrls, RzDBCmbo, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrPedidosVendasProdutos = class(TForm)
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
    Panel1: TPanel;
    Label10: TLabel;
    eTributo: TRzDBLookupComboBox;
    tbTribs: TFDQuery;
    dsTribs: TJvDataSource;
    Label9: TLabel;
    eInfos: TRzDBEdit;
    dsQuery: TJvDataSource;
    aQuery: TFDQuery;
    procedure eQtdeExit(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure SelecionarProduto1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FrPedidosVendasProdutos: TFrPedidosVendasProdutos;

implementation

uses
   Classe.Empresa, uModuloRet, uPedidosVendas, uPedidosVendasLstProdutos;

{$R *.dfm}

procedure TFrPedidosVendasProdutos.eQtdeExit(Sender: TObject);
begin
   eValorTotal.Value := (eValorUnit.Value * eQtde.Value);
end;

procedure TFrPedidosVendasProdutos.FormCreate(Sender: TObject);
var
   SqlText : String;
   OrderBy : String;
begin
   {Ajusta as casas decimais}
   eValorUnit.DecimalPlaces := FEmpresaClass.Decimal_Venda;

   {Ajusta as casas decimais}
   eQtde.DecimalPlaces := FEmpresaClass.Decimal_Qtde;

   // Ajusta o Script básico direto componente
   SqlText := tbTribs.SQL.Text;
   OrderBy := ' ORDER BY TRB_ICMS_CST, TRB_ICMS_CFOP ASC';

   // Ajusta conforme a UF do destinatário
   SqlText := SqlText + ' AND ' + dsQuery.DataSet.FieldByName('cli_uf').AsString + ' = :UF';
   SqlText := SqlText + OrderBy;

   tbTribs.SQL.Clear;
   tbTribs.SQL.Add(SqlText);

   // Carrega todos os tributos vinculados a empresa
   tbTribs.ParamByName('id_empresa').AsInteger   := FEmpresaClass.ID;
   tbTribs.ParamByName('trb_crt').AsInteger      := FEmpresaClass.Crt;
   tbTribs.ParamByName('trb_operacao').AsInteger := 1; // Operação de saida
   tbTribs.ParamByName('uf').AsInteger           := 1;
   tbTribs.Open();
end;

procedure TFrPedidosVendasProdutos.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if eCodigo.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Produto','TechCore-RTG',mb_IconStop or mb_Ok);
      eCodigo.SetFocus;
      Abort;
   end;

   if eTributo.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a tributação para este produto.','TechCore-RTG',mb_IconStop or mb_Ok);
      eTributo.SetFocus;
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
      dsDados.DataSet.Append;

      {Posiciona o cursor}
      eCodigo.SetFocus;
   end
   else
      Self.ModalResult := mrOk;
end;

procedure TFrPedidosVendasProdutos.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPedidosVendasProdutos.SelecionarProduto1Click(Sender: TObject);
begin
   try
      FrPedidosVendasLstProdutos := TFrPedidosVendasLstProdutos.Create(self);

      if FrPedidosVendasLstProdutos.ShowModal = mrOk then
      begin

         with dsDados.DataSet, FrPedidosVendasLstProdutos do
         begin
            FieldByName('id_produto').AsFloat       := QueryID.AsInteger;
            FieldByName('prd_qtde').AsFloat         := 1;
            FieldByName('prd_vlr_unitario').AsFloat := QueryPRD_VLR_VENDA.AsFloat;
            FieldByName('prd_vlr_subtotal').AsFloat := QueryPRD_VLR_VENDA.AsFloat;
         end;

      end;

   finally
      eTributo.SetFocus;
      FreeAndNil( FrPedidosVendasLstProdutos );
   end;
end;

end.
