unit uFiltro_Rel_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, RzButton, RzRadChk, RzPanel, RzRadGrp, RzDlgBtn, RzLabel,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzSpnEdt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus, JvExStdCtrls, JvCombobox, RzCmboBx;

type
  TFrFiltro_Rel_Produtos = class(TForm)
    pnTitulo: TPanel;
    Image1: TImage;
    RzLabel1: TRzLabel;
    imgSair: TImage;
    RzDialogButtons1: TRzDialogButtons;
    tbDados: TFDQuery;
    Panel1: TPanel;
    Pop00: TPopupMenu;
    SelecioanrGrupo1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Label1: TLabel;
    eTipoLista: TJvComboBox;
    tbDadosID: TIntegerField;
    tbDadosPRD_CODIGO: TIntegerField;
    tbDadosPRD_CODIGO_BRR: TStringField;
    tbDadosPRD_DESCRICAO: TStringField;
    tbDadosPRD_UNIDADE: TStringField;
    tbDadosPRD_NCM: TStringField;
    tbDadosPRD_GRUPO: TStringField;
    tbDadosPRD_SUBGRUPO: TStringField;
    tbDadosPRD_MARCA: TStringField;
    tbDadosPRD_QTDE_ATUAL: TBCDField;
    RzComboBox1: TRzComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Ordenao1: TMenuItem;
    procedure imgSairClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure eGrupoEnter(Sender: TObject);
    procedure eGrupoExit(Sender: TObject);
    procedure Ordenao1Click(Sender: TObject);
    procedure SelecioanrGrupo1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
   SqlText : String;

  public
    { Public declarations }
  end;

var
  FrFiltro_Rel_Produtos: TFrFiltro_Rel_Produtos;

implementation

uses
   uListaGruposProdutos, Classe.Empresa, uRel_Produto_Grupos,
  uPos_Estoque, uModuloRet;

{$R *.dfm}

procedure TFrFiltro_Rel_Produtos.eGrupoEnter(Sender: TObject);
begin
   TEdit(Sender).Color := clSilver;
end;

procedure TFrFiltro_Rel_Produtos.eGrupoExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrFiltro_Rel_Produtos.FormCreate(Sender: TObject);
begin
   {armazena o script sql inicial}
   SqlText := tbDados.SQL.Text;

   {determina a ordenação padrão}
   RzComboBox1.ItemIndex := 1;
end;

procedure TFrFiltro_Rel_Produtos.imgSairClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFiltro_Rel_Produtos.Ordenao1Click(Sender: TObject);
begin
   case RzComboBox1.ItemIndex of
      0 : RzComboBox1.ItemIndex := 1;
      1 : RzComboBox1.ItemIndex := 0;
   end;
end;

procedure TFrFiltro_Rel_Produtos.RzDialogButtons1ClickOk(Sender: TObject);
var
   Sql : String;
begin
   Sql := SqlText;

   {carerga de acordo a ordenação}
   if RzComboBox1.ItemIndex = 0 then
      Sql := Sql + ' order by t3.grp_descricao, t1.prd_codigo'
   else
      Sql := Sql + ' order by t3.grp_descricao, t1.prd_descricao';

   // Fecha e limpa o cursor
   tbDados.Close;
   tbDados.SQL.Clear;
   tbDados.SQL.Add(Sql);
   tbDados.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
   tbDados.Open();

   // Checa se a pesquisa retornou algum resultado
   if tbDados.IsEmpty then
   begin
      Application.MessageBox('Não foram encotrados registro de acordo as informações.','TechCore-RTG',mb_IconWarning or mb_Ok);
      Abort;
   end;

   case eTipoLista.ItemIndex of
      0 :
      begin
         FrRel_Produtos_Grupos := TFrRel_Produtos_Grupos.Create(Self);
         FrRel_Produtos_Grupos.rGrupo := true;
         try
            FrRel_Produtos_Grupos.Print.Preview();
         finally
            FreeAndNil( FrRel_Produtos_Grupos );
         end;
      end;

      1 :
      begin
         FrRel_Produtos_Grupos := TFrRel_Produtos_Grupos.Create(Self);
         FrRel_Produtos_Grupos.rGrupo := false;
         try
            FrRel_Produtos_Grupos.Print.Preview();
         finally
            FreeAndNil( FrRel_Produtos_Grupos );
         end;
      end;

   end;
end;

procedure TFrFiltro_Rel_Produtos.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrFiltro_Rel_Produtos.SelecioanrGrupo1Click(Sender: TObject);
begin
   case eTipoLista.ItemIndex of
      0 : eTipoLista.ItemIndex := 1;
      1 : eTipoLista.ItemIndex := 2;
   end;
end;

end.
