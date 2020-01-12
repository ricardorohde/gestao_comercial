unit uEmissorNfeProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzDlgBtn, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, RzDBBnEd, Vcl.ExtCtrls, Data.DB, JvDataSource, ACBrBase,
  ACBrEnterTab, Vcl.Menus, Vcl.DBCtrls, RzDBCmbo, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzCmboBx,
  JvExStdCtrls, JvEdit, JvCombobox;

type
  TFrEmissorNfeProdutos = class(TForm)
    pnProduto: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RzDialogButtons1: TRzDialogButtons;
    dsDados: TJvDataSource;
    Label8: TLabel;
    EnterTab: TACBrEnterTab;
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
    dsNfes: TJvDataSource;
    eInfos: TRzDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    ed_descricao: TJvEdit;
    ed_unidade: TJvEdit;
    cb_origem: TRzDBComboBox;
    ed_vlr_unitario: TJvDBCalcEdit;
    ed_qtde: TJvDBCalcEdit;
    ed_vlr_total: TJvDBCalcEdit;
    ed_ncm: TRzDBButtonEdit;
    ed_codigo: TRzDBButtonEdit;
    QueryProdutos: TFDQuery;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    ed_cest: TDBEdit;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure ed_qtdeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ed_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_codigoEnter(Sender: TObject);
    procedure ed_codigoExit(Sender: TObject);
    procedure ed_ncmButtonClick(Sender: TObject);
    procedure SelecionarProduto1Click(Sender: TObject);
    procedure ed_descricaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SqlText : String;
    TipoQuery : integer;
    id_tab_precos : Integer;
    Vr_Forma_Inc_Produto : Integer;
  end;

var
  FrEmissorNfeProdutos: TFrEmissorNfeProdutos;

implementation

uses
   uListaProdutos, Classe.Empresa, uEmissorNfe, uListaNCMs,
  uModuloRet;

{$R *.dfm}

procedure TFrEmissorNfeProdutos.ed_qtdeExit(Sender: TObject);
begin
   // Efetua o calculo do valor total do produto
   dsDados.DataSet.FieldByName('PRD_VLR_SUBTOTAL').AsFloat := (ed_vlr_unitario.Value * ed_qtde.Value);

   TEdit(Sender).Color := clWindow;
end;

procedure TFrEmissorNfeProdutos.FormCreate(Sender: TObject);
begin
   // Ajustar casas decimais
   ed_vlr_unitario.DecimalPlaces := FEmpresaClass.Decimal_Venda;

   // Ajustar casas decimais
   ed_qtde.DecimalPlaces := FEmpresaClass.Decimal_Qtde;

   // Ajusta o Script básico direto componente
   SqlText := '';
   SqlText := tbTribs.SQL.Text;
end;

procedure TFrEmissorNfeProdutos.FormShow(Sender: TObject);
var
   OrderBy : String;
begin

   // Ajusta conforme a UF do destinatário
   SqlText := SqlText + ' AND ' + dsNfes.DataSet.FieldByName('cli_uf').AsString + ' = :UF';
   SqlText := SqlText + OrderBy;

   tbTribs.Close;
   tbTribs.SQL.Clear;
   tbTribs.SQL.Add(SqlText);

   // Carrega todos os tributos vinculados a empresa
   tbTribs.ParamByName('id_empresa').AsInteger   := FEmpresaClass.ID;
   tbTribs.ParamByName('trb_crt').AsInteger      := FEmpresaClass.Crt;
   tbTribs.ParamByName('trb_operacao').AsInteger := dsNfes.DataSet.FieldByName('nfe_tipo_operacao').AsInteger;
   tbTribs.ParamByName('UF').AsInteger           := 1;
   tbTribs.Open();
end;

procedure TFrEmissorNfeProdutos.ed_codigoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00DFDFDF;
end;

procedure TFrEmissorNfeProdutos.ed_codigoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrEmissorNfeProdutos.ed_codigoKeyPress(Sender: TObject; var Key: Char);
begin
   // Se for digitado algo neste campo, altera o tipo de inclusão para manual
   Vr_Forma_Inc_Produto := 0;
end;

procedure TFrEmissorNfeProdutos.ed_descricaoExit(Sender: TObject);
begin
   TEdit(Sender).Color := $00DDFFFF;
end;

procedure TFrEmissorNfeProdutos.ed_ncmButtonClick(Sender: TObject);
begin
   try
      FrListaNCMs := TFrListaNCMs.Create(self);
      if FrListaNCMs.ShowModal = mrOk then
      begin
         dsDados.DataSet.FieldByName('PRD_NCM').AsString    := FrListaNCMs.tbDadosNCM_CODIGO.AsString;
         dsDados.DataSet.FieldByName('PRD_NCM_EX').AsString := FrListaNCMs.tbDadosNCM_EX.AsString;
         dsDados.DataSet.FieldByName('PRD_CEST').AsString   := FrListaNCMs.tbDadosNCM_CEST.AsString;
      end;

   finally
      FreeAndNil( FrListaNCMs );
   end;
end;

procedure TFrEmissorNfeProdutos.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if ed_codigo.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Produto','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_codigo.SetFocus;
      Abort;
   end;

   if ed_descricao.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Descrição do Produto','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_descricao.SetFocus;
      Abort;
   end;

   if ed_unidade.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Unidade do Produto','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_unidade.SetFocus;
      Abort;
   end;

   if ed_ncm.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar NCM do Produto','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_ncm.SetFocus;
      Abort;
   end;

   if ed_cest.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar CEST do Poduto','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_cest.SetFocus;
      Abort;
   end;

   if cb_origem.ItemIndex < 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Origem do Produto','TechCore-RTG',mb_IconStop or mb_Ok);
      cb_origem.SetFocus;
      Abort;
   end;

   if eTributo.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar a tributação para este produto.','TechCore-RTG',mb_IconStop or mb_Ok);
      eTributo.SetFocus;
      Abort;
   end;

   if ed_vlr_unitario.Value = 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Valor Unitário.','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_vlr_unitario.SetFocus;
      Abort;
   end;

   if ed_qtde.Value = 0 then
   begin
      Application.MessageBox('Erro, Obrigatório informar a Quantidade.','TechCore-RTG',mb_IconStop or mb_Ok);
      ed_qtde.SetFocus;
      Abort;
   end;

   if dsDados.DataSet.State = dsInsert then
   begin
      // Determina o tipo de inclusão antes de gravar
      dsDados.DataSet.FieldByName('PRD_INCLUSAO').AsInteger := Vr_Forma_Inc_Produto;

      {Grava os dados e inicia um novo registro}
      dsDados.DataSet.Post;
      dsDados.DataSet.Append;

      {Atualiza o formulário}
      Self.OnShow(Self);

      {Posiciona o cursor}
      ed_codigo.SetFocus;
   end
   else
      Self.ModalResult := mrOk;

end;

procedure TFrEmissorNfeProdutos.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrEmissorNfeProdutos.SelecionarProduto1Click(Sender: TObject);
begin

   try

      FrListaProdutos := TFrListaProdutos.Create(self);
      FrListaProdutos.id_tab_precos := id_tab_precos;
      FrListaProdutos.TipoQuery     := 0; // Pedido de vendas, Padrão pedidos de vendas

      if FrListaProdutos.ShowModal = mrOk then
      begin

         // Carrega os dados do produto selecionado
         with QueryProdutos do
         begin
            Close;
            SQL.Clear;
            SQL.Add('Select');
            SQL.Add('   id,');
            SQL.Add('   lpad(prd_codigo,6,0) as prd_codigo,');
            SQL.Add('   prd_codigo_ter,');
            SQL.Add('   prd_codigo_brr,');
            SQL.Add('   prd_descricao,');
            SQL.Add('   prd_unidade,');
            SQL.Add('   prd_ncm,');
            SQL.Add('   prd_ncm_ex,');
            SQL.Add('   prd_cest,');
            SQL.Add('   prd_origem,');
            SQL.Add('   prd_peso_l,');
            SQL.Add('   prd_peso_b,');
            SQL.Add('   (Select coalesce(prc_vlr_venda,0) from c000304 where id_tabela = :id_tabela and id_produto = c000405.id) as prd_vlr_venda');
            SQL.Add('from');
            SQL.Add('   c000405');
            SQL.Add('where');
            SQL.Add('   id = :id');
            ParamByName('id').AsInteger        := FrListaProdutos.tbDadosID.AsInteger;
            ParamByName('id_tabela').AsInteger := id_tab_precos;
            Open();

         end;

         with dsDados.DataSet do
         begin
            FieldByName('prd_codigo_barras').AsString := QueryProdutos.FieldByName('prd_codigo_brr').AsString;
            FieldByName('id_produto').AsInteger       := QueryProdutos.FieldByName('id').AsInteger;
            FieldByName('prd_descricao').AsString     := QueryProdutos.FieldByName('prd_descricao').AsString;
            FieldByName('prd_unidade').AsString       := QueryProdutos.FieldByName('prd_unidade').AsString;
            FieldByName('prd_ncm').AsString           := QueryProdutos.FieldByName('prd_ncm').AsString;
            FieldByName('prd_ncm_ex').AsString        := QueryProdutos.FieldByName('prd_ncm_ex').AsString;
            FieldByName('prd_cest').AsString          := QueryProdutos.FieldByName('prd_cest').AsString;
            FieldByName('prd_origem').AsInteger       := QueryProdutos.FieldByName('prd_origem').AsInteger;
            FieldByName('prd_qtde').AsFloat           := 1;
            FieldByName('prd_vlr_unitario').AsFloat   := QueryProdutos.FieldByName('prd_vlr_venda').AsFloat;
            FieldByName('prd_vlr_subtotal').AsFloat   := QueryProdutos.FieldByName('prd_vlr_venda').AsFloat;

            // Seleciona o código interno ou de terceiros
            if not QueryProdutos.FieldByName('prd_codigo_ter').IsNull then
               FieldByName('prd_codigo').AsString := QueryProdutos.FieldByName('prd_codigo_ter').AsString;

            if QueryProdutos.FieldByName('prd_codigo_ter').IsNull then
               FieldByName('prd_codigo').AsString := QueryProdutos.FieldByName('prd_codigo').AsString;
         end;
      end;

      // Determina que é uma inclusão de produtos do estoque
      Vr_Forma_Inc_Produto := 1;

   finally
      eTributo.SetFocus;
      QueryProdutos.Close;
      FreeAndNil( FrListaProdutos );
   end;
end;

end.
