unit uImportarNfeAtualizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzDlgBtn,
  Vcl.ExtCtrls, RzPanel, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  RzDBGrid, Vcl.StdCtrls, Vcl.DBCtrls, JvDBCheckBox, RzButton, RzRadChk,
  RzDBChk, RzStatus, RzDBStat, RzLabel, RzDBLbl, Vcl.Menus, RzDBBnEd,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, Vcl.Mask, RzEdit,
  RzDBEdit, JvDataSource, JvExControls, JvDBLookup, JvExStdCtrls, JvCheckBox;

type
  TFrImportarUpdateEstoque = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    dsQueryItens: TDataSource;
    aQuery: TFDQuery;
    eGrid: TJvDBGrid;
    Query: TFDQuery;
    QueryID: TIntegerField;
    QueryID_C000040: TIntegerField;
    QueryPRD_ITEM: TIntegerField;
    QueryPRD_CODIGO_TER: TStringField;
    QueryPRD_CODIGO_BARRAS: TStringField;
    QueryPRD_DESCRICAO: TStringField;
    QueryPRD_UNIDADE: TStringField;
    QueryPRD_CFOP: TIntegerField;
    QueryPRD_NCM: TStringField;
    QueryPRD_CEST: TStringField;
    QueryPRD_QTDE: TBCDField;
    QueryPRD_VLR_UNITARIO: TBCDField;
    QueryPRD_VLR_FRETE: TBCDField;
    QueryPRD_VLR_SEGURO: TBCDField;
    QueryPRD_VLR_OUTRO: TBCDField;
    QueryPRD_VLR_DESCONTO: TBCDField;
    QueryPRD_INFOS: TStringField;
    QueryPRD_VLR_ICMS: TBCDField;
    QueryPRD_VLR_IPI: TBCDField;
    QueryPRD_VLR_PIS: TBCDField;
    QueryPRD_VLR_COFINS: TBCDField;
    QueryPRD_VLR_TOTAL: TBCDField;
    QueryPRD_CODIGO: TIntegerField;
    QueryPRD_ID: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label2: TLabel;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    Label3: TLabel;
    QueryPRD_ESTOQUE: TStringField;
    QueryID_TIPO_PRODUTO: TIntegerField;
    QueryID_GRUPO: TIntegerField;
    QueryPRD_ORIGEM: TIntegerField;
    QueryGrupo: TFDQuery;
    QueryGrupoID: TIntegerField;
    QueryGrupoID_EMPRESA: TIntegerField;
    QueryGrupoGRP_CODIGO: TIntegerField;
    QueryGrupoGRP_DATA_REG: TSQLTimeStampField;
    QueryGrupoGRP_DESCRICAO: TStringField;
    QueryGrupoGRP_STATUS: TIntegerField;
    dsQueryGrupo: TJvDataSource;
    QueryPRD_GRUPO: TStringField;
    Button1: TButton;
    QueryTipo: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    tbDadosTIP_CODIGO: TIntegerField;
    tbDadosTIP_DATA_REG: TSQLTimeStampField;
    tbDadosTIP_DESCRICAO: TStringField;
    tbDadosTIP_STATUS: TIntegerField;
    dsQueryTipo: TJvDataSource;
    QueryPRD_TIPO: TStringField;
    QueryPRD_STS: TStringField;
    QueryPRD_CHECK: TStringField;
    JvDBCheckBox1: TJvDBCheckBox;
    QueryPRD_UP_VENDA: TStringField;
    Pop00: TPopupMenu;
    Vincular1: TMenuItem;
    Selecionartodos1: TMenuItem;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QueryPRD_DESCRICAOSetText(Sender: TField;
      const Text: string);
    procedure eGridDblClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure QueryAfterApplyUpdates(DataSet: TFDDataSet;
      AErrors: Integer);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure Vincular1Click(Sender: TObject);
    procedure Selecionartodos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrImportarUpdateEstoque: TFrImportarUpdateEstoque;

implementation

{$R *.dfm}

uses uImportarNfe, uModuloRet, Classe.Empresa, uListaProdutos,
  uListaTiposProdutos, uListaGruposProdutos, uImportarNFeAjustes;

procedure TFrImportarUpdateEstoque.eGridDblClick(Sender: TObject);
begin
   {Checa se já não foi processado}
   if (Query.FieldByName('id_tipo_produto').IsNull) then
   begin
      Application.MessageBox('Selecione o tipo de produto antes de continuar','Techcore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;

   if (Query.FieldByName('id_grupo').IsNull) then
   begin
      Application.MessageBox('Selecione o grupo ao qual o produto pertencerá antes de continuar','Techcore-RTG', mb_IconStop or mb_ok);
      Abort;
   end;

   Query.Edit;

   if Query.FieldByName('prd_check').AsString  = 'N' then
   begin
      Query.FieldByName('prd_check').AsString   := 'S';
      Query.FieldByName('prd_estoque').AsString := 'S';
   end
   else
   begin
      Query.FieldByName('prd_check').AsString   := 'N';
      Query.FieldByName('prd_estoque').AsString := 'N';
   end;

   Query.Post;
end;

procedure TFrImportarUpdateEstoque.eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

   if Column.Title.Caption = 'SEL' then
   begin

      if Query.FieldByName('prd_check').AsString = 'S' then
      begin
         (Sender as TDBGrid).Canvas.Font.Color  := clWhite; // fonte
         (Sender as TDBGrid).Canvas.Brush.Color := clGreen; // fundo
      end;

   end
   else
   if not (gdSelected in State) then
   begin

      if Query.FieldByName('prd_sts').AsString = 'C' then
         (Sender as TDBGrid).Canvas.Font.Color := clRed
      else
         (Sender as TDBGrid).Canvas.Font.Color := clGreen

   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrImportarUpdateEstoque.FormCreate(Sender: TObject);
begin
   {carrega os dados}
   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.Open();

   {carrega todos os grupos cadastrados}
   QueryTipo.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   QueryTipo.Open();

   {carrega todos os grupos cadastrados}
   QueryGrupo.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   QueryGrupo.Open();

   {ajusta o grid}
   eGrid.Columns[0].Width := 30;
   eGrid.Columns[1].Width := 30;
   eGrid.Columns[2].Width := 48;
   eGrid.Columns[3].Width := 155;
   eGrid.Columns[4].Width := 135;
   eGrid.Columns[8].Width := 70;
   eGrid.Columns[9].Width := 70;
end;

procedure TFrImportarUpdateEstoque.QueryAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
begin
   if AErrors = 0 then
   begin
      {atualiza o cursor dos produtos}
      FrImportarNfe.QueryItens.Refresh;
      
      {aviso ao usuário}
      Application.MessageBox('Importação efetuada com sucesso.','TechCore-RTG', mb_IconInformation or mb_ok);

      {grava os dadso e limpa a cache}
      Query.CommitUpdates;

      {atualiza o cursor}
      Self.Close;
   end;
end;

procedure TFrImportarUpdateEstoque.QueryBeforePost(DataSet: TDataSet);
begin
   {se foi definido um vinculo, então muda para atualização}
   if DataSet.FieldByName('prd_id').AsInteger > 0 then
      DataSet.FieldByName('prd_sts').AsString := 'A';
end;

procedure TFrImportarUpdateEstoque.QueryPRD_DESCRICAOSetText(Sender: TField; const Text: string);
begin
   Sender.AsString := UpperCase(Text);
end;

procedure TFrImportarUpdateEstoque.RzDialogButtons1ClickOk(Sender: TObject);
var
   PermiteGravar : boolean;
begin
   {antes de gravar, checa se todas informações foram preenchidas}
   dsQueryItens.DataSet := nil;

   {posiciona o cursor}
   Query.First;

   try
      repeat

         {Se estiver marcado libera para gravar}
         PermiteGravar := Query.FieldByName('prd_check').AsString = 'S';
         if PermiteGravar then
            Break;
         
         {próximo registro}
         Query.Next;
         
      until (Query.Eof);

      {se não foi encontrado nehuma permissão de gravação}
      if not (PermiteGravar) then
      begin
         Application.MessageBox('Não foi selecionado nenhum produto para Cadastrou ou Atualização.','TechCore-RTG',mb_IconStop or mb_ok);
         Abort;
      end;

   finally
      Query.First;
      dsQueryItens.DataSet := Query;
   end;

   {efetua o caastro do produto}
   Query.ApplyUpdates(0);
end;

procedure TFrImportarUpdateEstoque.Selecionartodos1Click(Sender: TObject);
begin
   {cursor no primeiro registros}
   Query.First;

   {desconecta o DataSet}
   dsQueryItens.DataSet := nil;

   try
      repeat       
         
         if not (Query.FieldByName('id_tipo_produto').IsNull) and not (Query.FieldByName('id_grupo').IsNull) then
         begin
            Query.Edit;
            Query.FieldByName('prd_check').AsString := 'S';
            Query.FieldByName('prd_estoque').AsString := 'S';
            Query.Post;
         end;

         {próximo registro}
         Query.Next;
      until (Query.Eof);

   finally
      Query.First;
      dsQueryItens.DataSet := Query;
   end;
end;

procedure TFrImportarUpdateEstoque.Vincular1Click(Sender: TObject);
begin
   {checa se este produto já foi processado}
   if Query.FieldByName('prd_estoque').AsString = 'S' then
   begin
      Application.MessageBox('Produto já processador anteriormente','TechCore-RTG',mb_IconStop or mb_ok);
      Abort;
   end;

   try
      FrImportarNFeAjustes := TFrImportarNFeAjustes.Create(self);
      if FrImportarNFeAjustes.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel;
   finally
      FreeAndNil(FrImportarNFeAjustes);
   end;
end;

end.
