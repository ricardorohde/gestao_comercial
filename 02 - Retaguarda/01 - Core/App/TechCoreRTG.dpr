﻿program TechCoreRTG;

uses
  WinApi.Windows,
  Vcl.Forms,
  Vcl.Controls,
  System.SysConst,
  System.SysUtils,
  FireDAC.Phys.SQLiteVDataSet,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase,
  Data.DB,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.Comp.Client,
  Classe.Empresa in '..\Classes\Classe.Empresa.pas',
  Classe.NFe in '..\Classes\Classe.NFe.pas',
  Classe.Servidores in '..\Classes\Classe.Servidores.pas',
  uModuloRet in '..\DataModules\uModuloRet.pas' {FrModuloRet: TDataModule},
  uConfigServer in '..\Forms\ConfigServer\uConfigServer.pas' {FrConfigServer},
  uListarServidores in '..\Forms\ListarServer\uListarServidores.pas' {FrListarServidores},
  uPrincipal in '..\Forms\Principal\uPrincipal.pas' {FrPrincipal},
  uSelecionarCertificado in '..\Forms\Selecionar Certificado\uSelecionarCertificado.pas' {FrSelecionarCertificado},
  uSelectEmpresa in '..\..\02 - Modulos\01 - Cadastros\01 - Empresas\uSelectEmpresa.pas' {FrSelectEmpresa},
  uListaTiposProdutos in '..\..\02 - Modulos\01 - Cadastros\02 - Tipos de Produtos\uListaTiposProdutos.pas' {FrListarTiposProdutos},
  uTiposProdutos in '..\..\02 - Modulos\01 - Cadastros\02 - Tipos de Produtos\uTiposProdutos.pas' {FrTiposProdutos},
  uGruposProdutos in '..\..\02 - Modulos\01 - Cadastros\03 - Grupos de Produtos\uGruposProdutos.pas' {FrGruposProdutos},
  uListaGruposProdutos in '..\..\02 - Modulos\01 - Cadastros\03 - Grupos de Produtos\uListaGruposProdutos.pas' {FrListaGruposProdutos},
  uListaSubGruposProdutos in '..\..\02 - Modulos\01 - Cadastros\04 - SubGrupos de Produtos\uListaSubGruposProdutos.pas' {FrListaSubGruposProdutos},
  uSubGruposProdutos in '..\..\02 - Modulos\01 - Cadastros\04 - SubGrupos de Produtos\uSubGruposProdutos.pas' {FrSubGruposProdutos},
  uListaMarcasProdutos in '..\..\02 - Modulos\01 - Cadastros\05 - Marcas de Produtos\uListaMarcasProdutos.pas' {FrListaMarcasProdutos},
  uMarcasProdutos in '..\..\02 - Modulos\01 - Cadastros\05 - Marcas de Produtos\uMarcasProdutos.pas' {FrMarcasProdutos},
  uListaProdutos in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\uListaProdutos.pas' {FrListaProdutos},
  uProdutos in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\uProdutos.pas' {FrProdutos},
  uListaNCMs in '..\..\02 - Modulos\01 - Cadastros\07 - Ncm & Cest\uListaNCMs.pas' {FrListaNCMs},
  uNcmCest in '..\..\02 - Modulos\01 - Cadastros\07 - Ncm & Cest\uNcmCest.pas' {FrNcmCest},
  uFuncionarios in '..\..\02 - Modulos\01 - Cadastros\08 - Funcionários\uFuncionarios.pas' {FrFuncionarios},
  uTabelasDescontos in '..\..\02 - Modulos\01 - Cadastros\09 - Tabelas de Descontos\uTabelasDescontos.pas' {FrTabelasDescontos},
  uTabelaPrecos in '..\..\02 - Modulos\01 - Cadastros\10 - Tabelas de Preços\uTabelaPrecos.pas' {FrTabelaPrecos},
  uFornecedor in '..\..\02 - Modulos\01 - Cadastros\11 - Fornecedores\uFornecedor.pas' {FrFornecedor},
  uListaFornecedores in '..\..\02 - Modulos\01 - Cadastros\11 - Fornecedores\uListaFornecedores.pas' {FrListaFornecedores},
  uTipoFornecedor in '..\..\02 - Modulos\01 - Cadastros\11 - Fornecedores\uTipoFornecedor.pas' {FrTipoFornecedor},
  uClientes in '..\..\02 - Modulos\01 - Cadastros\12 - Clientes\uClientes.pas' {FrClientes},
  uListaClientes in '..\..\02 - Modulos\01 - Cadastros\12 - Clientes\uListaClientes.pas' {FrListaClientes},
  uTipoCliente in '..\..\02 - Modulos\01 - Cadastros\12 - Clientes\uTipoCliente.pas' {FrTipoCliente},
  uFormasPagtos in '..\..\02 - Modulos\01 - Cadastros\13 - Formas de Pagamentos\uFormasPagtos.pas' {FrFormasPagtos},
  uGatewaysPagtos in '..\..\02 - Modulos\01 - Cadastros\14 - Gateways de Pagamentos\uGatewaysPagtos.pas' {FrGatewaysPagtos},
  uBandeirasCartoes in '..\..\02 - Modulos\01 - Cadastros\15 - Bandeiras de Cartões\uBandeirasCartoes.pas' {FrBandeirasCartoes},
  uCondicoesPagtos in '..\..\02 - Modulos\01 - Cadastros\16 - Condições de Pagamentos\uCondicoesPagtos.pas' {FrCondicoesPagtos},
  uRegrasTributacao in '..\..\02 - Modulos\01 - Cadastros\17 - Regras de Tributação\uRegrasTributacao.pas' {FrRegrasTributacao},
  uListaTransportadoras in '..\..\02 - Modulos\01 - Cadastros\18 - Transportadoras\uListaTransportadoras.pas' {FrListaTransportadoras},
  uTipoTransportadora in '..\..\02 - Modulos\01 - Cadastros\18 - Transportadoras\uTipoTransportadora.pas' {FrTipoTransportadora},
  uTransportadoras in '..\..\02 - Modulos\01 - Cadastros\18 - Transportadoras\uTransportadoras.pas' {frTransportadoras},
  uPedidosComprasPrint in '..\..\02 - Modulos\02 - Comercial\01 - Pedidos de Compras\Relatorios\uPedidosComprasPrint.pas' {FrPedidosComprasPrint},
  uFreteOutros in '..\..\02 - Modulos\02 - Comercial\01 - Pedidos de Compras\uFreteOutros.pas' {FrFreteOutros},
  uPedidosCompras in '..\..\02 - Modulos\02 - Comercial\01 - Pedidos de Compras\uPedidosCompras.pas' {FrPedidosCompras},
  uPedidosComprasCab in '..\..\02 - Modulos\02 - Comercial\01 - Pedidos de Compras\uPedidosComprasCab.pas' {FrPedidosComprasCab},
  uPedidosComprasFreteOutros in '..\..\02 - Modulos\02 - Comercial\01 - Pedidos de Compras\uPedidosComprasFreteOutros.pas' {FrPedidosComprasFreteOutros},
  uPedidosComprasGerenciar in '..\..\02 - Modulos\02 - Comercial\01 - Pedidos de Compras\uPedidosComprasGerenciar.pas' {FrPedidosComprasGerenciar},
  uPedidosComprasProdutos.dcu in '..\..\02 - Modulos\02 - Comercial\01 - Pedidos de Compras\uPedidosComprasProdutos.dcu.pas' {FrPedidosComprasProdutos},
  uPedidosVendasPrint in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\Relatorios\uPedidosVendasPrint.pas' {FrPedidosVendasPrint},
  uPedidosVendasCab in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendasCab.pas' {FrPedidosVendasCab},
  uPedidosVendasDataValor in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendasDataValor.pas' {FrPedidosVendasDataValor},
  uPedidosVendasFrete in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendasFrete.pas' {FrPedidosVendasFrete},
  uPedidosVendasFreteOutros in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendasFreteOutros.pas' {FrPedidosVendasFreteOutros},
  uEmissorNfe in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfe.pas' {FrEmissorNfe},
  uEmissorNfeCab in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeCab.pas' {FrEmissorNfeCab},
  uEmissorNfeFreteOutros in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeFreteOutros.pas' {FrEmissorNfeFreteOutros},
  uEmissorNfeFrete in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeFrete.pas' {FremissorNfeFrete},
  uEmissorNfePagtos in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfePagtos.pas' {FrEmissorNfePagtos},
  uEmissorNfeDataValor in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeDataValor.pas' {FrEmissorNfeDataValor},
  uEmissorNfeReferenciadas in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeReferenciadas.pas' {FrEmissorNfeReferenciadas},
  uEmissorNfeInfosAdicionais in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeInfosAdicionais.pas' {FrEmissorNfeInfosAdicionais},
  Biblioteca in '..\Includes\Biblioteca.pas',
  uEmissorNfeStatus in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeStatus.pas' {FrEmissorNfeStatus},
  uEmissorNfeCCe in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeCCe.pas' {FrEmissorNfeCCe},
  uEmissorNfeStatusSefaz in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeStatusSefaz.pas' {FrEmissorNfeStatusSefaz},
  uContasReceber in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\uContasReceber.pas' {FrContasReceber},
  uTiposDocumentos in '..\..\02 - Modulos\01 - Cadastros\19 - Tipos de Documentos\uTiposDocumentos.pas' {FrTiposDocumentos},
  uTiposDocumentosListar in '..\..\02 - Modulos\01 - Cadastros\19 - Tipos de Documentos\uTiposDocumentosListar.pas' {FrTiposDocumentosListar},
  uContasReceberLancto in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\uContasReceberLancto.pas' {FrContasReceberLancto},
  uContasReceberAlteraLancto in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\uContasReceberAlteraLancto.pas' {FrcontasReceberAlteraLancto},
  uContasPagar in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\uContasPagar.pas' {FrContasPagar},
  uContasPagar_Lancar in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\uContasPagar_Lancar.pas' {FrContasPagar_Lancar},
  uContasPagar_Pagar in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\uContasPagar_Pagar.pas' {FrContasPagar_Pagar},
  uContasReceberRecbto in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\uContasReceberRecbto.pas' {FrContasReceberRecebto},
  uPos_Fin_Estoque_Venda in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uPos_Fin_Estoque_Venda.pas' {FrPos_fin_Estoque_Venda},
  uTabela_Precos_II in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uTabela_Precos_II.pas' {FrTabela_Precos_II},
  uFiltro_Tabela_Precos in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uFiltro_Tabela_Precos.pas' {FrFiltro_Tabela_Precos},
  uRel_Produto_Grupos in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uRel_Produto_Grupos.pas' {FrRel_Produtos_Grupos},
  uFiltro_Rel_Produtos in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uFiltro_Rel_Produtos.pas' {FrFiltro_Rel_Produtos},
  uPos_Estoque in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uPos_Estoque.pas' {FrPos_Estoque},
  uFiltro_Movto_Estoque in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uFiltro_Movto_Estoque.pas' {FrFiltro_Movto_Estoque},
  uFiltro_Data_Cli_Ctas_Receber in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\Relatórios\uFiltro_Data_Cli_Ctas_Receber.pas' {FrFiltro_Data_Cli_Ctas_Receber},
  uFiltro_Fornecedor_Ctas_Pagar in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\Relatórios\uFiltro_Fornecedor_Ctas_Pagar.pas' {FrFiltro_Fornecedor_Ctas_Pagar},
  uFiltro_Pos_Estoque in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uFiltro_Pos_Estoque.pas' {FrFiltro_Pos_Estoque},
  uRel_Movto_Estoque in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uRel_Movto_Estoque.pas' {FrRel_Movto_Estoque},
  uCadastroCaixas in '..\..\02 - Modulos\01 - Cadastros\20 - Caixas\uCadastroCaixas.pas' {FrCadastroCaixas},
  uOperadores in '..\..\02 - Modulos\01 - Cadastros\21 - Cadastro de Operadores\uOperadores.pas' {FrOperadores},
  uVendedores in '..\..\02 - Modulos\01 - Cadastros\22 - Cadastro de Vendedores\uVendedores.pas' {FrVendedores},
  Classe.ParamsServidor in '..\..\02 - Modulos\04 - Classes\Classe.ParamsServidor.pas',
  uEmpresas in '..\..\02 - Modulos\01 - Cadastros\01 - Empresas\uEmpresas.pas' {FrEmpresas},
  uRel_Vendedor_Filtro in '..\..\02 - Modulos\03 - Financeiro\03 - Comissão Vendedores\01 - Relatórios\uRel_Vendedor_Filtro.pas' {FrRel_Vendedor_Filtro},
  uRel_Vendedor_Agrupado in '..\..\02 - Modulos\03 - Financeiro\03 - Comissão Vendedores\01 - Relatórios\uRel_Vendedor_Agrupado.pas' {FrRel_Vendedor_Agrupado},
  uOperadorasCartoes in '..\..\02 - Modulos\01 - Cadastros\23 - Operadoras de Cartões\uOperadorasCartoes.pas' {FrOperadorasCartoes},
  uContas_Pagar_Alterar in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\uContas_Pagar_Alterar.pas' {FrContas_Pagar_Alterar},
  uResCaixaGrpData in '..\..\02 - Modulos\03 - Financeiro\04 - Relatórios sobre as Vendas\uResCaixaGrpData.pas' {FrResCaixasGrpData},
  uRel_Vendas_Caixas_Filtro in '..\..\02 - Modulos\03 - Financeiro\04 - Relatórios sobre as Vendas\uRel_Vendas_Caixas_Filtro.pas' {FrRel_Vendas_Caixas_Filtro},
  uOrdemServico in '..\..\02 - Modulos\05 - Ordem de Serviço\uOrdemServico.pas' {FrOrdemServico},
  uOrdemServicoCab in '..\..\02 - Modulos\05 - Ordem de Serviço\uOrdemServicoCab.pas' {FrOrdemServicoCab},
  uOrdemServicoPagtos in '..\..\02 - Modulos\05 - Ordem de Serviço\uOrdemServicoPagtos.pas' {FrOrdemServicoPagtos},
  uOrdemServicoDataValor in '..\..\02 - Modulos\05 - Ordem de Serviço\uOrdemServicoDataValor.pas' {FrOrdemServicoDataValor},
  uOrdemServicoGerenciar in '..\..\02 - Modulos\05 - Ordem de Serviço\uOrdemServicoGerenciar.pas' {FrOrdemServicoGerenciar},
  uOrdemServicoStatus in '..\..\02 - Modulos\05 - Ordem de Serviço\uOrdemServicoStatus.pas' {FrOrdemServicoStatus},
  uRel_Movto_Estoque_Entrada in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uRel_Movto_Estoque_Entrada.pas' {FrRel_Movto_Estoque_Entrada},
  uEmissorNfeProdutos in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeProdutos.pas' {FrEmissorNfeProdutos},
  uOrdemServicoProdutos in '..\..\02 - Modulos\05 - Ordem de Serviço\uOrdemServicoProdutos.pas' {FrOrdemServicoProdutos},
  uOrdemServicoPrint_A in '..\..\02 - Modulos\05 - Ordem de Serviço\Impressões\uOrdemServicoPrint_A.pas' {FrOrdemServicoPrint_A},
  uOrdemServicoAnotacoes in '..\..\02 - Modulos\05 - Ordem de Serviço\uOrdemServicoAnotacoes.pas' {FrOrdemServicoAnotacoes},
  uPlanoContas in '..\..\02 - Modulos\01 - Cadastros\24 - Plano de Contas\uPlanoContas.pas' {FrPlanoContas},
  Vcl.Themes,
  Vcl.Styles,
  uPedidosComprasPagtos in '..\..\02 - Modulos\02 - Comercial\01 - Pedidos de Compras\uPedidosComprasPagtos.pas' {FrPedidosComprasPagtos},
  uPlanoContasNew in '..\..\02 - Modulos\01 - Cadastros\24 - Plano de Contas\uPlanoContasNew.pas' {FrPlanoContasNew},
  uListaPlanoContas in '..\..\02 - Modulos\01 - Cadastros\24 - Plano de Contas\uListaPlanoContas.pas' {FrListaPlanoContas},
  uRel_Filtra_Cliente_Ctas_Receber in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\Relatórios\uRel_Filtra_Cliente_Ctas_Receber.pas' {FrRel_Filtra_Cliente_Ctas_Receber},
  uRel_Vencto_Ctas_Receber in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\Relatórios\uRel_Vencto_Ctas_Receber.pas' {FrRel_Vencto_Ctas_Receber},
  uRel_Cliente_Ctas_Receber in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\Relatórios\uRel_Cliente_Ctas_Receber.pas' {FrRel_Cliente_Ctas_Receber},
  uRel_Vencto_Ctas_Pagar in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\Relatórios\uRel_Vencto_Ctas_Pagar.pas' {FrRel_Vencto_Ctas_Pagar},
  uRel_Fornecedor_Ctas_Pagar in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\Relatórios\uRel_Fornecedor_Ctas_Pagar.pas' {FrRel_Fornecedor_Ctas_Pagar},
  uRel_Filtro_For_Ctas_Pagar in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\Relatórios\uRel_Filtro_For_Ctas_Pagar.pas' {FrRel_Filtro_For_Ctas_Pagar},
  uContasReceberRemoverFaturamento in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\uContasReceberRemoverFaturamento.pas' {FrContasReceberRemoverFaturamento},
  uContasPagarExcluir in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\uContasPagarExcluir.pas' {FrContasPagarExcluir},
  uProdutosKits in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\uProdutosKits.pas' {FrProdutosKit},
  uResCaixaGrpVendedor in '..\..\02 - Modulos\03 - Financeiro\04 - Relatórios sobre as Vendas\uResCaixaGrpVendedor.pas' {FrResCaixasGrpVendedor},
  uResCaixasDetalhado in '..\..\02 - Modulos\03 - Financeiro\04 - Relatórios sobre as Vendas\uResCaixasDetalhado.pas' {FrResCaixasDetalhado},
  uPlanoContasPadroes in '..\..\02 - Modulos\03 - Financeiro\05 - Planos de Contas\uPlanoContasPadroes.pas' {FrPlanoContasPadroes},
  uProdutoEtiquetas3x21 in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\01 - Etiquetas\uProdutoEtiquetas3x21.pas' {FrProdutoEtiqueta3x21},
  uPrFiltroEtiquetas3x21 in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\01 - Etiquetas\uPrFiltroEtiquetas3x21.pas' {FrPrdFiltroEtiquetas3x21},
  uConfigFinanceiro in '..\..\02 - Modulos\03 - Financeiro\06 - Configurações\uConfigFinanceiro.pas' {FrConfigFinanceiro},
  Classe.Financeiro in '..\Classes\Classe.Financeiro.pas',
  uContasPagarJuros in '..\..\02 - Modulos\03 - Financeiro\02 - Contas a Pagar\uContasPagarJuros.pas' {FrContasPagarJuros},
  uContasCaixas in '..\..\02 - Modulos\01 - Cadastros\25 - Contas Caixas\uContasCaixas.pas' {FrContasCaixas},
  uContasReceberJuros in '..\..\02 - Modulos\03 - Financeiro\01 - Contas a Receber\uContasReceberJuros.pas' {FrContasReceberJuros},
  uDreSintetico01 in '..\..\02 - Modulos\03 - Financeiro\07 - Dre - Demonstrativo de Resultados\uDreSintetico01.pas' {FrDreSintetico01},
  uDreFiltro in '..\..\02 - Modulos\03 - Financeiro\07 - Dre - Demonstrativo de Resultados\uDreFiltro.pas' {frDreFiltro},
  uImportarNfe in '..\..\02 - Modulos\02 - Comercial\04 - Importar NF-e\uImportarNfe.pas' {FrImportarNfe},
  uImportarNfeAtualizar in '..\..\02 - Modulos\02 - Comercial\04 - Importar NF-e\uImportarNfeAtualizar.pas' {FrImportarUpdateEstoque},
  uImportarNFeAjustes in '..\..\02 - Modulos\02 - Comercial\04 - Importar NF-e\uImportarNFeAjustes.pas' {FrImportarNFeAjustes},
  Classe.Produtos in '..\Classes\Classe.Produtos.pas',
  uEmpresaInicio in '..\Forms\Empresa Inicio\uEmpresaInicio.pas' {FrEmpresaInicio},
  uMovtoEstoque in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\02 - Movimentação do Estoque\uMovtoEstoque.pas' {FrMovtoEstoque},
  uConfigEstoque in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\03 - Configurar Estoque\uConfigEstoque.pas' {frConfigEstoque},
  uMovtoEstoqueAltInc in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\02 - Movimentação do Estoque\uMovtoEstoqueAltInc.pas' {frmovtoEstoqueAltInc},
  uOrdemServicoConfig in '..\..\02 - Modulos\05 - Ordem de Serviço\uOrdemServicoConfig.pas' {FrOrdemServicoConfig},
  Classe.OrdensServicos in '..\Classes\Classe.OrdensServicos.pas' {uPedidosVendasLstProdutos in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendasLstProdutos.pas' {FrPedidosVendasLstProdutos},
  uPedidosVendasLstProdutos in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendasLstProdutos.pas' {FrPedidosVendasLstProdutos},
  uPedidosVendasProdutos in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendasProdutos.pas' {uPedidosVendasProdutos},
  Classe.PedidoVendas in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\Classes\Classe.PedidoVendas.pas',
  uRel_Movto_Estoque_For in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uRel_Movto_Estoque_For.pas' {FrRel_Movto_Estoque_For},
  uFiltro_Movto_Estoque_For in '..\..\02 - Modulos\01 - Cadastros\06 - Produtos\Relatórios\uFiltro_Movto_Estoque_For.pas' {FrFiltro_Movto_Estoque_For},
  uPedidosVendasGerenciar in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendasGerenciar.pas' {FrPedidosVendasGerenciar},
  uPedidosVendasPagtos in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendasPagtos.pas' {FrPedidosVendasPagtos},
  uPedidosVendas in '..\..\02 - Modulos\02 - Comercial\02 - Pedidos de Vendas\uPedidosVendas.pas' {FrPedidosVendas},
  uEmissorMDFe in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uEmissorMDFe.pas' {FrEmissorMDFe},
  uCabecalhoMDFe in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uCabecalhoMDFe.pas' {FrCabecalhoMDFe},
  Classe.ParametrosMDFe in '..\Classes\Classe.ParametrosMDFe.pas',
  uMunicipios in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uMunicipios.pas' {FrMunicipios},
  uPercursoMDFe in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uPercursoMDFe.pas' {FrPercurso},
  uPercursoUF in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uPercursoUF.pas' {FrPercursoUF},
  uDoctos in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uDoctos.pas' {FrDoctos},
  uChavesNFe in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uChavesNFe.pas' {FrChavesNFe},
  uVeiculoTracao in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uVeiculoTracao.pas' {FrVeiculoTracao},
  uMotorista in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uMotorista.pas' {FrMotoristas},
  uEncerramento in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uEncerramento.pas' {FrEncerramento},
  uEmissorNfeCancelar in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uEmissorNfeCancelar.pas' {FrEmissorNfeCancelar},
  uEmissorMdfeCancelar in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uEmissorMdfeCancelar.pas' {FrEmissorMdfeCancelar},
  uChaveNFe in '..\..\02 - Modulos\02 - Comercial\05 - MDF-e Emissor\uChaveNFe.pas' {FrChaveNFe},
  uListagemNFe in '..\..\02 - Modulos\02 - Comercial\03 - Notas Fiscais\uListagemNFe.pas' {FrListagemNFe};

{$R *.res}

var
   aQuery: TFDQuery;

begin
   Application.Initialize;
   Application.MainFormOnTaskbar := false;
   Application.Title := 'Techcore-RTG';
   Application.CreateForm(TFrModuloRet, FrModuloRet);
  try
      // Checa se existem empresas cadastradas
      aQuery := TFDQuery.Create(nil);
      aQuery.Connection := FrModuloRet.DBConexao;
      aQuery.SQL.Add('SELECT 1 FROM C000501');
      aQuery.Open();

      if aQuery.IsEmpty then
         Application.MessageBox('Não é possível continuar sem antes efetuar o cadastro da empresa.', 'TechCore-RTG', mb_IconStop or mb_ok)
      else
      begin
         Application.CreateForm(TFrPrincipal, FrPrincipal);
         Application.Run;
      end;

   finally
      FreeAndNil(aQuery);
   end;

end.
