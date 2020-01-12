unit uListaProdutos;

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
  TFrListaProdutos = class(TForm)
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    dsDados: TJvDataSource;
    RzDialogButtons2: TRzDialogButtons;
    tbDadosPRD_DATA_REG: TSQLTimeStampField;
    tbDadosPRD_CODIGO: TIntegerField;
    tbDadosPRD_CODIGO_BRR: TStringField;
    tbDadosPRD_DESCRICAO: TStringField;
    tbDadosPRD_UNIDADE: TStringField;
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
    tbDadosPRD_VLR_CUSTO: TBCDField;
    RzPanel1: TRzPanel;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    tbDadosPRD_QTDE_ATUAL: TBCDField;
    eGrid: TJvDBGrid;
    tbDadosPRD_VLR_VENDA: TBCDField;
    tbDadosPRD_CODIGO_TER: TStringField;
    tbDadosPRD_STATUS: TIntegerField;
    tbDadosID_TIPO_PRODUTO: TIntegerField;
    tbDadosID_GRUPO: TIntegerField;
    procedure tbDadosPRD_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure RzDialogButtons2ClickOk(Sender: TObject);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure eSearchChange(Sender: TObject);
    procedure eSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eGridKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure Listar_CadastroProdutos(id_tab_precos : integer);
    procedure Listar_PorTabela(id_tab_precos : integer);
    procedure Listar_PedidoCompras;
  public
   {determina a tabela de preços utilizadas}
   id_tab_precos : Integer;
   TipoQuery     : Integer;

   {utilizado somente na tabela de preços}
   tab_precos : boolean;
  end;

var
  FrListaProdutos: TFrListaProdutos;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

procedure TFrListaProdutos.eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if tbDados.IsEmpty then Exit;

   {Efetua a coloração de acordo o status}
   if not (gdSelected in State) then
   begin
      if tbDados.FieldByName('prd_qtde_atual').AsInteger < 0 then
         (Sender as TDBGrid).Canvas.Font.Color := clRed;
   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrListaProdutos.eGridKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if ( KEY = VK_UP ) and ( tbDados.Bof ) then
      eSearch.SetFocus;

   if KEY = VK_RETURN then
      RzDialogButtons2ClickOk(Sender);
end;

procedure TFrListaProdutos.eSearchChange(Sender: TObject);
begin
   case eTipo.ItemIndex of
      0 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'PRD_CODIGO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;

      1 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'PRD_CODIGO_BRR LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;

      2 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'PRD_CODIGO_TER LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;

      3 : begin
         tbDados.Filtered := false;
         tbDados.Filter   := 'PRD_DESCRICAO LIKE ' + QuotedStr('%' + eSearch.Text + '%');
         tbDados.Filtered := true;
      end;
   end;
end;

procedure TFrListaProdutos.eSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if KEY = VK_DOWN then
      eGrid.SetFocus;
end;

procedure TFrListaProdutos.FormCreate(Sender: TObject);
begin
   {Ajusta o combo na inicialização}
   eTipo.ItemIndex := 3;
end;

procedure TFrListaProdutos.FormShow(Sender: TObject);
var
   SqlLocal : String;
begin
   {Ajusta a quantidade de casas decimais}
   case FEmpresaClass.Decimal_Venda of
      2 : tbDadosPRD_VLR_VENDA.DisplayFormat := ',0.00';
      3 : tbDadosPRD_VLR_VENDA.DisplayFormat := ',0.000';
      4 : tbDadosPRD_VLR_VENDA.DisplayFormat := ',0.0000';
   end;

   {Ajusta a quantidade de casas decimais da quantidade}
   case FEmpresaClass.Decimal_Qtde of
      2 : tbDadosPRD_QTDE_ATUAL.DisplayFormat := ',0.00';
      3 : tbDadosPRD_QTDE_ATUAL.DisplayFormat := ',0.000';
      4 : tbDadosPRD_QTDE_ATUAL.DisplayFormat := ',0.0000';
   end;

   case FEmpresaClass.Decimal_Custo of
      2 : tbDadosPRD_VLR_CUSTO.DisplayFormat := ',0.00';
      3 : tbDadosPRD_VLR_CUSTO.DisplayFormat := ',0.000';
      4 : tbDadosPRD_VLR_CUSTO.DisplayFormat := ',0.0000';
   end;

   {carrega os produtos, conforme os parâemtros passados}
   case TipoQuery of
       0 :
       begin
         // Listagem para pedidos de vendas
         Listar_PorTabela(id_tab_precos);

         // oculta o campo valor de vendas
         eGrid.Columns[7].Visible := false;
         eGrid.Columns[8].Visible := false;
       end;

       1 :
       begin
         // Listagem para cadastro de produtos
         if not tab_precos then
            Listar_CadastroProdutos(id_tab_precos);

         // oculta o campo valor de vendas e custo
         eGrid.Columns[7].Visible := false;
         eGrid.Columns[8].Visible := false;
       end;

       2 :
       begin
         // Listagem para pedidos de Compras
         Listar_PedidoCompras;

         // oculta o campo valor de vendas
         eGrid.Columns[7].Visible := false;
         eGrid.Columns[8].Visible := true;
       end;

   end;

end;

procedure TFrListaProdutos.ipodePesquisa1Click(Sender: TObject);
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

procedure TFrListaProdutos.Listar_PorTabela(id_tab_precos: integer);
begin
   {Carrega os dados com base na tabela de preço}
   tbDados.Filtered := false;

   tbDados.Close;
   tbDados.SQL.Clear;
   tbDados.SQL.Add('select');
   tbDados.SQL.Add(' t2.id,');
   tbDados.SQL.Add(' t2.id_empresa,');
   tbDados.SQL.Add(' t2.id_grupo,');
   tbDados.SQL.Add(' t2.id_tipo_produto,');
   tbDados.SQL.Add(' t2.prd_data_reg,');
   tbDados.SQL.Add(' t2.prd_codigo,');
   tbDados.SQL.Add(' t2.prd_codigo_ter,');
   tbDados.SQL.Add(' t2.prd_codigo_brr,');
   tbDados.SQL.Add(' t2.prd_descricao,');
   tbDados.SQL.Add(' t2.prd_unidade,');
   tbDados.SQL.Add(' t2.prd_vlr_custo,');
   tbDados.SQL.Add(' t2.prd_status,');
   tbDados.SQL.Add(' t1.prc_vlr_venda as prd_vlr_venda,');
   tbDados.SQL.Add(' t3.qtde_atual as prd_qtde_atual');
   tbDados.SQL.Add('from');
   tbDados.SQL.Add(' (select');
   tbDados.SQL.Add('    id_produto,');
   tbDados.SQL.Add('    prc_vlr_venda');
   tbDados.SQL.Add(' from');
   tbDados.SQL.Add('    C000304');
   tbDados.SQL.Add(' where');
   tbDados.SQL.Add('    id_tabela = :id_tabela_precos');
   tbDados.SQL.Add(' ) as t1');
   tbDados.SQL.Add('join');
   tbDados.SQL.Add(' C000405 as t2');
   tbDados.SQL.Add('on');
   tbDados.SQL.Add(' t2.id = t1.id_produto');
   tbDados.SQL.Add('join');
   tbDados.SQL.Add(' C000406 as t3');
   tbDados.SQL.Add('on');
   tbDados.SQL.Add(' t3.id_produto = t1.id_produto');
   tbDados.SQL.Add('where');
   tbDados.SQL.Add(' t2.id_empresa = :id_empresa');

   {ajusta a ordenção dos campos}
   case eTipo.ItemIndex of
      0 : tbDados.SQL.Add('order by prd_codigo');
      1 : tbDados.SQL.Add('order by prd_codigo_brr');
      2 : tbDados.SQL.Add('order by prd_codigo_ter');
      3 : tbDados.SQL.Add('order by prd_descricao');
   end;

   tbDados.ParamByName('id_empresa').AsInteger       := FEmpresaClass.ID;
   tbDados.ParamByName('id_tabela_precos').AsInteger := id_tab_precos;
   tbDados.Open();
end;

procedure TFrListaProdutos.Listar_CadastroProdutos(id_tab_precos: integer);
begin
   {Carrega os dados de forma simples para exibição}
   tbDados.Filtered := false;

   tbDados.Close;
   tbDados.SQL.Clear;
   tbDados.SQL.Add('Select');
   tbDados.SQL.Add(' id,');
   tbDados.SQL.Add(' id_empresa,');
   tbDados.SQL.Add(' id_tipo_produto,');
   tbDados.SQL.Add(' id_grupo,');
   tbDados.SQL.Add(' prd_data_reg,');
   tbDados.SQL.Add(' prd_codigo,');
   tbDados.SQL.Add(' prd_codigo_ter,');
   tbDados.SQL.Add(' prd_codigo_brr,');
   tbDados.SQL.Add(' prd_descricao,');
   tbDados.SQL.Add(' prd_unidade,');
   tbDados.SQL.Add(' prd_vlr_custo,');
   tbDados.SQL.Add(' prd_status,');
   tbDados.SQL.Add(' (select qtde_atual from C000406 where id_produto = C000405.id) as prd_qtde_atual,');
   tbDados.SQL.Add(' cast(0 as numeric(15,4)) as prd_qtde_atual,');
   tbDados.SQL.Add(' cast(0 as numeric(15,4)) as prd_vlr_venda');
   tbDados.SQL.Add('from');
   tbDados.SQL.Add(' C000405');
   tbDados.SQL.Add('where');
   tbDados.SQL.Add(' id_empresa = :id_empresa');

   {Ajusta a ordenção dos campos}
   case eTipo.ItemIndex of
      0 : tbDados.SQL.Add('order by prd_codigo');
      1 : tbDados.SQL.Add('order by prd_codigo_brr');
      2 : tbDados.SQL.Add('order by prd_codigo_ter');
      3 : tbDados.SQL.Add('order by prd_descricao');
   end;

   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrListaProdutos.Listar_PedidoCompras;
begin
   {Carrega os dados de forma simples para exibição}
   tbDados.Filtered := false;

   tbDados.Close;
   tbDados.SQL.Clear;
   tbDados.SQL.Add('Select');
   tbDados.SQL.Add(' id,');
   tbDados.SQL.Add(' id_empresa,');
   tbDados.SQL.Add(' id_tipo_produto,');
   tbDados.SQL.Add(' id_grupo,');
   tbDados.SQL.Add(' prd_data_reg,');
   tbDados.SQL.Add(' prd_codigo,');
   tbDados.SQL.Add(' prd_codigo_ter,');
   tbDados.SQL.Add(' prd_codigo_brr,');
   tbDados.SQL.Add(' prd_descricao,');
   tbDados.SQL.Add(' prd_unidade,');
   tbDados.SQL.Add(' prd_vlr_custo,');
   tbDados.SQL.Add(' prd_status,');
   tbDados.SQL.Add(' (select qtde_atual from C000406 where id_produto = C000405.id) as prd_qtde_atual,');
   tbDados.SQL.Add(' cast(0 as numeric(15,4)) as prd_qtde_atual,');
   tbDados.SQL.Add(' cast(0 as numeric(15,4)) as prd_vlr_venda');
   tbDados.SQL.Add('from');
   tbDados.SQL.Add(' C000405');
   tbDados.SQL.Add('where');
   tbDados.SQL.Add(' id_empresa = :id_empresa');

   {determina se exibe os kits ou não}
   if TipoQuery = 2 then
      tbDados.SQL.Add('and prd_kit = false');

   {Ajusta a ordenção dos campos}
   case eTipo.ItemIndex of
      0 : tbDados.SQL.Add('order by prd_codigo');
      1 : tbDados.SQL.Add('order by prd_codigo_brr');
      2 : tbDados.SQL.Add('order by prd_codigo_ter');
      3 : tbDados.SQL.Add('order by prd_descricao');
   end;

   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.Open();
end;

procedure TFrListaProdutos.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
   eSearch.SetFocus;
   eSearch.SelectAll;
end;

procedure TFrListaProdutos.RzDialogButtons2ClickOk(Sender: TObject);
begin
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Erro, Selecione um registro antes de continuar.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   if tbDados.FieldByName('PRD_STATUS').AsInteger = 2 then
   begin
      Application.MessageBox('Erro, Registro inativo.','TechCore-RTG',mb_IconStop or mb_Ok);
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrListaProdutos.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrListaProdutos.tbDadosPRD_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
