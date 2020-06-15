unit uPrincipal;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
   Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Ribbon,
   Vcl.RibbonLunaStyleActnCtrls, System.ImageList, Vcl.ImgList, JvImageList,
   Vcl.RibbonObsidianStyleActnCtrls, RzStatus, Vcl.ExtCtrls, RzPanel,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
   FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
   FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
   FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.Client, Data.DB,
   ACBrBase, ACBrAAC, Vcl.Imaging.pngimage, JvExExtCtrls, JvImage,
   FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
   FireDAC.Comp.DataSet, UCMail, UCDataConnector, UCFireDACConn, UCBase,
   UCSettings, Vcl.Menus, Vcl.StdCtrls, PngImageList, LockApplication,
   Vcl.ComCtrls, Vcl.Imaging.jpeg, Vcl.OleCtrls, SHDocVw,
   VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
   VCLTee.Chart, VCLTee.DBChart, VCLTee.TeeDBCrossTab, DateUtils,
   cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
   dxRibbonSkins, dxRibbonCustomizationForm, cxClasses, dxRibbon, cxStyles,
   dxBar, dxCustomTileControl, dxTileBar, Vcl.PlatformDefaultStyleActnCtrls,
  dxSkinsCore;

type
   TFrPrincipal = class(TForm)
      actMenu: TActionManager;
      actCadastroEmpresas: TAction;
      sysIcones: TJvImageList;
      RzStatusBar1: TRzStatusBar;
      RzClockStatus1: TRzClockStatus;
      RzKeyStatus1: TRzKeyStatus;
      sysIcones16: TJvImageList;
      actProdutos: TAction;
      Action1: TAction;
      Action2: TAction;
      Action3: TAction;
      actTiposProdutos: TAction;
      actNCM: TAction;
      actFuncionarios: TAction;
      actTabDsscontos: TAction;
      actTabelaPrecos: TAction;
      actFornecedores: TAction;
      acClientes: TAction;
      actCompras: TAction;
      Icones20x20: TImageList;
      actPedidosComprasGerenciar: TAction;
      actVendas: TAction;
      actFormasPagtos: TAction;
      actGatewaysPagtos: TAction;
      actBandeirasCartoes: TAction;
      actCondicoesPagtos: TAction;
      actPedidosVendasGerenciar: TAction;
      actRegrasTributos: TAction;
      actTransportadoras: TAction;
      actNotaFiscal: TAction;
      RzStatusPane1: TRzStatusPane;
      RzStatusPane2: TRzStatusPane;
      RzVersionInfoStatus1: TRzVersionInfoStatus;
      appVersion: TRzVersionInfo;
      actContasReceber: TAction;
      actTiposDocumentos: TAction;
      ctContasPagar: TAction;
      Action4: TAction;
      Action6: TAction;
      Action7: TAction;
      Action8: TAction;
      Action9: TAction;
      Action10: TAction;
      Action5: TAction;
      Action11: TAction;
      Action12: TAction;
      aQuery: TFDQuery;
      Action13: TAction;
      RzStatusPane3: TRzStatusPane;
      RzStatusPane4: TRzStatusPane;
      br_empresa: TRzStatusPane;
      Action14: TAction;
      Action15: TAction;
      Action16: TAction;
      Action17: TAction;
      Action18: TAction;
      plnContas: TAction;
      RzStatusPane5: TRzStatusPane;
      pnUser: TRzStatusPane;
      UCApplicationMessage1: TUCApplicationMessage;
      UCControls1: TUCControls;
      actUsuarioCad: TAction;
      actUsuarioSenha: TAction;
      actUsuarioLogoff: TAction;
      ucMain: TUserControl;
      UCSettings1: TUCSettings;
      actResCaixasGrpData: TAction;
      actResCaixasGrpVendedor: TAction;
      actResCaixasDetalhado: TAction;
      Action19: TAction;
      actPlanosContasPadroes: TAction;
      actEtQ3x33x21: TAction;
      actCtasCaixas: TAction;
      Action20: TAction;
      StartForm: TLockApplication;
      actUserAtivaDesativa: TAction;
      Action21: TAction;
      actMovtoEstoque: TAction;
      actConfigEstoque: TAction;
      actConfigOS: TAction;
      JvImage1: TJvImage;
      UCFireDACConn1: TUCFireDACConn;
      Action22: TAction;
    Action23: TAction;
    Action24: TAction;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    Faturamento: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PngImageList1: TPngImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarManager1Bar8: TdxBar;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarManager1Bar9: TdxBar;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarManager1Bar10: TdxBar;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    Genricas1: TdxBarButton;
    Agrupadoporfornecedores1: TdxBarButton;
    Agrupadoporcliente1: TdxBarButton;
    MovimentaodoEstoque1: TdxBarSubItem;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    dxRibbon1Tab6: TdxRibbonTab;
    dxBarManager1Bar11: TdxBar;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarManager1Bar12: TdxBar;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarLargeButton39: TdxBarLargeButton;
    dxBarManager1Bar13: TdxBar;
    dxBarManager1Bar14: TdxBar;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarLargeButton41: TdxBarLargeButton;
    dxBarManager1Bar15: TdxBar;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    dxBarLargeButton44: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarLargeButton45: TdxBarLargeButton;
    dxBarLargeButton46: TdxBarLargeButton;
    dxRibbonPopupMenu2: TdxRibbonPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarManager1Bar16: TdxBar;
    dxBarButton11: TdxBarButton;
    dxBarLargeButton47: TdxBarLargeButton;
    dxBarManager1Bar17: TdxBar;
    dxBarLargeButton48: TdxBarLargeButton;
    dxBarButton12: TdxBarButton;
    dxBarLargeButton49: TdxBarLargeButton;
    dxBarLargeButton50: TdxBarLargeButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarLargeButton51: TdxBarLargeButton;
    dxBarButton16: TdxBarButton;
    dxRibbonPopupMenu3: TdxRibbonPopupMenu;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarManager1Bar18: TdxBar;
    Action25: TAction;
    dxBarButton24: TdxBarButton;
    dxBarLargeButton52: TdxBarLargeButton;
      procedure actCadastroEmpresasExecute(Sender: TObject);
      procedure actCadastrarUsersExecute(Sender: TObject);
      procedure actGrupoProdutosExecute(Sender: TObject);
      procedure Action1Execute(Sender: TObject);
      procedure Action2Execute(Sender: TObject);
      procedure Action3Execute(Sender: TObject);
      procedure actTiposProdutosExecute(Sender: TObject);
      procedure actProdutosExecute(Sender: TObject);
      procedure actNCMExecute(Sender: TObject);
      procedure actFuncionariosExecute(Sender: TObject);
      procedure actTabDsscontosExecute(Sender: TObject);
      procedure actTabelaPrecosExecute(Sender: TObject);
      procedure actFornecedoresExecute(Sender: TObject);
      procedure acClientesExecute(Sender: TObject);
      procedure actComprasExecute(Sender: TObject);
      procedure actPedidosComprasGerenciarExecute(Sender: TObject);
      procedure actVendasExecute(Sender: TObject);
      procedure actFormasPagtosExecute(Sender: TObject);
      procedure actGatewaysPagtosExecute(Sender: TObject);
      procedure actBandeirasCartoesExecute(Sender: TObject);
      procedure actCondicoesPagtosExecute(Sender: TObject);
      procedure actPedidosVendasGerenciarExecute(Sender: TObject);
      procedure actRegrasTributosExecute(Sender: TObject);
      procedure actTransportadorasExecute(Sender: TObject);
      procedure actNotaFiscalExecute(Sender: TObject);
      procedure actContasReceberExecute(Sender: TObject);
      procedure actTiposDocumentosExecute(Sender: TObject);
      procedure ctContasPagarExecute(Sender: TObject);
      procedure Action4Execute(Sender: TObject);
      procedure Action6Execute(Sender: TObject);
      procedure Action7Execute(Sender: TObject);
      procedure Action8Execute(Sender: TObject);
      procedure Action9Execute(Sender: TObject);
      procedure Action5Execute(Sender: TObject);
      procedure Action11Execute(Sender: TObject);
      procedure Action12Execute(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure Action13Execute(Sender: TObject);
      procedure Action14Execute(Sender: TObject);
      procedure Action16Execute(Sender: TObject);
      procedure Action17Execute(Sender: TObject);
      procedure Action18Execute(Sender: TObject);
      procedure plnContasExecute(Sender: TObject);
      procedure Action19Execute(Sender: TObject);
      procedure ucMainAfterLogin(Sender: TObject);
      procedure ucMainLogoff(Sender: TObject; IdUser: Integer);
      procedure actResCaixasGrpDataExecute(Sender: TObject);
      procedure Action15Execute(Sender: TObject);
      procedure actResCaixasGrpVendedorExecute(Sender: TObject);
      procedure actResCaixasDetalhadoExecute(Sender: TObject);
      procedure actPlanosContasPadroesExecute(Sender: TObject);
      procedure actEtQ3x33x21Execute(Sender: TObject);
      procedure actCtasCaixasExecute(Sender: TObject);
      procedure Action20Execute(Sender: TObject);
      procedure Action21Execute(Sender: TObject);
      procedure actMovtoEstoqueExecute(Sender: TObject);
      procedure actConfigEstoqueExecute(Sender: TObject);
      procedure Action10Execute(Sender: TObject);
      procedure actConfigOSExecute(Sender: TObject);
      procedure Action22Execute(Sender: TObject);
    procedure Action23Execute(Sender: TObject);
    procedure Agrupadoporcliente1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action25Execute(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrPrincipal: TFrPrincipal;

implementation

{$R *.dfm}

Uses
   uEmpresas, Classe.Empresa, uGruposProdutos, uSelectEmpresa,
   uSubGruposProdutos, uMarcasProdutos, uTiposProdutos, uProdutos, uNcmCest,
   uFuncionarios, uTabelasDescontos, uTabelaPrecos,
   uFornecedor, uClientes, uPedidosCompras, uPedidosComprasGerenciar,
   uPedidosVendas, uFormasPagtos, uGatewaysPagtos, uBandeirasCartoes,
   uCondicoesPagtos, uPedidosVendasGerenciar, uRegrasTributacao,
   uTransportadoras, uEmissorNfe, uContasReceber, uTiposDocumentos,
   uContasPagar,
   uFiltro_Pos_Estoque, uFiltro_Tabela_Precos, uFiltro_Rel_Produtos,
   uFiltro_Fornecedor_Ctas_Pagar,
   uRel_Filtra_Cliente_Ctas_Receber, uFiltro_Data_Cli_Ctas_Receber,
   UFiltro_Movto_Estoque, uCadastroCaixas, uOperadores, uVendedores,
   uRel_Vendedor_Filtro, uOperadorasCartoes, uRel_Vendas_Caixas_Filtro,
   uOrdemServico, uOrdemServicoGerenciar, uConfigServer,
   uPlanoContas, uModuloRet, uPlanoContasPadroes, uProdutoEtiquetas3x21,
   uPrFiltroEtiquetas3x21, uConfigFinanceiro, Classe.Financeiro,
   uContasCaixas, uDreFiltro, Classe.NFe, uImportarNfe,
   uMovtoEstoque, uConfigEstoque, uOrdemServicoConfig,
  UFiltro_Movto_Estoque_For, uEmissorMDFe;

procedure TFrPrincipal.acClientesExecute(Sender: TObject);
begin
   if not Assigned(FrClientes) then
   begin
      FrClientes := TFrClientes.Create(self);
      FrClientes.Show
   end
   else
      FrClientes.BringToFront;
end;

procedure TFrPrincipal.actBandeirasCartoesExecute(Sender: TObject);
begin
   if not(Assigned(FrBandeirasCartoes)) then
   begin
      FrBandeirasCartoes := TFrBandeirasCartoes.Create(self);
      FrBandeirasCartoes.Show;
   end
   else
      FrBandeirasCartoes.BringToFront;
end;

procedure TFrPrincipal.actCadastrarUsersExecute(Sender: TObject);
begin
   //
end;

procedure TFrPrincipal.actCadastroEmpresasExecute(Sender: TObject);
begin
   if not(Assigned(FrEmpresas)) then
   begin
      FrEmpresas := TFrEmpresas.Create(self);
      FrEmpresas.Show;
   end
   else
      FrEmpresas.BringToFront;
end;

procedure TFrPrincipal.actComprasExecute(Sender: TObject);
begin
   if not Assigned(FrPedidosCompras) then
   begin
      FrPedidosCompras := TFrPedidosCompras.Create(self);
      FrPedidosCompras.Show;
   end
   else
      FrPedidosCompras.BringToFront;
end;

procedure TFrPrincipal.actCondicoesPagtosExecute(Sender: TObject);
begin
   if not Assigned(FrCondicoesPagtos) then
   begin
      FrCondicoesPagtos := TFrCondicoesPagtos.Create(self);
      FrCondicoesPagtos.Show;
   end
   else
      FrCondicoesPagtos.BringToFront;
end;

procedure TFrPrincipal.actConfigEstoqueExecute(Sender: TObject);
begin
   try
      frConfigEstoque := TfrConfigEstoque.Create(self);
      frConfigEstoque.ShowModal;
   finally
      FreeAndNil(frConfigEstoque);
   end;
end;

procedure TFrPrincipal.actConfigOSExecute(Sender: TObject);
begin
   try
      FrOrdemServicoConfig := TFrOrdemServicoConfig.Create(self);
      FrOrdemServicoConfig.ShowModal;
   finally
      FreeAndNil(FrOrdemServicoConfig);
   end;
end;

procedure TFrPrincipal.actContasReceberExecute(Sender: TObject);
begin
   if not Assigned(FrContasReceber) then
   begin
      FrContasReceber := TFrContasReceber.Create(self);
      FrContasReceber.Show;
   end
   else
      FrContasReceber.BringToFront;
end;

procedure TFrPrincipal.actCtasCaixasExecute(Sender: TObject);
begin
   if not Assigned(FrContasCaixas) then
   begin
      FrContasCaixas := TFrContasCaixas.Create(self);
      FrContasCaixas.Show;
   end
   else
      FrContasCaixas.BringToFront;
end;

procedure TFrPrincipal.actEtQ3x33x21Execute(Sender: TObject);
begin
   try
      FrPrdFiltroEtiquetas3x21 := TFrPrdFiltroEtiquetas3x21.Create(self);
      FrPrdFiltroEtiquetas3x21.ShowModal;
   finally
      FreeAndNil(FrPrdFiltroEtiquetas3x21);
   end;
end;

procedure TFrPrincipal.actFormasPagtosExecute(Sender: TObject);
begin
   if not Assigned(FrFormasPagtos) then
   begin
      FrFormasPagtos := TFrFormasPagtos.Create(self);
      FrFormasPagtos.Show;
   end
   else
      FrFormasPagtos.BringToFront;
end;

procedure TFrPrincipal.actFornecedoresExecute(Sender: TObject);
begin
   if not Assigned(FrFornecedor) then
   begin
      FrFornecedor := TFrFornecedor.Create(self);
      FrFornecedor.Show;
   end
   else
      FrFornecedor.BringToFront;
end;

procedure TFrPrincipal.actFuncionariosExecute(Sender: TObject);
begin
   if not Assigned(FrFuncionarios) then
   begin
      FrFuncionarios := TFrFuncionarios.Create(self);
      FrFuncionarios.Show
   end
   else
      FrFuncionarios.BringToFront
end;

procedure TFrPrincipal.actGatewaysPagtosExecute(Sender: TObject);
begin
   if not Assigned(FrGatewaysPagtos) then
   begin
      FrGatewaysPagtos := TFrGatewaysPagtos.Create(self);
      FrGatewaysPagtos.Show;
   end
   else
      FrGatewaysPagtos.BringToFront;
end;

procedure TFrPrincipal.actGrupoProdutosExecute(Sender: TObject);
begin
   //
end;

procedure TFrPrincipal.Action10Execute(Sender: TObject);
begin
   //
end;

procedure TFrPrincipal.Action11Execute(Sender: TObject);
begin
   if not Assigned(FrOperadores) then
   begin
      FrOperadores := TFrOperadores.Create(self);
      FrOperadores.Show;
   end
   else
      FrOperadores.BringToFront;
end;

procedure TFrPrincipal.Action12Execute(Sender: TObject);
begin
   if not Assigned(FrVendedores) then
   begin
      FrVendedores := TFrVendedores.Create(self);
      FrVendedores.Show
   end
   else
      FrVendedores.BringToFront;
end;

procedure TFrPrincipal.Action13Execute(Sender: TObject);
begin
   try
      FrRel_Vendedor_Filtro := TFrRel_Vendedor_Filtro.Create(self);
      FrRel_Vendedor_Filtro.ShowModal;
   finally
      FreeAndNil(FrRel_Vendedor_Filtro);
   end;
end;

procedure TFrPrincipal.Action14Execute(Sender: TObject);
begin
   if not Assigned(FrCondicoesPagtos) then
   begin
      FrOperadorasCartoes := TFrOperadorasCartoes.Create(self);
      FrOperadorasCartoes.Show;
   end
   else
      FrOperadorasCartoes.BringToFront;
end;

procedure TFrPrincipal.Action15Execute(Sender: TObject);
begin
   //
end;

procedure TFrPrincipal.Action16Execute(Sender: TObject);
begin
   if not Assigned(FrOrdemServico) then
   begin
      FrOrdemServico := TFrOrdemServico.Create(self);
      FrOrdemServico.Show;
   end
   else
      FrOrdemServico.BringToFront;
end;

procedure TFrPrincipal.Action17Execute(Sender: TObject);
begin
   if not Assigned(FrOrdemServicoGerenciar) then
   begin
      FrOrdemServicoGerenciar := TFrOrdemServicoGerenciar.Create(self);
      FrOrdemServicoGerenciar.Show;
   end
   else
      FrOrdemServicoGerenciar.BringToFront;
end;

procedure TFrPrincipal.Action18Execute(Sender: TObject);
begin
   try
      FrConfigServer := TFrConfigServer.Create(self);
      FrConfigServer.ShowModal;
   finally
      FreeAndNil(FrConfigServer);
   end;
end;

procedure TFrPrincipal.Action19Execute(Sender: TObject);
begin
   try
      FrConfigFinanceiro := TFrConfigFinanceiro.Create(self);
      FrConfigFinanceiro.ShowModal;
   finally
      FreeAndNil(FrConfigFinanceiro);
   end;
end;

procedure TFrPrincipal.Action1Execute(Sender: TObject);
begin
   if not Assigned(FrGruposProdutos) then
   begin
      FrGruposProdutos := TFrGruposProdutos.Create(self);
      FrGruposProdutos.Show;
   end
   else
      FrGruposProdutos.BringToFront;
end;

procedure TFrPrincipal.Action20Execute(Sender: TObject);
begin
   frDreFiltro := TfrDreFiltro.Create(self);
   try
      frDreFiltro.ShowModal;
   finally
      FreeAndNil(frDreFiltro);
   end;
end;

procedure TFrPrincipal.Action21Execute(Sender: TObject);
begin
   { formulário de importação das notas fiscais }
   if not Assigned(FrImportarNfe) then
   begin
      FrImportarNfe := TFrImportarNfe.Create(self);
      FrImportarNfe.Show;
   end
   else
      FrImportarNfe.BringToFront;
end;

procedure TFrPrincipal.Action22Execute(Sender: TObject);
begin
   try
      FrFiltro_Movto_Estoque := TFrFiltro_Movto_Estoque.Create(self);
      FrFiltro_Movto_Estoque.ShowModal;
   finally
      FreeAndNil(FrFiltro_Movto_Estoque);
   end;
end;

procedure TFrPrincipal.Action23Execute(Sender: TObject);
begin
   try
      FrFiltro_Movto_Estoque_For := TFrFiltro_Movto_Estoque_For.Create(self);
      FrFiltro_Movto_Estoque_For.ShowModal;
   finally                                 
      FreeAndNil(FrFiltro_Movto_Estoque_For);
   end;
end;

procedure TFrPrincipal.Action25Execute(Sender: TObject);
begin
   if not Assigned(FrEmissorMDFe) then
   begin
      FrEmissorMDFe := TFrEmissorMDFe.Create(self);
      FrEmissorMDFe.Show;
   end
   else
      FrEmissorMDFe.BringToFront
end;

procedure TFrPrincipal.Action2Execute(Sender: TObject);
begin
   if not Assigned(FrSubGruposProdutos) then
   begin
      FrSubGruposProdutos := TFrSubGruposProdutos.Create(self);
      FrSubGruposProdutos.Show;
   end
   else
      FrSubGruposProdutos.BringToFront;
end;

procedure TFrPrincipal.Action3Execute(Sender: TObject);
begin
   if not Assigned(FrMarcasProdutos) then
   begin
      FrMarcasProdutos := TFrMarcasProdutos.Create(self);
      FrMarcasProdutos.Show;
   end
   else
      FrMarcasProdutos.BringToFront;
end;

procedure TFrPrincipal.Action4Execute(Sender: TObject);
begin
   FrFiltro_Pos_Estoque := TFrFiltro_Pos_Estoque.Create(self);
   try
      FrFiltro_Pos_Estoque.ShowModal;
   finally
      FreeAndNil(FrFiltro_Pos_Estoque);
   end;
end;

procedure TFrPrincipal.Action5Execute(Sender: TObject);
begin
   if not Assigned(FrCadastroCaixas) then
   begin
      FrCadastroCaixas := TFrCadastroCaixas.Create(self);
      FrCadastroCaixas.Show
   end
   else
      FrCadastroCaixas.BringToFront;
end;

procedure TFrPrincipal.Action6Execute(Sender: TObject);
begin
   FrFiltro_Tabela_Precos := TFrFiltro_Tabela_Precos.Create(self);
   try
      FrFiltro_Tabela_Precos.ShowModal;
   finally
      FreeAndNil(FrFiltro_Tabela_Precos);
   end;
end;

procedure TFrPrincipal.Action7Execute(Sender: TObject);
begin
   FrFiltro_Rel_Produtos := TFrFiltro_Rel_Produtos.Create(self);
   try
      FrFiltro_Rel_Produtos.ShowModal;
   finally
      FreeAndNil(FrFiltro_Rel_Produtos);
   end;
end;

procedure TFrPrincipal.Action8Execute(Sender: TObject);
begin
   FrFiltro_Data_Cli_Ctas_Receber :=
     TFrFiltro_Data_Cli_Ctas_Receber.Create(self);
   Try
      FrFiltro_Data_Cli_Ctas_Receber.ShowModal;
   finally
      FreeAndNil(FrFiltro_Data_Cli_Ctas_Receber);
   end;
end;

procedure TFrPrincipal.Action9Execute(Sender: TObject);
begin
   FrFiltro_Fornecedor_Ctas_Pagar :=
     TFrFiltro_Fornecedor_Ctas_Pagar.Create(self);
   try
      FrFiltro_Fornecedor_Ctas_Pagar.ShowModal;
   finally
      FreeAndNil(FrFiltro_Fornecedor_Ctas_Pagar);
   end;
end;

procedure TFrPrincipal.actMovtoEstoqueExecute(Sender: TObject);
begin
   try
      FrMovtoEstoque := TFrMovtoEstoque.Create(self);
      FrMovtoEstoque.ShowModal;
   finally
      FreeAndNil(FrMovtoEstoque);
   end;
end;

procedure TFrPrincipal.actNCMExecute(Sender: TObject);
begin
   if not Assigned(FrNcmCest) then
   begin
      FrNcmCest := TFrNcmCest.Create(self);
      FrNcmCest.Show;
   end
   else
      FrNcmCest.BringToFront;
end;

procedure TFrPrincipal.actNotaFiscalExecute(Sender: TObject);
begin
   if not Assigned(FrEmissorNfe) then
   begin
      FrEmissorNfe := TFrEmissorNfe.Create(self);
      FrEmissorNfe.Show
   end
   else
      FrEmissorNfe.BringToFront;
end;

procedure TFrPrincipal.actPedidosComprasGerenciarExecute(Sender: TObject);
begin
   if not Assigned(FrPedidosComprasGerenciar) then
   begin
      FrPedidosComprasGerenciar := TFrPedidosComprasGerenciar.Create(self);
      FrPedidosComprasGerenciar.Show
   end
   else
      FrPedidosComprasGerenciar.BringToFront;
end;

procedure TFrPrincipal.actPedidosVendasGerenciarExecute(Sender: TObject);
begin
   if not Assigned(FrPedidosVendasGerenciar) then
   begin
      FrPedidosVendasGerenciar := TFrPedidosVendasGerenciar.Create(self);
      FrPedidosVendasGerenciar.Show;
   end
   else
      FrPedidosVendasGerenciar.BringToFront;
end;

procedure TFrPrincipal.actPlanosContasPadroesExecute(Sender: TObject);
begin
   if not Assigned(FrPlanoContasPadroes) then
   begin
      FrPlanoContasPadroes := TFrPlanoContasPadroes.Create(self);
      FrPlanoContasPadroes.Show;
   end
   else
      FrPlanoContasPadroes.BringToFront;
end;

procedure TFrPrincipal.actProdutosExecute(Sender: TObject);
begin
   if not Assigned(FrProdutos) then
   begin
      FrProdutos := TFrProdutos.Create(self);
      FrProdutos.Show;
   end
   else
      FrProdutos.BringToFront;
end;

procedure TFrPrincipal.actRegrasTributosExecute(Sender: TObject);
begin
   if not Assigned(FrRegrasTributacao) then
   begin
      FrRegrasTributacao := TFrRegrasTributacao.Create(self);
      FrRegrasTributacao.Show;
   end
   else
      FrRegrasTributacao.BringToFront;
end;

procedure TFrPrincipal.actResCaixasDetalhadoExecute(Sender: TObject);
begin
   FrRel_Vendas_Caixas_Filtro := TFrRel_Vendas_Caixas_Filtro.Create(self);
   FrRel_Vendas_Caixas_Filtro.vAgrupamento := 3; // Detalhado
   try
      FrRel_Vendas_Caixas_Filtro.ShowModal;
   finally
      FreeAndNil(FrRel_Vendas_Caixas_Filtro);
   end;
end;

procedure TFrPrincipal.actResCaixasGrpDataExecute(Sender: TObject);
begin
   FrRel_Vendas_Caixas_Filtro := TFrRel_Vendas_Caixas_Filtro.Create(self);
   FrRel_Vendas_Caixas_Filtro.vAgrupamento := 1; // Data
   try
      FrRel_Vendas_Caixas_Filtro.ShowModal;
   finally
      FreeAndNil(FrRel_Vendas_Caixas_Filtro);
   end;
end;

procedure TFrPrincipal.actResCaixasGrpVendedorExecute(Sender: TObject);
begin
   FrRel_Vendas_Caixas_Filtro := TFrRel_Vendas_Caixas_Filtro.Create(self);
   FrRel_Vendas_Caixas_Filtro.vAgrupamento := 2; // Data e Vendedores
   try
      FrRel_Vendas_Caixas_Filtro.ShowModal;
   finally
      FreeAndNil(FrRel_Vendas_Caixas_Filtro);
   end;
end;

procedure TFrPrincipal.actTabDsscontosExecute(Sender: TObject);
begin
   if not Assigned(FrTabelasDescontos) then
   begin
      FrTabelasDescontos := TFrTabelasDescontos.Create(self);
      FrTabelasDescontos.Show;
   end
   else
      FrTabelasDescontos.BringToFront;
end;

procedure TFrPrincipal.actTabelaPrecosExecute(Sender: TObject);
begin
   if not Assigned(FrTabelaPrecos) then
   begin
      FrTabelaPrecos := TFrTabelaPrecos.Create(self);
      FrTabelaPrecos.Show;
   end
   else
      FrTabelaPrecos.BringToFront;
end;

procedure TFrPrincipal.actTiposDocumentosExecute(Sender: TObject);
begin
   if not Assigned(FrTiposDocumentos) then
   begin
      FrTiposDocumentos := TFrTiposDocumentos.Create(self);
      FrTiposDocumentos.Show;
   end
   else
      FrTiposDocumentos.BringToFront;
end;

procedure TFrPrincipal.actTiposProdutosExecute(Sender: TObject);
begin
   if not Assigned(FrTiposProdutos) then
   begin
      FrTiposProdutos := TFrTiposProdutos.Create(self);
      FrTiposProdutos.Show;
   end
   else
      FrTiposProdutos.BringToFront;
end;

procedure TFrPrincipal.actTransportadorasExecute(Sender: TObject);
begin
   if not Assigned(frTransportadoras) then
   begin
      frTransportadoras := TfrTransportadoras.Create(self);
      frTransportadoras.Show
   end
   else
      frTransportadoras.BringToFront;
end;

procedure TFrPrincipal.actVendasExecute(Sender: TObject);
begin
   if not Assigned(FrPedidosVendas) then
   begin
      FrPedidosVendas := TFrPedidosVendas.Create(self);
      FrPedidosVendas.Show
   end
   else
      FrPedidosVendas.BringToFront;
end;

procedure TFrPrincipal.Agrupadoporcliente1Click(Sender: TObject);
begin
   //
end;

procedure TFrPrincipal.ctContasPagarExecute(Sender: TObject);
begin
   if not Assigned(FrContasPagar) then
   begin
      FrContasPagar := TFrContasPagar.Create(self);
      FrContasPagar.Show;
   end
   else
      FrContasPagar.BringToFront;
end;

procedure TFrPrincipal.FormCreate(Sender: TObject);
begin
   dxRibbon1.ActiveTab := dxRibbon1Tab1;
end;

procedure TFrPrincipal.FormShow(Sender: TObject);
begin
   { Proteção do sistema }
   StartForm.executar;

   { ---------------------------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       12/03/2018
     Descrição:  Checa se existem empressas cadastradas
     --------------------------------------------------------------------------------------------------- }
   FrSelectEmpresa := TFrSelectEmpresa.Create(Application);
   try
      if FrSelectEmpresa.ShowModal = mrCancel then
      begin
         Application.Terminate;
         Abort;
      end;

   finally
      FreeAndNil(FrSelectEmpresa);
   end;

   { ---------------------------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       05/08/2019
     Descrição:  Se estiver ativo, permite utilizar o controle de usuários no sistema
     --------------------------------------------------------------------------------------------------- }
   if FEmpresaClass.Usar_Login = 'S' then
   begin
      ucMain.CheckBD;
      ucMain.StartLogin;
   end;

   { ---------------------------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       19/07/2019
     Descrição:  Carrega o objeto financeiro
     --------------------------------------------------------------------------------------------------- }
   ClassFinanceiro := TFinanceiro.Create(FEmpresaClass.ID);

   { ---------------------------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       19/07/2019
     Descrição:  Cria o objeto de configuração da nota fiscal
     --------------------------------------------------------------------------------------------------- }
   ConfigNFe := TParametrosNFe.Create(FEmpresaClass.ID);

   { ---------------------------------------------------------------------------------------------------
     Autor:      Winston Moreira
     Data:       12/03/2018
     Descrição:  Exibe alguns dadso no rodapé do formulário
     --------------------------------------------------------------------------------------------------- }
   if Assigned(FEmpresaClass) then
      br_empresa.Caption := FEmpresaClass.RazaoSocial;

   // Exibe a versão do aplicativo
   appVersion.FilePath := ParamStr(0);
end;

procedure TFrPrincipal.plnContasExecute(Sender: TObject);
begin
   if not Assigned(FrPlanoContas) then
   begin
      FrPlanoContas := TFrPlanoContas.Create(self);
      FrPlanoContas.Show
   end
   else
      FrPlanoContas.BringToFront;
end;

procedure TFrPrincipal.ucMainAfterLogin(Sender: TObject);
begin
   { Exibe o usuário logado }
   pnUser.Caption := ucMain.CurrentUser.UserLogin;
end;

procedure TFrPrincipal.ucMainLogoff(Sender: TObject; IdUser: Integer);
begin
   { Exibe o usuário logado }
   pnUser.Caption := '';
end;

end.
