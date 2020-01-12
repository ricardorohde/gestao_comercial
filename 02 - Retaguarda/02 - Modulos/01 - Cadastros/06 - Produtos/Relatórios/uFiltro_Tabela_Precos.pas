unit uFiltro_Tabela_Precos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, RzButton, RzRadChk, RzPanel, RzRadGrp, RzDlgBtn, RzLabel,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzSpnEdt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus, JvDataSource, JvExStdCtrls, JvCombobox, JvDBSearchComboBox;

type
  TFrFiltro_Tabela_Precos = class(TForm)
    pnTitulo: TPanel;
    Image1: TImage;
    RzLabel1: TRzLabel;
    imgSair: TImage;
    RzDialogButtons1: TRzDialogButtons;
    tbDados: TFDQuery;
    Panel1: TPanel;
    eChkProduto: TRzCheckBox;
    eCodigoIni: TRzSpinEdit;
    Label1: TLabel;
    eCodigoFim: TRzSpinEdit;
    Pop00: TPopupMenu;
    SelecioanrGrupo1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    eTabela: TJvDBSearchComboBox;
    Label2: TLabel;
    tbTabela: TFDQuery;
    dsTabela: TJvDataSource;
    tbDadosID: TIntegerField;
    tbDadosPRD_CODIGO: TIntegerField;
    tbDadosPRD_CODIGO_BRR: TStringField;
    tbDadosPRD_GRUPO: TStringField;
    tbDadosPRD_DESCRICAO: TStringField;
    tbDadosPRD_UNIDADE: TStringField;
    tbDadosPRD_NCM: TStringField;
    tbDadosPRD_VLR_CUSTO: TBCDField;
    tbDadosPRC_VLR_VENDA: TBCDField;
    eExibirCusto: TRadioGroup;
    tbDadosQTDE_ATUAL: TBCDField;
    cb_listagem: TComboBox;
    Label3: TLabel;
    pn_grupos: TRzPanel;
    eGrupo: TRzButtonEdit;
    eChkGrupos: TRzCheckBox;
    procedure imgSairClick(Sender: TObject);
    procedure eChkGruposClick(Sender: TObject);
    procedure eChkProdutoClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure SelecioanrGrupo1Click(Sender: TObject);
    procedure eGrupoEnter(Sender: TObject);
    procedure eGrupoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb_listagemChange(Sender: TObject);
  private
    ID_Grupo    : Integer;
    Str_Inicial : String;
  public
    { Public declarations }
  end;

var
  FrFiltro_Tabela_Precos: TFrFiltro_Tabela_Precos;

implementation

uses
   uListaGruposProdutos, Classe.Empresa, uTabela_Precos_II,
  uModuloRet;

{$R *.dfm}

procedure TFrFiltro_Tabela_Precos.cb_listagemChange(Sender: TObject);
begin
   pn_grupos.Enabled := cb_listagem.ItemIndex = 0;
end;

procedure TFrFiltro_Tabela_Precos.eChkGruposClick(Sender: TObject);
begin
   eGrupo.Enabled := not ( eChkGrupos.Checked );
end;

procedure TFrFiltro_Tabela_Precos.eChkProdutoClick(Sender: TObject);
begin
   eCodigoIni.Enabled  := not ( eChkProduto.Checked );
   eCodigoFim.Enabled  := not ( eChkProduto.Checked );
end;

procedure TFrFiltro_Tabela_Precos.eGrupoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrFiltro_Tabela_Precos.eGrupoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrFiltro_Tabela_Precos.FormCreate(Sender: TObject);
begin
   // Memoriza o script inicial
   Str_Inicial := tbDados.SQL.Text;

  // Ajustar casas decimais
   case FEmpresaClass.Decimal_Qtde of
      2 : tbDadosQTDE_ATUAL.DisplayFormat := ',0.00';
      3 : tbDadosQTDE_ATUAL.DisplayFormat := ',0.000';
      4 : tbDadosQTDE_ATUAL.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Venda of
      2 : tbDadosPRD_VLR_CUSTO.DisplayFormat := ',0.00';
      3 : tbDadosPRD_VLR_CUSTO.DisplayFormat := ',0.000';
      4 : tbDadosPRD_VLR_CUSTO.DisplayFormat := ',0.0000';
   end;

   // Ajustar casas decimais
   case FEmpresaClass.Decimal_Venda of
      2 : tbDadosPRC_VLR_VENDA.DisplayFormat := ',0.00';
      3 : tbDadosPRC_VLR_VENDA.DisplayFormat := ',0.000';
      4 : tbDadosPRC_VLR_VENDA.DisplayFormat := ',0.0000';
   end;

   // Carrega todos as tabela de preços existentes
   tbTabela.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbTabela.Open();
end;

procedure TFrFiltro_Tabela_Precos.imgSairClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFiltro_Tabela_Precos.RzDialogButtons1ClickOk(Sender: TObject);
var
   Str : String;
begin
   if ( eChkGrupos.Checked = false ) and ( eGrupo.Text = '' ) and ( cb_listagem.ItemIndex = 0 ) then
   begin
      Application.MessageBox('Selecione o Grupo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eGrupo.SetFocus;
      Abort;
   end;

   if ( eChkProduto.Checked = false ) and ( cb_listagem.ItemIndex = 0 ) and ( ( eCodigoIni.IntValue = 0 ) or ( eCodigoFim.IntValue = 0 ) ) then
   begin
      Application.MessageBox('Selecione o Grupo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eGrupo.SetFocus;
      Abort;
   end;

   // Fecha e limpa o cursor
   tbDados.Close;
   tbDados.SQL.Clear;

   // Prepara o script para gerar o relatório
   Str := Str_Inicial;

   // Pesquisa por grupo
   if not eChkGrupos.Checked then
      Str := Str + ' AND T1.ID_GRUPO = :ID_GRUPO';

   // Pesquisa por produto
   if not eChkProduto.Checked then
      Str := Str + ' AND T1.PRD_CODIGO BETWEEN :A_PRODUTO AND :B_PRODUTO';

   // Monta a ordenação dos registros
   if cb_listagem.ItemIndex = 0 then
      Str := Str + ' ORDER BY T3.GRP_DESCRICAO, T1.PRD_DESCRICAO ASC';

   // Listagem por descrição
   if cb_listagem.ItemIndex = 1 then
      Str := Str + ' ORDER BY T1.PRD_DESCRICAO ASC';

   // Listagem por descrição
   if cb_listagem.ItemIndex = 2 then
      Str := Str + ' ORDER BY T1.PRD_CODIGO ASC';

   // Formata o script
   tbDados.SQL.Add(Str);
   tbDados.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbDados.ParamByName('ID_TABELA').AsInteger  := tbTabela.FieldByName('ID').AsInteger;

   if not eChkGrupos.Checked then
      tbDados.ParamByName('ID_GRUPO').AsInteger := ID_Grupo;

   if not eChkProduto.Checked then
   begin
      tbDados.ParamByName('A_PRODUTO').AsInteger := eCodigoIni.IntValue;
      tbDados.ParamByName('B_PRODUTO').AsInteger := eCodigoFim.IntValue;
   end;

   tbDados.Open();

   // Checa se a pesquisa retornou algum resultado
   if tbDados.IsEmpty then
      Application.MessageBox('Não foram encotrados registro de acordo as informações.','TechCore-RTG',mb_IconWarning or mb_Ok)
   else
   begin

      if cb_listagem.ItemIndex = 0 then
      begin
         FrTabela_Precos_II := TFrTabela_Precos_II.Create(self);
         FrTabela_Precos_II.ID_Tabela      := tbTabela.FieldByName('ID').AsInteger;
         FrTabela_Precos_II.vr_ExibirCusto := eExibirCusto.ItemIndex;
         FrTabela_Precos_II.rGrupo         := true;

         try
            FrTabela_Precos_II.Print.Preview();
         finally
            FreeAndNil( FrTabela_Precos_II );
         end;
      end;

      if cb_listagem.ItemIndex in [1,2] then
      begin
         FrTabela_Precos_II := TFrTabela_Precos_II.Create(self);
         FrTabela_Precos_II.ID_Tabela      := tbTabela.FieldByName('ID').AsInteger;
         FrTabela_Precos_II.vr_ExibirCusto := eExibirCusto.ItemIndex;
         FrTabela_Precos_II.rGrupo      := false;

         try
            FrTabela_Precos_II.Print.Preview();
         finally
            FreeAndNil( FrTabela_Precos_II );
         end;
      end;
   end;

end;

procedure TFrFiltro_Tabela_Precos.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFiltro_Tabela_Precos.SelecioanrGrupo1Click(Sender: TObject);
begin
   FrListaGruposProdutos := TFrListaGruposProdutos.Create(Self);
   try
      if FrListaGruposProdutos.ShowModal = mrOk then
      begin
         ID_Grupo    := FrListaGruposProdutos.tbDadosID.AsInteger;
         eGrupo.Text := FrListaGruposProdutos.tbDadosGRP_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil( FrListaGruposProdutos );
   end;
end;

end.
