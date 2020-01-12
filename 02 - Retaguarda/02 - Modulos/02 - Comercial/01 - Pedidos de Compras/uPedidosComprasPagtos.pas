unit uPedidosComprasPagtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.DBCtrls, JvDBControls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, RzPanel, RzDlgBtn,
  JvToolEdit, Vcl.Mask, JvExMask, JvBaseEdits, ACBrUtil;

type
  TFrPedidosComprasPagtos = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    Query: TFDQuery;
    dsQuery: TDataSource;
    QueryID: TIntegerField;
    QueryID_PEDIDO: TIntegerField;
    QueryPAG_VENCIMENTO: TDateField;
    QueryPAG_HISTORICO: TStringField;
    QueryPAG_VLR_TOTAL: TAggregateField;
    JvDBNavigator1: TJvDBNavigator;
    pn_dados: TRzPanel;
    ed_valor: TJvDBCalcEdit;
    ed_historico: TDBEdit;
    ed_data: TJvDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eGrid: TJvDBGrid;
    QueryPAG_VLR_PARCELA: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure dsQueryStateChange(Sender: TObject);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure QueryAfterInsert(DataSet: TDataSet);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure QueryBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure QueryAfterDelete(DataSet: TDataSet);
    procedure QueryBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ValorPedido, ValorPagtos, ValorParcela : Real;
  end;
Type
   TDBNewNavigator = class (TDBNavigator);

var
  FrPedidosComprasPagtos: TFrPedidosComprasPagtos;

implementation

{$R *.dfm}

uses uPedidosCompras, Classe.Empresa, uModuloRet;

procedure TFrPedidosComprasPagtos.FormCreate(Sender: TObject);
var
  B: TNavigateBtn;
begin
for B := Low(TNavigateBtn) to High(TNavigateBtn) do

    with TDBNewNavigator(JVDBNavigator1).Buttons[B] do
    begin

      case Index of

        nbFirst        : Caption := 'Primeiro';
        nbPrior        : Caption := 'Anterior';
        nbNext         : Caption := 'Próximo';
        nbLast         : Caption := 'Último';
        nbInsert       : Caption := 'Novo';
        nbDelete       : Caption := 'Excluir';
        nbEdit         : Caption := 'Editar';
        nbPost         : Caption := 'Salvar';
        nbCancel       : Caption := 'Cancelar';
        nbRefresh      : Caption := 'Atualizar';
        nbApplyUpdates : Caption := 'Gravar';

      end;

      //Layout := blGlyphTop;
      Hint     := Caption;
      ShowHint := True;
    end;

end;

procedure TFrPedidosComprasPagtos.FormShow(Sender: TObject);
begin
   {Abre a comunicação com os pagamentos}
   Query.Open();

   {Se houver valor inica a checagem do totalizador}
   try
      ValorPagtos := StrToFloatDef(QueryPAG_VLR_TOTAL.Value, 0);
   except
      //..;
   end;
end;

procedure TFrPedidosComprasPagtos.QueryAfterDelete(DataSet: TDataSet);
begin
   {Se houver valor inica a checagem do totalizador}
   try
      ValorPagtos := StrToFloatDef(QueryPAG_VLR_TOTAL.Value, 0);
   except
      //..;
   end;
end;

procedure TFrPedidosComprasPagtos.QueryAfterInsert(DataSet: TDataSet);
begin
   {Exibe o saldo a ser inserido}
   DataSet.FieldByName('PAG_VLR_PARCELA').AsFloat := (ValorPedido - ValorPagtos);

   {Posiciona o cursor}
   ed_data.SetFocus;
end;

procedure TFrPedidosComprasPagtos.QueryAfterPost(DataSet: TDataSet);
begin
   {Se houver valor inica a checagem do totalizador}
   try
      ValorPagtos := StrToFloatDef(QueryPAG_VLR_TOTAL.Value, 0);
   except
      //..;
   end;
end;

procedure TFrPedidosComprasPagtos.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrPedidosComprasPagtos.QueryBeforeEdit(DataSet: TDataSet);
begin
   ValorParcela := QueryPAG_VLR_PARCELA.AsFloat;
end;

procedure TFrPedidosComprasPagtos.QueryBeforeInsert(DataSet: TDataSet);
begin
   ValorParcela := 0.00;

   {Checa se o valor dos pagamentos atingiram o valor do pedido}
   if ValorPagtos >= ValorPedido then
   begin
      Application.MessageBox('O Valor total dos pagamentos já atingiram o valor total do pedido','TechCore-RTG',mb_IconWarning or Mb_OK);
      Abort;
   end;
end;

procedure TFrPedidosComprasPagtos.QueryBeforePost(DataSet: TDataSet);
var
   ValorDigitado, ValorAtual, Saldo : Currency;
begin
   {Checa se o valor informado não é maior que o valor do pedido}
   ValorDigitado := ed_valor.Value;
   ValorAtual    := (ValorPagtos - ValorParcela + ValorDigitado);

   {Checa se o valor do saldo é menor que (0)}
   Saldo := (ValorPedido - ValorAtual);

   if Saldo < 0.00 then
   begin
      Application.MessageBox('O valor total informado não pode ser maior que o valor do pedido.','TechCore-RTG',mb_IconError or mb_ok);
      Abort;
   end;

   if OnlyNumber(QueryPAG_VENCIMENTO.AsString) = EmptyStr then
   begin
      Application.MessageBox('Obrigatório informar a data de vencimento','TechCore-RTG',mb_IconError or mb_ok);
      ed_data.SetFocus;
      Abort;
   end;

   if QueryPAG_VLR_PARCELA.AsFloat <= 0 then
   begin
      Application.MessageBox('Obrigatório informar o Valor da Parcela','TechCore-RTG',mb_IconError or mb_ok);
      ed_valor.SetFocus;
      Abort;
   end;
end;

procedure TFrPedidosComprasPagtos.dsQueryStateChange(Sender: TObject);
begin
   pn_dados.Enabled := Query.State in [dsInsert,dsEdit];
end;

end.
