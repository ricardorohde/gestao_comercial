unit uRel_Vendas_Caixas_Filtro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Menus, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzPanel, RzDlgBtn, JvExMask, JvToolEdit,
  Vcl.StdCtrls, JvExStdCtrls, JvCombobox, Vcl.Mask, RzEdit, RzBtnEdt,
  RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvDBSearchComboBox,
  JvDataSource, ACBrUtil;

type
  TFrRel_Vendas_Caixas_Filtro = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Pop00: TPopupMenu;
    SelecionarCliente1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    eDataIni: TJvDateEdit;
    eDataFim: TJvDateEdit;
    Label4: TLabel;
    Label1: TLabel;
    Query: TFDQuery;
    cbCaixas: TJvDBSearchComboBox;
    Label2: TLabel;
    eQueryCaixas: TFDQuery;
    dsQueryCaixas: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure eDataIniExit(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private

  public
    { Public declarations }
    vAgrupamento : Integer;
  end;

var
  FrRel_Vendas_Caixas_Filtro: TFrRel_Vendas_Caixas_Filtro;

implementation

uses
   Classe.Empresa, uRel_Vendedor_Agrupado, uPrincipal, uModuloRet,
  uResCaixaGrpData, uResCaixaGrpVendedor, uResCaixasDetalhado;

{$R *.dfm}

procedure TFrRel_Vendas_Caixas_Filtro.eDataIniExit(Sender: TObject);
begin
   if eDataIni.Date > eDataFim.Date then
   begin
      Application.MessageBox('A data Inicial não pode ser mair que a data Final.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataini.SetFocus;
   end;
end;

procedure TFrRel_Vendas_Caixas_Filtro.FormCreate(Sender: TObject);
begin
   // Define a data atual
   eDataIni.Date := Date;
   eDataFim.Date := Date;

   // Carrega todos os Caixas
   eQueryCaixas.Open();
   eQueryCaixas.Insert;
   eQueryCaixas.FieldByName('id').AsInteger           := 999;
   eQueryCaixas.FieldByName('cax_codigo').AsInteger   := 999;
   eQueryCaixas.FieldByName('cax_descricao').AsString := 'Todos os Caixas';
   eQueryCaixas.Post;

end;

procedure TFrRel_Vendas_Caixas_Filtro.RzDialogButtons1ClickOk(Sender: TObject);
begin
   // Confere o preenchimento antes de continuar
   if ( OnlyNumber(eDataIni.Text) = '' )  or ( OnlyNumber(eDataFim.Text) = '' ) then
   begin
      Application.MessageBox('Informe as datas para filtrar os registros.','TechCore-RTG',mb_IconStop or mb_Ok);
      eDataIni.SetFocus;
      Abort;
   end;

   case vAgrupamento of
      1 : begin
         // Cria o formulário
         FrResCaixasGrpData := TFrResCaixasGrpData.Create(self);
         try
            if FrResCaixasGrpData.CarregarDadosBD(
                  eDataIni.Date,
                  eDataFim.Date,
                  eQueryCaixas.FieldByName('id').AsInteger,
                  eQueryCaixas.FieldByName('cax_descricao').AsString
               ) then
                  FrResCaixasGrpData.Printer.Preview()
            else
               Application.MessageBox('Não foi encontrado nenhum registro dentro dos parâmetros informados','TechCore-RTG',mb_IconWarning or mb_Ok);
         finally
            FreeAndNil(FrResCaixasGrpData);
         end;
      end;

      2 : begin
         FrResCaixasGrpVendedor := TFrResCaixasGrpVendedor.Create(self);
         try
            if FrResCaixasGrpVendedor.CarregarDadosBD(
                  eDataIni.Date,
                  eDataFim.Date,
                  eQueryCaixas.FieldByName('id').AsInteger,
                  eQueryCaixas.FieldByName('cax_descricao').AsString
               ) then
                  FrResCaixasGrpVendedor.Printer.Preview()
            else
               Application.MessageBox('Não foi encontrado nenhum registro dentro dos parâmetros informados','TechCore-RTG',mb_IconWarning or mb_Ok);
         finally
            FreeAndNil(FrResCaixasGrpVendedor);
         end;
      end;

      3 : begin
         FrResCaixasDetalhado := TFrResCaixasDetalhado.Create(self);
         try
            if FrResCaixasDetalhado.CarregarDadosBD(
                  eDataIni.Date,
                  eDataFim.Date,
                  eQueryCaixas.FieldByName('id').AsInteger,
                  eQueryCaixas.FieldByName('cax_descricao').AsString
               ) then
                  FrResCaixasDetalhado.Printer.Preview()
            else
               Application.MessageBox('Não foi encontrado nenhum registro dentro dos parâmetros informados','TechCore-RTG',mb_IconWarning or mb_Ok);
         finally
            FreeAndNil(FrResCaixasDetalhado);
         end;
      end;
   end;

end;

end.
