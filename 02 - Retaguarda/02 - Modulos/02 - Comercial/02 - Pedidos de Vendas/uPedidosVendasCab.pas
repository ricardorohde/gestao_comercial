unit uPedidosVendasCab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  RzDBEdit, RzDBCmbo, Vcl.ExtCtrls, RzPanel, RzDlgBtn, RzDBBnEd, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, RzEdit, Data.DB, JvDataSource,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrUtil, ACBrBase, ACBrEnterTab;

type
  TFrPedidosVendasCab = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    dsDados: TJvDataSource;
    tbPrecos: TFDQuery;
    dsPrecos: TJvDataSource;
    tbFuncionario: TFDQuery;
    dsFuncionario: TJvDataSource;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    eDataPedido: TJvDBDateEdit;
    ePrecos: TRzDBLookupComboBox;
    eVendedor: TRzDBLookupComboBox;
    ePrevEntrega: TRzDBEdit;
    RzPanel2: TRzPanel;
    GroupBox1: TGroupBox;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    eCliente: TRzDBButtonEdit;
    RzPanel3: TRzPanel;
    Label9: TLabel;
    eInfos: TRzDBMemo;
    ACBrEnterTab1: TACBrEnterTab;
    dsItens: TJvDataSource;
    procedure FormCreate(Sender: TObject);
    procedure eClienteButtonClick(Sender: TObject);
    procedure RzDBEdit1Enter(Sender: TObject);
    procedure RzDBEdit1Exit(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPedidosVendasCab: TFrPedidosVendasCab;

implementation

uses
   Classe.Empresa, uListaClientes, uModuloRet, uListaPlanoContas;

{$R *.dfm}

procedure TFrPedidosVendasCab.FormCreate(Sender: TObject);
begin
   {Carrega as tabelas de preços disponíveis}
   tbPrecos.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbPrecos.Open();

   {Carrega todos os funcionários disponíveis}
   tbFuncionario.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbFuncionario.Open();
end;

procedure TFrPedidosVendasCab.eClienteButtonClick(Sender: TObject);
begin
   // Se houver produtos inseridos na nota fiscal, emite alerta
   if not dsItens.DataSet.IsEmpty then
   begin
      Application.MessageBox('Existem produtos inseridos nesta pedido, se alterado a UF do destinatário para diferente da atual ou se alterado o tipo de destinatario,' +
      'os produtos serão excluidos do pedido por questão de segunraça no processo.','TechCore-RTG',mb_IconWarning or mb_Ok);
   end;

   FrListaClientes := TFrListaClientes.Create(self);
   try
      if FrListaClientes.ShowModal = mrOk then
         dsDados.DataSet.FieldByName('ID_CLIENTE').AsInteger := FrListaClientes.QueryID.AsInteger;
   finally
      FreeAndNil( FrListaClientes );
   end;
end;

procedure TFrPedidosVendasCab.RzDBEdit1Enter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B6B6B6;
end;

procedure TFrPedidosVendasCab.RzDBEdit1Exit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrPedidosVendasCab.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if eCliente.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar o Cliente.','TechCore-RTG',mb_IconStop or mb_Ok);
      eCliente.SetFocus;
      Abort;
   end;

   if OnlyNumber( eDataPEdido.Text ) = '' then
   begin
      Application.MessageBox('Obrigatório informar a Data do Pedido.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataPEdido.SetFocus;
      Abort;
   end;

   if ePrecos.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar a Tabela de Preços.','TechCore-RTG',mb_IconStop or mb_Ok);
      ePrecos.SetFocus;
      Abort;
   end;

   if eVendedor.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar o Vendedor.','TechCore-RTG',mb_IconStop or mb_Ok);
      eVendedor.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

end.
