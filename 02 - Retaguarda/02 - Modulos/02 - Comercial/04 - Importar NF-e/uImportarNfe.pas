unit uImportarNfe;

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
  Vcl.ImgList, Vcl.DBCtrls, ACBrDFeReport, ACBrDFeDANFeReport,
  ACBrNFeDANFEClass, ACBrDANFCeFortesFr, ACBrBase, ACBrDFe, ACBrNFe, pcnConversao,
  Classe.Produtos;

type
  TFrImportarNfe = class(TForm)
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnCancel: TRzToolButton;
    btnOK: TRzToolButton;
    btnExit: TRzToolButton;
    RzSpacer2: TRzSpacer;
    RzSpacer5: TRzSpacer;
    ActionManager1: TActionManager;
    actImportar: TAction;
    actComprar: TAction;
    actContas: TAction;
    actEstoque: TAction;
    actSair: TAction;
    Query: TFDQuery;
    eGrid: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    dsQuery: TJvDataSource;
    Pop00: TPopupMenu;
    AlterarCabealho1: TMenuItem;
    FreteSeguroeDesconto1: TMenuItem;
    actImportarOnline: TAction;
    actImportarArquivo: TAction;
    RzSpacer6: TRzSpacer;
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
    actIncluirProdutos: TAction;
    actAlterarProdutos: TAction;
    actExcluirProdutos: TAction;
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
    RzSpacer7: TRzSpacer;
    DBText1: TDBText;
    aQuery: TFDQuery;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    OpenDialog1: TOpenDialog;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryNFE_DATA_IMPORTADO: TDateField;
    QueryNFE_NUMERO: TIntegerField;
    QueryNFE_CHAVE: TStringField;
    QueryNFE_CNPJ: TStringField;
    QueryNFE_RAZAO: TStringField;
    QueryNFE_UF: TStringField;
    QueryNFE_NSU: TIntegerField;
    QueryNFE_DATA_EMISSAO: TSQLTimeStampField;
    QueryNFE_VLR_FRETE: TFMTBCDField;
    QueryNFE_VLR_SEGURO: TFMTBCDField;
    QueryNFE_VLR_OUTROS: TFMTBCDField;
    QueryNFE_VLR_DESCONTOS: TFMTBCDField;
    QueryItensID: TIntegerField;
    QueryItensID_C000040: TIntegerField;
    QueryItensPRD_ITEM: TIntegerField;
    QueryItensPRD_CODIGO_BARRAS: TStringField;
    QueryItensPRD_DESCRICAO: TStringField;
    QueryItensPRD_UNIDADE: TStringField;
    QueryItensPRD_CFOP: TIntegerField;
    QueryItensPRD_NCM: TStringField;
    QueryItensPRD_CEST: TStringField;
    QueryItensPRD_QTDE: TBCDField;
    QueryItensPRD_VLR_UNITARIO: TBCDField;
    QueryItensPRD_VLR_FRETE: TFMTBCDField;
    QueryItensPRD_VLR_SEGURO: TFMTBCDField;
    QueryItensPRD_VLR_OUTRO: TFMTBCDField;
    QueryItensPRD_VLR_DESCONTO: TFMTBCDField;
    QueryItensPRD_INFOS: TStringField;
    QueryItensPRD_VLR_ICMS: TFMTBCDField;
    QueryItensPRD_VLR_IPI: TFMTBCDField;
    QueryItensPRD_VLR_PIS: TFMTBCDField;
    QueryItensPRD_VLR_COFINS: TFMTBCDField;
    QueryItensPRD_VLR_TOTAL: TFMTBCDField;
    QueryItensPRD_CODIGO_TER: TStringField;
    SchemaAD: TFDSchemaAdapter;
    QueryNFE_NAT_OPERACAO: TStringField;
    QueryNFE_VLR_TOTAL: TFMTBCDField;
    QueryNFE_QTDE_ITENS: TLargeintField;
    QueryNFE_COMPRAS: TStringField;
    QueryNFE_ESTOQUE: TStringField;
    btnError: TRzToolButton;
    QueryNFE_STATUS: TIntegerField;
    QueryItensID_TIPO_PRODUTO: TIntegerField;
    QueryItensID_GRUPO: TIntegerField;
    QueryItensPRD_ID: TIntegerField;
    QueryItensPRD_ORIGEM: TIntegerField;
    QueryItensPRD_ESTOQUE: TStringField;
    Pop01: TPopupMenu;
    ArquivodoArquivo1: TMenuItem;
    actImportarItens: TAction;
    actExtornarItem: TAction;
    ExtornarItemBaixarQuantidade1: TMenuItem;
    QueryItensPRD_CHECK: TStringField;
    QueryItensPRD_STS: TStringField;
    QueryItensPRD_UP_VENDA: TStringField;
    QueryItensPRD_AJUSTADO: TStringField;
    QueryItensPRD_CODIGO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure actImportarOnlineExecute(Sender: TObject);
    procedure actImportarArquivoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSairExecute(Sender: TObject);
    procedure QueryNFE_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QueryNewRecord(DataSet: TDataSet);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure SchemaADAfterApplyUpdate(Sender: TObject);
    procedure QueryNFE_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid2DrawColumnCell(Sender: TObject;
      const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure QueryItensPRD_ESTOQUEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure actEstoqueUpdate(Sender: TObject);
    procedure actImportarItensExecute(Sender: TObject);
    procedure actExtornarItemExecute(Sender: TObject);
    procedure QueryItensAfterApplyUpdates(DataSet: TFDDataSet;
      AErrors: Integer);
    procedure actExtornarItemUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure ImportarCabecalho;
    procedure ImportatItens;
    function ImportarItensLocalizarProduto(CodigoBarras : String) : boolean;
    procedure ImportarFaturas;

  public
    { Public declarations }
  end;

var
  FrImportarNfe: TFrImportarNfe;
  prd_class : TProdutos;

implementation


{$R *.dfm}

uses Classe.Empresa, uImportarNfeAtualizar, uModuloRet;

procedure TFrImportarNfe.actEstoqueUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not (QueryItens.IsEmpty) and (Query.FieldByName('nfe_status').AsInteger = 100)
end;

procedure TFrImportarNfe.actExtornarItemExecute(Sender: TObject);
begin
   {confirma se extorna o item}
   if Application.MessageBox('Tem certeza que deseja efetuar o extorno deste item?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   try
      {efetua o extorno do item}
      QueryItens.Edit;
      QueryItens.FieldByName('prd_estoque').AsString  := 'N';
      QueryItens.FieldByName('prd_up_venda').AsString := 'S';

      if QueryItens.FieldByName('prd_ajustado').AsString = 'S' then
      begin
         QueryItens.FieldByName('prd_sts').AsString       := 'C';
         QueryItens.FieldByName('prd_id').AsInteger       := 0;
         QueryItens.FieldByName('id_tipo_produto').Clear;
         QueryItens.FieldByName('id_grupo').Clear;
         QueryItens.FieldByName('prd_ajustado').AsString  := 'N';
      end;

      QueryItens.Post;

      Self.Tag := 1; // Determina que é extorno do item

      {comita as informações no banco de dados}
      QueryItens.ApplyUpdates(0);
   except
      on e:exception do
         Application.MessageBox(pChar('Erro ao extornar o item selecionado.' + #10#13 + 'Erro: ' + e.Message),'TechCore-RTG', mb_IconStop or mb_ok)
   end;
end;

procedure TFrImportarNfe.actExtornarItemUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := QueryItens.FieldByName('prd_estoque').AsString = 'S';
end;

procedure TFrImportarNfe.actImportarArquivoExecute(Sender: TObject);
begin
   {efetua a importação da nfe do arquivo xml}
   if OpenDialog1.Execute then
   begin
       with ACBrNFe1.NotasFiscais do
       begin

          {limpa a cache de notas fiscais}
          Clear;

          {carrega a nota fiscal}
          LoadFromFile(OpenDialog1.FileName);

          {antes de iniciar a inserção do nfe, checa se a mesma já existe}
          try
             aQuery.SQL.Clear;
             aQuery.SQL.Add('Select 1 from C000040 where nfe_chave = :chave');
             aQuery.ParamByName('chave').AsString := Copy(Items[0].NFe.infNFe.ID,4,44);
             aQuery.Open();

             if not aQuery.IsEmpty then
             begin
                Application.MessageBox('A nota fiscal selecionada já foi importada.','TechCore-RTG',mb_IconStop or mb_ok);
                Abort;
             end;

          finally
            aQuery.Close;
          end;

       end;

       {inicia a importação da nfe}
       ImportarCabecalho;
   end;
end;

procedure TFrImportarNfe.actImportarOnlineExecute(Sender: TObject);
begin
   {}
end;

procedure TFrImportarNfe.actImportarItensExecute(Sender: TObject);
begin
   try
      FrImportarUpdateEstoque := TFrImportarUpdateEstoque.Create(self);
      FrImportarUpdateEstoque.ShowModal;
   finally
      FreeAndNil(FrImportarUpdateEstoque);
   end;
end;

procedure TFrImportarNfe.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrImportarNfe.eGridDrawColumnCell(Sender: TObject; const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Query.IsEmpty then Exit;

   {Altera a cor do text ao seelcionar}
   if gdSelected in State then
   begin
      (Sender as TDBGrid).Canvas.Font.Color  := clHighlightText; // Fonte
      (Sender as TDBGrid).Canvas.Brush.Color := $00804000;       // Fundo
   end
   else
   begin

      if Column.Title.Caption = 'Status' then
      begin

         {Efetua a coloração de acordo o status}
         case Query.FieldByName('NFE_STATUS').AsInteger of
            100 : begin
                  (Sender as TDBGrid).Canvas.Font.Color  := clWindow;
                  (Sender as TDBGrid).Canvas.Brush.Color := $00408000;
               end;
            101 :
               begin
                  (Sender as TDBGrid).Canvas.Font.Color  := clWindow;
                  (Sender as TDBGrid).Canvas.Brush.Color := clBlack;
               end;
            110 :
               begin
                  (Sender as TDBGrid).Canvas.Font.Color  := clWindow;
                  (Sender as TDBGrid).Canvas.Brush.Color := $000071E1;
               end;
         end;

      end;

   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFrImportarNfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(FrImportarNfe);
end;

procedure TFrImportarNfe.FormCreate(Sender: TObject);
begin
   {Ajusta as datas}
   eDataIni.Date := IncDay(Date,-90);
   eDataFim.Date := Date;

   {Ajusta o grid}
   eGrid.Columns[0].Width := 50;

   // Ajustar casas decimais
   {case FEmpresaClass.Decimal_Qtde of
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
   end; }

   {Carrega as notas importadas}
   Query.ParamByName('id_emp').AsInteger  := FEmpresaClass.ID;
   Query.ParamByName('data_a').AsDateTime := eDataIni.Date;
   Query.ParamByName('data_b').AsDateTime := eDataFim.Date;
   Query.Open();

   {carrega todos is itens vinculados}
   QueryItens.Open();

   {ajusta o Grid de notas importadas}
   eGrid.Columns[0].Width := 80;
   eGrid.Columns[1].Width := 116;
   eGrid.Columns[2].Width := 69;
   eGrid.Columns[3].Width := 280;

end;

procedure TFrImportarNfe.ImportarCabecalho;
begin

   try

      with ACBrNFe1.NotasFiscais do
      begin

         try
            {cursor em modo de inserção}
            Query.Insert;

            // Dados da nota fiscal
            Query.FieldByName('nfe_data_emissao').AsDateTime   := Items[0].NFe.Ide.dEmi;
            Query.FieldByName('nfe_data_importado').AsDateTime := Date;
            Query.FieldByName('nfe_numero').AsInteger          := Items[0].NFe.Ide.nNF;
            Query.FieldByName('nfe_chave').AsString            := Copy(Items[0].NFe.infNFe.ID,4,44);
            Query.FieldByName('nfe_nat_operacao').AsString     := Items[0].NFe.Ide.natOp;
            Query.FieldByName('nfe_cnpj').AsString             := Items[0].NFe.Dest.CNPJCPF;
            Query.FieldByName('nfe_razao').AsString            := Items[0].NFe.Dest.xNome;
            Query.FieldByName('nfe_uf').AsString               := Items[0].NFe.Dest.EnderDest.UF;
            Query.FieldByName('nfe_vlr_frete').AsFloat         := Items[0].NFe.Total.ICMSTot.vFrete;
            Query.FieldByName('nfe_vlr_seguro').AsFloat        := Items[0].NFe.Total.ICMSTot.vSeg;
            Query.FieldByName('nfe_vlr_outros').AsFloat        := Items[0].NFe.Total.ICMSTot.vOutro;
            Query.FieldByName('nfe_vlr_descontos').AsFloat     := Items[0].NFe.Total.ICMSTot.vDesc;
            Query.FieldByName('nfe_status').AsInteger          := Items[0].NFe.procNFe.cStat;

            Query.Post;

            {inicia a importação dos itens da nota fiscal}
            ImportatItens;

         except
            on e:exception do
               Application.MessageBox('Erro ao importar nota fiscal, tente novamente!','TechCore-RTG',mb_IconStop or mb_ok);
         end;

      end;

   except
      on e:exception do
         Application.MessageBox(pChar('Erro ao importar a nota fiscal.' + #10#13 + 'Erro: ' + e.Message),'TechCore-RTG',mb_IconStop or mb_ok);
   end;

end;

procedure TFrImportarNfe.ImportarFaturas;
begin

end;

function TFrImportarNfe.ImportarItensLocalizarProduto(CodigoBarras: String) : boolean;
var
   aQuery : TFDQuery;
begin
   {
      Data:       29/08/2019
      Autor:      Winston Moreira
      Aplicação:  Importar nota fiscal
      Descrição:  Rotina que checa se o produto já se encontra cadastrado no estoque
   }

   if CodigoBarras <> 'SEM GTIN' then
   begin

      try
         aQuery            := TFDQuery.Create(self);
         aQuery.Connection := FrModuloRet.DBConexao;

         {efetua a pesquisa pelo código de barras recebido}
         with aQuery do
         begin
            SQL.Add('Select * from C000405 where prd_codigo_brr = :prd_cod_barras');
            ParamByName('prd_cod_barras').AsString := CodigoBarras;
            Open();

            {se localizou, carrega os complementos do produto}
            if not ( IsEmpty ) then
            begin

               {insere os dados encontrados no objeto produtos}
               prd_class := TProdutos.Create;

               prd_class.prd_id           := aQuery.FieldByName('id').AsInteger;
               prd_class.prd_id_tipo      := aQuery.FieldByName('id_tipo_produto').AsInteger;
               prd_class.prd_id_grupo     := aQuery.FieldByName('id_grupo').AsInteger;               
               prd_class.prd_codigo       := aQuery.FieldByName('prd_codigo').AsInteger;
               prd_class.prd_cod_barras   := aQuery.FieldByName('prd_codigo_brr').AsString;
               prd_class.prd_cod_terceiro := aQuery.FieldByName('prd_codigo_ter').AsString;
               prd_class.prd_descricao    := aQuery.FieldByName('prd_descricao').AsString;
               prd_class.prd_unidade      := aQuery.FieldByName('prd_unidade').AsString;

               result := true;
            end
            else
               result := false;

         end;

      finally
         FreeAndNil(aQuery);
      end;
      
   end
   else
      result := false;

end;

procedure TFrImportarNfe.ImportatItens;
var
   i         : integer;
   iOrigem   : Integer;
begin
   {inicia a importação dos itens}
   with ACBrNFe1.NotasFiscais do
   begin

      try
         try

            {loop para carrega todos os itens}
            for i := 0 to Items[0].NFe.Det.Count - 1 do
            begin
               {coloca o cursor em modo de edição}
               QueryItens.Insert;

               {insere o item encontrado no cursor}
               with Items[0].NFe.Det[i] do
               begin

                  // Ordem dos itens da nota fiscal
                  QueryItens.FieldByName('prd_item').AsInteger := I+1;

                  {checa se o produto já existe no cadastro}
                  if ImportarItensLocalizarProduto(Prod.cEAN) then
                  begin;
                     QueryItens.FieldByName('prd_id').AsInteger           := prd_class.prd_id;
                     QueryItens.FieldByName('id_tipo_produto').AsInteger  := prd_class.prd_id_tipo;
                     QueryItens.FieldByName('id_grupo').AsInteger         := prd_class.prd_id_grupo;
                     QueryItens.FieldByName('prd_codigo_ter').AsString    := prd_class.prd_cod_terceiro;
                     QueryItens.FieldByName('prd_codigo_barras').AsString := Prod.cEAN;
                     QueryItens.FieldByName('prd_descricao').AsString     := prd_class.prd_descricao;
                     QueryItens.FieldByName('prd_unidade').AsString       := AnsiUpperCase(prd_class.prd_unidade);
                     QueryItens.FieldByName('prd_sts').AsString           := 'A';                    

                     {destroi o objeto}
                     FreeAndNil(ClassProdutos);
                  end
                  else
                  begin
                     QueryItens.FieldByName('prd_codigo').AsInteger       := Prod.cProd.ToInteger;
                     QueryItens.FieldByName('prd_codigo_ter').AsString    := Prod.cProd;
                     QueryItens.FieldByName('prd_codigo_barras').AsString := Prod.cEAN;
                     QueryItens.FieldByName('prd_descricao').AsString     := Prod.xProd;
                     QueryItens.FieldByName('prd_unidade').AsString       := AnsiUpperCase(Prod.uCom);
                     QueryItens.FieldByName('prd_sts').AsString           := 'C'; 
                  end;

                  case Imposto.ICMS.orig of
                     oeNacional                                  : iOrigem := 0;
                     oeEstrangeiraImportacaoDireta               : iOrigem := 1;
                     oeEstrangeiraAdquiridaBrasil                : iOrigem := 2;
                     oeNacionalConteudoImportacaoSuperior40      : iOrigem := 3;
                     oeNacionalProcessosBasicos                  : iOrigem := 4;
                     oeNacionalConteudoImportacaoInferiorIgual40 : iOrigem := 5;
                     oeEstrangeiraImportacaoDiretaSemSimilar     : iOrigem := 6;
                     oeEstrangeiraAdquiridaBrasilSemSimilar      : iOrigem := 7;
                     oeNacionalConteudoImportacaoSuperior70      : iOrigem := 8;
                  end;

                  QueryItens.FieldByName('prd_origem').AsInteger       := iOrigem;
                  QueryItens.FieldByName('prd_cfop').AsInteger         := Prod.CFOP.ToInteger;
                  QueryItens.FieldByName('prd_ncm').AsString           := Prod.NCM;
                  QueryItens.FieldByName('prd_cest').AsString          := Prod.CEST;
                  QueryItens.FieldByName('prd_qtde').AsFloat           := Prod.qCom;
                  QueryItens.FieldByName('prd_vlr_unitario').AsFloat   := Prod.vUnTrib;
                  QueryItens.FieldByName('prd_vlr_frete').AsFloat      := Prod.vFrete;
                  QueryItens.FieldByName('prd_vlr_seguro').AsFloat     := Prod.vSeg;
                  QueryItens.FieldByName('prd_vlr_outro').AsFloat      := Prod.vOutro;
                  QueryItens.FieldByName('prd_vlr_desconto').AsFloat   := Prod.vDesc;
                  QueryItens.FieldByName('prd_infos').AsString         := infAdProd;
                  QueryItens.FieldByName('prd_vlr_icms').AsFloat       := Imposto.ICMS.vICMS;
                  QueryItens.FieldByName('prd_vlr_ipi').AsFloat        := Imposto.IPI.vIPI;
                  QueryItens.FieldByName('prd_vlr_pis').AsFloat        := Imposto.PIS.vPIS;
                  QueryItens.FieldByName('prd_vlr_cofins').AsFloat     := Imposto.COFINS.vCOFINS;
                  QueryItens.FieldByName('prd_vlr_total').AsFloat      := Prod.vProd;

               end;

               {grava na cache o produto}
               QueryItens.Post;

            end;

            {grava no banco de dados}
            SchemaAD.ApplyUpdates(0);

         except
            on e:Exception do
               Application.MessageBox(pChar('Erro ao importar os produtos.' + #10#13 + 'Erro: ' + e.Message),'TechCore-RTG', mb_IconStop or mb_ok)
         end;

      finally
         QueryItens.Cancel;
         QueryItens.CancelUpdates;
      end;

   end;

end;

procedure TFrImportarNfe.JvDBGrid2DrawColumnCell(Sender: TObject;
  const [Ref] Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if gdSelected in State then
   begin
      (Sender as TDBGrid).Canvas.Font.Color  := clHighlightText;  // fonte
      (Sender as TDBGrid).Canvas.Brush.Color := $00804000; // fundo
   end
   else
   begin

      if QueryItens.FieldByName('prd_estoque').AsString = 'S' then
         (Sender as TDBGrid).Canvas.Font.Color := clGreen
      else
         (Sender as TDBGrid).Canvas.Font.Color := clRed;
   end;

   {Pinta o Grid}
   (Sender as TDBGrid).Canvas.FillRect(Rect);
   (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrImportarNfe.PngBitBtn1Click(Sender: TObject);
begin
   {Carrega as notas importadas}
   Query.Close;
   Query.ParamByName('id_emp').AsInteger  := FEmpresaClass.ID;
   Query.ParamByName('data_a').AsDateTime := eDataIni.Date;
   Query.ParamByName('data_b').AsDateTime := eDataFim.Date;
   Query.Open();
end;

procedure TFrImportarNfe.QueryAfterPost(DataSet: TDataSet);
begin
//   DataSet.Refresh;
end;

procedure TFrImportarNfe.QueryItensAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
begin
   if AErrors = 0 then
   begin
      {limpa a cache do cursor}
      QueryItens.CommitUpdates;

      if Self.Tag = 1 then
         Application.MessageBox('Extorno do item efetuado com sucesso.','TechCore-RTG',mb_IconInformation or mb_ok);
   end;
end;

procedure TFrImportarNfe.QueryItensPRD_ESTOQUEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if ( DisplayText ) and ( not Query.IsEmpty ) then
      Text := Sender.AsString
   else
      Text := Sender.AsString
end;

procedure TFrImportarNfe.QueryNewRecord(DataSet: TDataSet);
begin
   DataSet.FieldByName('id_empresa').AsInteger := FEmpresaClass.ID;
end;

procedure TFrImportarNfe.QueryNFE_CNPJGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Length(Sender.AsString) <= 11 then
      Text := FormatMaskText('!999\.999\.999\-99;0;_',Sender.AsString)
   else
   if Length(Sender.AsString) > 11 then
      Text := FormatMaskText('!99.999\.999\/9999\-99;0;_',Sender.AsString);
end;

procedure TFrImportarNfe.QueryNFE_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if ( DisplayText ) and ( not Query.IsEmpty ) then
   begin
      case Sender.AsInteger of
         100 : Text := 'Autorizada';
         101 : Text := 'Cancelada';
         110 : Text := 'Denegada';
      end;
   end
   else
      Text := Sender.AsString
end;

procedure TFrImportarNfe.SchemaADAfterApplyUpdate(Sender: TObject);
begin
   {limpa a cache dos cursores}
   SchemaAD.CommitUpdates;

   {atualiza o cursor principal}
   Query.Refresh;
end;

end.
