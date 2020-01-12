unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExExtCtrls, JvImage, Vcl.StdCtrls, Vcl.Buttons, PngSpeedButton,
  Vcl.Imaging.jpeg, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  RzStatus, RzPanel, JvComponentBase, JvComputerInfoEx, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, ACBrBase, ACBrPosPrinter,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, ACBrUtil, System.DateUtils, uDWAbout, uRESTDWPoolerDB,
  uDWConstsData, Vcl.Grids, Vcl.DBGrids, IdHTTP, RzLaunch;

const
   WM_MESSAGE_CLOSE = WM_APP + 500;

type
  TFrPrincipal = class(TForm)
    pn_top: TPanel;
    lbTitulo: TLabel;
    JvImage1: TJvImage;
    JvImage2: TJvImage;
    bt_abrir_caixa: TPngSpeedButton;
    pn_menu: TPanel;
    SqlAux: TFDQuery;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    StsRetaguarda: TRzGlyphStatus;
    StatusServer: TImageList;
    RzStatusPane2: TRzStatusPane;
    RzStatusPane3: TRzStatusPane;
    StsLocal: TRzGlyphStatus;
    PngSpeedButton1: TPngSpeedButton;
    Timer1: TTimer;
    bt_resumo: TPngSpeedButton;
    bt_sair: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    IdTCPClient1: TIdTCPClient;
    QueryStatusCarga: TFDMemTable;
    bt_encerrar_caixa: TPngSpeedButton;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    PngSpeedButton2: TPngSpeedButton;
    Action7: TAction;
    RzStatusPane4: TRzStatusPane;
    rVersion: TRzVersionInfo;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    rzLauncher: TRzLauncher;
    procedure JvImage1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action1Update(Sender: TObject);
    procedure Action6Update(Sender: TObject);
    procedure Action2Update(Sender: TObject);
    procedure Action3Update(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QueryStatusCargaAfterPost(DataSet: TDataSet);
    procedure Action7Execute(Sender: TObject);
  private

  public

  end;


var
  FrPrincipal: TFrPrincipal;

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        22/02/2019
      Descrição:  Variaveis para tratamento dos botões do caixa
   ------------------------------------------------------------------------------------- }
   vr_existem_empresas     : Boolean;
   vr_existem_caixas       : Boolean;
   vr_caixa_configurados   : Boolean;
   vr_existem_operadores   : Boolean;
   vr_existem_vendas       : Boolean;

   // para tratar os caixas abertos
   vr_caixa_aberto         : Boolean;
   vr_caixa_aberto_data    : TDateTime;
   vr_caixa_aberto_valor   : Real;
   vr_caixa_aberto_oper    : Integer;

   VR_ID_ABERTURA     : string;
   vr_tipo_impressao  : Integer;
   vr_rodape_texto    : String;

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        22/02/2019
      Descrição:  Variaveis e procedimentos Globais
   ------------------------------------------------------------------------------------- }
   eProduto        : String;
   sTexto_anterior : string;
   clCor_anterior  : TColor;

   FBuffer     : TStringList;
   Query       : TFDQuery;
   PosPrinter  : TACBrPosPrinter;

   procedure Imprime_display(texto: string; cor_da_fonte: tColor);
   procedure Imprime_display_anterior;
   procedure resumo_caixa_cabecalho(aData, bData : TDateTime);
   procedure resumo_caixa_vendas(aData, bData : TDateTime);
   procedure resumo_caixa_formas(aData, bData : TDateTime);
   procedure resumo_caixa_vendedores(aData, bData : TDateTime);
   procedure resumo_caixa_rodape;
   procedure resumo_caixa_imprimir(aData, bData : TDateTime);

implementation

uses
   eSenhaAbertura, uSenhaConfig, uModulo, Classe.Empresa, Classe.Operador, Classe.Caixa, uVendas,
   uSair, uConfigCaixa, uAtualizarPDV, uMenuResumo, uListarCupons, uSendCuponsEmail,
   uPrintResumoCaixa, uRelatorioCaixa, uRelCupons;

{$R *.dfm}

procedure Imprime_display_anterior;
begin
   Imprime_display(sTexto_anterior, clCor_anterior);
end;

procedure Imprime_display(texto: string; cor_da_fonte: tColor);
var
   I : Integer;
begin

   // armazena os dados atuais do display para enventual uso
   sTexto_anterior := FrVendas.lbTitulo.Caption;
   clCor_anterior  := FrVendas.lbTitulo.Font.color;
   {if img_erro.Visible = true then TiImagem_anterior := tiErro;
   if img_alerta.visible = true then TiImagem_anterior := tiAlerta;
   if img_info.Visible = true then TiImagem_anterior := tiInfo;
   if img_livre.Visible = true then TiImagem_anterior := tiLivre;
   if img_ok.Visible = true then TiImagem_anterior := tiOk;
   if img_fechado.Visible = true then TiImagem_anterior := tiFechado;
   if img_excluir.visible = true then TiImagem_anterior := tiExcluir;
   if img_pergunta.visible = true then TiImagem_anterior := tiPergunta;
   if img_cliente.visible = true then TiImagem_anterior := tiCliente;
   if img_pgto.visible = true then TiImagem_anterior := tiPgto;
   if img_peso.visible = true then TiImagem_anterior := tiPeso;


   // inicia a impressao do display
   img_erro.Visible := false;
   img_alerta.visible := false;
   img_info.Visible := false;
   img_livre.Visible := false;
   img_ok.Visible := false;
   img_fechado.Visible := false;
   img_excluir.visible := false;
   img_pergunta.visible := false;
   img_cliente.visible := false;
   img_pgto.visible := false;
   img_peso.Visible := false;

   if Imagem = tiLivre then img_livre.Visible := true;
   if Imagem = tiErro then img_erro.Visible := true;
   if Imagem = tiAlerta then img_alerta.visible := true;
   if Imagem = tiInfo then img_info.Visible := true;
   if Imagem = tiOk then img_ok.Visible := true;
   if Imagem = tiFechado then img_fechado.Visible := true;
   if Imagem = tiExcluir then img_excluir.Visible := true;
   if Imagem = tiPergunta then img_pergunta.Visible := true;
   if Imagem = tiCliente then img_cliente.Visible := true;
   if Imagem = tiPgto then img_pgto.Visible := true;
   if Imagem = tiPeso then img_peso.visible := true;
   }

   FrVendas.lbTitulo.Caption    := AnsiUpperCase(texto);
   FrVendas.lbTitulo.Font.Color := cor_da_fonte;
   FrVendas.lbTitulo.font.size  := 28;
   FrVendas.lbTitulo.Top        := 13;

   try
      while FrVendas.lbTitulo.width > 720 do
      begin
         FrVendas.lbTitulo.font.size := FrVendas.lbTitulo.font.size - 1;
         FrVendas.lbTitulo.Top := FrVendas.lbTitulo.Top + 1;
      end;
   finally

   end;

   Application.ProcessMessages;

end;

procedure resumo_caixa_cabecalho(aData, bData: TDateTime);
begin
   // Inicia a objeto de strings
   FBuffer := TStringList.Create;

   // Inicia a criação do cabeçalho
   FBuffer.Clear;

   // Titulo do cupom
   FBuffer.Add('<c>FONTE CONDENSADA</c>');
   FBuffer.Add('<c>' + FEmpresaClass.RazaoSocial);
   FBuffer.Add('<c>' + FEmpresaClass.NomeFantasia);
   FBuffer.Add('<c>' + FEmpresaClass.Endereco + ',' + Format('%.3d', [FEmpresaClass.Numero]));
   FBuffer.Add('<c>' + FEmpresaClass.Bairro + ' - ' + FEmpresaClass.Cidade + ' - ' + 'CEP: ' + FEmpresaClass.Cep);

   FBuffer.Add('</linha_simples>');
   FBuffer.Add('</fn><n>NÃO É DOCUMENTO FISCAL</n>');
   FBuffer.Add('</fn><n>RELATÓRIO GERENCIAL</n>');
   FBuffer.Add('</fb><c>' + FormatDateTime('c', Now));
   FBuffer.Add('</ae><c>Data da Abertura: ' + FormatDateTime('c', ObjCaixa.Caixa_Abert_Data));
   FBuffer.Add(
      '</ae><c>'
      + 'Lj: '
      + Format('%.2d', [FEmpresaClass.Codigo])
      + ' '
      + 'Cx: '
      + Format('%.2d', [ObjCaixa.Caixa_Codigo])
      + ' '
      + 'Período: '
      + DateToStr(aData)
      + ' - '
      + DateTostr(bData)
   );
end;

procedure resumo_caixa_vendas(aData, bData : TDateTime);
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       03/03/2019
      Descrição:  Carrega os dados dos movimentos do caixa no período
   ------------------------------------------------------------------------------------- }
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT');
   Query.SQL.Add('  SUM(F_VLR_SUBTOTAL)  AS F_VLR_SUBTOTAL,');
   Query.SQL.Add('  SUM(F_VLR_TROCO)     AS F_VLR_TROCO,');
   Query.SQL.Add('  SUM(F_VLR_DESCONTO)  AS F_VLR_DESCONTO,');
   Query.SQL.Add('  COALESCE((SELECT F_ABER_VALOR   FROM C000001 WHERE CAST(F_ABER_DATA AS DATE) BETWEEN :ADATA AND :FDATA AND ID_EMPRESA = :ID_EMPRESA),0) AS ABE_VALOR,');
   Query.SQL.Add('  COALESCE((SELECT SUM(SNG_VALOR) FROM C000053 WHERE CAST(SNG_DATA AS DATE)    BETWEEN :ADATA AND :FDATA AND ID_EMPRESA = :ID_EMPRESA),0) AS SNG_VALOR,');
   Query.SQL.Add('  COALESCE((SELECT SUM(RET_VALOR) FROM C000054 WHERE CAST(RET_DATA AS DATE)    BETWEEN :ADATA AND :FDATA AND ID_EMPRESA = :ID_EMPRESA),0) AS RET_VALOR,');
   Query.SQL.Add('  COALESCE((SELECT SUM(SUP_VALOR) FROM C000055 WHERE CAST(SUP_DATA AS DATE)    BETWEEN :ADATA AND :FDATA AND ID_EMPRESA = :ID_EMPRESA),0) AS SUP_VALOR');
   Query.SQL.Add('FROM');
   Query.SQL.Add('  C000050');
   Query.SQL.Add('WHERE');
   Query.SQL.Add('  CAST(F_CUPOM_DATA AS DATE) BETWEEN :ADATA AND :FDATA');
   Query.SQL.Add('AND');
   Query.SQL.Add('  ID_EMPRESA = :ID_EMPRESA');

   // Ajusta conforme o tipo de impressão
   if vr_tipo_impressao = 2 then
   begin
      Query.SQL.Add('AND');
      Query.SQL.Add('   ID_ABERTURA = :ID_ABERTURA');
      Query.ParamByName('ID_ABERTURA').AsString := vr_id_abertura;
   end;

   Query.ParamByName('ADATA').AsDateTime     := aData;
   Query.ParamByName('FDATA').AsDateTime     := bData;
   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.Open();

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       03/03/2019
      Descrição:  Prepara o buffer de impressão
   ------------------------------------------------------------------------------------- }
   FBuffer.Add('</linha_simples>');
   FBuffer.Add('</ce></fn><n>' + '**** MOVIMENTO DO CAIXA **** </n>');

   FBuffer.Add('<c>' +
      PadSpace('Total Bruto: '
         + '|'
         + FormatFloatBr(
               Query.FieldByName('f_vlr_subtotal').AsFloat +
               Query.FieldByName('f_vlr_troco').AsFloat
           )
         + '(=)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );
   FBuffer.Add('<c>' +
      PadSpace('Valor dos Trocos: '
         + '|'
         + FormatFloatBr(Query.FieldByName('f_vlr_troco').AsFloat)
         + '(-)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );
   FBuffer.Add('<c>' +
      PadSpace('Valor dos Descontos: '
         + '|'
         + FormatFloatBr(Query.FieldByName('f_vlr_desconto').AsFloat)
         + '(-)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );
   FBuffer.Add('<c>' +
      PadSpace('Valor das Retiradas: '
         + '|'
         + FormatFloatBr(Query.FieldByName('ret_valor').AsFloat)
         + '(-)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );
   FBuffer.Add('<c>' +
      PadSpace('Valor das Sangrias: '
         + '|'
         + FormatFloatBr(Query.FieldByName('sng_valor').AsFloat)
         + '(-)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );
   FBuffer.Add('<c>' +
      PadSpace('Valor dos Suprimentos: '
         + '|'
         + FormatFloatBr(Query.FieldByName('sup_valor').AsFloat)
         + '(+)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );
   FBuffer.Add('<c>' +
      PadSpace('Valor Abertura: '
         + '|'
         + FormatFloatBr(Query.FieldByName('abe_valor').AsFloat)
         + '(+)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );
   FBuffer.Add('<c>' +
      PadSpace('Total Líquido: '
         + '|'
         + FormatFloatBr(
               Query.FieldByName('f_vlr_subtotal').AsFloat -
               Query.FieldByName('f_vlr_desconto').AsFloat +
               Query.FieldByName('abe_valor').AsFloat      -
               Query.FieldByName('sng_valor').AsFloat      -
               Query.FieldByName('ret_valor').AsFloat      +
               Query.FieldByName('sup_valor').AsFloat
           )
         + '(=)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );

end;

procedure resumo_caixa_formas(aData, bData : TDateTime);
var
   StrForma : String;
begin
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT');
   Query.SQL.Add('  ID_FORMA_PAGTO,');
   Query.SQL.Add('  F_DESCRICAO,');
   Query.SQL.Add('  SUM(F_PARCELA_VALOR) AS F_VALOR');
   Query.SQL.Add('FROM');
   Query.SQL.Add('  VW_REL_FORMA_PAGTO');
   Query.SQL.Add('WHERE');
   Query.SQL.Add('  CAST(F_CUPOM_DATA AS DATE) BETWEEN :ADATA AND :FDATA');
   Query.SQL.Add('AND');
   Query.SQL.Add('  ID_EMPRESA = :ID_EMPRESA');

   if vr_tipo_impressao = 2 then
   begin
      Query.SQL.Add('AND');
      Query.SQL.Add('   ID_ABERTURA = :ID_ABERTURA');
   end;

   Query.SQL.Add('GROUP BY');
   Query.SQL.Add('  F_DESCRICAO, ID_FORMA_PAGTO');
   Query.SQL.Add('ORDER BY');
   Query.SQL.Add('  ID_FORMA_PAGTO ASC');

   // Ajusta conforme o tipo de impressão
   if vr_tipo_impressao = 2 then
      Query.ParamByName('ID_ABERTURA').AsString := vr_id_abertura;

   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('ADATA').AsDateTime     := aData;
   Query.ParamByName('FDATA').AsDateTime     := bData;
   Query.Open();

   FBuffer.Add('</linha_simples>');
   FBuffer.Add('</ce></fn><n>' + '**** FORMAS DE PAGAMENTOS **** </n>');

   repeat

      case Query.FieldByName('id_forma_pagto').AsInteger of
          1 : Strforma := 'Dinheiro';
          2 : Strforma := 'Cheque';
          3 : Strforma := 'Cartao de Credito';
          4 : Strforma := 'Cartao de Debito';
          5 : Strforma := 'Credito Loja';
         10 : Strforma := 'Vale Alimentacao';
         11 : Strforma := 'Vale Refeicao';
         12 : Strforma := 'Vale Presente';
         14 : Strforma := 'Outros';
      end;

      FBuffer.Add('</ae><c>' +
         PadSpace(Strforma + ':'
            + '|'
            + FormatFloatBr(Query.FieldByName('f_valor').AsFloat),
            Trunc(PosPrinter.ColunasFonteCondensada),
            '|'
         )
      );

      Query.Next;
   until ( Query.Eof );
end;

procedure resumo_caixa_vendedores(aData, bData : TDateTime);
begin
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT');
   Query.SQL.Add('  FRM_DESCRICAO,');
   Query.SQL.Add('  SUM(FRM_PARCELA_VALOR) AS FRM_PARCELA_VALOR');
   Query.SQL.Add('FROM');
   Query.SQL.Add('  VW_REL_VENDEDORES');
   Query.SQL.Add('WHERE');
   Query.SQL.Add('  F_CUPOM_STATUS = 1');
   Query.SQL.Add('AND');
   Query.SQL.Add('  ID_EMPRESA     = :ID_EMPRESA');
   Query.SQL.Add('AND');
   Query.SQL.Add('  CAST(F_CUPOM_DATA AS DATE) BETWEEN :ADATA AND :FDATA');
   Query.SQL.Add('AND');
   Query.SQL.Add('  F_CUPOM_STATUS = :F_CUPOM_STATUS');
   Query.SQL.Add('GROUP BY');
   Query.SQL.Add('  F_APELIDO');
   Query.ParamByName('ID_CAIXA').AsInteger       := ObjCaixa.Caixa_ID;
   Query.ParamByName('ID_EMPRESA').AsInteger     := FEmpresaClass.ID;
   Query.ParamByName('ADATA').AsDateTime         := aData;
   Query.ParamByName('FDATA').AsDateTime         := bData;
   Query.ParamByName('F_CUPOM_STATUS').AsInteger := 1;
   Query.Open();

   FBuffer.Add('</linha_simples>');
   FBuffer.Add('</ce></fn><n>' + '**** RESUMO POR VENDEDOR **** </n>');

   repeat

      FBuffer.Add('</ae><c><n>' + Query.FieldByName('f_apelido').AsString + '</n>');
      FBuffer.Add('</ae><c>' +
         PadSpace('Total Bruto: '
            + '|'
            + FormatFloatBr(Query.FieldByName('f_vlr_venda').AsFloat)
            + '(=)',
            Trunc(PosPrinter.ColunasFonteCondensada),
            '|'
         )
      );

      FBuffer.Add('</ae><c>' +
         PadSpace('Total dos Descontos: '
            + '|'
            + FormatFloatBr(Query.FieldByName('f_vlr_desconto').AsFloat)
            + '(-)',
            Trunc(PosPrinter.ColunasFonteCondensada),
            '|'
         )
      );

      FBuffer.Add('</ae><c>' +
         PadSpace('Total Líquido: '
            + '|'
            + FormatFloatBr(Query.FieldByName('f_vlr_liquido').AsFloat)
            + '(=)',
            Trunc(PosPrinter.ColunasFonteCondensada),
            '|'
         )
      );

      Query.Next;
   until ( Query.Eof );
end;

procedure resumo_caixa_totalizado(aData, bData : TDateTime);
var
   StrForma : String;
begin
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT');
   Query.SQL.Add('  COALESCE(SUM(F_PARCELA_VALOR),0) AS F_VLR_DINHEIRO,');
   Query.SQL.Add('  COALESCE((SELECT F_ABER_VALOR   FROM C000001 WHERE CAST(F_ABER_DATA AS DATE) BETWEEN :ADATA AND :FDATA AND ID_EMPRESA = :ID_EMPRESA),0) AS ABE_VALOR,');
   Query.SQL.Add('  COALESCE((SELECT SUM(F_VLR_TROCO) FROM C000050 WHERE CAST(F_CUPOM_DATA AS DATE) BETWEEN :ADATA AND :FDATA AND ID_EMPRESA = :ID_EMPRESA),0) AS F_VLR_TROCO,');
   Query.SQL.Add('  COALESCE((SELECT SUM(SNG_VALOR) FROM C000053 WHERE CAST(SNG_DATA AS DATE) BETWEEN :ADATA AND :FDATA AND ID_EMPRESA = :ID_EMPRESA),0) AS SNG_VALOR,');
   Query.SQL.Add('  COALESCE((SELECT SUM(RET_VALOR) FROM C000054 WHERE CAST(RET_DATA AS DATE) BETWEEN :ADATA AND :FDATA AND ID_EMPRESA = :ID_EMPRESA),0) AS RET_VALOR,');
   Query.SQL.Add('  COALESCE((SELECT SUM(SUP_VALOR) FROM C000055 WHERE CAST(SUP_DATA AS DATE) BETWEEN :ADATA AND :FDATA AND ID_EMPRESA = :ID_EMPRESA),0) AS SUP_VALOR');
   Query.SQL.Add('FROM');
   Query.SQL.Add('  VW_REL_FORMA_PAGTO');
   Query.SQL.Add('WHERE');
   Query.SQL.Add('  CAST(F_CUPOM_DATA AS DATE) BETWEEN :ADATA AND :FDATA');
   Query.SQL.Add('AND');
   Query.SQL.Add('  ID_EMPRESA = :ID_EMPRESA');
   Query.SQL.Add('AND');
   Query.SQL.Add('  F_CODIGO   = 1');

   // Ajusta conforme o tipo de impressão
   if vr_tipo_impressao = 2 then
   begin
      Query.SQL.Add('AND');
      Query.SQL.Add('   ID_ABERTURA = :ID_ABERTURA');
      Query.ParamByName('ID_ABERTURA').AsString := vr_id_abertura;
   end;

   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('ADATA').AsDateTime     := aData;
   Query.ParamByName('FDATA').AsDateTime     := bData;
   Query.Open();

   FBuffer.Add('</linha_simples>');
   FBuffer.Add('</ce></fn><n>' + '**** DINHEIRO EM CAIXA **** </n>');

   FBuffer.Add('</ae><c>' +
      PadSpace('Subtotal:'
         + '|'
         + FormatFloatBr(Query.FieldByName('f_vlr_dinheiro').AsFloat)
         + '(=)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );

   FBuffer.Add('</ae><c>' +
      PadSpace('Troco:'
         + '|'
         + FormatFloatBr(Query.FieldByName('f_vlr_troco').AsFloat)
         + '(-)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );

   FBuffer.Add('</ae><c>' +
      PadSpace('Sangria:'
         + '|'
         + FormatFloatBr(Query.FieldByName('sng_valor').AsFloat)
         + '(-)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );

   FBuffer.Add('</ae><c>' +
      PadSpace('Retirada:'
         + '|'
         + FormatFloatBr(Query.FieldByName('ret_valor').AsFloat)
         + '(-)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );

   FBuffer.Add('</ae><c>' +
      PadSpace('Suprimento:'
         + '|'
         + FormatFloatBr(Query.FieldByName('sup_valor').AsFloat)
         + '(+)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );

   FBuffer.Add('</ae><c>' +
      PadSpace('Valor Abertura:'
         + '|'
         + FormatFloatBr(Query.FieldByName('abe_valor').AsFloat)
         + '(+)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );

   FBuffer.Add('</ae><c>' +
      PadSpace('Líqudio:'
         + '|'
         + FormatFloatBr(
               Query.FieldByName('f_vlr_dinheiro').AsFloat -
               Query.FieldByName('f_vlr_troco').AsFloat -
               Query.FieldByName('sng_valor').AsFloat   -
               Query.FieldByName('ret_valor').AsFloat   +
               Query.FieldByName('abe_valor').AsFloat   +
               Query.FieldByName('sup_valor').AsFloat
          )
          + '(=)',
         Trunc(PosPrinter.ColunasFonteCondensada),
         '|'
      )
   );
end;

procedure resumo_caixa_rodape;
begin
   if vr_rodape_texto <> '' then
   begin
      FBuffer.Add('</linha_simples>');
      FBuffer.Add('<ae><c>' + vr_rodape_texto);
   end;

   FBuffer.Add('</linha_simples>');
   FBuffer.Add('TechCore-PDV - http://techcore.com.br');
end;

procedure resumo_caixa_imprimir(aData, bData : TDateTime);
var
   i,n : Integer;
begin

   with PosPrinter do
   begin

      if Ativo then
         Desativar;

      Porta  := ObjCaixa.Caixa_Printer_Porta_G;
      Modelo := TACBrPosPrinterModelo(ObjCaixa.Caixa_Printer_Model_G);

      if Modelo = ppEscPosEpson  then
      begin
         EspacoEntreLinhas := 50;
         LinhasEntreCupons := 5;
      end;

      if Modelo = ppEscBematech then
      begin
         EspacoEntreLinhas := 1;
         LinhasEntreCupons := 3;
      end;

      Ativar;

   end;

   resumo_caixa_cabecalho(aData, bData);
   resumo_caixa_vendas(aData, bData);
   resumo_caixa_formas(aData, bData);
   resumo_caixa_vendedores(aData, bData);
   resumo_caixa_totalizado(aData, bData);
   Resumo_Caixa_Rodape;

   // Determina o tipo de corte do papel
   FBuffer.Add('</corte_total>');

   try

      for n := 1 to ObjCaixa.Caixa_Cupom_Vias_S do
      begin
         for i := 0 to FBuffer.Count - 1 do
            PosPrinter.Buffer.Add( FBuffer[I] );

         PosPrinter.Imprimir();   // Imprime o Buffer
      end;

   finally
      PosPrinter.Desativar;
      FreeAndNil( FBuffer );
   end;

end;

procedure TFrPrincipal.Action1Execute(Sender: TObject);
begin

   if FEmpresaClass.Pln_Pdv <= 0 then
   begin
      Application.MessageBox('É necessário configurar um Plano de Contas padrão antes de inicializar o caixa.','TechCore-RTG',mb_IconWarning or mb_Ok);
      Application.Terminate;
      Abort;
   end;

   if FEmpresaClass.Cli_Pdv <= 0 then
   begin
      Application.MessageBox('É necessário configurar um Cliente Padrão antes de inicializar o caixa.','TechCore-RTG',mb_IconWarning or mb_Ok);
      Application.Terminate;
      Abort;
   end;

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       05/03/2019
      Descrição:  Checa se existem caixas abertos e se a abertura é diferente da data
                  atual
   ------------------------------------------------------------------------------------- }
   if vr_caixa_aberto then
   begin
      if vr_caixa_aberto_data <> Date then
      begin
         Application.MessageBox(pChar('Antes de abrir o caixa é necessário fechar o anterior.'
            + sLineBreak
            + 'Data da Abertura: ' + DateToStr( vr_caixa_aberto_data ))
            ,'TechCore-PDV',mb_IconInformation or mb_Ok);
         Abort;
      end;
   end;

   try
      FrSenhaAbertura := TFrSenhaAbertura.Create(Self);
      if FrSenhaAbertura.ShowModal = mrOk then
      begin
         FrVendas := TFrVendas.Create(self);
         FrVendas.ShowModal;
      end;

   finally
      FreeAndNil( FrVendas );
      FreeAndNil( FrSenhaAbertura );
      Self.OnShow(Self);
   end;
end;

procedure TFrPrincipal.Action1Update(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       17/02/2019
      Descrição:  Só libera o acesso a vendas se houverem o emitente, caixas e
                  operadores importados para o banco de dados local
   ------------------------------------------------------------------------------------- }
   TAction(Sender).Enabled := ( vr_existem_empresas ) and ( vr_existem_caixas) and ( vr_caixa_configurados ) and ( vr_existem_operadores );
end;

procedure TFrPrincipal.Action2Execute(Sender: TObject);
begin
   try
      FrSenhaConfig := TFrSenhaConfig.Create(self);
      FrSenhaConfig.iFlag_Tipo_Acesso := 1;

      if FrSenhaConfig.ShowModal = mrok then
      begin
         FrConfigCaixa := TFrConfigCaixa.Create(self);
         FrConfigCaixa.ShowModal;
      end;

   finally
      FreeAndNil( FrSenhaConfig );
      FreeAndNil( FrConfigCaixa );
      FrModulo.OnCreate(Sender);
   end;
end;

procedure TFrPrincipal.Action2Update(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       17/02/2019
      Descrição:  Só libera o acesso a vendas se houver emitente, caixas e
                  operadores importados para o banco de dados local
   ------------------------------------------------------------------------------------- }
   TAction(Sender).Enabled := ( vr_existem_empresas ) and ( vr_existem_caixas) and ( vr_existem_operadores );
end;

procedure TFrPrincipal.Action3Execute(Sender: TObject);
begin
   try
      FrSenhaConfig := TFrSenhaConfig.Create(self);
      FrSenhaConfig.iFlag_Tipo_Acesso := 3;

      if FrSenhaConfig.ShowModal = mrOk then
      begin

         // Cria o objeto caso não exista
         if not Assigned( ObjCaixa ) then
            ObjCaixa := TObjCaixa.Create;

         // Carrega o formulário para listar as aberuras
         FrPrintResumoCaixa := TFrPrintResumoCaixa.Create(self);
         FrPrintResumoCaixa.ShowModal;

      end;
   finally
      FreeAndNil( FrSenhaConfig );
   end;
end;

procedure TFrPrincipal.Action3Update(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       05/03/2019
      Descrição:  Se o caixa não estiver aberto, desabilita o botão fechar
   ------------------------------------------------------------------------------------- }
   TAction(Sender).Enabled := ( vr_existem_empresas ) and ( vr_existem_caixas) and ( vr_existem_operadores );
end;

procedure TFrPrincipal.Action4Execute(Sender: TObject);
begin
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
   FrAtualizarPDV                := TFrAtualizarPDV.Create(self);
   try
      if FrAtualizarPDV.ShowModal = mrOk then
      begin
         // Atualiza o display da ultima carga
         with QueryStatusCarga do
         begin
            Open;
            EmptyDataSet;
            Insert;
            FieldByName('DataHoraCarga').AsDateTime := Now;
            Post;
         end;

         // Efetua a releitura dos dados da empresa
         if Assigned( FEmpresaClass ) then
            FreeAndNil( FEmpresaClass );

         // Recria o objeto empresa
         FEmpresaClass := TEmpresa.Create;

         // Efetua a releitura dos parâmetros iniciais
         FrModulo.OnCreate(Self);
      end;

   finally
      FreeAndNil( FrAtualizarPDV );
   end;
end;

procedure TFrPrincipal.Action5Execute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPrincipal.Action6Execute(Sender: TObject);
var
   vr_total_vendas : Real;
begin

   try
      FrSenhaConfig := TFrSenhaConfig.Create(self);
      FrSenhaConfig.iFlag_Tipo_Acesso := 2;

      if FrSenhaConfig.ShowModal = mrOk then
      begin
         { -----------------------------------------------------------------------------------
            Autor:      Winston Moreira
            Data:       17/02/2019
            Descrição:  Efetua o encerramento do Caixa ativo
         ------------------------------------------------------------------------------------- }
         if Application.MessageBox('Tem certeza que deseja encerrar este caixa?','TechCore-PDV',mb_IconQuestion or mb_YesNo) = mrNo then
            Abort;

         try
            // Cria o objeto caso não exista
            if not Assigned( ObjCaixa ) then
               ObjCaixa := TObjCaixa.Create;

            // Inicia os de pesquisa
            Query.Close;
            Query.SQL.Clear;
            Query.SQL.Add('SELECT');
            //Query.SQL.Add('  SUM(F_VLR_TOTAL) + (SELECT F_ABER_VALOR FROM C000002 WHERE ID_ABERTURA = :ID_ABER) AS F_VLR_LIQUIDO');
            Query.SQL.Add('  SUM(F_VLR_TOTAL) AS F_VLR_LIQUIDO');
            Query.SQL.Add('FROM');
            Query.SQL.Add('  C000050');
            Query.SQL.Add('WHERE');
            Query.SQL.Add('  F_CUPOM_STATUS = 1');
            Query.SQL.Add('AND');
            Query.SQL.Add('   ID_ABERTURA   = :ID_ABER');
            Query.ParamByName('ID_ABER').AsString := vr_id_abertura;
            Query.Open();

            // Recupera o valor total das vendas desde a abertura do caixa
            vr_total_vendas := Query.FieldByName('F_VLR_LIQUIDO').AsFloat;

            // Inicia o objeto de gravação
            Query.Close;
            Query.SQL.Clear;
            Query.SQL.Add('UPDATE C000001 SET F_FECH_DATA = :F_FECH_DATA, F_FECH_VALOR = :F_FECH_VALOR, F_STATUS = :F_STATUS');
            Query.ParamByName('F_FECH_DATA').AsDateTime := Now;
            Query.ParamByName('F_FECH_VALOR').AsFloat   := vr_total_vendas;
            Query.ParamByName('F_STATUS').AsInteger     := 2;
            Query.ExecSQL;


            {Efetua a impressão do relatório}
            FrRelatorioCaixa := TFrRelatorioCaixa.Create(self);
            FrRelatorioCaixa.PrintFechamento := true;
            FrRelatorioCaixa.DataHoraAbert   := Now;

            FrRelatorioCaixa.CarregarRelatorio(
               {Informa o id de abertura}
               vr_id_abertura
               ,false
            );

            Application.MessageBox('Encerramento efetuado com sucesso.','TechCore-PDV',mb_IconInformation or mb_Ok);

            FrModulo.OnCreate(Self);
            Self.OnShow(Self);

         except
            on e:exception do
               raise Exception.Create(pChar('Erro ao efetuar o encerramento do caixa.' + sLineBreak + e.Message));
         end;

      end;

   finally
      FreeAndNil( FrRelatorioCaixa );
      FreeAndNil( FrSenhaConfig );
   end;

end;

procedure TFrPrincipal.Action6Update(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       05/03/2019
      Descrição:  Se o caixa não estiver aberto, desabilita o botão fechar
   ------------------------------------------------------------------------------------- }
   TAction(Sender).Enabled := ( vr_existem_empresas ) and ( vr_existem_caixas) and ( vr_existem_operadores ) and ( vr_caixa_aberto );
end;

procedure TFrPrincipal.Action7Execute(Sender: TObject);
begin
   try
      FrSenhaConfig := TFrSenhaConfig.Create(self);
      FrSenhaConfig.iFlag_Tipo_Acesso := 4;

      if FrSenhaConfig.ShowModal = mrOk then
      begin
         try
            FrSendCuponsEmail := TFrSendCuponsEmail.Create(self);
            FrSendCuponsEmail.ShowModal;
         finally
            FreeAndNil( FrSendCuponsEmail );
         end;
      end;

   finally
      FreeAndNil( FrSenhaConfig );
   end;
end;

procedure TFrPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
   H : HWND;
begin
   if Application.MessageBox('Tem certeza que deseja sair?','TechCore-PDV',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;

   // Fecha a aplicação de carga
   H := FindWindow(nil, 'TechCore - Carga PDV');
   if h <> 0 then
      PostMessage(H, WM_MESSAGE_CLOSE, 0, 0);
end;

procedure TFrPrincipal.FormCreate(Sender: TObject);
begin
   // Cria o objeto de pesquisa
   Query            := TFDQuery.Create(self);
   Query.Connection := FrModulo.DBCon_Local;

   // Cria o objeto para impressão
   PosPrinter := TACBrPosPrinter.Create(self);
   PosPrinter.EspacoEntreLinhas := 1;
   PosPrinter.LinhasEntreCupons := 5;
end;

procedure TFrPrincipal.FormShow(Sender: TObject);
begin
   {Determina o caminho da aplicação para coleta de versão}
   rVersion.FilePath := ParamStr(0);

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       17/02/2019
      Descrição:  Se houver caixa aberto, recupera a informação desta abertura, e
                  configura o objeto caixa com os dados do caixa ativo
   ------------------------------------------------------------------------------------- }
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('SELECT');
   Query.SQL.Add('   CAST(F_ABER_DATA AS DATE) AS F_ABER_DATA_II,');
   Query.SQL.Add('   F_ABER_DATA,');
   Query.SQL.Add('   ID_OPERADOR,');
   Query.SQL.Add('   F_STATUS,');
   Query.SQL.Add('   ID_ABERTURA');
   Query.SQL.Add('FROM');
   Query.SQL.Add('   C000001');
   Query.SQL.Add('WHERE');
   Query.SQL.Add('   ID_EMPRESA = :ID_EMPRESA');
   Query.SQL.Add('AND');
   Query.SQL.Add('   F_STATUS = :F_STATUS');

   Query.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('F_STATUS').AsInteger   := 1;
   Query.Open();

   // Flags para tratar o comportamento do formulário
   vr_caixa_aberto := not ( Query.IsEmpty );

   if vr_caixa_aberto then
   begin
      ObjCaixa.Caixa_Abert_Data := Query.FieldByName('F_ABER_DATA').AsDateTime;
      vr_id_abertura            := Query.FieldByName('ID_Abertura').AsString;
      vr_caixa_aberto_data      := Query.FieldByName('F_ABER_DATA_II').AsDateTime;
      vr_caixa_aberto_oper      := Query.FieldByName('ID_OPERADOR').AsInteger;
   end;

   // Carrega o aplicativo de carga
   rzLauncher.Execute;

end;

procedure TFrPrincipal.IdTCPClient1Connected(Sender: TObject);
begin
   IdTCPClient1.Disconnect;
end;

procedure TFrPrincipal.JvImage1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPrincipal.QueryStatusCargaAfterPost(DataSet: TDataSet);
begin
   // Gera o arquivo do status da carga
   QueryStatusCarga.SaveToFile('StsCarga.dat', sfBinary);
end;

procedure TFrPrincipal.Timer1Timer(Sender: TObject);
begin
   // Exibe o status da conexão com o servidor remoto
   case FrModulo.DBCon_Remoto.State of
     csDisconnected : StsRetaguarda.ImageIndex := 0;
        csConnected : StsRetaguarda.ImageIndex := 1;
   end;

   // Exibe o status da conexão com o servidor local
   case FrModulo.DBCon_Local.State of
     csDisconnected : StsLocal.ImageIndex := 0;
        csConnected : StsLocal.ImageIndex := 1;
   end;
end;

end.
