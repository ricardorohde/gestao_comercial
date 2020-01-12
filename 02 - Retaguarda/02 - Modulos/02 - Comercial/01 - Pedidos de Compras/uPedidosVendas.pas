unit uPedidosVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Menus, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, JvToolEdit, Vcl.StdCtrls,
  Vcl.Buttons, PngBitBtn, Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel,
  Vcl.Mask, JvExMask, JvBaseEdits, JvDBControls, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, RzButton;

type
  TForm1 = class(TForm)
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnEdit: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnError: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    RzSpacer6: TRzSpacer;
    eGrid: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel6: TPanel;
    Label6: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    Panel5: TPanel;
    Label7: TLabel;
    JvDBCalcEdit6: TJvDBCalcEdit;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    Label2: TLabel;
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
    eDataIni: TJvDateEdit;
    ActionManager1: TActionManager;
    actCadastrar: TAction;
    actExcluir: TAction;
    actPrint: TAction;
    actCancelar: TAction;
    actSair: TAction;
    actPopAlterar: TAction;
    actPopFrete: TAction;
    actIncluirProdutos: TAction;
    actAlterarProdutos: TAction;
    actExcluirProdutos: TAction;
    tbDados: TFDQuery;
    tbDadosID: TIntegerField;
    tbDadosID_EMPRESA: TIntegerField;
    tbDadosID_FORNECEDOR: TIntegerField;
    tbDadosFOR_RAZAO_SOCIAL: TStringField;
    tbDadosFOR_CNPJ: TStringField;
    tbDadosFOR_UF: TStringField;
    tbDadosID_FUNCIONARIO: TIntegerField;
    tbDadosPED_COMPRADOR: TStringField;
    tbDadosPED_NUMERO: TIntegerField;
    tbDadosPED_DATA_REG: TSQLTimeStampField;
    tbDadosPED_DATA_PEDIDO: TDateField;
    tbDadosPED_PRAZO_ENTREGA: TStringField;
    tbDadosPED_VEND_NOME: TStringField;
    tbDadosPED_VEND_FONE_FIXO: TStringField;
    tbDadosPED_VEND_FONE_MOVEL: TStringField;
    tbDadosPED_VEND_SKYPE: TStringField;
    tbDadosPED_COND_PAGTO: TIntegerField;
    tbDadosPED_DISCRIMINACAO: TStringField;
    tbDadosPED_OBSERVACAO: TStringField;
    tbDadosPED_STATUS: TIntegerField;
    tbDadosPED_FATURADO: TIntegerField;
    tbDadosPED_ENTREGUE: TIntegerField;
    tbDadosPED_DATA_ENTREGA: TDateField;
    tbDadosPED_SOLICITANTE: TStringField;
    tbDadosPED_VLR_FRETE: TBCDField;
    tbDadosPED_VLR_SEGURO: TBCDField;
    tbDadosPED_VLR_OUTROS: TBCDField;
    tbDadosTOTAL_ITENS: TBCDField;
    tbDadosTOTAL_PEDIDO: TBCDField;
    tbDadosPED_VLR_DESCONTOS: TBCDField;
    tbDadosPED_QTDE_ITENS: TBCDField;
    dsDados: TJvDataSource;
    Pop01: TPopupMenu;
    AlterarCabealho1: TMenuItem;
    FreteSeguroeDesconto1: TMenuItem;
    tbItens: TFDQuery;
    tbItensID: TIntegerField;
    tbItensID_PEDIDO: TIntegerField;
    tbItensID_PRODUTO: TIntegerField;
    tbItensITM_QTDE: TBCDField;
    tbItensITM_VLR_UNITARIO: TBCDField;
    tbItensITM_VLR_TOTAL: TBCDField;
    tbItensPRD_CODIGO: TIntegerField;
    tbItensPRD_CODIGO_BRR: TStringField;
    tbItensPRD_DESCRICAO: TStringField;
    tbItensPRD_UNIDADE: TStringField;
    dsItens: TJvDataSource;
    Pop02: TPopupMenu;
    IncluirProdutos1: TMenuItem;
    AlterarProdutoSelecionado1: TMenuItem;
    N1: TMenuItem;
    ExcluirProdutos1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
