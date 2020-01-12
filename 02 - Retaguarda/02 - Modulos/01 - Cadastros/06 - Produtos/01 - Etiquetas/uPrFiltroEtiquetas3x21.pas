unit uPrFiltroEtiquetas3x21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzDBEdit, RzDBSpin, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls, RzPanel, RzDlgBtn, RzSpnEdt,
  Vcl.DBCtrls, RzDBCmbo, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  JvDataSource, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, ACBrBase, ACBrEnterTab, IniFiles;

type
  TFrPrdFiltroEtiquetas3x21 = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Label1: TLabel;
    RzButtonEdit1: TRzButtonEdit;
    Label2: TLabel;
    RzSpinEdit1: TRzSpinEdit;
    Label6: TLabel;
    tbPrecos: TFDQuery;
    dsPrecos: TJvDataSource;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    ACBrEnterTab1: TACBrEnterTab;
    Label3: TLabel;
    etqColEspaco: TRzSpinEdit;
    etqColLarg: TRzSpinEdit;
    etqTopo: TRzSpinEdit;
    etqLargura: TRzSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    etqFonte: TRzSpinEdit;
    Label11: TLabel;
    Bevel1: TBevel;
    etqCodBarras: TRzSpinEdit;
    Label8: TLabel;
    etqColunas: TRzSpinEdit;
    lbColunas: TLabel;
    procedure RzButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ID_Produto : Integer;
  public
    { Public declarations }
  end;

var
  FrPrdFiltroEtiquetas3x21: TFrPrdFiltroEtiquetas3x21;

implementation

{$R *.dfm}

uses uListaProdutos, uProdutoEtiquetas3x21, Classe.Empresa;

procedure TFrPrdFiltroEtiquetas3x21.FormCreate(Sender: TObject);
var
   RegIni : TInifile;
begin
   {Define o diretório binário como diretório de trabalho}
   SetCurrentDir(ExtractFileDir(Application.ExeName));

   // Diretório de parâmetros
   if DirectoryExists('Includes') then
   begin
      // Diretório de parâmetros
      ChDir('Includes');

      // Checa se o arquivos existe
      if FileExists('Etq3x21x33.ini') then
      begin

         // Cria o arquivo ini
         RegIni := TIniFile.Create(GetCurrentDir + '\Etq3x21x33.ini');
         etqColunas.IntValue   := RegIni.ReadInteger('Posicao','Colunas', 0);
         etqTopo.IntValue      := RegIni.ReadInteger('Posicao','Topo', 0);
         etqLargura.IntValue   := RegIni.ReadInteger('Posicao','Largura', 0);
         etqColLarg.IntValue   := RegIni.ReadInteger('Posicao','ColLargura', 0);
         etqColEspaco.IntValue := RegIni.ReadInteger('Posicao','ColEspaco', 0);
         etqFonte.IntValue     := RegIni.ReadInteger('Posicao','Fonte', 0);
         etqCodBarras.IntValue := RegIni.ReadInteger('Posicao','CodBarras', 0);
         RegIni.Free;

         {Retorna para o diretório de trabalho}
         ChDir('..');

      end
      else
         Chdir('..');
   end;

   {Carrega as tabelas de preços disponíveis}
   tbPrecos.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
   tbPrecos.Open();
end;

procedure TFrPrdFiltroEtiquetas3x21.RzButtonEdit1ButtonClick(Sender: TObject);
begin
   try
      FrListaProdutos := TFrListaProdutos.Create(self);
      if FrListaProdutos.ShowModal = mrOk then
      begin
         ID_Produto         := FrListaProdutos.tbDadosID.AsInteger;
         RzButtonEdit1.Text := FrListaProdutos.tbDadosPRD_DESCRICAO.AsString;
      end;
   finally
      FreeAndNil(FrListaProdutos);
   end;
end;

procedure TFrPrdFiltroEtiquetas3x21.RzDialogButtons1ClickOk(Sender: TObject);
var
   RegIni   : TIniFile;
begin
   if not DirectoryExists('Includes') then
      MkDir('Includes');

   // Acessa o diretório de parâmetros
   ChDir('Includes');

   // Cria o arquivo ini
   RegIni := TIniFile.Create(GetCurrentDir + '\Etq3x21x33.ini');
   RegIni.WriteInteger('Posicao','Colunas', etqColunas.IntValue);
   RegIni.WriteInteger('Posicao','Topo', etqTopo.IntValue);
   RegIni.WriteInteger('Posicao','Largura', etqLargura.IntValue);
   RegIni.WriteInteger('Posicao','ColLargura', etqColLarg.IntValue);
   RegIni.WriteInteger('Posicao','ColEspaco', etqColEspaco.IntValue);
   RegIni.WriteInteger('Posicao','Fonte', etqFonte.IntValue);
   RegIni.WriteInteger('Posicao','CodBarras', etqCodBarras.IntValue);
   RegIni.Free;

   {Retorna para o diretório de trabalho}
   ChDir('..');

   if RzButtonEdit1.Text = EmptyStr then
   begin
      Application.MessageBox('Selecione um produto antes de continuar.','TechCore-RTG',mb_IconStop or mb_ok);
      RzButtonEdit1.SetFocus;
      Abort;
   end;

   if JvDBSearchComboBox1.Text = EmptyStr then
   begin
      Application.MessageBox('Selecione uma tabela de preços antes de continuar.','TechCore-RTG',mb_IconStop or mb_ok);
      RzButtonEdit1.SetFocus;
      Abort;
   end;

   try
      {Imprime as etiquetas}
      FrProdutoEtiqueta3x21 := TFrProdutoEtiqueta3x21.Create(self);

      {Configura a etiqueta com os parêmtros}
      with FrProdutoEtiqueta3x21 do
      begin
         eGrid.ColSpacing := etqColEspaco.IntValue;
         eGrid.ColWidth   := etqColLarg.IntValue;

         // Ajusta o tamanho da fonte dos labels
         RLDBText1.Font.Size := etqFonte.IntValue;
         //RLDBText2.Font.Size := etqFonte.IntValue;
         RLDBText3.Font.Size := etqFonte.IntValue;
         RLDBText4.Font.Size := etqFonte.IntValue;

         // Código de barras
         RLDBBarcode1.Height := etqCodBarras.IntValue;
      end;

      FrProdutoEtiqueta3x21.CarregarEtiquetas(ID_Produto, tbPrecos.FieldByName('id').AsInteger, RzSpinEdit1.IntValue);
   finally
      FreeAndNil(FrProdutoEtiqueta3x21);
   end;
end;

end.
