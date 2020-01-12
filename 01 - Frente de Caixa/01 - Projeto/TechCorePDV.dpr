program TechCorePDV;

uses
  Vcl.Forms,
  uPrincipal in '..\02 - Modulos\01 - Formulário Principal\uPrincipal.pas' {FrPrincipal},
  uModulo in '..\02 - Modulos\00 - Data Modulos\uModulo.pas' {FrModulo: TDataModule},
  uConfigConexoes in '..\02 - Modulos\03 - Configurar Conexões\uConfigConexoes.pas' {FrConfigServer},
  eSenhaAbertura in '..\02 - Modulos\04 - Senha de Abertura\eSenhaAbertura.pas' {FrSenhaAbertura},
  Classe.Caixa in '..\02 - Modulos\02 - Classes\Classe.Caixa.pas',
  Classe.Empresa in '..\02 - Modulos\02 - Classes\Classe.Empresa.pas',
  Classe.Operador in '..\02 - Modulos\02 - Classes\Classe.Operador.pas',
  uSenhaConfig in '..\02 - Modulos\05 - Senha Configurações\uSenhaConfig.pas' {FrSenhaConfig},
  uConfigCaixa in '..\02 - Modulos\06 - Configurar Caixas\uConfigCaixa.pas' {FrConfigCaixa},
  uVendas in '..\02 - Modulos\07 - Tela de Vendas\uVendas.pas' {FrVendas},
  uAtualizarPDV in '..\02 - Modulos\08 - Atualizar PDV\uAtualizarPDV.pas' {FrAtualizarPDV},
  uBuscarProdutos in '..\02 - Modulos\09 - Buscar Produtos\uBuscarProdutos.pas' {FrBuscarProduto},
  Classe.Cupom in '..\02 - Modulos\02 - Classes\Classe.Cupom.pas',
  uCpfCnpjCliente in '..\02 - Modulos\10 - Cpf ou Cnpj Cliente\uCpfCnpjCliente.pas' {FrCpfCnpjCliente},
  Classe.ProdutosCupom in '..\02 - Modulos\02 - Classes\Classe.ProdutosCupom.pas',
  uSenhaOperador in '..\02 - Modulos\11 - Autenticação do Usuario\uSenhaOperador.pas' {FrSenhaOperador},
  uCancelaItem in '..\02 - Modulos\12 - Cancela Item\uCancelaItem.pas' {FrCancelaItem},
  Classe.Vendedor in '..\02 - Modulos\02 - Classes\Classe.Vendedor.pas',
  uVendedores in '..\02 - Modulos\14 - Vendedores\uVendedores.pas' {FrVendedores},
  uFormaPagtos in '..\02 - Modulos\15 - Pagamentos\uFormaPagtos.pas' {FrFormaPagtos},
  uFormaPagtosValor in '..\02 - Modulos\15 - Pagamentos\uFormaPagtosValor.pas' {FrFormaPagtoValor},
  uDesconto in '..\02 - Modulos\13 - Desconto\uDesconto.pas' {FrDesconto},
  uSair in '..\02 - Modulos\16 - Sair do Sistema\uSair.pas' {FrSair},
  Classe.Configuracoes in '..\02 - Modulos\02 - Classes\Classe.Configuracoes.pas',
  uDescontoUnitario in '..\02 - Modulos\17 - Desconto sobre o Produto\uDescontoUnitario.pas' {FrDescontoUnitario},
  uSangria in '..\02 - Modulos\19 - Sangria\uSangria.pas' {FrSangria},
  uRetirada in '..\02 - Modulos\20 - Retirada\uRetirada.pas' {FrRetirada},
  uSuprimento in '..\02 - Modulos\21 - Suprimentos\uSuprimento.pas' {FrSuprimento},
  uMenuResumo in '..\02 - Modulos\22 - Resumo do Caixa\uMenuResumo.pas' {FrMenuResumo},
  uListarCupons in '..\02 - Modulos\23 - Lista de Cupons\uListarCupons.pas' {FrListarCupons},
  uSendCuponsEmail in '..\02 - Modulos\25 - E-mail - Enviar a Contabilidade\uSendCuponsEmail.pas' {FrSendCuponsEmail},
  uPrintResumoCaixa in '..\02 - Modulos\24 - Imprimir Fechamento\uPrintResumoCaixa.pas' {FrPrintResumoCaixa},
  uRelCupons in '..\02 - Modulos\25 - E-mail - Enviar a Contabilidade\uRelCupons.pas' {FrRelCupons},
  uImportarVendaCelular in '..\02 - Modulos\27 - Importar Venda Celular\uImportarVendaCelular.pas' {FrImportarVendaCelular},
  uImportarVendaCelularPesquisar in '..\02 - Modulos\27 - Importar Venda Celular\uImportarVendaCelularPesquisar.pas' {FrImportarVendaCelularPesquisar},
  uRelatorioCaixa in '..\02 - Modulos\28 - Relatório do Caixa\uRelatorioCaixa.pas' {FrRelatorioCaixa},
  uConfigCaixaListar in '..\02 - Modulos\06 - Configurar Caixas\uConfigCaixaListar.pas' {FrConfigCaixaListar},
  uVendasConfirmar in '..\02 - Modulos\07 - Tela de Vendas\uVendasConfirmar.pas' {FrVendasConfirmar},
  uRestauraItem in '..\02 - Modulos\12 - 1 Restaurar Item\uRestauraItem.pas' {FrRestauraItem},
  Classe.Sangria in '..\02 - Modulos\19 - Sangria\Classe.Sangria.pas',
  Classe.Retirada in '..\02 - Modulos\20 - Retirada\Classe.Retirada.pas',
  Classe.Suprimentos in '..\02 - Modulos\21 - Suprimentos\Classe.Suprimentos.pas';

{$R *.res}

begin
   Application.Initialize;
   Application.MainFormOnTaskbar := True;
   Application.CreateForm(TFrModulo, FrModulo);
   Application.CreateForm(TFrPrincipal, FrPrincipal);
   Application.Run;
end.
