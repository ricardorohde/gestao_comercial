unit uImportarVendaCelularPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uDWAbout, RzDlgBtn,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, RzPanel, DateUtils, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  System.ImageList, Vcl.ImgList, Vcl.Menus, Vcl.ComCtrls, JvExComCtrls,
  JvDateTimePicker, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Buttons;

type
  TFrImportarVendaCelularPesquisar = class(TForm)
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    RzDialogButtons1: TRzDialogButtons;
    DBRest: TRESTDWDataBase;
    Query: TRESTDWClientSQL;
    dsQuery: TDataSource;
    QueryDATA_VENDA: TSQLTimeStampField;
    QueryPRE_CODIGO_VENDA: TStringField;
    QueryPRE_VLR_SUBTOTAL: TFMTBCDField;
    QueryPRE_VLR_DESCONTO: TFMTBCDField;
    QueryPRE_VLR_TOTAL: TFMTBCDField;
    QueryVENDEDOR: TStringField;
    QueryPRE_STATUS: TIntegerField;
    eGrid: TNextDBGrid;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBNumberColumn3: TNxDBNumberColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBImageColumn1: TNxDBImageColumn;
    ImageList1: TImageList;
    Pop00: TPopupMenu;
    N1: TMenuItem;
    Selecionar1: TMenuItem;
    Sair1: TMenuItem;
    FocarDataInicial1: TMenuItem;
    FocarDataFinal1: TMenuItem;
    FiltrarVendas1: TMenuItem;
    RzPanel1: TRzPanel;
    aData: TJvDateEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    bData: TJvDateEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Selecionar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    function CarregarVendasPreVendas(aData,bData : TDateTime) : Boolean;
    procedure FocarDataInicial1Click(Sender: TObject);
    procedure FocarDataFinal1Click(Sender: TObject);
    procedure FiltrarVendas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrImportarVendaCelularPesquisar: TFrImportarVendaCelularPesquisar;

implementation

{$R *.dfm}

uses Classe.Empresa, uPrincipal, uModulo;

function TFrImportarVendaCelularPesquisar.CarregarVendasPreVendas(aData, bData: TDateTime): Boolean;
begin
   with Query do
   begin
      Close;
      ParamByName('ID_Empresa').AsInteger := FEmpresaClass.ID;
      ParamByName('aData').AsDate := aData;
      ParamByName('bData').AsDate := bData;
      Open;
   end;
end;

procedure TFrImportarVendaCelularPesquisar.FiltrarVendas1Click(
  Sender: TObject);
begin
   if (aData.Focused) or (bData.Focused) then
   begin
      // Carrega todas as vendas do dia selecionado
      CarregarVendasPreVendas(aData.Date, bData.Date);
      eGrid.SetFocus;
   end;
end;

procedure TFrImportarVendaCelularPesquisar.FocarDataFinal1Click(Sender: TObject);
begin
   bData.SetFocus
end;

procedure TFrImportarVendaCelularPesquisar.FocarDataInicial1Click(
  Sender: TObject);
begin
   aData.SetFocus;
end;

procedure TFrImportarVendaCelularPesquisar.FormCreate(Sender: TObject);
begin
   // Parâmetros do servidor Rest
   DBRest.PoolerService := FEmpresaClass.ServerRest_Host;
   DBRest.PoolerPort    := FEmpresaClass.ServerRest_Port;

   // Ajusta os campos das datas
   aData.Date := Date;
   bData.Date := Date;

   // Carrega todas as vendas do dia selecionado
   CarregarVendasPreVendas(aData.Date, bData.Date);
end;

procedure TFrImportarVendaCelularPesquisar.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrImportarVendaCelularPesquisar.Selecionar1Click(Sender: TObject);
begin
   if (not aData.Focused) or (not bData.Focused) or (not BitBtn1.Focused) then
   begin

      if Query.IsEmpty then
      begin
         Imprime_display('selecione uma venda antes de contiunuar.', clYellow);
         Sleep(1000);
         Imprime_display_anterior;
         Abort;
      end;

      if Query.FieldByName('Pre_Status').AsInteger = 2 then
      begin
         Imprime_display('esta é uma venda já finalizada.', clRed);
         Sleep(1000);
         Imprime_display_anterior;
         Abort;
      end;

      Self.ModalResult := mrOk;

   end;               

end;

end.
