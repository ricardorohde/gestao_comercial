unit uPedidosVendasLstProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, RzPanel, RzDlgBtn, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzCmboBx, Vcl.Menus,
  Vcl.Imaging.pngimage;

type
  TFrPedidosVendasLstProdutos = class(TForm)
    Query: TFDQuery;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    dsDados: TJvDataSource;
    RzDialogButtons2: TRzDialogButtons;
    QueryPRD_DATA_REG: TSQLTimeStampField;
    QueryPRD_CODIGO: TIntegerField;
    QueryPRD_CODIGO_BRR: TStringField;
    QueryPRD_DESCRICAO: TStringField;
    QueryPRD_UNIDADE: TStringField;
    Panel2: TPanel;
    eTipo: TRzComboBox;
    Label1: TLabel;
    eSearch: TRzEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    QueryPRD_VLR_CUSTO: TBCDField;
    RzPanel1: TRzPanel;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    QueryPRD_QTDE_ATUAL: TBCDField;
    eGrid: TJvDBGrid;
    QueryPRD_VLR_VENDA: TBCDField;
    QueryPRD_CODIGO_TER: TStringField;
    QueryPRD_STATUS: TIntegerField;
    QueryID_TIPO_PRODUTO: TIntegerField;
    QueryID_GRUPO: TIntegerField;
    procedure QueryPRD_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure RzDialogButtons2ClickOk(Sender: TObject);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure eSearchChange(Sender: TObject);
    procedure eSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eGridKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure Listar_PorTabela(id_tab_precos: integer);

  public
   {utilizado somente na tabela de preços}
   tab_precos : boolean;
  end;

var
  FrPedidosVendasLstProdutos: TFrPedidosVendasLstProdutos;

implementation

uses
   Classe.Empresa, uModuloRet, Classe.PedidoVendas;

{$R *.dfm}

procedure TFrPedidosVendasLstProdutos.eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Query.IsEmpty then Exit;

   {Efetua a coloração de acordo o status}
   if not (gdSelected in State) then
   begin
      if Query.FieldByName('prd_qtde_atual').AsInteger < 0 then
         (Sender as TDBGrid).Canvas.Font.Color := clRed;
   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrPedidosVendasLstProdutos.eGridKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if ( KEY = VK_UP ) and ( Query.Bof ) then
      eSearch.SetFocus;

   if KEY = VK_RETURN then
      RzDialogButtons2ClickOk(Sender);
end;

procedure TFrPedidosVendasLstProdutos.eSearchChange(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : begin
         Query.Filtered := false;
         Query.Filter   := 'PRD_CODIGO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         Query.Filtered := true;
      end;

      1 : begin
         Query.Filtered := false;
         Query.Filter   := 'PRD_CODIGO_BRR LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         Query.Filtered := true;
      end;

      2 : begin
         Query.Filtered := false;
         Query.Filter   := 'PRD_CODIGO_TER LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         Query.Filtered := true;
      end;

      3 : begin
         Query.Filtered := false;
         Query.Filter   := 'PRD_DESCRICAO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         Query.Filtered := true;
      end;
   end;
end;

procedure TFrPedidosVendasLstProdutos.eSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if KEY = VK_DOWN then
      eGrid.SetFocus;
end;

procedure TFrPedidosVendasLstProdutos.FormCreate(Sender: TObject);
begin
   {Ajusta o combo na inicialização}
   eTipo.ItemIndex := 3;
end;

procedure TFrPedidosVendasLstProdutos.FormShow(Sender: TObject);
var
   SqlLocal : String;
begin
   {Ajusta a quantidade de casas decimais}
   case FEmpresaClass.Decimal_Venda of
      2 : QueryPRD_VLR_VENDA.DisplayFormat := ',0.00';
      3 : QueryPRD_VLR_VENDA.DisplayFormat := ',0.000';
      4 : QueryPRD_VLR_VENDA.DisplayFormat := ',0.0000';
   end;

   {Ajusta a quantidade de casas decimais da quantidade}
   case FEmpresaClass.Decimal_Qtde of
      2 : QueryPRD_QTDE_ATUAL.DisplayFormat := ',0.00';
      3 : QueryPRD_QTDE_ATUAL.DisplayFormat := ',0.000';
      4 : QueryPRD_QTDE_ATUAL.DisplayFormat := ',0.0000';
   end;

   case FEmpresaClass.Decimal_Custo of
      2 : QueryPRD_VLR_CUSTO.DisplayFormat := ',0.00';
      3 : QueryPRD_VLR_CUSTO.DisplayFormat := ',0.000';
      4 : QueryPRD_VLR_CUSTO.DisplayFormat := ',0.0000';
   end;

   // Listagem para pedidos de vendas
   Listar_PorTabela(ClassPedidoVendas.IDTabelaPrecos);

end;

procedure TFrPedidosVendasLstProdutos.ipodePesquisa1Click(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : eTipo.ItemIndex := 1;
      1 : eTipo.ItemIndex := 2;
      2 : eTipo.ItemIndex := 3;
      3 : eTipo.ItemIndex := 0;
   end;

   {efetua a releitura dos produtos}
   Self.OnShow(Self);

   {posiciona o cursor no campo de pesquisa}
   eSearch.SetFocus;
   eSearch.Clear;

end;

procedure TFrPedidosVendasLstProdutos.Listar_PorTabela(id_tab_precos: integer);
begin
   {Carrega os dados com base na tabela de preço}
   Query.Filtered := false;

   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('select');
   Query.SQL.Add(' t1.id,');
   Query.SQL.Add(' t1.id_empresa,');
   Query.SQL.Add(' t1.id_grupo,');
   Query.SQL.Add(' t1.id_tipo_produto,');
   Query.SQL.Add(' t1.prd_data_reg,');
   Query.SQL.Add(' t1.prd_codigo,');
   Query.SQL.Add(' t1.prd_codigo_ter,');
   Query.SQL.Add(' t1.prd_codigo_brr,');
   Query.SQL.Add(' t1.prd_descricao,');
   Query.SQL.Add(' t1.prd_unidade,');
   Query.SQL.Add(' t1.prd_vlr_custo,');
   Query.SQL.Add(' t1.prd_status,');
   Query.SQL.Add(' coalesce(t2.prc_vlr_venda,0) as prd_vlr_venda,');
   Query.SQL.Add(' t3.qtde_atual                as prd_qtde_atual');
   Query.SQL.Add('from');
   Query.SQL.Add(' C000405 as t1');
   Query.SQL.Add('left join');
   Query.SQL.Add(' C000304 as t2');
   Query.SQL.Add('on');
   Query.SQL.Add(' t2.id_produto = t1.id');
   Query.SQL.Add('and');
   Query.SQL.Add(' t2.id_tabela  = :id_tributos');
   Query.SQL.Add('join');
   Query.SQL.Add(' C000406 as t3');
   Query.SQL.Add('on');
   Query.SQL.Add(' t3.id_produto = t1.id');
   Query.SQL.Add('where');
   Query.SQL.Add(' t1.id_empresa = :id_empresa');

   {ajusta a ordenção dos campos}
   case eTipo.ItemIndex of
      0 : Query.SQL.Add('order by prd_codigo');
      1 : Query.SQL.Add('order by prd_codigo_brr');
      2 : Query.SQL.Add('order by prd_codigo_ter');
      3 : Query.SQL.Add('order by prd_descricao');
   end;

   Query.ParamByName('id_empresa').AsInteger  := FEmpresaClass.ID;
   Query.ParamByName('id_tributos').AsInteger := id_tab_precos;
   Query.Open();
end;

procedure TFrPedidosVendasLstProdutos.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
   eSearch.SetFocus;
   eSearch.SelectAll;
end;

procedure TFrPedidosVendasLstProdutos.RzDialogButtons2ClickOk(Sender: TObject);
begin
   if Query.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if Query.FieldByName('PRD_STATUS').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrPedidosVendasLstProdutos.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPedidosVendasLstProdutos.QueryPRD_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      case Sender.AsInteger of
         1 : Text := 'S';
         2 : Text := 'N';
      end;
   end
   else
      Text := Sender.AsString;
end;

end.
