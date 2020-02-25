unit uVendas;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
   Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzEdit, Vcl.Mask,
   JvExMask, JvToolEdit, JvBaseEdits, Vcl.StdCtrls, JvExStdCtrls, JvEdit,
   JvExExtCtrls, JvImage, RzPanel, Vcl.Imaging.jpeg, JvExtComponent, JvClock,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   Vcl.ComCtrls, JvDBGridFooter, RzDBGrid, RzGrids, JvExGrids, JvStringGrid,
   FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
   FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
   FireDAC.DApt, NxDBColumns, NxColumns, NxScrollControl,
   NxCustomGridControl, NxCustomGrid, NxDBGrid, JvComponentBase, JvAppHotKey,
   Vcl.AppEvnts, Vcl.Menus, IdBaseComponent, IdComponent, IdTCPConnection,
   IdTCPClient, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
   FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteVDataSet, DateUtils, RzDBEdit,
   Vcl.DBCtrls, RzLabel, RzDBLbl, ACBrDFeReport, ACBrSATExtratoClass,
   ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, ACBrBase, ACBrSAT, pcnConversao, ACBrUtil, ACBrSatClass,
   RzCmboBx, ACBrSATExtratoESCPOS, ACBrPosPrinter, dxGDIPlusClasses;

type
   TFrVendas = class(TForm)
      pn_Principal: TPanel;
      img_amarelo: TImage;
      img_cinza: TImage;
      img_verde: TImage;
      lbStatusCarga: TLabel;
      pn_Buscar: TPanel;
      pn_Qtde: TPanel;
      Label2: TLabel;
      pn_Produtos: TPanel;
      pnTitulo: TPanel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      Label17: TLabel;
      Label18: TLabel;
      Label20: TLabel;
      pnTotalUnit: TPanel;
      Label6: TLabel;
      pnUnitario: TPanel;
      Label8: TLabel;
      pnVolumes: TPanel;
      Label9: TLabel;
      pn_Titulo: TPanel;
      JvImage3: TJvImage;
      lbTitulo: TLabel;
      Image3: TImage;
      pn_Relogio: TPanel;
      Image2: TImage;
      Image4: TImage;
      DBGrid: TNextDBGrid;
      Col_0: TNxDBNumberColumn;
      NxDBHtmlColumn1: TNxDBHtmlColumn;
      NxDBTextColumn2: TNxDBTextColumn;
      NxDBNumberColumn2: TNxDBNumberColumn;
      NxDBNumberColumn3: TNxDBNumberColumn;
      NxDBNumberColumn4: TNxDBNumberColumn;
      Pop00: TPopupMenu;
      N1: TMenuItem;
      N2: TMenuItem;
      S1: TMenuItem;
      Panel3: TPanel;
      IdTCPClient1: TIdTCPClient;
      Query: TFDQuery;
      QueryID: TIntegerField;
      QueryID_EMPRESA: TIntegerField;
      QueryID_PRODUTO: TIntegerField;
      QueryPRD_CODIGO: TIntegerField;
      QueryPRD_CODIGO_BARRA: TStringField;
      QueryPRD_DESCRICAO: TStringField;
      QueryPRD_UNIDADE: TStringField;
      QueryPRD_NCM: TStringField;
      QueryPRD_CFOP: TIntegerField;
      QueryPRD_ORIGEM: TIntegerField;
      QueryPRD_VLR_VENDA: TBCDField;
      QueryPRD_NCM_TAXA_IMP: TFMTBCDField;
      QueryPRD_NCM_TAXA_NAC: TFMTBCDField;
      QueryPRD_NCM_TAXA_EST: TFMTBCDField;
      Panel2: TPanel;
      lb_caixa: TLabel;
      img_servidor: TImage;
      lb_servidor: TLabel;
      JvImage1: TJvImage;
      JvClock1: TJvClock;
      tStatusCarga: TTimer;
      QueryStatusCarga: TFDMemTable;
      QueryCupom: TFDQuery;
      dsCupom: TDataSource;
      QueryProdutos: TFDQuery;
      dsProdutosCupom: TDataSource;
      QueryProdutosID: TIntegerField;
      QueryProdutosID_C000050: TIntegerField;
      QueryProdutosID_PRODUTO: TIntegerField;
      QueryProdutosF_ITEM: TIntegerField;
      QueryProdutosF_CODIGO: TIntegerField;
      QueryProdutosF_CODIGO_BARRAS: TStringField;
      QueryProdutosF_UNIDADE: TStringField;
      QueryProdutosF_QTDE: TBCDField;
      QueryProdutosF_VLR_UNITARIO: TBCDField;
      QueryProdutosF_VLR_TOTAL: TFMTBCDField;
      QueryProdutosF_NCM: TStringField;
      QueryProdutosF_CFOP: TIntegerField;
      QueryProdutosF_INFOS_ADICONAIS: TStringField;
      QueryProdutosF_DESCRICAO: TStringField;
      QueryCupomID: TIntegerField;
      QueryCupomID_EMPRESA: TIntegerField;
      QueryCupomID_CAIXA: TIntegerField;
      QueryCupomID_OPERADOR: TIntegerField;
      QueryCupomID_VENDEDOR: TIntegerField;
      QueryCupomID_CLIENTE: TIntegerField;
      QueryCupomF_CUPOM_DATA: TSQLTimeStampField;
      QueryCupomF_CUPOM_CPF: TStringField;
      QueryCupomF_VLR_CUPOM: TFMTBCDField;
      QueryCupomF_VLR_DESCONTO: TFMTBCDField;
      QueryCupomF_VLR_PAGO: TFMTBCDField;
      QueryCupomF_VLR_TROCO: TFMTBCDField;
      QueryCupomF_CUPOM_STATUS: TIntegerField;
      QueryCupomF_CUPOM_DIRETIVA: TIntegerField;
      QueryCupomF_XML: TMemoField;
      QueryCupomF_XML_CANCELADO: TMemoField;
      QueryCupomF_XML_CHAVE: TStringField;
      QueryProdutosF_NCM_TAXA_IMP: TFMTBCDField;
      QueryProdutosF_NCM_TAXA_NAC: TFMTBCDField;
      QueryProdutosF_NCM_TAXA_EST: TFMTBCDField;
      C1: TMenuItem;
      C2: TMenuItem;
      QueryProdutosF_STATUS: TIntegerField;
      QueryProdutosF_BRINDE: TIntegerField;
      N3: TMenuItem;
      InserirProdutos: TMenuItem;
      QueryProdutosF_VLR_SUB_TOTAL: TFMTBCDField;
      QueryProdutosF_VLR_DESCONTO: TFMTBCDField;
      QueryProdutosF_VLR_CUPOM: TAggregateField;
      pn_Valores: TPanel;
      QueryProdutosAGG_VLR_DESCONTO: TAggregateField;
      finalizar_venda: TMenuItem;
      QueryProdutosAGG_VALOR_TOTAL: TAggregateField;
      I1: TMenuItem;
      Label5: TLabel;
      JvImage4: TJvImage;
      lb_usuario: TLabel;
      Panel5: TPanel;
      Label4: TLabel;
      Label7: TLabel;
      tCaixaLivre: TTimer;
      aQuery: TFDQuery;
      DBEdit1: TDBEdit;
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      DBEdit4: TDBEdit;
      ObjSat: TACBrSAT;
      T1: TMenuItem;
      Panel1: TPanel;
      Panel4: TPanel;
      Label19: TLabel;
      Label21: TLabel;
      D1: TMenuItem;
      Panel6: TPanel;
      pn_header: TPanel;
      Label26: TLabel;
      Label277: TLabel;
      Label28: TLabel;
      Label29: TLabel;
      Label30: TLabel;
      Label31: TLabel;
      Label32: TLabel;
      Label33: TLabel;
      Label34: TLabel;
      Label35: TLabel;
      QueryCupomF_CUPOM_NUMERO: TIntegerField;
      RzDBLabel1: TRzDBLabel;
      RzDBLabel5: TRzDBLabel;
      ACBrPosPrinter1: TACBrPosPrinter;
      S2: TMenuItem;
      QueryProdutosF_DATA: TSQLTimeStampField;
      R1: TMenuItem;
      s3: TMenuItem;
      QueryCupomF_VLR_SUBTOTAL: TFMTBCDField;
      L1: TMenuItem;
      QueryCupomF_VLR_NCM_IMP: TFMTBCDField;
      QueryCupomF_VLR_NCM_NAC: TFMTBCDField;
      QueryCupomF_VLR_NCM_EST: TFMTBCDField;
      QueryCupomF_VLR_NCM_MUN: TFMTBCDField;
      QueryCupomF_NCM_FONTE: TStringField;
      QueryCupomF_NCM_CHAVE: TStringField;
      C3: TMenuItem;
      RzDBLabel3: TRzDBLabel;
      tStatusForm: TTimer;
      QueryCupomF_QTDE_ITENS: TLargeintField;
      QueryCupomF_VLR_RECEBER: TFMTBCDField;
      lb_Troco: TRzDBLabel;
      CarregarPrVendas1: TMenuItem;
      rQuery: TFDQuery;
      Label1: TLabel;
      Label10: TLabel;
      Label22: TLabel;
      RzDBLabel4: TRzDBLabel;
      Label23: TLabel;
      RzDBLabel6: TRzDBLabel;
      QueryCupomF_VLR_TOTAL: TFMTBCDField;
      eBuscar: TRzEdit;
      ResumodoCaixa1: TMenuItem;
      QueryPRD_KIT: TBooleanField;
      QueryProdutosF_ID_KIT: TIntegerField;
      QueryProdutosF_DESC_KIT: TStringField;
      QueryPRD_KIT_VALOR: TFMTBCDField;
      QueryProdutosF_KIT: TStringField;
      ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
      QueryCupomID_PLN_PDV: TIntegerField;
      QueryProdutosID_ABERTURA: TStringField;
      QueryProdutosF_DESCRICAO_CURTA: TStringField;
      QueryPRD_DESCRICAO_CURTA: TStringField;
      QueryCupomID_CONTA: TIntegerField;
      restaurarItem1: TMenuItem;
      InformarCPF1: TMenuItem;
      QueryCupomF_COD_PRE_VENDAS: TStringField;
      JvImage2: TJvImage;
      procedure FormResize(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure eBuscarKeyPress(Sender: TObject; var Key: Char);
      procedure S1Click(Sender: TObject);
      procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
      procedure eBuscarEnter(Sender: TObject);
      procedure IdTCPClient1Connected(Sender: TObject);
      procedure eBuscarExit(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure tStatusCargaTimer(Sender: TObject);
      procedure QueryStatusCargaAfterPost(DataSet: TDataSet);
      procedure QueryTemporariaPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
      procedure QueryProdutosBeforePost(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure C1Click(Sender: TObject);
      procedure QueryCupomAfterDelete(DataSet: TDataSet);
      procedure C2Click(Sender: TObject);
      procedure DBGridCellFormating(Sender: TObject; ACol, ARow: Integer; Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles; CellState: TCellState);
      procedure QueryProdutosAfterPost(DataSet: TDataSet);
      procedure QueryCupomAfterOpen(DataSet: TDataSet);
      procedure finalizar_vendaClick(Sender: TObject);
      procedure Image4Click(Sender: TObject);
      procedure QueryCupomAfterPost(DataSet: TDataSet);
      procedure QueryProdutosAGG_VALOR_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tCaixaLivreTimer(Sender: TObject);
      procedure QueryCupomF_VLR_PAGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure QueryCupomF_VLR_TROCOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure QueryProdutosF_QTDEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure InserirProdutosClick(Sender: TObject);
      procedure I1Click(Sender: TObject);
      procedure T1Click(Sender: TObject);
      procedure ObjSatMensagemSEFAZ(ACod: Integer; AMensagem: string);
      procedure ObjSatGetcodigoDeAtivacao(var Chave: AnsiString);
      procedure ObjSatGetsignAC(var Chave: AnsiString);
      procedure D1Click(Sender: TObject);
      procedure QueryAfterRefresh(DataSet: TDataSet);
      procedure QueryCupomF_CUPOM_NUMEROGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure S2Click(Sender: TObject);
      procedure R1Click(Sender: TObject);
      procedure s3Click(Sender: TObject);
      procedure L1Click(Sender: TObject);
      procedure QueryTotalF_VLR_PAGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure QueryTotalF_VLR_SUBTOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure QueryTotalF_VLR_DESCONTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure QueryTotalF_VLR_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure QueryTotalF_VLR_TROCOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure tStatusFormTimer(Sender: TObject);
      procedure QueryCupomF_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure CarregarPrVendas1Click(Sender: TObject);
      procedure C3Click(Sender: TObject);
      procedure ResumodoCaixa1Click(Sender: TObject);
      procedure QueryProdutosAfterDelete(DataSet: TDataSet);
      procedure QueryProdutosF_DESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
      procedure restaurarItem1Click(Sender: TObject);
      procedure InformarCPF1Click(Sender: TObject);

   private
      Tipo_Impressora: Integer;

      FBuffer: TStringList;
      v_Arquivo_XML: String;

      r_TotalLei_IMP: Real;
      r_TotalLei_NAC: Real;
      r_TotalLei_EST: Real;
      r_TotalLei_MUN: Real;
      vr_tempo_troco: Integer;

      function PesquisarProdutos(aValue: String; iBrinde: Integer): Boolean;
      function IniciaCupomFiscal: Boolean;

      procedure Cupom_Gerencial_Cabecalho;
      procedure Cupom_Gerencial_Itens;
      procedure Cupom_Gerencial_Total;
      procedure Cupom_Gerencial_Total_Formas;
      procedure Cupom_Gerencial_Rodape;
      procedure Cupom_Gerencial_Imprimir;
      function finalizar_cupom_gerencial: Boolean;
      procedure CarregarCupomAberto(ID_Cupom: Integer);
      procedure ExcluirCupomAberto;
      procedure ExibirResumoCaixa;
      procedure EfetuarSangria;
      procedure EfetuaRetirada;
      procedure InsereSuprimento;
      procedure CancelarVenda;
      procedure CancelaItemVenda;
      procedure RestauraItemVenda;
      procedure ListarCupons;

   public
      function parametros_SAT: Boolean;
      function Inicializa_SAT: Boolean;
      function Gerar_Cupom_Fiscal: Boolean;
      procedure Carrega_Dados_Do_Produto(ID: Integer; Qtde: Real; iBrinde: Integer; Kit: Boolean);
   end;

Function BlockInput(ABlockInput: Boolean): Boolean; stdcall; external 'USER32.DLL';

var
   FrVendas: TFrVendas;

implementation

{$R *.dfm}

Uses
   uPrincipal, uAtualizarPDV, uModulo, Classe.Empresa, uBuscarProdutos,
   uCpfCnpjCliente, Classe.ProdutosCupom, Classe.Caixa, Classe.Operador, Classe.Cupom,
   uSenhaOperador, uCancelaItem, uVendedores, Classe.Vendedor, uFormaPagtos, uDescontoUnitario, uSangria, uSenhaConfig, uRetirada, uSuprimento, uListarCupons,
   uImportarVendaCelular, uRelatorioCaixa, uVendasConfirmar, uRestauraItem;

procedure TFrVendas.C1Click(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Procedimento para cancelamento da venda atual, verifica se existe
     uma venda aberta e checa se o operador tem permissão para cancelar
     ------------------------------------------------------------------------------------- }
   if Assigned(Cupom_Fiscal) then
   begin

      if ObjOperador.F_User_Adm = 1 then
      begin
         CancelarVenda;
         Exit;
      end;

      // Checa se permite cancelar a venda
      if ObjOperador.Opr_CancelarVenda = 2 then
      begin
         Imprime_display('usuário sem permissão para utilizar este recurso', clYellow);
         Sleep(1000);
         Imprime_display_anterior;
         Exit;
      end;

      // Checa se é obrigatório o uso de senha
      if ObjOperador.F_Senha_Cancela_Venda = 2 then
         CancelarVenda
      else
      begin

         try
            FrSenhaOperador := TFrSenhaOperador.Create(self);
            if FrSenhaOperador.ShowModal = mrOk then
               CancelarVenda;

         finally
            FreeAndNil(FrSenhaOperador);
         end;

      end;

   end
   else
   begin
      Imprime_display('Não há cupom aberto.', clYellow);
      Sleep(1000);
      Imprime_display_anterior;
   end;

end;

procedure TFrVendas.C2Click(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Processo de cancelamento dos itens do cupom
     ------------------------------------------------------------------------------------- }
   if Assigned(Cupom_Fiscal) then
   begin

      if ObjOperador.F_User_Adm = 1 then
      begin
         CancelaItemVenda;
         Exit;
      end;

      // Checa se permite cancelar a venda
      if ObjOperador.Opr_CancelarItem = 2 then
      begin
         Imprime_display('usuário sem permissão para utilizar este recurso', clYellow);
         Sleep(1000);
         Imprime_display_anterior;
         Exit;
      end;

      // Checa se é obrigatório o uso de senha
      if ObjOperador.F_Senha_Cancela_Itens = 2 then
         CancelaItemVenda
      else
      begin

         try
            FrSenhaOperador := TFrSenhaOperador.Create(self);
            if FrSenhaOperador.ShowModal = mrOk then
               CancelaItemVenda;

         finally
            FreeAndNil(FrSenhaOperador);
         end;

      end;

   end
   else
   begin
      Imprime_display('não há cupom aberto.', clYellow);
      Sleep(2000);
      Imprime_display_anterior;
   end;
end;

procedure TFrVendas.C3Click(Sender: TObject);
var
   iCodigo: Integer;
   iPos: Integer;
   Qtde: Double;
begin

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  1º - Checa se foi informado a quantidade do produto na string
     ------------------------------------------------------------------------------------- }
   if Pos('*', trim(eBuscar.Text)) > 0 then
   begin

      // Recupera a posição do coringa na string e incrementa mais um
      iPos := Pos('*', trim(eBuscar.Text));

      // Tratamento para a quantidade informada
      if not TryStrToFloat(Copy(trim(eBuscar.Text), 0, iPos - 1), Qtde) then
      begin
         Imprime_display('Quantidade informada inválida', clRed);
         BlockInput(true);
         Sleep(1000);
         BlockInput(false);
         Imprime_display_anterior;
         Exit;
      end;

   end
   else
      Qtde := 1;

   try
      FrBuscarProduto := TFrBuscarProduto.Create(self);

      { -----------------------------------------------------------------------------------
        Autor:      Winston Moreira
        Dat:        20/02/2019
        Descrição:  3º - Se nada foi encontrado nas pesquisas anteriores, tenta buscar
        uma relação de produtos ou um produto pela descrição
        ------------------------------------------------------------------------------------- }
      Query.Close;
      Query.SQL.Clear;
      Query.SQL.Add('SELECT * FROM C000405 WHERE ID_EMPRESA = :ID_EMPRESA ORDER BY PRD_DESCRICAO ASC');
      Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
      Query.Open();

      if FrBuscarProduto.ShowModal = mrCancel then
      begin
         Imprime_display('informe o produto.', clWhite);
         Abort;
         Imprime_display_anterior;
      end;

      { Inicia a emissão do cupom }
      if not Assigned(Cupom_Fiscal) then
         IniciaCupomFiscal;

      Carrega_Dados_Do_Produto(QueryID.AsInteger, Qtde, 1, QueryPRD_KIT.AsBoolean);

   finally
      Query.Close;
      Query.Filtered := false;
      FreeAndNil(FrBuscarProduto);
   end;
end;

procedure TFrVendas.CancelaItemVenda;
begin
   try
      FrCancelaItem := TFrCancelaItem.Create(self);
      FrCancelaItem.ShowModal;
   finally
      FreeAndNil(FrCancelaItem);
   end;
end;

procedure TFrVendas.CancelarVenda;
begin
   try
      FrVendasConfirmar := TFrVendasConfirmar.Create(self);
      if FrVendasConfirmar.ShowModal = mrOk then
      begin
         QueryCupom.Delete;
         Imprime_display('venda cancelada com sucesso', clYellow);
         Sleep(1000);
      end;
   finally
      FreeAndNil(FrVendasConfirmar);
   end;
end;

procedure TFrVendas.CarregarCupomAberto(ID_Cupom: Integer);
begin
   // Carrega o cupom
   QueryCupom.Close;
   QueryCupom.SQL.Clear;
   QueryCupom.SQL.Add('SELECT * FROM C000050 WHERE ID = :ID');
   QueryCupom.ParamByName('ID').AsInteger := ID_Cupom;
   QueryCupom.Open();

   // Cria o objeto CupomFiscal e o preenche
   Cupom_Fiscal := TCupomFiscal.Create;

   with QueryCupom do
   begin
      Cupom_Fiscal.F_ID := ID_Cupom;
      Cupom_Fiscal.F_ID_Empresa := FieldByName('ID_EMPRESA').AsInteger;
      Cupom_Fiscal.F_ID_Caixa := FieldByName('ID_CAIXA').AsInteger;
      Cupom_Fiscal.F_ID_Operador := FieldByName('ID_OPERADOR').AsInteger;
      Cupom_Fiscal.F_ID_Vendedor := FieldByName('ID_VENDEDOR').AsInteger;
      Cupom_Fiscal.F_ID_Cliente := FieldByName('ID_CLIENTE').AsInteger;
      Cupom_Fiscal.F_Data := FieldByName('F_CUPOM_DATA').AsDateTime;
      Cupom_Fiscal.F_Cpf_Numero := FieldByName('F_CUPOM_CPF').AsString;
      Cupom_Fiscal.F_Numero := FieldByName('F_CUPOM_NUMERO').AsInteger;
      Cupom_Fiscal.F_Vlr_Desconto := FieldByName('f_vlr_desconto').AsFloat;
      Cupom_Fiscal.F_Diretiva := FieldByName('f_cupom_diretiva').AsInteger;
   end;

   // Cria o objeto vendedor
   if not Assigned(Obj_Vendedores) then
      Obj_Vendedores := TVendedor.Create(Cupom_Fiscal.F_ID_Vendedor);

   // Ajusta a diretiva
   case Cupom_Fiscal.F_Diretiva of
      1:
         begin
            Tipo_Impressora := 2;
            img_servidor.Picture.Assign(img_verde.Picture);
         end;

      2:
         begin
            Tipo_Impressora := 1;
            img_servidor.Picture.Assign(img_amarelo.Picture);
         end;
   end;

end;

procedure TFrVendas.CarregarPrVendas1Click(Sender: TObject);
var
   CodigoProduto: String;
   CodigoVendedor: Integer;
   QtdeProduto: Real;
begin

   // Confere se o servidor está ativo
   with IdTCPClient1 do
   begin
      try
         Host := FEmpresaClass.ServerRest_Host;
         Port := FEmpresaClass.ServerRest_Port;
         Connect;
      except
         Imprime_display('Não foi possivel localizar o servidor no endereço e porta informado.', clRed);
         Sleep(2000);
         Imprime_display('c a i x a  l i v r e.', clWhite);
         Abort;
      end;
   end;

   if not Assigned(Cupom_Fiscal) then
   begin

      try
         FrImportarVendaCelular := TFrImportarVendaCelular.Create(self);
         if FrImportarVendaCelular.ShowModal = mrOk then
         begin

            { Inicia a emissão do cupom }
            if not Assigned(Cupom_Fiscal) then
               IniciaCupomFiscal;

            // Armazena o código da venda
            Cupom_Fiscal.F_CodigoVenda := FrImportarVendaCelular.CodigoVenda;

            // Determina que esta é uma venda de celular
            Cupom_Fiscal.F_VendaCelular := true;

            // Armazena o código do vendedor
            Cupom_Fiscal.F_ID_Vendedor := FrImportarVendaCelular.CodigoVendedor;

            // Se houver desconto aplica o mesmo
            if FrImportarVendaCelular.vlrDoDesconto > 0 then
            begin
               // Recebe o valor do desconto informado
               Cupom_Fiscal.F_Vlr_Desconto := FrImportarVendaCelular.vlrDoDesconto;

               // Grava na base de dados do cupom
               QueryCupom.Edit;
               QueryCupomF_VLR_DESCONTO.AsFloat := Cupom_Fiscal.F_Vlr_Desconto;
               QueryCupom.Post;
            end;

            { Carrega todos os produtos para o cupom }
            rQuery := TFDQuery.Create(self);
            rQuery.Connection := FrModulo.DBCon_Remoto;

            rQuery.SQL.Add('SELECT * FROM C000021 WHERE CODIGO_VENDA = :CODIGO ORDER BY ID ASC');
            rQuery.ParamByName('CODIGO').AsString := Cupom_Fiscal.F_CodigoVenda;
            rQuery.Open();
            rQuery.First;

            repeat
               QtdeProduto := rQuery.FieldByName('Qtde_Produto').AsFloat;
               CodigoProduto := rQuery.FieldByName('Codigo_Produto').AsString;

               { Monta o código para pesquisa }
               CodigoProduto := FloatToStr(QtdeProduto) + '*' + CodigoProduto;

               // Efetua a pesquisa do produto
               PesquisarProdutos(CodigoProduto, 1);

               if Assigned(Obj_Vendedores) then
                  FreeAndNil(Obj_Vendedores);

               // Carrega os dados do vendedor para a memória
               Obj_Vendedores := TVendedor.Create(Cupom_Fiscal.F_ID_Vendedor);

               rQuery.Next;
            until (rQuery.Eof);

         end;

      finally
         FreeAndNil(FrImportarVendaCelular);
      end;

   end
   else
   begin
      Imprime_display('acesso negado, existem cupons abertos', clYellow);
      Sleep(1000);
      Imprime_display_anterior;
   end;

end;

procedure TFrVendas.Carrega_Dados_Do_Produto(ID: Integer; Qtde: Real; iBrinde: Integer; Kit: Boolean);
var
   Str: String;
   aQuery, bQuery: TFDQuery;
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       20/02/2019
     Descrição:  Grava os dados do produto na tabela local
     ------------------------------------------------------------------------------------- }
   QueryProdutos.Append;
   QueryProdutos.FieldByName('ID_C000050').AsInteger := Cupom_Fiscal.F_ID;
   QueryProdutos.FieldByName('ID_PRODUTO').AsInteger := ID;
   QueryProdutos.FieldByName('F_DATA').AsDateTime := Cupom_Fiscal.F_Data;
   QueryProdutos.FieldByName('F_CODIGO').AsInteger := QueryPRD_CODIGO.AsInteger;
   QueryProdutos.FieldByName('F_CODIGO_BARRAS').AsString := QueryPRD_CODIGO_BARRA.AsString;
   QueryProdutos.FieldByName('F_DESCRICAO').AsString := QueryPRD_DESCRICAO.AsString;

   { Impede de gravar dados vazios }
   if QueryPRD_DESCRICAO_CURTA.IsNull then
      QueryProdutos.FieldByName('F_DESCRICAO_CURTA').Clear
   else
      QueryProdutos.FieldByName('F_DESCRICAO_CURTA').AsString := QueryPRD_DESCRICAO_CURTA.AsString;

   QueryProdutos.FieldByName('F_UNIDADE').AsString := QueryPRD_UNIDADE.AsString;
   QueryProdutos.FieldByName('F_QTDE').AsFloat := Qtde;

   if QueryPRD_KIT.AsBoolean = true then
   begin
      QueryProdutos.FieldByName('F_VLR_UNITARIO').AsFloat := QueryPRD_KIT_VALOR.AsFloat;
      QueryProdutos.FieldByName('F_VLR_SUB_TOTAL').AsFloat := (QueryPRD_KIT_VALOR.AsFloat * Qtde);
      QueryProdutos.FieldByName('F_VLR_TOTAL').AsFloat := (QueryPRD_KIT_VALOR.AsFloat * Qtde);
      QueryProdutos.FieldByName('F_KIT').AsString := 'S';
      QueryProdutos.FieldByName('F_ID_KIT').AsInteger := ID;
   end
   else
   begin
      QueryProdutos.FieldByName('F_VLR_UNITARIO').AsFloat := QueryPRD_VLR_VENDA.AsFloat;
      QueryProdutos.FieldByName('F_VLR_SUB_TOTAL').AsFloat := (QueryPRD_VLR_VENDA.AsFloat * Qtde);
      QueryProdutos.FieldByName('F_VLR_TOTAL').AsFloat := (QueryPRD_VLR_VENDA.AsFloat * Qtde);
   end;

   QueryProdutos.FieldByName('F_NCM').AsString := QueryPRD_NCM.AsString;
   QueryProdutos.FieldByName('F_CFOP').AsInteger := QueryPRD_CFOP.AsInteger;
   QueryProdutos.FieldByName('F_NCM_TAXA_IMP').AsFloat := QueryPRD_NCM_TAXA_IMP.AsFloat;
   QueryProdutos.FieldByName('F_NCM_TAXA_NAC').AsFloat := QueryPRD_NCM_TAXA_NAC.AsFloat;
   QueryProdutos.FieldByName('F_NCM_TAXA_EST').AsFloat := QueryPRD_NCM_TAXA_EST.AsFloat;
   QueryProdutos.FieldByName('F_BRINDE').AsInteger := iBrinde;
   QueryProdutos.Post;

   if QueryPRD_CODIGO_BARRA.AsString = '' then
      Str := Format('%.6d', [QueryPRD_CODIGO.AsInteger])
   else
      Str := QueryPRD_CODIGO_BARRA.AsString;

   Str := Str + ' - ' + QueryPRD_DESCRICAO.AsString;
   Imprime_display(Str, clWhite);

   // Limpa o campo de pesquisa de produtos
   eBuscar.Clear;

end;

procedure TFrVendas.Cupom_Gerencial_Cabecalho;
begin
   // Inicia a objeto de strings
   FBuffer := TStringList.Create;

   // Inicia a criação do cabeçalho
   FBuffer.Clear;

   // Identificações básicas
   FBuffer.Add('</ae><c>' + PadSpace('Lj: ' + Format('%.2d', [FEmpresaClass.Codigo]) + ' ' + 'Cx: ' + Format('%.2d', [ObjCaixa.Caixa_Codigo]) + ' ' + 'Op: ' + Format('%.2d',
      [ObjOperador.Opr_Codigo]) + '-' + ObjOperador.Opr_Apelido + '|' + 'COO: ' + Format('%.6d', [Cupom_Fiscal.F_Numero]), Trunc(ACBrPosPrinter1.ColunasFonteCondensada), '|')

      );

   // Titulo do cupom
   FBuffer.Add('</linha_simples>');
   FBuffer.Add('</ce><c>' + FEmpresaClass.RazaoSocial);
   FBuffer.Add('</ce><c>' + FEmpresaClass.NomeFantasia);
   FBuffer.Add('</ce><c>' + FEmpresaClass.Endereco + ',' + Format('%.3d', [FEmpresaClass.Numero]));
   FBuffer.Add('</ce><c>' + FEmpresaClass.Bairro + ' - ' + FEmpresaClass.Cidade + ' - ' + 'CEP: ' + FEmpresaClass.Cep);

   FBuffer.Add('</linha_simples>');
   FBuffer.Add('</ce></fn><n>SIMPLES CONFERENCIA</n>');
   FBuffer.Add('</ce></fb><c>' + DateToStr(Date) + ' - ' + TimeToStr(Time));

end;

procedure TFrVendas.Cupom_Gerencial_Imprimir;
var
   i, n: Integer;
begin

   with ACBrPosPrinter1 do
   begin
      if Ativo then
         Desativar;

      if Modelo = ppEscPosEpson then
      begin
         EspacoEntreLinhas := 50;
         LinhasEntreCupons := 5;
      end;

      if Modelo = ppEscBematech then
      begin
         EspacoEntreLinhas := 1;
         LinhasEntreCupons := 3;
      end;

      LinhasEntreCupons := 5;

      try
         Porta := ObjCaixa.Caixa_Printer_Porta_G;
         Modelo := TACBrPosPrinterModelo(ObjCaixa.Caixa_Printer_Model_G);
         Ativar;
      except
         Imprime_display('erro ao imprimir, verifique se este cupom aparece dentre os finalizados.', clRed);
         Sleep(2500);
         Imprime_display_anterior;
         Exit;
      end;
   end;

   Cupom_Gerencial_Cabecalho;
   Cupom_Gerencial_Itens;
   Cupom_Gerencial_Total;
   Cupom_Gerencial_Total_Formas;
   Cupom_Gerencial_Rodape;

   // Determinao tipo de corte do papel
   FBuffer.Add('</corte_total>');

   try

      try
         for n := 1 to ObjCaixa.Caixa_Cupom_Vias_G do
         begin
            for i := 0 to FBuffer.Count - 1 do
               ACBrPosPrinter1.Buffer.Add(FBuffer[i]);

            ACBrPosPrinter1.Imprimir(); // Imprime o Buffer
         end;
      except
         Imprime_display('erro ao imprimir, verifique se este cupom aparece dentre os finalizados', clRed);
         Sleep(2500);
         Imprime_display_anterior;
      end;

   finally
      ACBrPosPrinter1.Desativar;
      FreeAndNil(FBuffer);
   end;

end;

procedure TFrVendas.Cupom_Gerencial_Itens;
var
   aQuery, kQuery: TFDQuery;
   nRec: Integer;
begin
   nRec := 0;

   FBuffer.Add('</ae><c></linha_simples>');
   FBuffer.Add(PadSpace('#|COD|DESC|QTD|UN|VL UN R$|(VLTR R$)*|VL ITEM R$', ACBrPosPrinter1.ColunasFonteCondensada, '|'));
   FBuffer.Add('</linha_simples>');

   // Carrega os produtos inseridos no cupom
   try
      aQuery := TFDQuery.Create(self);
      aQuery.Connection := FrModulo.DBCon_Local;

      aQuery.SQL.Add('SELECT * FROM C000051 WHERE ID_C000050 = :ID_C000050 AND F_STATUS = 1 ORDER BY F_ITEM ASC');
      aQuery.ParamByName('id_C000050').AsInteger := Cupom_Fiscal.F_ID;
      aQuery.Open();

      // Posiciona o cursor no primeiro registro
      aQuery.First;

      repeat

         // Ao carregar o produto verifica se é um kit e processa o kit
         if aQuery.FieldByName('f_id_kit').AsInteger > 0 then
         begin

            try
               kQuery := TFDQuery.Create(self);
               kQuery.Connection := FrModulo.DBCon_Local;

               kQuery.SQL.Add('select * from C000405_kit where id_C000405 = :id');
               kQuery.ParamByName('id').AsInteger := aQuery.FieldByName('f_id_kit').AsInteger;
               kQuery.Open();

               // Posiciona o cursor no primeiro item
               kQuery.First;

               repeat
                  // Acrescenta um no contador
                  Inc(nRec);

                  if kQuery.FieldByName('prd_descricao_curta').IsNull then
                     FBuffer.Add('<ae><c>' + Format('%.2d', [aQuery.FieldByName('f_item').AsInteger]) + ' ' + Format('%.13d', [kQuery.FieldByName('prd_codigo').AsInteger]) + ' ' +
                        kQuery.FieldByName('prd_descricao').AsString)
                  else
                     FBuffer.Add('<ae><c>' + Format('%.2d', [aQuery.FieldByName('f_item').AsInteger]) + ' ' + Format('%.13d', [kQuery.FieldByName('prd_codigo').AsInteger]) + ' ' +
                        kQuery.FieldByName('prd_descricao_curta').AsString);

                  FBuffer.Add('<ad><c>' + PadSpace('                                  ' + '|' + (kQuery.FieldByName('prd_qtde').AsInteger * aQuery.FieldByName('f_qtde').AsInteger)
                     .ToString() + '|' + kQuery.FieldByName('prd_unidade').AsString + '|' + FormatFloat(',0.00', kQuery.FieldByName('prd_valor').AsFloat) + '|' +
                     FormatFloat(',0.00', kQuery.FieldByName('prd_total').AsFloat * aQuery.FieldByName('f_qtde').AsInteger), Trunc(ACBrPosPrinter1.ColunasFonteCondensada), '|'));

                  // Proximo item
                  kQuery.Next
               until (kQuery.Eof);

            finally
               FreeAndNil(kQuery);
            end;

         end
         else
         begin

            if aQuery.FieldByName('f_descricao_curta').IsNull then
               FBuffer.Add('<ae><c>' + Format('%.2d', [aQuery.FieldByName('f_item').AsInteger]) + ' ' + Format('%.13d', [aQuery.FieldByName('f_codigo').AsInteger]) + ' ' +
                  aQuery.FieldByName('f_descricao').AsString)
            else
               FBuffer.Add('<ae><c>' + Format('%.2d', [aQuery.FieldByName('f_item').AsInteger]) + ' ' + Format('%.13d', [aQuery.FieldByName('f_codigo').AsInteger]) + ' ' +
                  aQuery.FieldByName('f_descricao_curta').AsString);

            FBuffer.Add('<ad><c>' + PadSpace('                                  ' + '|' + aQuery.FieldByName('f_qtde').AsString + '|' + aQuery.FieldByName('f_unidade').AsString +
               '|' + FormatFloat(',0.00', aQuery.FieldByName('f_vlr_unitario').AsFloat) + '|' + FormatFloat(',0.00', aQuery.FieldByName('f_vlr_total').AsFloat),
               Trunc(ACBrPosPrinter1.ColunasFonteCondensada), '|'));

         end;

         // Próximo produto
         aQuery.Next;
      until (aQuery.Eof);

   finally
      FreeAndNil(aQuery);
   end;
end;

procedure TFrVendas.Cupom_Gerencial_Rodape;
begin
   FBuffer.Add('</linha_simples>');
   FBuffer.Add('<ae><ce>Vendedor: ' + Format('%.2d', [Obj_Vendedores.F_Codigo]) + '-' + Obj_Vendedores.F_Apelido);
   FBuffer.Add('</linha_simples>');
   FBuffer.Add('TechCore-PDV - http://techcore.com.br');
end;

procedure TFrVendas.Cupom_Gerencial_Total;
begin
   FBuffer.Add('</linha_simples>');

   // Exibe o SubTotal do Cupom
   FBuffer.Add('<ae><c>' + PadSpace('Subtotal' + '|' + FormatFloat(',0.00', Cupom_Fiscal.F_Vlr_Subtotal), Trunc(ACBrPosPrinter1.ColunasFonteCondensada), '|'));

   // Exibe o desconto do cupom se houver
   FBuffer.Add('<ae><c>' + PadSpace('Descontos' + '|' + FormatFloat(',0.00', Cupom_Fiscal.F_Vlr_Desconto), Trunc(ACBrPosPrinter1.ColunasFonteCondensada), '|'));

   // Exibe o total do cupom
   FBuffer.Add('<ae></fn><e>' + PadSpace('TOTAL R$' + '|' + FormatFloat(',0.00', QueryCupomF_VLR_RECEBER.AsFloat), Trunc(ACBrPosPrinter1.ColunasFonteExpandida), '|') + '</e>');

end;

procedure TFrVendas.Cupom_Gerencial_Total_Formas;
var
   aQuery: TFDQuery;
   StrForma: String;
begin
   // Carrega todas as formas de pagamentos relacionadas ao cupom
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := FrModulo.DBCon_Local;

   try
      aQuery.SQL.Add('SELECT');
      aQuery.SQL.Add('  T1.ID_FORMA_PAGTO,');
      aQuery.SQL.Add('  T1.FRM_CODIGO,');
      aQuery.SQL.Add('  (SELECT FRM_DESCRICAO FROM C000010 WHERE ID = T1.ID_FORMA_PAGTO),');
      aQuery.SQL.Add('  SUM(T1.FRM_PARCELA_VALOR) AS FRM_PARCELA_VALOR');
      aQuery.SQL.Add('FROM');
      aQuery.SQL.Add('  C000052 AS T1');
      aQuery.SQL.Add('WHERE');
      aQuery.SQL.Add('  T1.ID_C000050 = :ID');
      aQuery.SQL.Add('GROUP BY');
      aQuery.SQL.Add('  T1.ID_FORMA_PAGTO,');
      aQuery.SQL.Add('  T1.FRM_CODIGO');
      aQuery.ParamByName('ID').AsInteger := Cupom_Fiscal.F_ID;
      aQuery.Open();

      repeat
         // Converete o nome da forma de pagamento para um mais amigável
         case aQuery.FieldByName('FRM_CODIGO').AsInteger of
            1:
               StrForma := 'Dinheiro';
            2:
               StrForma := 'Cheque';
            3:
               StrForma := 'Cartao de Credito';
            4:
               StrForma := 'Cartao de Debito';
            5:
               StrForma := 'Credito Loja';
            6:
               StrForma := 'Vale Alimentacao';
            10:
               StrForma := 'Vale Combustivel';
            99:
               StrForma := 'Outros';
         end;

         // Exibe a forma de pagamento encontrada
         FBuffer.Add('<ae><c>' + PadSpace(StrForma + '|' + FormatFloat(',0.00', aQuery.FieldByName('FRM_PARCELA_VALOR').AsFloat),
            Trunc(ACBrPosPrinter1.ColunasFonteCondensada), '|'));

         aQuery.Next;
      until (aQuery.Eof);

   finally
      FreeAndNil(aQuery);
   end;

   // Se houver troco imprime
   if QueryCupomF_VLR_TROCO.AsFloat > 0 then
      FBuffer.Add('<ae><c>' + PadSpace('Troco R$' + '|' + FormatFloat(',0.00', QueryCupomF_VLR_TROCO.AsFloat), Trunc(ACBrPosPrinter1.ColunasFonteCondensada), '|'));

end;

procedure TFrVendas.eBuscarEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00D5FFFF;
end;

procedure TFrVendas.eBuscarExit(Sender: TObject);
begin
   TEdit(Sender).Color := $00DFDFDF;
end;

procedure TFrVendas.eBuscarKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Key := #0;

   if not eBuscar.Focused then
   begin
      // Ignora o comando se for pressionada a tecla backspace
      if Ord(Key) <> 8 then
         eBuscar.Text := eBuscar.Text + Key;

      eBuscar.SetFocus;
      eBuscar.SelStart := Length(eBuscar.Text);
   end;
end;

procedure TFrVendas.EfetuaRetirada;
begin
   try
      FrRetirada := TFrRetirada.Create(self);
      FrRetirada.ShowModal;
   finally
      FreeAndNil(FrRetirada);
   end;
end;

procedure TFrVendas.EfetuarSangria;
begin
   try
      FrSangria := TFrSangria.Create(self);
      FrSangria.ShowModal;
   finally
      FreeAndNil(FrSangria);
   end;
end;

procedure TFrVendas.ExcluirCupomAberto;
begin
   // Apaga o cupom pendente
   aQuery.Close;
   aQuery.SQL.Clear;
   aQuery.SQL.Add('DELETE FROM C000050 WHERE ID_EMPRESA = :ID_EMPRESA AND F_CUPOM_STATUS = :F_CUPOM_STATUS');
   aQuery.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   aQuery.ParamByName('F_CUPOM_STATUS').AsInteger := 0;
   aQuery.ExecSQL;

   // Se o objeto cupom fiscal estiver ativo o destroi
   if Assigned(Cupom_Fiscal) then
      FreeAndNil(Cupom_Fiscal);
end;

procedure TFrVendas.ExibirResumoCaixa;
begin
   try
      FrRelatorioCaixa := TFrRelatorioCaixa.Create(self);
      FrRelatorioCaixa.DataHoraAbert := ObjCaixa.Caixa_Abert_Data;

      FrRelatorioCaixa.CarregarRelatorio(
         { Informa o id de abertura }
         vr_id_abertura

         { Exibe o preview sem imprimir }
         , true);
   finally
      FreeAndNil(FrRelatorioCaixa);
   end;
end;

function TFrVendas.Gerar_Cupom_Fiscal: Boolean;
var
   aQuery, bQuery, kQuery: TFDQuery;
   r_TotalLei12741: Real;
   nRec: Integer;
begin
   nRec := 0;
   Result := false;

   v_Arquivo_XML := '';

   r_TotalLei12741 := 0.00;
   r_TotalLei_IMP := 0.00;
   r_TotalLei_NAC := 0.00;
   r_TotalLei_EST := 0.00;
   r_TotalLei_MUN := 0.00;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       20/02/2019
     Descrição:  Monta o cabeçalho e a IDE do cupom
     ------------------------------------------------------------------------------------- }
   ObjSat.CFe.IdentarXML := true;
   ObjSat.CFe.TamanhoIdentacao := 3;
   ObjSat.CFe.RetirarAcentos := true;

   with ObjSat.CFe do
   begin
      ide.numeroCaixa := ObjCaixa.Caixa_Codigo;
      ide.cNF := Random(999999);
      ide.tpAmb := TpcnTipoAmbiente(ObjCaixa.Caixa_SAT_Ambiente);

      // Dados do destinatário
      Dest.xNome := '';
      Dest.CNPJCPF := Cupom_Fiscal.F_Cpf_Numero;

      // Carrega os dados dos produtos a serem enviados
      try
         aQuery := TFDQuery.Create(self);
         aQuery.Connection := FrModulo.DBCon_Local;

         try
            // Checa se um kit ou produto
            aQuery.SQL.Add('select * from C000051 where ID_C000050 = :id and f_status = 1 order by f_item asc');
            aQuery.ParamByName('id').AsInteger := Cupom_Fiscal.F_ID;
            aQuery.Open();

            // Posiciona o cursor no primeiro item
            aQuery.First;

            repeat

               // Ao carregar o produto verifica se é um kit e processa o kit
               if aQuery.FieldByName('f_id_kit').AsInteger > 0 then
               begin

                  try
                     kQuery := TFDQuery.Create(self);
                     kQuery.Connection := FrModulo.DBCon_Local;

                     kQuery.SQL.Add('select * from C000405_kit where id_C000405 = :id');
                     kQuery.ParamByName('id').AsInteger := aQuery.FieldByName('f_id_kit').AsInteger;
                     kQuery.Open();

                     // Posiciona o cursor no primeiro item
                     kQuery.First;

                     repeat
                        // Acrescenta um no contador
                        Inc(nRec);

                        with Det.Add do
                        begin
                           nItem := nRec;
                           Prod.cProd := Format('%.6d', [kQuery.FieldByName('prd_codigo').AsInteger]);
                           Prod.cEAN  := kQuery.FieldByName('prd_codigo_barras').AsString;

                           if kQuery.FieldByName('prd_descricao_curta').IsNull then
                              Prod.xProd := kQuery.FieldByName('prd_descricao').AsString
                           else
                              Prod.xProd := kQuery.FieldByName('prd_descricao_curta').AsString;

                           Prod.NCM      := kQuery.FieldByName('prd_ncm').AsString;
                           Prod.CFOP     := kQuery.FieldByName('prd_cfop').AsString;
                           Prod.uCom     := kQuery.FieldByName('prd_unidade').AsString;
                           Prod.qCom     := (kQuery.FieldByName('prd_qtde').AsInteger * aQuery.FieldByName('f_qtde').AsInteger);
                           Prod.vUnCom   := kQuery.FieldByName('prd_valor').AsFloat;
                           Prod.indRegra := irTruncamento;

                           Imposto.ICMS.orig  := oeNacional;
                           Imposto.ICMS.CSOSN := csosn102; // Obs.: Criar campo na tabela de produtos
                           Imposto.ICMS.pICMS := 0.00;

                           Imposto.PIS.CST  := pis99;
                           Imposto.PIS.vBC  := 0;
                           Imposto.PIS.pPIS := 0;

                           Imposto.COFINS.CST     := cof99;
                           Imposto.COFINS.vBC     := 0;
                           Imposto.COFINS.pCOFINS := 0;
                        end;

                        // Calculos individuais dos impostos
                        //r_TotalLei_IMP  := r_TotalLei_IMP + ( aQuery.FieldByName('f_vlr_sub_total').AsFloat * aQuery.FieldByName('f_ncm_taxa_imp').AsFloat) / 100;
                        r_TotalLei_NAC := r_TotalLei_NAC + (kQuery.FieldByName('prd_total').AsFloat * kQuery.FieldByName('prd_ncm_taxa_nac').AsFloat) / 100;
                        r_TotalLei_EST := r_TotalLei_EST + (kQuery.FieldByName('prd_total').AsFloat * kQuery.FieldByName('prd_ncm_taxa_est').AsFloat) / 100;
                        r_TotalLei_MUN := 0.00;

                        // Calculo da lei da transparência
                        r_TotalLei12741 := (r_TotalLei_NAC + r_TotalLei_EST);

                        // Proximo item
                        kQuery.Next
                     until (kQuery.Eof);

                  finally
                     FreeAndNil(kQuery);
                  end;

               end
               else
               begin
                  // Acrescenta um no contador
                  Inc(nRec);

                  with Det.Add do
                  begin
                     nItem := nRec;
                     Prod.cProd := Format('%.6d', [aQuery.FieldByName('f_codigo').AsInteger]);
                     Prod.cEAN := aQuery.FieldByName('f_codigo_barras').AsString;

                     if aQuery.FieldByName('f_descricao_curta').AsString = EmptyStr then
                        Prod.xProd := aQuery.FieldByName('f_descricao').AsString
                     else
                        Prod.xProd := aQuery.FieldByName('f_descricao_curta').AsString;

                     Prod.NCM := aQuery.FieldByName('f_ncm').AsString;
                     Prod.CFOP := aQuery.FieldByName('f_cfop').AsString;
                     Prod.uCom := aQuery.FieldByName('f_unidade').AsString;
                     Prod.qCom := aQuery.FieldByName('f_qtde').AsInteger;
                     Prod.vUnCom := aQuery.FieldByName('f_vlr_unitario').AsFloat;
                     Prod.indRegra := irTruncamento;

                     Imposto.ICMS.orig := oeNacional;
                     Imposto.ICMS.CSOSN := csosn102; // Obs.: Criar campo na tabela de produtos
                     Imposto.ICMS.pICMS := 0.00;

                     Imposto.PIS.CST := pis99;
                     Imposto.PIS.vBC := 0;
                     Imposto.PIS.pPIS := 0;

                     Imposto.COFINS.CST := cof99;
                     Imposto.COFINS.vBC := 0;
                     Imposto.COFINS.pCOFINS := 0;
                  end;

                  // Calculos individuais dos impostos
                  // r_TotalLei_IMP  := r_TotalLei_IMP + ( aQuery.FieldByName('f_vlr_sub_total').AsFloat * aQuery.FieldByName('f_ncm_taxa_imp').AsFloat) / 100;
                  r_TotalLei_NAC := r_TotalLei_NAC + (aQuery.FieldByName('f_vlr_total').AsFloat * aQuery.FieldByName('f_ncm_taxa_nac').AsFloat) / 100;
                  r_TotalLei_EST := r_TotalLei_EST + (aQuery.FieldByName('f_vlr_total').AsFloat * aQuery.FieldByName('f_ncm_taxa_est').AsFloat) / 100;
                  r_TotalLei_MUN := 0.00;

                  // Calculo da lei da transparência
                  r_TotalLei12741 := (r_TotalLei_NAC + r_TotalLei_EST);
               end;

               // Próximo produto
               aQuery.Next;
            until (aQuery.Eof);

            Total.DescAcrEntr.vDescSubtot := Cupom_Fiscal.F_Vlr_Desconto;
            Total.vCFeLei12741 := r_TotalLei12741;

            // Se houver troco define o valor
            if Cupom_Fiscal.F_Vlr_Troco > 0 then
               Pagto.vTroco := Cupom_Fiscal.F_Vlr_Troco
            else
               Pagto.vTroco := 0.00;

            // Pagamento e meios de pagamentos
            // Carrega todas as formas de pagamentos utilizadas
            bQuery := TFDQuery.Create(self);
            bQuery.Connection := FrModulo.DBCon_Local;
            bQuery.SQL.Add('SELECT * FROM C000052 WHERE ID_C000050 = :ID_C000050 ORDER BY FRM_PARCELA ASC');
            bQuery.ParamByName('id_C000050').AsInteger := Cupom_Fiscal.F_ID;
            bQuery.Open();

            // Posiciona o cursor no primeiro registro
            bQuery.First;

            repeat

               with Pagto.Add do
               begin
                  case bQuery.FieldByName('frm_codigo').AsInteger of
                     01 : cMP := mpDinheiro;
                     02 : cMP := mpCheque;
                     03 : cMP := mpCartaodeCredito;
                     04 : cMP := mpCartaodeDebito;
                     05 : cMP := mpCreditoLoja;
                     10 : cMP := mpValeAlimentacao;
                     11 : cMP := mpValeRefeicao;
                     12 : cMP := mpValePresente;
                     13 : cMP := mpValeCombustivel;
                     99 : cMP := mpOutros;
                  end;

                  vMP := RoundABNT(bQuery.FieldByName('frm_parcela_valor').AsFloat, -2);

               end;

               // Próximo pagamento
               bQuery.Next;
            until (bQuery.Eof);

            // Gera o cupom fiscal
            v_Arquivo_XML := ObjSat.CFe.GerarXML(true);

            // Exibe o aviso ao operador
            Imprime_display('cupom gerado com sucesso', clYellow);

            // Confirma a geração do arquivo
            Result := true;

         except
            Imprime_display('Erro ao gerar o cupom fiscal, tente novamente', clRed);
         end;

      finally
         FreeAndNil(aQuery);
      end;

   end;

end;

procedure TFrVendas.finalizar_vendaClick(Sender: TObject);
var
   Str: String;
   QueryCelular: TFDQuery;
   sInfos, sInfoSistema, sInfoSite : String;
begin

   Str := lbTitulo.Caption;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Antes de iniciar o fechamento, verificase existe cupom aberto e se
     existem produtos inseridos no cupom
     ------------------------------------------------------------------------------------- }
   if not Assigned(Cupom_Fiscal) then
   begin
      Imprime_display('não há cupom aberto.', clYellow);
      BlockInput(true);
      Sleep(1000);
      BlockInput(false);
      Imprime_display_anterior;
      Abort;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Verifica se existem items no cupom antes de continuar
     ------------------------------------------------------------------------------------- }
   if QueryProdutos.IsEmpty then
   begin
      Imprime_display('não existem produtos inseridos no cupom.', clYellow);
      BlockInput(true);
      Sleep(1000);
      BlockInput(false);
      Imprime_display_anterior;
      Abort;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Checa se solicita o vendedor
     ------------------------------------------------------------------------------------- }
   if not Cupom_Fiscal.F_VendaCelular then
   begin

      if (ObjCaixa.Caixa_Solicita_Vendedor = 1) then
      begin

         Imprime_display('Selecione um Vendedor.', clYellow);

         try
            FrVendedores := TFrVendedores.Create(self);
            if FrVendedores.ShowModal = mrOk then
            begin

               if Assigned(Obj_Vendedores) then
                  FreeAndNil(Obj_Vendedores);

               // Carrega os dados do vendedor para a memória
               Obj_Vendedores := TVendedor.Create(Cupom_Fiscal.F_ID_Vendedor);
            end
            else
            begin
               Imprime_display_anterior;
               Abort;
            end;

         finally
            FreeAndNil(FrVendedores);
         end;

      end;

   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       03/03/2019
     Descrição:  Armazena o Subtotal do cupom
     ------------------------------------------------------------------------------------- }
   Cupom_Fiscal.F_Vlr_Subtotal := QueryCupomF_VLR_SUBTOTAL.AsFloat;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       20/02/2019
     Descrição:  Neste ponto carrega a tela de formas de pagamentos
     ------------------------------------------------------------------------------------- }
   FrFormaPagtos := TFrFormaPagtos.Create(self);
   try

      if FrFormaPagtos.ShowModal = mrOk then
      begin
         Imprime_display('Gravando dados do cupom.', clWhite);

         { -----------------------------------------------------------------------------------
           Autor:      Winston Moreira
           Data:       26/02/2019
           Descrição:  Se confirmado os pagamentos grava na tabela de cupons os dados de
           valores, subtotal, total, desconto
           ------------------------------------------------------------------------------------- }
         QueryCupom.Edit;
         QueryCupom.FieldByName('f_cod_pre_vendas').AsString  := Cupom_Fiscal.F_CodigoVenda;
         QueryCupom.FieldByName('id_vendedor').AsInteger      := Cupom_Fiscal.F_ID_Vendedor;
         QueryCupom.FieldByName('id_cliente').AsInteger       := 0;
         QueryCupom.FieldByName('f_vlr_desconto').AsFloat     := Cupom_Fiscal.F_Vlr_Desconto;
         QueryCupom.FieldByName('f_cupom_diretiva').AsInteger := Tipo_Impressora;
         QueryCupom.Post;

         if Tipo_Impressora = 1 then
         begin

            if ACBrPosPrinter1.Modelo = ppEscBematech then
               ACBrPosPrinter1.EspacoEntreLinhas := 1;

            // Inicializa o sat
            if Inicializa_SAT then
            begin

               // Prepara o cupom fiscal
               ObjSat.InicializaCFe;

               // Com todos os dados inseridos, gera o cupom fiscal
               if Gerar_Cupom_Fiscal then
               begin
                  Imprime_display('enviando cupom fiscal', clWhite);
                  Sleep(1000);

                  ObjSat.EnviarDadosVenda(v_Arquivo_XML);

                  if ObjSat.Resposta.codigoDeRetorno = 6000 then
                  begin

                     Imprime_display('Atualizando banco de dados', clWhite);
                     QueryCupom.Edit;
                     QueryCupom.FieldByName('f_cupom_status').AsInteger := 1;
                     QueryCupom.FieldByName('f_cupom_diretiva').AsInteger := 1;
                     QueryCupom.FieldByName('f_vlr_ncm_imp').AsFloat := r_TotalLei_IMP;
                     QueryCupom.FieldByName('f_vlr_ncm_nac').AsFloat := r_TotalLei_NAC;
                     QueryCupom.FieldByName('f_vlr_ncm_est').AsFloat := r_TotalLei_EST;
                     QueryCupom.FieldByName('f_vlr_ncm_mun').AsFloat := r_TotalLei_MUN;
                     QueryCupom.FieldByName('f_xml').AsString := ObjSat.CFe.AsXMLString;
                     QueryCupom.FieldByName('f_xml_chave').AsString := ObjSat.CFe.infCFe.ID;
                     QueryCupom.FieldByName('f_ncm_fonte').AsString := FEmpresaClass.Ncm_Fonte;
                     QueryCupom.FieldByName('f_ncm_chave').AsString := FEmpresaClass.Ncm_Chave;
                     QueryCupom.Post;

                     // Finaliza a venda gravando todos os dados no banco de dados
                     tCaixaLivre.Enabled := true;

                     // ------------------------------------------------------------------------------------------
                     // Caso esta seja uma venda efetuada pelo celular, atualiza a tabela
                     // ------------------------------------------------------------------------------------------
                     if Cupom_Fiscal.F_VendaCelular then
                     begin
                        try
                           QueryCelular := TFDQuery.Create(self);

                           with QueryCelular do
                           begin
                              Connection := FrModulo.DBCon_Remoto;

                              SQL.Add('Update C000020 Set Pre_Status = :Status Where Pre_Codigo_Venda = :CodigoVenda');
                              ParamByName('Status').AsInteger := 2;
                              ParamByName('CodigoVenda').AsString := Cupom_Fiscal.F_CodigoVenda;
                              ExecSQL;
                           end;

                        finally
                           FreeAndNil(QueryCelular);
                        end;

                     end;

                     Imprime_display('Imprimindo cupom fiscal', clWhite);
                     sInfoSistema := objsat.extrato.sistema;
                     sInfoSite    := objsat.extrato.Site;

                     // Pulo do gato para não imprimir uma linha acima do rodapé personalizado
                     objsat.extrato.sistema := '';
                     objsat.extrato.Site    := '';

                     ACBrPosPrinter1.CortaPapel := false;
                     ObjSat.ImprimirExtrato;

                     // Exibe o total de impostos
                     sInfos := '</zera>';
                     sInfos := sInfos + '</ae><c>' + PadSpace(
                              'Tributos Aproximados: R$ Fed: ' + FormatFloat(',0.00', r_TotalLei_NAC)
                              + '|'
                              + ' Est: ' + FormatFloat(',0.00', r_TotalLei_EST)
                              + '|'
                              + ' Mun: ' + FormatFloat(',0.00', r_TotalLei_MUN)
                              , ACBrPosPrinter1.ColunasFonteCondensada
                              , '|'
                     );

                     sInfos := sInfos + PadSpace(
                              'Fonte: ' + FEmpresaClass.Ncm_Fonte
                              + ' - '
                              + 'Chave: ' + FEmpresaClass.Ncm_Chave
                              , ACBrPosPrinter1.ColunasFonteCondensada
                              , '|'
                     );

                     // Informações básicas
                     sInfos := sInfos + '</linha_simples>';
                     sInfos := sInfos + '</ae><c>' + PadSpace(
                              'LJ: ' + Format('%.2d', [FEmpresaClass.Codigo])
                              + '|'
                              + 'CX: ' + Format('%.2d', [ObjCaixa.Caixa_Codigo])
                              + '|'
                              + 'OP: ' + Format('%.3d', [ObjOperador.Opr_Codigo]) + '-' + ObjOperador.Opr_Apelido
                              + '|'
                              + 'VD: ' + Format('%.2d', [Obj_Vendedores.F_Codigo]) + '-' + Obj_Vendedores.F_Apelido
                              + '|'
                              + 'COO: ' + Format('%.6d', [Cupom_Fiscal.F_Numero])
                              , ACBrPosPrinter1.ColunasFonteCondensada
                              , '|');

                     // Roda-pé personalizado
                     ACBrPosPrinter1.ImprimirLinha(sInfos);
                     ACBrPosPrinter1.ImprimirLinha('</linha_simples>');
                     ACBrPosPrinter1.ImprimirLinha(sInfoSistema + ' - ' + sInfoSite);

                     // Retonra os valores para seu devidos campos
                     objsat.extrato.sistema := sInfoSistema;
                     objsat.extrato.Site    := sInfoSite;

                     // Pula duas linhas
                     ACBrPosPrinter1.ImprimirLinha('</lf>');
                     ACBrPosPrinter1.ImprimirLinha('</lf>');

                     // Corta o papel
                     ACBrPosPrinter1.CortarPapel(true);

                     // Desativa a comunicação com a impressora
                     ACBrPosPrinter1.Desativar;
                     ACBrPosPrinter1.LinhasEntreCupons := 0;
                     ACBrPosPrinter1.CortaPapel        := true;

                  end
                  else
                  begin
                     Imprime_display('erro ao processar o cupom fiscal, tente novamente.', clRed);
                     Sleep(1000);
                     Imprime_display_anterior;
                     Abort;
                  end;

               end;

            end
            else
            begin
               Imprime_display('erro ao inicializar o sat.', clRed);
               Sleep(1000);
               Imprime_display_anterior;
               Abort;
            end;

         end;

         if Tipo_Impressora = 2 then
         begin

            if finalizar_cupom_gerencial then
            begin
               // Finaliza a venda gravando todos os dados no banco de dados
               tCaixaLivre.Enabled := true;
               Cupom_Gerencial_Imprimir;
            end;

         end;

         // Finaliza a venda gravando todos os dados no banco de dados
         tCaixaLivre.Enabled := true;

      end
      else
      begin
         // Exibe o display anterior
         Imprime_display(Str, clYellow);
      end;

   finally
      FreeAndNil(FrFormaPagtos);
   end;

end;

function TFrVendas.finalizar_cupom_gerencial: Boolean;
var
   QueryCelular: TFDQuery;
begin
   Result := false;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        07/03/2019
     Descrição:  Finaliza o cupom gravando todos os dadas necessários na tabela antes
     de imprimir o cupom
     ------------------------------------------------------------------------------------- }
   try
      QueryCupom.Edit;
      QueryCupom.FieldByName('f_cupom_status').AsInteger := 1;
      QueryCupom.FieldByName('f_cupom_diretiva').AsInteger := 2;
      QueryCupom.Post;

      // ------------------------------------------------------------------------------------------
      // Caso esta seja uma venda efetuada pelo celular, atualiza a tabela
      // ------------------------------------------------------------------------------------------
      if Cupom_Fiscal.F_VendaCelular then
      begin
         try
            QueryCelular := TFDQuery.Create(self);

            with QueryCelular do
            begin
               Connection := FrModulo.DBCon_Remoto;

               SQL.Add('Update C000020 Set Pre_Status = :Status Where Pre_Codigo_Venda = :CodigoVenda');
               ParamByName('Status').AsInteger := 2;
               ParamByName('CodigoVenda').AsString := Cupom_Fiscal.F_CodigoVenda;
               ExecSQL;
            end;

         finally
            FreeAndNil(QueryCelular);
         end;

      end;

      Imprime_display('cupom finalizado com sucesso', clYellow);
      Sleep(1000);
      Imprime_display_anterior;

      Result := true;
   except
      Imprime_display('erro ao finalizar o cupom, dados não gravados', clRed);
      Sleep(1000);
      Imprime_display_anterior;
   end;

end;

procedure TFrVendas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if Assigned(Cupom_Fiscal) then
   begin
      Imprime_display('Não é possível sair, existe um cupom em aberto', clRed);
      Sleep(2000);
      Imprime_display_anterior;
      Abort;
   end;

   // Antes de sair verifica se tem alguma pendência
   if Application.MessageBox('Tem certeza que deseja sair?', 'TechCore-PDV', mb_IconQuestion or mb_YesNo) = mrNo then
   begin
      eBuscar.SetFocus;
      CanClose := false;
   end;
end;

procedure TFrVendas.FormCreate(Sender: TObject);
var
   aQuery: TFDQuery;
   ID_Cupom: Integer;
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       20/02/2019
     Descrição:  Determina o tipo de impressora na inicialização
     ------------------------------------------------------------------------------------- }
   Tipo_Impressora := 1;
   img_servidor.Picture.Assign(img_amarelo.Picture);

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Confere se existe cupom aberto, se existir solicita ao usuário se
     deve ser recarregado ou excluido
     ------------------------------------------------------------------------------------- }
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := FrModulo.DBCon_Local;
   try
      aQuery.SQL.Add('SELECT ID FROM C000050 WHERE ID_EMPRESA = :ID_EMPRESA AND F_CUPOM_STATUS = :STATUS');
      aQuery.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
      aQuery.ParamByName('status').AsInteger := 0;
      aQuery.Open();

      if not aQuery.IsEmpty then
      begin
         // Armazena o ID do cupom enontrado
         ID_Cupom := aQuery.FieldByName('ID').AsInteger;

         // Confere se carrega ou exclue o cupom
         if Application.MessageBox('O ultimo cupom não foi finalizado corretamente, deseja continuar com o preenchimento?', 'TechCore-PDV', mb_IconQuestion or mb_YesNo) = mrYes
         then
            CarregarCupomAberto(ID_Cupom)
         else
         begin

            if ObjOperador.Opr_CancelarVenda = 1 then
               ExcluirCupomAberto
            else
            begin
               FrSenhaConfig := TFrSenhaConfig.Create(self);
               FrSenhaConfig.iFlag_Tipo_Acesso := 3;
               try
                  if FrSenhaConfig.ShowModal = mrOk then
                     ExcluirCupomAberto
                  else
                     CarregarCupomAberto(ID_Cupom);
               finally
                  FreeAndNil(FrSenhaConfig);
               end;
            end;

         end;
      end;

   finally
      FreeAndNil(aQuery);
   end;
end;

procedure TFrVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // Força o foco no campo de pesquisa
   eBuscar.OnKeyPress(Sender, Key);
end;

procedure TFrVendas.FormResize(Sender: TObject);
begin
   // Centraliza o formulário
   pn_Principal.Top := (self.Height - pn_Principal.Height) div 2;
   pn_Principal.Left := (self.Width - pn_Principal.Width) div 2;
end;

procedure TFrVendas.FormShow(Sender: TObject);
var
   Str: String;
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       20/02/2019
     Descrição:  Conecta na tabela de cupons
     ------------------------------------------------------------------------------------- }
   if not Assigned(Cupom_Fiscal) then
   begin
      QueryCupom.ParamByName('ID').AsInteger := 0;
      QueryCupom.Open();
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       20/02/2019
     Descrição:  Ajusta alguns campos visuais na inicialização do formulário
     ------------------------------------------------------------------------------------- }
   lb_usuario.Caption := Format('%.3d', [ObjOperador.Opr_Codigo]);
   lb_usuario.Caption := (lb_usuario.Caption + ' - ' + ObjOperador.Opr_Apelido);

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       20/02/2019
     Descrição:  Exibe o caixa utilizado e o servidor
     ------------------------------------------------------------------------------------- }
   lb_caixa.Caption := ObjCaixa.Caixa_Descricao;
   lb_servidor.Caption := FrModulo.DBCon_Remoto.Params.Values['Server'];

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       24/02/2019
     Descrição:  Se for a continuação de um cupom, exibe o ultimo produto inserido
     ------------------------------------------------------------------------------------- }
   if Assigned(Cupom_Fiscal) then
      Imprime_display('continuando venda...', clWhite);

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       20/02/2019
     Descrição:  Exibe a ultima carga de dados efetua para o caixa
     ------------------------------------------------------------------------------------- }
   tStatusCargaTimer(nil);

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       20/02/2019
     Descrição:  Exibe a ultima carga de dados efetua para o caixa
     ------------------------------------------------------------------------------------- }
   ACBrPosPrinter1.Porta := ObjCaixa.Caixa_Printer_Porta_G;
   ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo(ObjCaixa.Caixa_Printer_Model_G);

end;

procedure TFrVendas.I1Click(Sender: TObject);
begin
   if not Assigned(Cupom_Fiscal) then
      IniciaCupomFiscal;

   // Efetua a pesquisa do produto
   PesquisarProdutos(eBuscar.Text, 2);
end;

procedure TFrVendas.IdTCPClient1Connected(Sender: TObject);
begin
   IdTCPClient1.Disconnect;
end;

procedure TFrVendas.Image4Click(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        22/02/2019
     Descrição:  Antes de proseeguir verifica se existe venda em andamento
     ------------------------------------------------------------------------------------- }
   if Assigned(Cupom_Fiscal) then
   begin
      Imprime_display('Não permitido, Cupom em Aberto', clRed);
      Sleep(2000);
      Imprime_display_anterior;
      Abort;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        22/02/2019
     Descrição:  Verifica se o arquivo de parâemtros de conexão existe, se existe
     resgata os dados e testao servidor
     ------------------------------------------------------------------------------------- }
   if not FileExists('ConfigConections.dat') then
   begin
      Imprime_display('Arquivo de configurações não localizado, contate o Suporte Técnico', clRed);
      Sleep(2000);
      Imprime_display_anterior;
      Abort;
   end;

   // Confere se o servidor está ativo
   with IdTCPClient1 do
   begin
      try
         Host := FrModulo.DBCon_Remoto.Params.Values['Server'];
         Port := FrModulo.DBCon_Remoto.Params.Values['Port'].ToInteger;
         Connect;
      except
         Imprime_display('Não foi possivel localizar o servidor no endereço e porta informado.', clRed);
         Sleep(2000);
         Imprime_display_anterior;
         Abort;
      end;
   end;

   // Carrega o formulário que atualizará o PDV automáticamente
   FrAtualizarPDV := TFrAtualizarPDV.Create(self);
   FrAtualizarPDV.ReloadOperador := true;
   FrAtualizarPDV.Id_Operador := ObjOperador.Opr_IDOperador;

   try
      if FrAtualizarPDV.ShowModal = mrOk then
      begin
         // Atualiza o display da carga
         with QueryStatusCarga do
         begin
            Open;
            EmptyDataSet;
            Insert;
            FieldByName('DataHoraCarga').AsDateTime := Now;
            Post;
         end;

         // Efetua a releitura dos dados da empresa
         if Assigned(FEmpresaClass) then
            FreeAndNil(FEmpresaClass);

         // Recria o objeto empresa
         FEmpresaClass := TEmpresa.Create;
      end;

   finally
      FreeAndNil(FrAtualizarPDV);
   end;
end;

procedure TFrVendas.InformarCPF1Click(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Antes de iniciar o fechamento, verificase existe cupom aberto e se
     existem produtos inseridos no cupom
     ------------------------------------------------------------------------------------- }
   if not Assigned(Cupom_Fiscal) then
   begin
      Imprime_display('não há cupom aberto.', clYellow);
      Sleep(1000);
      Imprime_display_anterior;
      Abort;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Conforme lei CAT52, verifica se o sistema está solicitando o número
     do CPF/CNPJ do cliente
     ------------------------------------------------------------------------------------- }
   if ObjCaixa.Caixa_SolicitaCPF = 1 then
   begin
      // Informa o usuário
      Imprime_display('informe o cpf do cliente', clYellow);

      FrCpfCnpjCliente := TFrCpfCnpjCliente.Create(self);
      try
         if FrCpfCnpjCliente.ShowModal = mrOk then
            Cupom_Fiscal.F_Cpf_Numero := FrCpfCnpjCliente.eCpfCnpj.Text;
      finally
         FreeAndNil(FrCpfCnpjCliente);
      end;
   end;
end;

function TFrVendas.IniciaCupomFiscal: Boolean;
begin
   Result := false;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Recebe o produto solicitado
     ------------------------------------------------------------------------------------- }
   eProduto := eBuscar.Text;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Cria o Objeto Cupom que será utilizado para armazenar as informações
     do cupom em andamento
     ------------------------------------------------------------------------------------- }
   FreeAndNil(Cupom_Fiscal);
   Cupom_Fiscal := TCupomFiscal.Create;

   // Determina que não é um cupom recuperado
   Cupom_Fiscal.F_Recuperado := false;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Conforme lei CAT52, verifica se o sistema está solicitando o número
     do CPF/CNPJ do cliente
     ------------------------------------------------------------------------------------- }
   if ObjCaixa.Caixa_SolicitaCPF = 1 then
   begin
      // Informa o usuário
      Imprime_display('informe o cpf do cliente', clYellow);

      FrCpfCnpjCliente := TFrCpfCnpjCliente.Create(self);
      try
         if FrCpfCnpjCliente.ShowModal = mrOk then
            Cupom_Fiscal.F_Cpf_Numero := FrCpfCnpjCliente.eCpfCnpj.Text;
      finally
         FreeAndNil(FrCpfCnpjCliente);
      end;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Abre o cupom fiscal neste ponto, gravando alguns dados e gerando o
     arquivo no Diretório (Vendas\Cupons)
     ------------------------------------------------------------------------------------- }
   try
      QueryCupom.Insert;
      QueryCupom.FieldByName('id_empresa').AsInteger := FEmpresaClass.ID;
      QueryCupom.FieldByName('id_caixa').AsInteger := ObjCaixa.Caixa_ID;
      QueryCupom.FieldByName('id_conta').AsInteger := ObjCaixa.ContaCaixa;
      QueryCupom.FieldByName('id_operador').AsInteger := ObjOperador.Opr_IDOperador;
      QueryCupom.FieldByName('id_pln_pdv').AsInteger := FEmpresaClass.Pln_Pdv;
      QueryCupom.FieldByName('id_cliente').AsInteger := FEmpresaClass.Cli_Pdv;
      QueryCupom.FieldByName('f_cupom_data').AsDateTime := Now;
      QueryCupom.FieldByName('f_cupom_cpf').AsString := Cupom_Fiscal.F_Cpf_Numero;
      QueryCupom.FieldByName('f_cupom_status').AsInteger := 0;
      QueryCupom.FieldByName('f_cupom_diretiva').AsInteger := Tipo_Impressora;
      QueryCupom.Post;

      Imprime_display('abrindo cupom, aguarde...', clYellow);
      BlockInput(true);
      Sleep(1000);
      BlockInput(false);

      // Prepara a query para exibir somente o cupom corrente
      QueryCupom.Close;
      QueryCupom.SQL.Clear;
      QueryCupom.SQL.Add('SELECT * FROM C000050 WHERE ID = :ID');
      QueryCupom.ParamByName('ID').AsInteger := Cupom_Fiscal.F_ID;
      QueryCupom.Open();

   except
      Imprime_display('erro ao abrir o cupom', clRed);
      BlockInput(true);
      Sleep(1000);
      BlockInput(false);
      Imprime_display('C A I X A  L I V R E', clWhite);
      Abort;
   end;

   // Continua com cupom
   Result := true;

   // Aviso ao usuário
   Imprime_display('informe o produto', clWhite);

end;

function TFrVendas.Inicializa_SAT: Boolean;
begin

   Result := false;

   try
      { -----------------------------------------------------------------------------------
        Autor:      Winston Moreira
        Data:       20/02/2019
        Descrição:  Carrega as configurações necesárias do SAT
        ------------------------------------------------------------------------------------- }
      parametros_SAT;

      { -----------------------------------------------------------------------------------
        Autor:      Winston Moreira
        Data:       20/02/2019
        Descrição:  Verifica se o sat não está inicializado e o inicia
        ------------------------------------------------------------------------------------- }

      if not ObjSat.Inicializado then
         ObjSat.Inicializar;

      Result := true;

   except
      Imprime_display('erro ao inicializar o SAT', clRed);
      BlockInput(true);
      Sleep(1500);
      BlockInput(false);
      Imprime_display_anterior;
   end;
end;

procedure TFrVendas.ObjSatGetcodigoDeAtivacao(var Chave: AnsiString);
begin
   Chave := AnsiString(ObjCaixa.Caixa_SAT_COD_Ativacao);
end;

procedure TFrVendas.ObjSatGetsignAC(var Chave: AnsiString);
begin
   Chave := AnsiString(ObjCaixa.Caixa_SAT_Assinatura);
end;

procedure TFrVendas.ObjSatMensagemSEFAZ(ACod: Integer; AMensagem: string);
begin
   MessageDlg(IntToStr(ACod) + '-' + AMensagem, mtWarning, [mbOK], 0);
end;

procedure TFrVendas.D1Click(Sender: TObject);
begin
   Imprime_display('processo em desenvolvimento, aguarde...', clYellow);
   Sleep(1000);
   Imprime_display_anterior;
end;

procedure TFrVendas.DBGridCellFormating(Sender: TObject; ACol, ARow: Integer; Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles; CellState: TCellState);
begin

   if QueryProdutos.FieldByName('f_status').AsInteger = 2 then
   begin
      // if aCol = 0 then
      TextColor := clRed;
   end
   else if QueryProdutos.FieldByName('f_brinde').AsInteger = 2 then
   begin
      // if aCol = 0 then
      TextColor := clGreen;
   end;

end;

procedure TFrVendas.S1Click(Sender: TObject);
begin
   self.Close;
end;

procedure TFrVendas.S2Click(Sender: TObject);
begin
   if not Assigned(Cupom_Fiscal) then
   begin
      if ObjOperador.F_User_Adm = 1 then
      begin
         EfetuarSangria;
         Exit;
      end;

      // Checa se permite exibir o formulário
      if ObjOperador.F_Permite_Sangria = 2 then
      begin
         Imprime_display('usuário sem permissão para utilizar este recurso', clYellow);
         Sleep(1000);
         Imprime_display_anterior;
         Exit;
      end;

      // Checa se é obrigatório o uso de senha
      if ObjOperador.F_Snh_Sangria = 2 then
         EfetuarSangria
      else
      begin

         try
            FrSenhaOperador := TFrSenhaOperador.Create(self);

            if FrSenhaOperador.ShowModal = mrOk then
            begin
               FrSangria := TFrSangria.Create(self);
               FrSangria.ShowModal;
            end;

         finally
            FreeAndNil(FrSenhaOperador);
            FreeAndNil(FrSangria);
         end;

      end;
   end
   else
   begin
      Imprime_display('acesso negado, existem cupons abertos', clYellow);
      Sleep(1000);
      Imprime_display_anterior;
   end;
end;

procedure TFrVendas.s3Click(Sender: TObject);
begin
   if not Assigned(Cupom_Fiscal) then
   begin
      if ObjOperador.F_User_Adm = 1 then
      begin
         InsereSuprimento;
         Exit;
      end;

      // Checa se permite exibir o formulário
      if ObjOperador.F_Permite_Retirada = 2 then
      begin
         Imprime_display('usuário sem permissão para utilizar este recurso', clYellow);
         Sleep(1000);
         Imprime_display_anterior;
         Exit;
      end;

      // Checa se é obrigatório o uso de senha
      if ObjOperador.F_Snh_Retirada = 2 then
         InsereSuprimento
      else
      begin

         try
            FrSenhaOperador := TFrSenhaOperador.Create(self);

            if FrSenhaOperador.ShowModal = mrOk then
            begin
               FrSuprimento := TFrSuprimento.Create(self);
               FrSuprimento.ShowModal;
            end;

         finally
            FreeAndNil(FrSenhaOperador);
            FreeAndNil(FrSuprimento);
         end;

      end;
   end
   else
   begin
      Imprime_display('acesso negado, existem cupons abertos', clYellow);
      Sleep(1000);
      Imprime_display_anterior;
   end;
end;

procedure TFrVendas.T1Click(Sender: TObject);
begin
   case Tipo_Impressora of
      1:
         begin
            Tipo_Impressora := 2;
            img_servidor.Picture.Assign(img_verde.Picture);
         end;

      2:
         begin
            Tipo_Impressora := 1;
            img_servidor.Picture.Assign(img_amarelo.Picture);
         end;
   end;

   // Se exitir um cupom aberto, grava a diretiva no mesmo
   if Assigned(Cupom_Fiscal) then
   begin
      QueryCupom.Edit;
      QueryCupom.FieldByName('F_CUPOM_DIRETIVA').AsInteger := Tipo_Impressora;
      QueryCupom.Post;
   end;
end;

procedure TFrVendas.tCaixaLivreTimer(Sender: TObject);
var
   tTroco: Real;
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Retorna o formulário ao seu estado inicial
     ------------------------------------------------------------------------------------- }

   // Desabilita o timer de limpeza
   tCaixaLivre.Enabled := false;

   // Objeto cupom fiscal
   if Assigned(Cupom_Fiscal) then
      FreeAndNil(Cupom_Fiscal);

   // Objeto vendedor
   if Assigned(Obj_Vendedores) then
      FreeAndNil(Obj_Vendedores);

   // Retorna para a impressora padrão
   Tipo_Impressora := 1;
   img_servidor.Picture.Assign(img_amarelo.Picture);

   tTroco := QueryCupomF_VLR_TROCO.AsFloat;

   // Reinicia a Query cupom
   QueryCupom.Close;
   QueryCupom.ParamByName('ID').AsInteger := 0;
   QueryCupom.Open;

   lb_Troco.Caption := FormatFloat(',0.00', tTroco);

   // Mensagem de caixa livre
   Imprime_display('c a i x a  l i v r e', clWhite);

end;

procedure TFrVendas.tStatusCargaTimer(Sender: TObject);
var
   Str: String;
begin
   if FileExists('StsCarga.dat') then
   begin
      QueryStatusCarga.LoadFromFile('StsCarga.dat', sfBinary);
      QueryStatusCarga.Open;

      if QueryStatusCarga.IsEmpty then
         lbStatusCarga.Caption := 'Ainda não atualizado.'
      else
      begin
         Str := 'Ultima Atualização: ';
         Str := Str + FormatDateTime('c', QueryStatusCarga.FieldByName('DataHoraCarga').AsDateTime);
         lbStatusCarga.Caption := Str;
      end;

   end
   else
      lbStatusCarga.Caption := 'Ainda não atualizado.'
end;

procedure TFrVendas.tStatusFormTimer(Sender: TObject);
begin
   // Exibe o painel header se existir cumpo aberto
   pn_header.Visible := Assigned(Cupom_Fiscal);
end;

procedure TFrVendas.InsereSuprimento;
begin
   try
      FrSuprimento := TFrSuprimento.Create(self);
      FrSuprimento.ShowModal;
   finally
      FreeAndNil(FrSuprimento);
   end;
end;

procedure TFrVendas.InserirProdutosClick(Sender: TObject);
begin
   // Proteção contra bugs
   if (eBuscar.Text = EmptyStr) or (Assigned(FrSenhaOperador)) then
      Exit;

   // Armazena a string contendo o produto e quantidade
   eProduto := trim(eBuscar.Text);

   // Efetua a pesquisa do produto
   PesquisarProdutos(TrimLeft(eProduto), 1);
end;

procedure TFrVendas.L1Click(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        07/03/2019
     Descrição:  Abre o formulário para listar os cupons
     ------------------------------------------------------------------------------------- }
   if not Assigned(Cupom_Fiscal) then
   begin

      if ObjOperador.F_User_Adm = 1 then
      begin
         ListarCupons;
         Exit;
      end;

      // Checa se permite exibir o formulário
      if ObjOperador.F_Listar_Cupons = 2 then
      begin
         Imprime_display('usuário sem permissão para utilizar este recurso', clYellow);
         Sleep(1000);
         Imprime_display_anterior;
         Exit;
      end;

      // Checa se é obrigatório o uso de senha
      if ObjOperador.F_Snh_Listar_Cupons = 2 then
         ListarCupons
      else
      begin

         try
            FrSenhaOperador := TFrSenhaOperador.Create(self);
            if FrSenhaOperador.ShowModal = mrOk then
            begin
               FrListarCupons := TFrListarCupons.Create(self);
               FrListarCupons.ShowModal;
            end;

         finally
            FreeAndNil(FrSenhaOperador);
            FreeAndNil(FrListarCupons);
         end;

      end;

   end
   else
   begin
      Imprime_display('acesso negado, existem cupons abertos', clYellow);
      Sleep(1000);
      Imprime_display_anterior;
   end;

end;

procedure TFrVendas.ListarCupons;
begin
   try
      FrListarCupons := TFrListarCupons.Create(self);
      FrListarCupons.ShowModal;
   finally
      FreeAndNil(FrListarCupons);
   end;
end;

function TFrVendas.parametros_SAT: Boolean;
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       25/02/2019
     Descrição:  Carrega os parâmetros do SAT
     ------------------------------------------------------------------------------------- }
   ObjSat.Modelo := TACBrSATModelo(ObjCaixa.Caixa_SAT_Modelo);
   ObjSat.ArqLOG := 'Sat_Log.txt';
   ObjSat.NomeDLL := ObjCaixa.Caixa_SAT_DLL;
   ObjSat.Config.ide_numeroCaixa := ObjCaixa.Caixa_Codigo;
   ObjSat.Config.ide_tpAmb := TpcnTipoAmbiente(ObjCaixa.Caixa_SAT_Ambiente);
   ObjSat.Config.ide_CNPJ := ObjCaixa.Caixa_CnpjSoftHouse;
   ObjSat.Config.emit_CNPJ := FEmpresaClass.CNPJ;
   ObjSat.Config.emit_IE := OnlyNumber(FEmpresaClass.IEstadual);
   ObjSat.Config.emit_IM := OnlyNumber(FEmpresaClass.IMunicipal);
   ObjSat.Config.emit_cRegTrib := TpcnRegTrib(FEmpresaClass.Crt - 1);
   ObjSat.Config.emit_cRegTribISSQN := TpcnRegTribISSQN(RTISSMicroempresaMunicipal);
   ObjSat.Config.emit_indRatISSQN := TpcnindRatISSQN(irNao);
   ObjSat.Config.EhUTF8 := true;
   ObjSat.Config.PaginaDeCodigo := 0;
   ObjSat.Config.infCFe_versaoDadosEnt := 0.07;

   ObjSat.ConfigArquivos.SalvarCFe := true;
   ObjSat.ConfigArquivos.SalvarCFeCanc := true;
   ObjSat.ConfigArquivos.SalvarEnvio := true;
   ObjSat.ConfigArquivos.SepararPorCNPJ := true;
   ObjSat.ConfigArquivos.SepararPorModelo := true;
   ObjSat.ConfigArquivos.SepararPorDia := false;
   ObjSat.ConfigArquivos.SepararPorMes := true;
   ObjSat.ConfigArquivos.SepararPorAno := true;

   ObjSat.Extrato.Impressora := ObjCaixa.Caixa_Impressora;
   ObjSat.Extrato.NumCopias := ObjCaixa.Caixa_Cupom_Vias_F;
   ObjSat.Extrato.ImprimeLogoLateral := (ObjCaixa.Logotipo_Lateral = 1);
   ObjSat.Extrato.ImprimeQRCodeLateral := (ObjCaixa.QrCode_Lateral = 1);

   // Componente pos printer
   with ACBrPosPrinter1 do
   begin
      Porta := ObjCaixa.Caixa_Printer_Porta_F;
      Modelo := TACBrPosPrinterModelo(ObjCaixa.Caixa_Printer_Model_F);
      ConfigQRCode.LarguraModulo := ObjCaixa.QrCode_Largura_Modulo;
   end;

end;

function TFrVendas.PesquisarProdutos(aValue: String; iBrinde: Integer): Boolean;
var
   iCodigo: Integer;
   iPos: Integer;
   Qtde: Double;
begin

   Result := false;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  1º - Checa se foi informado a quantidade do produto na string
     ------------------------------------------------------------------------------------- }
   if Pos('*', aValue) > 0 then
   begin

      // Recupera a posição do coringa na string e incrementa mais um
      iPos := Pos('*', aValue);

      // Tratamento para a quantidade informada
      if not TryStrToFloat(Copy(aValue, 0, iPos - 1), Qtde) then
      begin
         Imprime_display('Quantidade informada inválida', clRed);
         BlockInput(true);
         Sleep(1000);
         BlockInput(false);
         Imprime_display_anterior;
         Exit;
      end;

      // Recupera o conteudo relativo a pesquisa
      aValue := Copy(aValue, iPos + 1, 120);

   end
   else
      Qtde := 1;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  1º - Efetua a busca do produto informado pelo código de barras
     ------------------------------------------------------------------------------------- }
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT * FROM C000405 WHERE ID_EMPRESA = :ID_EMPRESA AND PRD_CODIGO_BARRA = :PRD_CODIGO_BARRA');
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('PRD_CODIGO_BARRA').AsString := aValue;
   Query.Open();

   // Se foi encontrado produto cancela a busca e exibe o produto
   if not Query.IsEmpty then
   begin

      { Se o caixa não estiver aberto, efetua a abertura }
      if not Assigned(Cupom_Fiscal) then
         IniciaCupomFiscal;

      { Carrega o produto encontrado }
      Carrega_Dados_Do_Produto(QueryID.AsInteger, Qtde, iBrinde, QueryPRD_KIT.AsBoolean);
      Result := true;
      Exit;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  2º - Pesquisa o produto no campo código e compara com o valor
     passado em parâmetro (aValue)
     ------------------------------------------------------------------------------------- }
   if TryStrToInt(aValue, iCodigo) then
   begin
      Query.Close;
      Query.SQL.Clear;
      Query.SQL.Add('SELECT * FROM C000405 WHERE ID_EMPRESA = :ID_EMPRESA AND PRD_CODIGO = :PRD_CODIGO ORDER BY PRD_DESCRICAO ASC');
      Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
      Query.ParamByName('PRD_CODIGO').AsInteger := iCodigo;
      Query.Open();
   end;

   // Se foi encontrado produto cancela a busca e exibe o produto
   if not Query.IsEmpty then
   begin

      { Se o caixa não estiver aberto, efetua a abertura }
      if not Assigned(Cupom_Fiscal) then
         IniciaCupomFiscal;

      { Carrega o produto encontrado }
      Carrega_Dados_Do_Produto(QueryID.AsInteger, Qtde, iBrinde, QueryPRD_KIT.AsBoolean);
      Result := true;
      Exit;
   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  3º - Se nada foi encontrado nas pesquisas anteriores, tenta buscar
     uma relação de produtos ou um produto pela descrição
     ------------------------------------------------------------------------------------- }
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT * FROM C000405 WHERE ID_EMPRESA = :ID_EMPRESA AND PRD_DESCRICAO LIKE :PRD_DESCRICAO ORDER BY PRD_DESCRICAO ASC');
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('PRD_DESCRICAO').AsString := '%' + aValue + '%';
   Query.Open();

   // Se encontrado o produto e se encontrado mais de um registro
   if not Query.IsEmpty then
   begin

      if Query.RecordCount > 1 then
      begin
         FrBuscarProduto := TFrBuscarProduto.Create(self);
         try

            if FrBuscarProduto.ShowModal = mrCancel then
            begin
               Imprime_display('informe o produto.', clWhite);
               Sleep(1000);
               Imprime_display_anterior;
               Abort;
            end;

            { Se o caixa não estiver aberto, efetua a abertura }
            if not Assigned(Cupom_Fiscal) then
               IniciaCupomFiscal;

            Carrega_Dados_Do_Produto(QueryID.AsInteger, Qtde, iBrinde, QueryPRD_KIT.AsBoolean);
            Result := true;
            Exit;

         finally
            FreeAndNil(FrBuscarProduto);
         end;

      end
      else
      begin
         { Se o caixa não estiver aberto, efetua a abertura }
         if not Assigned(Cupom_Fiscal) then
            IniciaCupomFiscal;

         Carrega_Dados_Do_Produto(QueryID.AsInteger, Qtde, iBrinde, QueryPRD_KIT.AsBoolean);
         Result := true;
         Exit;
      end;

   end;

   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Se nada foi encontrado, exibe a mensagem de produto não localizado
     para o usuário
     Obs.: Haverá atualizações
     ------------------------------------------------------------------------------------- }
   Imprime_display('produto não localizado.', clRed);
   BlockInput(true);
   Sleep(1000);
   BlockInput(false);
   Imprime_display_anterior;

end;

procedure TFrVendas.QueryAfterRefresh(DataSet: TDataSet);
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     DatA:       26/02/2019
     Descrição:  Após gravar os dados do cupom, recupera o número gerado
     ------------------------------------------------------------------------------------- }
   Cupom_Fiscal.F_Numero := QueryID.AsInteger;
end;

procedure TFrVendas.QueryCupomAfterDelete(DataSet: TDataSet);
begin
   // Ajusta o caixa para o estado inicial
   tCaixaLivre.Enabled := true;
end;

procedure TFrVendas.QueryCupomAfterOpen(DataSet: TDataSet);
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Abre o DataSet de produtos
     ------------------------------------------------------------------------------------- }
   QueryProdutos.Open();
end;

procedure TFrVendas.QueryCupomAfterPost(DataSet: TDataSet);
begin
   // Memoriza O ID do cupom no objeto
   Cupom_Fiscal.F_ID := DataSet.FieldByName('ID').AsInteger;
   Cupom_Fiscal.F_Data := Now;
   Cupom_Fiscal.F_Numero := DataSet.FieldByName('F_CUPOM_NUMERO').AsInteger;

   // Atualiza o DataSet do Cupom
   DataSet.Refresh;
end;

procedure TFrVendas.QueryCupomF_CUPOM_NUMEROGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
      Text := 'COO: ' + Format('%.6d', [Sender.AsInteger])
   else
      Text := 'C00: 000000';
end;

procedure TFrVendas.QueryCupomF_QTDE_ITENSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      try
         Text := FormatFloat(',0.000', Sender.AsInteger);
      except
         Text := '0,000';
      end;
   end;
end;

procedure TFrVendas.QueryCupomF_VLR_PAGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      try
         Text := FormatFloat(',0.00', Sender.AsFloat);
      except
         Text := '0,00';
      end;
   end;
end;

procedure TFrVendas.QueryCupomF_VLR_TROCOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      try
         if Sender.AsFloat < 0 then
            Text := '0,00'
         else
            Text := FormatFloat(',0.00', Sender.AsFloat)
      except
         Text := '0,00';
      end;
   end;
end;

procedure TFrVendas.QueryProdutosAfterDelete(DataSet: TDataSet);
begin
   QueryProdutos.Refresh;
end;

procedure TFrVendas.QueryProdutosAfterPost(DataSet: TDataSet);
begin
   // Atualiza o cursor do cupom
   QueryCupom.Refresh;

   // Atualiza o cursor dos produtos
   DataSet.Refresh;
end;

procedure TFrVendas.QueryProdutosAGG_VALOR_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      try
         Text := FormatFloat(',0.00', Sender.AsFloat);
      except
         Text := '0,00';
      end;
   end;
end;

procedure TFrVendas.QueryProdutosBeforePost(DataSet: TDataSet);
begin
   // Gera o número do item a ser gravado
   if DataSet.State = dsInsert then
      DataSet.FieldByName('F_ITEM').AsInteger := (DataSet.RecordCount + 1)
end;

procedure TFrVendas.QueryProdutosF_DESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
   Str: String;
begin
   if DisplayText then
   begin
      if QueryProdutosF_CODIGO_BARRAS.AsString = '' then
         Str := Format('%.6d', [QueryProdutosF_CODIGO.AsInteger])
      else
         Str := QueryProdutosF_CODIGO_BARRAS.AsString;

      Text := '<font size=08 color=#5d5b5b>' + Str + '</font>';
      Text := Text + '<br>';
      Text := Text + '<font size=10><strong>' + Sender.AsString + '</strong></font>';
      Text := Text + '<br><font size=08 color=#5d5b5b>' + QueryProdutosF_DESC_KIT.AsString + '</font>'
   end;
end;

procedure TFrVendas.QueryProdutosF_QTDEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
   begin
      try
         Text := FormatFloat(',0.000', Sender.AsInteger);
      except
         Text := '0,000';
      end;
   end;
end;

procedure TFrVendas.QueryStatusCargaAfterPost(DataSet: TDataSet);
begin
   // Gera o arquivo do status da carga
   QueryStatusCarga.SaveToFile('StsCarga.dat', sfBinary);

   // Exibe a informação de atualização
   tStatusCargaTimer(nil);
end;

procedure TFrVendas.QueryTemporariaPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
   Application.MessageBox('Erro ao gravar os dados do cupom, se o problemas persistir, contate o Suporte Técnico', 'TechCore-PDV', mb_IconStop or mb_Ok);
end;

procedure TFrVendas.QueryTotalF_VLR_DESCONTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
      Text := FormatFloatBR(Sender.AsFloat);
end;

procedure TFrVendas.QueryTotalF_VLR_PAGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
      Text := FormatFloatBR(Sender.AsFloat);
end;

procedure TFrVendas.QueryTotalF_VLR_SUBTOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
      Text := FormatFloatBR(Sender.AsFloat);
end;

procedure TFrVendas.QueryTotalF_VLR_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
      Text := FormatFloatBR(Sender.AsFloat);
end;

procedure TFrVendas.QueryTotalF_VLR_TROCOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if not DisplayText then
      Text := FormatFloatBR(Sender.AsFloat);
end;

procedure TFrVendas.R1Click(Sender: TObject);
begin
   if not Assigned(Cupom_Fiscal) then
   begin
      if ObjOperador.F_User_Adm = 1 then
      begin
         EfetuaRetirada;
         Exit;
      end;

      // Checa se permite exibir o formulário
      if ObjOperador.F_Permite_Retirada = 2 then
      begin
         Imprime_display('usuário sem permissão para utilizar este recurso', clYellow);
         Sleep(1000);
         Imprime_display_anterior;
         Exit;
      end;

      // Checa se é obrigatório o uso de senha
      if ObjOperador.F_Snh_Retirada = 2 then
         EfetuaRetirada
      else
      begin

         try
            FrSenhaOperador := TFrSenhaOperador.Create(self);

            if FrSenhaOperador.ShowModal = mrOk then
            begin
               FrRetirada := TFrRetirada.Create(self);
               FrRetirada.ShowModal;
            end;

         finally
            FreeAndNil(FrSenhaOperador);
            FreeAndNil(FrRetirada);
         end;

      end;
   end
   else
   begin
      Imprime_display('acesso negado, existem cupons abertos', clYellow);
      Sleep(1000);
      Imprime_display_anterior;
   end;
end;

procedure TFrVendas.RestauraItemVenda;
begin
   try
      FrRestauraItem := TFrRestauraItem.Create(self);
      FrRestauraItem.ShowModal;
   finally
      FreeAndNil(FrRestauraItem);
   end;
end;

procedure TFrVendas.restaurarItem1Click(Sender: TObject);
var
   sMsg: String;
begin
   { -----------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Dat:        20/02/2019
     Descrição:  Processo de cancelamento dos itens do cupom
     ------------------------------------------------------------------------------------- }
   if Assigned(Cupom_Fiscal) then
   begin

      // Exibe a msg no display
      Imprime_display('restaurar item do cupom.', clYellow);

      if ObjOperador.F_User_Adm = 1 then
      begin
         CancelaItemVenda;
         Exit;
      end;

      // Checa se permite cancelar a venda
      if ObjOperador.Opr_CancelarItem = 2 then
      begin
         Imprime_display('usuário sem permissão para utilizar este recurso', clYellow);
         Sleep(1000);
         Imprime_display_anterior;
         Exit;
      end;

      // Checa se é obrigatório o uso de senha
      if ObjOperador.F_Senha_Cancela_Itens = 2 then
         RestauraItemVenda
      else
      begin

         try
            FrSenhaOperador := TFrSenhaOperador.Create(self);
            if FrSenhaOperador.ShowModal = mrOk then
               RestauraItemVenda;

         finally
            FreeAndNil(FrSenhaOperador);
         end;

      end;

   end
   else
   begin
      Imprime_display('não há cupom aberto.', clYellow);
      Sleep(2000);
      Imprime_display_anterior;
   end;
end;

procedure TFrVendas.ResumodoCaixa1Click(Sender: TObject);
begin
   if not Assigned(Cupom_Fiscal) then
   begin
      if ObjOperador.F_User_Adm = 1 then
      begin
         ExibirResumoCaixa;
         Exit;
      end;

      // Checa se permite exibir o formulário
      if ObjOperador.F_Print_Gerencial = 2 then
      begin
         Imprime_display('usuário sem permissão para utilizar o recurso.', clYellow);
         Sleep(1000);
         Imprime_display_anterior;
         Exit;
      end;

      // Checa se é obrigatório o uso de senha
      if ObjOperador.F_Snh_Print_Gerencial = 2 then
         ExibirResumoCaixa
      else
      begin

         try
            FrSenhaOperador := TFrSenhaOperador.Create(self);

            if FrSenhaOperador.ShowModal = mrOk then
               ExibirResumoCaixa;

         finally
            FreeAndNil(FrSenhaOperador);
         end;

      end;
   end
   else
   begin
      Imprime_display('acesso negado, existem cupons abertos', clYellow);
      Sleep(1000);
      Imprime_display_anterior;
   end;
end;

end.
