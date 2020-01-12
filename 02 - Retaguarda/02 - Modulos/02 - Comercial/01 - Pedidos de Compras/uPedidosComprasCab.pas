unit uPedidosComprasCab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzDBBnEd, RzEdit,
  RzDBEdit, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, ACBrUtil,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls, JvImage,
  JvExtComponent, JvPanel, RzDlgBtn, Vcl.DBCtrls, RzCmboBx, RzDBCmbo,
  RzPanel, JvExControls, JvDBLookup, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Data.DB, JvDataSource, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrEnterTab,
  Vcl.Menus, JvSpin, JvDBSpinEdit;

type
  TFrPedidosComprasCab = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    eCodigo: TRzDBEdit;
    eModificacao: TRzDBEdit;
    ePrazoEntrega: TRzDBEdit;
    eVendedor: TRzDBEdit;
    eFoneFixo: TRzDBEdit;
    eCelular: TRzDBEdit;
    eSkype: TRzDBEdit;
    eDataPedido: TJvDBDateEdit;
    Bevel1: TBevel;
    eFornecedor: TRzDBButtonEdit;
    Bevel2: TBevel;
    eComprador: TJvDBLookupCombo;
    RzDialogButtons1: TRzDialogButtons;
    eInfos: TRzDBMemo;
    Label14: TLabel;
    dsDados: TJvDataSource;
    tbFunc: TFDQuery;
    dsFunc: TJvDataSource;
    eCnpj: TRzDBEdit;
    Label15: TLabel;
    RzDBEdit1: TRzDBEdit;
    Label16: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    eSolicitante: TRzDBEdit;
    Label17: TLabel;
    PopMenu: TPopupMenu;
    SelecionarFornecedor1: TMenuItem;
    Sair1: TMenuItem;
    Label5: TLabel;
    RzDBEdit2: TRzDBEdit;
    Label18: TLabel;
    procedure eCodigoEnter(Sender: TObject);
    procedure eCodigoExit(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eFornecedorButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPedidosComprasCab: TFrPedidosComprasCab;

implementation

uses
   uPedidosCompras, Classe.Empresa, uListaFornecedores, uListaPlanoContas,
  uModuloRet;

{$R *.dfm}

procedure TFrPedidosComprasCab.eCodigoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B8E6FE;
end;

procedure TFrPedidosComprasCab.eCodigoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrPedidosComprasCab.eFornecedorButtonClick(Sender: TObject);
begin
   FrListaFornecedores := TFrListaFornecedores.Create(self);
   try
      if FrListaFornecedores.ShowModal = mrOk then
      begin
         dsDados.DataSet.FieldByName('ID_FORNECEDOR').AsInteger   := FrListaFornecedores.tbDadosID.AsInteger;
         dsDados.DataSet.FieldByName('FOR_RAZAO_SOCIAL').AsString := FrListaFornecedores.tbDadosFOR_RAZAO_SOCIAL.AsString;
         dsDados.DataSet.FieldByName('FOR_CNPJ').AsString         := FrListaFornecedores.tbDadosFOR_CNPJ.AsString;
         dsDados.DataSet.FieldByName('FOR_UF').AsString           := FrListaFornecedores.tbDadosFOR_UF.AsString;
      end;
   finally
      FreeAndNil( FrListaFornecedores );
   end;
end;

procedure TFrPedidosComprasCab.FormCreate(Sender: TObject);
begin
   {Carrega os compradores disponíveis}
   tbFunc.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbFunc.Open();
end;

procedure TFrPedidosComprasCab.RzDialogButtons1ClickOk(Sender: TObject);
begin

   {Checa o preenchimento dos campos}
   if ePrazoEntrega.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Prazo de Entrega.','TechCore-RTG',mb_IconStop or mb_Ok);
      ePrazoEntrega.SetFocus;
      Abort;
   end;

   if eFornecedor.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Fornecedor','TechCore-RTG',mb_IconStop or mb_Ok);
      eFornecedor.SetFocus;
      Abort;
   end;

   if eSolicitante.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Solicitante','TechCore-RTG',mb_IconStop or mb_Ok);
      eSolicitante.SetFocus;
      Abort;
   end;

   if eComprador.Text = '' then
   begin
      Application.MessageBox('Erro, Obrigatório informar o Comprador','TechCore-RTG',mb_IconStop or mb_Ok);
      eComprador.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;

end;

end.
