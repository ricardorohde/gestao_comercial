unit uFiltro_Pos_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, RzButton, RzRadChk, RzPanel, RzRadGrp, RzDlgBtn, RzLabel,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzSpnEdt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus;

type
  TFrFiltro_Pos_Estoque = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Query: TFDQuery;
    QueryID: TIntegerField;
    QueryPRD_GRUPO: TStringField;
    QueryPRD_CODIGO: TIntegerField;
    QueryPRD_CODIGO_BRR: TStringField;
    QueryPRD_DESCRICAO: TStringField;
    QueryPRD_UNIDADE: TStringField;
    QueryPRD_NCM: TStringField;
    QueryID_EMPRESA: TIntegerField;
    QueryID_GRUPO: TIntegerField;
    Pop00: TPopupMenu;
    SelecioanrGrupo1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    eGrupo: TRzButtonEdit;
    eChkGrupos: TRzCheckBox;
    eChkProduto: TRzCheckBox;
    eCodigoIni: TRzSpinEdit;
    eCodigoFim: TRzSpinEdit;
    Label1: TLabel;
    QueryPRD_VLR_CUSTO: TBCDField;
    QueryPRD_QTDE_INICIAL: TBCDField;
    QueryPRD_QTDE_ENTRADA: TBCDField;
    QueryPRD_QTDE_SAIDA: TBCDField;
    QueryPRD_QTDE_ATUAL: TBCDField;
    RzCheckBox1: TRzCheckBox;
    QueryPRD_CUSTO_TOTAL: TFMTBCDField;
    procedure eChkGruposClick(Sender: TObject);
    procedure eChkProdutoClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure SelecioanrGrupo1Click(Sender: TObject);
    procedure eGrupoEnter(Sender: TObject);
    procedure eGrupoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ID_Grupo    : Integer;
    StringSQL   : String;
  public
    { Public declarations }
  end;

var
  FrFiltro_Pos_Estoque: TFrFiltro_Pos_Estoque;

implementation

uses
   uListaGruposProdutos, Classe.Empresa, uPos_Estoque, uModuloRet;

{$R *.dfm}

procedure TFrFiltro_Pos_Estoque.eChkGruposClick(Sender: TObject);
begin
   eGrupo.Enabled := not ( eChkGrupos.Checked );
end;

procedure TFrFiltro_Pos_Estoque.eChkProdutoClick(Sender: TObject);
begin
   eCodigoIni.Enabled  := not ( eChkProduto.Checked );
   eCodigoFim.Enabled  := not ( eChkProduto.Checked );
end;

procedure TFrFiltro_Pos_Estoque.eGrupoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrFiltro_Pos_Estoque.eGrupoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrFiltro_Pos_Estoque.FormCreate(Sender: TObject);
begin
   {Ajusta as casas decimais}
   case FEmpresaClass.Decimal_Qtde of
      2 : begin
         QueryPRD_QTDE_INICIAL.DisplayFormat := ',0.00';
         QueryPRD_QTDE_ENTRADA.DisplayFormat := ',0.00';
         QueryPRD_QTDE_SAIDA.DisplayFormat   := ',0.00';
         QueryPRD_QTDE_ATUAL.DisplayFormat   := ',0.00';
      end;

      3 : begin
         QueryPRD_QTDE_INICIAL.DisplayFormat := ',0.000';
         QueryPRD_QTDE_ENTRADA.DisplayFormat := ',0.000';
         QueryPRD_QTDE_SAIDA.DisplayFormat   := ',0.000';
         QueryPRD_QTDE_ATUAL.DisplayFormat   := ',0.000';
      end;

      4 : begin
         QueryPRD_QTDE_INICIAL.DisplayFormat := ',0.0000';
         QueryPRD_QTDE_ENTRADA.DisplayFormat := ',0.0000';
         QueryPRD_QTDE_SAIDA.DisplayFormat   := ',0.0000';
         QueryPRD_QTDE_ATUAL.DisplayFormat   := ',0.0000';
      end;
   end;

   {Ajustar as casas decimais}
   case FEmpresaClass.Decimal_Venda of
      2 : begin
         QueryPRD_VLR_CUSTO.DisplayFormat   := ',0.00';
         QueryPRD_CUSTO_TOTAL.DisplayFormat := ',0.00';
      end;

      3 : begin
         QueryPRD_VLR_CUSTO.DisplayFormat   := ',0.000';
         QueryPRD_CUSTO_TOTAL.DisplayFormat := ',0.000';
      end;

      4 : begin
         QueryPRD_VLR_CUSTO.DisplayFormat   := ',0.0000';
         QueryPRD_CUSTO_TOTAL.DisplayFormat := ',0.0000';
      end;
   end;

   {Armazena o script original do cursor}
   StringSQL := Query.SQL.Text;
end;

procedure TFrFiltro_Pos_Estoque.RzDialogButtons1ClickOk(Sender: TObject);
var
   Str : String;
begin
   if ( eChkGrupos.Checked = false ) and ( eGrupo.Text = '' ) then
   begin
      Application.MessageBox('Selecione o Grupo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eGrupo.SetFocus;
      Abort;
   end;

   if ( eChkProduto.Checked = false ) and ( ( eCodigoIni.IntValue = 0 ) or ( eCodigoFim.IntValue = 0 ) ) then
   begin
      Application.MessageBox('Selecione o Grupo.','TechCore-RTG',mb_IconStop or mb_Ok);
      eGrupo.SetFocus;
      Abort;
   end;

   // Fecha e limpa o cursor
   Query.Close;
   Query.SQL.Clear;

   // Prepara o script para gerar o relatório
   Str := StringSQL;

   // Filtra por empresa
   Str := Str + ' where t1.id_empresa = :id_emp';

   // Pesquisa por grupo
   if not eChkGrupos.Checked then
      Str := Str + ' and t1.id_grupo = :id_grupo';

   // Pesquisa por produto
   if not eChkProduto.Checked then
      Str := Str + ' and t1.prd_codigo between :a_produto and :b_produto';

   // Monta a ordenação dos registros
   Str := Str + ' order by t3.grp_descricao, t1.prd_codigo asc';

   // Formata o script
   Query.SQL.Add(Str);
   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;

   if not eChkGrupos.Checked then
      Query.ParamByName('id_grupo').AsInteger := ID_Grupo;

   if not eChkProduto.Checked then
   begin
      Query.ParamByName('a_produto').AsInteger := eCodigoIni.IntValue;
      Query.ParamByName('b_produto').AsInteger := eCodigoFim.IntValue;
   end;

   // Carrega todos os registros relacionados
   Query.Open();

   // Checa se a pesquisa retornou algum resultado
   if Query.IsEmpty then
      Application.MessageBox('Não foram encontrados registro de acordo as informações passadas.','TechCore-RTG',mb_IconWarning or mb_Ok)
   else
   begin
      FrPos_Estoque := TFrPos_Estoque.Create(self);

      if RzCheckBox1.Checked then
         FrPos_Estoque.RLGroup1.DataFields := 'PRD_GRUPO';

      FrPos_Estoque.dsDados.DataSet := Query;
      try
         FrPos_Estoque.Print.Preview();
      finally
         FreeAndNil( FrPos_Estoque );
      end;
   end;

end;

procedure TFrFiltro_Pos_Estoque.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFiltro_Pos_Estoque.SelecioanrGrupo1Click(Sender: TObject);
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
