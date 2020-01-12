unit uImportarNFeAjustes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, JvDataSource, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, RzPanel, RzDlgBtn, Vcl.StdCtrls,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvExControls, JvDBLookup,
  Vcl.Mask, RzEdit, RzDBEdit, RzDBBnEd, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls;

type
  TFrImportarNFeAjustes = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    cb_tipo: TJvDBLookupCombo;
    dsQuery: TDataSource;
    cb_grupo: TJvDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    ed_descricao: TRzDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    QueryGrupo: TFDQuery;
    QueryGrupoID: TIntegerField;
    QueryGrupoID_EMPRESA: TIntegerField;
    QueryGrupoGRP_CODIGO: TIntegerField;
    QueryGrupoGRP_DATA_REG: TSQLTimeStampField;
    QueryGrupoGRP_DESCRICAO: TStringField;
    QueryGrupoGRP_STATUS: TIntegerField;
    dsQueryGrupo: TJvDataSource;
    QueryTipo: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    tbDadosTIP_CODIGO: TIntegerField;
    tbDadosTIP_DATA_REG: TSQLTimeStampField;
    tbDadosTIP_DESCRICAO: TStringField;
    tbDadosTIP_STATUS: TIntegerField;
    dsQueryTipo: TJvDataSource;
    RzDBButtonEdit1: TRzDBButtonEdit;
    RzDBEdit1: TRzDBEdit;
    Label5: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure RzDBButtonEdit1AltBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrImportarNFeAjustes: TFrImportarNFeAjustes;

implementation

{$R *.dfm}

uses Classe.Empresa, uImportarNfeAtualizar, uListaProdutos;

procedure TFrImportarNFeAjustes.FormCreate(Sender: TObject);
begin
   {carrega os tipos de produtos}
   QueryTipo.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   QueryTipo.Open();

   {carrega os grupos de produtos}
   QueryGrupo.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   QueryGrupo.Open();
end;

procedure TFrImportarNFeAjustes.RzDBButtonEdit1AltBtnClick(Sender: TObject);
begin
   {remove o id e código vinculado}
   if dsQuery.State = dsBrowse then
      dsQuery.Edit;

   dsQuery.DataSet.FieldByName('prd_id').AsInteger := 0;
   dsQuery.DataSet.FieldByName('prd_codigo').Clear;
end;

procedure TFrImportarNFeAjustes.RzDBButtonEdit1ButtonClick(Sender: TObject);
begin
   // Formulário para seleção de produtos
   FrListaProdutos           := TFrListaProdutos.Create(Self);
   FrListaProdutos.TipoQuery := 1; // Determina que é do cadastro de produtos

   try
      if FrListaProdutos.ShowModal = mrOk then
      begin
         if dsQuery.State = dsBrowse then
            dsQuery.Edit;

         dsQuery.DataSet.FieldByName('prd_id').AsInteger           := FrListaProdutos.tbDadosID.AsInteger;
         dsQuery.DataSet.FieldByName('id_tipo_produto').AsInteger  := FrListaProdutos.tbDadosID_TIPO_PRODUTO.AsInteger;
         dsQuery.DataSet.FieldByName('id_grupo').AsInteger         := FrListaProdutos.tbDadosID_GRUPO.AsInteger;
         dsQuery.DataSet.FieldByName('prd_codigo').AsInteger       := FrListaProdutos.tbDadosPRD_CODIGO.AsInteger;
         dsQuery.DataSet.FieldByName('prd_codigo_barras').AsString := FrListaProdutos.tbDadosPRD_CODIGO_BRR.AsString;
         dsQuery.DataSet.FieldByName('prd_descricao').AsString     := FrListaProdutos.tbDadosPRD_DESCRICAO.AsString;
         dsQuery.DataSet.FieldByName('prd_unidade').AsString       := FrListaProdutos.tbDadosPRD_UNIDADE.AsString;
         dsQuery.DataSet.FieldByName('prd_ajustado').AsString      := 'S';

      end;
   finally
      FreeAndNil( FrListaProdutos );
   end;
end;

procedure TFrImportarNFeAjustes.RzDialogButtons1ClickOk(Sender: TObject);
begin
   {checa se foi informado o tipo de produto}
   if cb_tipo.Field.IsNull then
   begin
      Application.MessageBox('Informe o tipo de produto a cadastrar.','Techcore-RTG',mb_IconStop or mb_ok);
      cb_tipo.SetFocus;
      Abort;
   end;

   if cb_grupo.Field.IsNull then
   begin
      Application.MessageBox('Informe o grupo do produto a cadastrar.','Techcore-RTG',mb_IconStop or mb_ok);
      cb_grupo.SetFocus;
      Abort;
   end;

   if ed_descricao.Text = EmptyStr then
   begin
      Application.MessageBox('Informe descrição do produto a cadastrar.','Techcore-RTG',mb_IconStop or mb_ok);
      ed_descricao.SetFocus;
      Abort;
   end;

   {Grava as }

   {fecha e confirma a alteração}
   Self.ModalResult := mrOk;

end;

end.
