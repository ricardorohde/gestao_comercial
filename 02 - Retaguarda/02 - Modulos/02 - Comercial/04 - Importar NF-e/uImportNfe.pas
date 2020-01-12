unit uImportNfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, JvExtComponent, JvPanel, System.Actions, MaskUtils,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzPanel,
  RzButton, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, DateUtils,
  FireDAC.Comp.Client, Vcl.ComCtrls, JvExComCtrls, JvComCtrls, JvDataSource,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Buttons, PngBitBtn,
  Vcl.Menus, JvBaseEdits, JvDBControls, RzDBGrid, System.ImageList,
  Vcl.ImgList, Vcl.DBCtrls;

type
  TFrPedidosCompras = class(TForm)
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnError: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer2: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actComprar: TAction;
    actContas: TAction;
    actCancelar: TAction;
    actSair: TAction;
    Query: TFDQuery;
    eGrid: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    dsQuery: TJvDataSource;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryID_FORNECEDOR: TIntegerField;
    QueryID_FUNCIONARIO: TIntegerField;
    QueryPED_NUMERO: TIntegerField;
    QueryPED_DATA_REG: TSQLTimeStampField;
    QueryPED_DATA_PEDIDO: TDateField;
    QueryPED_PRAZO_ENTREGA: TStringField;
    QueryPED_VEND_NOME: TStringField;
    QueryPED_VEND_FONE_FIXO: TStringField;
    QueryPED_OBSERVACAO: TStringField;
    QueryPED_STATUS: TIntegerField;
    QueryPED_VEND_FONE_MOVEL: TStringField;
    QueryFOR_RAZAO_SOCIAL: TStringField;
    QueryFOR_CNPJ: TStringField;
    QueryFOR_UF: TStringField;
    QueryPED_VEND_SKYPE: TStringField;
    QueryPED_FATURADO: TIntegerField;
    QueryPED_ENTREGUE: TIntegerField;
    QueryPED_DATA_ENTREGA: TDateField;
    Pop01: TPopupMenu;
    AlterarCabealho1: TMenuItem;
    FreteSeguroeDesconto1: TMenuItem;
    actPopAlterar: TAction;
    actPopFrete: TAction;
    RzSpacer6: TRzSpacer;
    QueryPED_SOLICITANTE: TStringField;
    QueryPED_VLR_FRETE: TBCDField;
    QueryPED_VLR_SEGURO: TBCDField;
    QueryPED_VLR_OUTROS: TBCDField;
    Panel4: TPanel;
    Label5: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel6: TPanel;
    Label6: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    Panel5: TPanel;
    Label7: TLabel;
    QueryItens: TFDQuery;
    dsQueryItens: TJvDataSource;
    QueryItensID: TIntegerField;
    QueryItensID_PEDIDO: TIntegerField;
    QueryItensID_PRODUTO: TIntegerField;
    QueryItensITM_QTDE: TBCDField;
    QueryItensITM_VLR_UNITARIO: TBCDField;
    QueryItensITM_VLR_TOTAL: TBCDField;
    QueryItensPRD_CODIGO: TIntegerField;
    QueryItensPRD_CODIGO_BRR: TStringField;
    QueryItensPRD_DESCRICAO: TStringField;
    QueryItensPRD_UNIDADE: TStringField;
    QueryPED_VLR_DESCONTOS: TBCDField;
    actIncluirProdutos: TAction;
    actAlterarProdutos: TAction;
    actExcluirProdutos: TAction;
    Pop02: TPopupMenu;
    IncluirProdutos1: TMenuItem;
    AlterarProdutoSelecionado1: TMenuItem;
    N1: TMenuItem;
    ExcluirProdutos1: TMenuItem;
    QueryPED_COMPRADOR: TStringField;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    PngBitBtn1: TPngBitBtn;
    eDataFim: TJvDateEdit;
    Label2: TLabel;
    eDataIni: TJvDateEdit;
    QueryPED_VEND_EMAIL: TStringField;
    QueryPED_PREVISAO_PAGTO: TDateField;
    RzSpacer7: TRzSpacer;
    QueryPED_VALIDADE: TIntegerField;
    QueryPED_VLR_SUBTOTAL: TBCDField;
    QueryPED_VLR_TOTAL: TBCDField;
    QueryPED_QTDE_ITENS: TLargeintField;
    DBText1: TDBText;
    aQuery: TFDQuery;
    QueryID_PLN_CONTAS: TIntegerField;
    actImportar: TAction;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ModoImpressao(aValue : boolean = false);
  public
    { Public declarations }
  end;

var
  FrPedidosCompras: TFrPedidosCompras;

implementation


{$R *.dfm}

uses Classe.Empresa;

procedure TFrPedidosCompras.FormCreate(Sender: TObject);
begin
   {Ajusta as datas}
   eDataIni.Date := IncDay(Date,-90);
   eDataFim.Date := Date;

   {Ajusta o grid}
   eGrid.Columns[0].Width := 50;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Qtde of
      2 : tbDadosPED_QTDE_ITENS.DisplayFormat := ',0.00';
      3 : tbDadosPED_QTDE_ITENS.DisplayFormat := ',0.000';
      4 : tbDadosPED_QTDE_ITENS.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Qtde of
      2 : tbItensITM_QTDE.DisplayFormat := ',0.00';
      3 : tbItensITM_QTDE.DisplayFormat := ',0.000';
      4 : tbItensITM_QTDE.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Venda of
      2 : tbItensITM_VLR_UNITARIO.DisplayFormat := ',0.00';
      3 : tbItensITM_VLR_UNITARIO.DisplayFormat := ',0.000';
      4 : tbItensITM_VLR_UNITARIO.DisplayFormat := ',0.0000';
   end;

end;

procedure TFrPedidosCompras.ModoImpressao(aValue: boolean = false);
begin

end;

end.
