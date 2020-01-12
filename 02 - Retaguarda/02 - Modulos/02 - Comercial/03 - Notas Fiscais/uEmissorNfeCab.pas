unit uEmissorNfeCab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  RzDBEdit, RzDBCmbo, Vcl.ExtCtrls, RzPanel, RzDlgBtn, RzDBBnEd, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, RzEdit, Data.DB, JvDataSource,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrUtil, ACBrBase, ACBrEnterTab, RzCmboBx;

type
  TFrEmissorNfeCab = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    dsDados: TJvDataSource;
    tbPrecos: TFDQuery;
    dsPrecos: TJvDataSource;
    tbFuncionario: TFDQuery;
    dsFuncionario: TJvDataSource;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    GroupBox1: TGroupBox;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    eCliente: TRzDBButtonEdit;
    ACBrEnterTab1: TACBrEnterTab;
    eOperacao: TRzDBComboBox;
    Label1: TLabel;
    eFinalidade: TRzDBComboBox;
    Label2: TLabel;
    RzDBEdit1: TRzDBEdit;
    Label3: TLabel;
    RzPanel3: TRzPanel;
    ePresenca: TRzDBComboBox;
    eVendedor: TRzDBLookupComboBox;
    ePrecos: TRzDBLookupComboBox;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    dsItens: TJvDataSource;
    procedure FormCreate(Sender: TObject);
    procedure eClienteButtonClick(Sender: TObject);
    procedure RzDBEdit1Enter(Sender: TObject);
    procedure RzDBEdit1Exit(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eOperacaoChange(Sender: TObject);
    procedure eFinalidadeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEmissorNfeCab: TFrEmissorNfeCab;

implementation

uses
   Classe.Empresa, uListaClientes, uEmissorNfe, uModuloRet,
  uListaPlanoContas;

{$R *.dfm}

procedure TFrEmissorNfeCab.eFinalidadeChange(Sender: TObject);
begin
   case eFinalidade.ItemIndex of
      1,2,3 :
      begin
         eVendedor.Enabled := false;
         dsDados.DataSet.FieldByName('id_funcionario').Clear;
      end;

      0 :
      begin
         if eOperacao.ItemIndex = 1 then
            eVendedor.Enabled := true;
      end;
   end;
end;

procedure TFrEmissorNfeCab.eOperacaoChange(Sender: TObject);
begin
   case eOperacao.ItemIndex of
      0 :
      begin
         eVendedor.Enabled := false;
         dsDados.DataSet.FieldByName('id_funcionario').Clear;

         {Carrega o plano de contas padrão se houver}
         dsDados.DataSet.FieldByName('id_pln_contas').AsInteger := FEmpresaClass.PlnNfeE;
      end;

      1 :
      begin
         if eFinalidade.ItemIndex = 0 then
            eVendedor.Enabled := true;

         {Carrega o plano de contas padrão se houver}
         dsDados.DataSet.FieldByName('id_pln_contas').AsInteger := FEmpresaClass.PlnNfeS;
      end;
   end;
end;

procedure TFrEmissorNfeCab.FormCreate(Sender: TObject);
begin
   {Carrega as tabelas de preços disponíveis}
   tbPrecos.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbPrecos.Open();

   {Carrega todos os funcionários disponíveis}
   tbFuncionario.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbFuncionario.Open();

   {ajusta o tipo de operação}
   eOperacaoChange(nil);
end;

procedure TFrEmissorNfeCab.FormShow(Sender: TObject);
begin
   // Ajusta a exibição ao exibir o formulário
   if ( dsDados.DataSet.FieldByName('nfe_finalidade').AsInteger = 0 ) and ( eOperacao.ItemIndex = 1 )  then
      eVendedor.Enabled := true
   else
      eVendedor.Enabled := false;

   // Ajusta a exibição ao exibir o formulário
   if ( dsDados.DataSet.FieldByName('nfe_tipo_operacao').AsInteger = 1 ) and ( eFinalidade.ItemIndex = 0 ) then
      eVendedor.Enabled := true
   else
      eVendedor.Enabled := false;
end;

procedure TFrEmissorNfeCab.eClienteButtonClick(Sender: TObject);
begin
   // Se houver produtos inseridos na nota fiscal, emite alerta
   if not dsItens.DataSet.IsEmpty then
   begin
      Application.MessageBox('Existem produtos inseridos nesta nota fiscal, se alterado a UF do destinatário para diferente da atual ou se alterado o tipo de destinatario,' +
      'os produtos serão excluidos da nota fiscal por questão de segunraça no processo.','TechCore-RTG',mb_IconWarning or mb_Ok);
   end;

   FrListaClientes := TFrListaClientes.Create(self);
   try
      if FrListaClientes.ShowModal = mrOk then
         dsDados.DataSet.FieldByName('ID_CLIENTE').AsInteger := FrListaClientes.QueryID.AsInteger;
   finally
      FreeAndNil( FrListaClientes );
   end;
end;

procedure TFrEmissorNfeCab.RzDBEdit1Enter(Sender: TObject);
begin
   TEdit(Sender).Color := $00B6B6B6;
end;

procedure TFrEmissorNfeCab.RzDBEdit1Exit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrEmissorNfeCab.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if eCliente.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar o Cliente.','TechCore-RTG',mb_IconStop or mb_Ok);
      eCliente.SetFocus;
      Abort;
   end;

   if ePrecos.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar a Tabela de Preços.','TechCore-RTG',mb_IconStop or mb_Ok);
      ePrecos.SetFocus;
      Abort;
   end;

   if ( eVendedor.Enabled ) and ( eVendedor.Text = '' ) then
   begin
      Application.MessageBox('Obrigatório informar o Vendedor.','TechCore-RTG',mb_IconStop or mb_Ok);
      eVendedor.SetFocus;
      Abort;
   end;

   Self.ModalResult := mrOk;
end;

end.
