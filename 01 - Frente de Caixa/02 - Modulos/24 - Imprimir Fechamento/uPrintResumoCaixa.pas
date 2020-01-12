unit uPrintResumoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, NxDBColumns, Data.DB, ACBrBase, ACBrPosPrinter,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, System.ImageList, Vcl.ImgList, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzPanel, RzButton, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, JvExExtCtrls, JvImage, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvExStdCtrls, JvCombobox, ACBrUtil, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid;

type
  TFrPrintResumoCaixa = class(TForm)
    RzToolbar1: TRzToolbar;
    btnNew: TRzToolButton;
    btnOK: TRzToolButton;
    RzSpacer1: TRzSpacer;
    dsQuery: TDataSource;
    Query: TFDQuery;
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action4: TAction;
    QueryID: TIntegerField;
    QueryID_ABERTURA: TStringField;
    QueryF_ABER_DATA: TSQLTimeStampField;
    QueryF_ABER_VALOR: TFMTBCDField;
    QueryF_STATUS: TIntegerField;
    QueryF_FECH_DATA: TSQLTimeStampField;
    QueryF_FECH_VALOR: TFMTBCDField;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    Image2: TImage;
    eGrid: TJvDBGrid;
    procedure Action1Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Update(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPrintResumoCaixa: TFrPrintResumoCaixa;

implementation

uses
   Classe.Empresa, uModulo, uPrincipal, Classe.Caixa, uRelatorioCaixa;

{$R *.dfm}

procedure TFrPrintResumoCaixa.Action1Execute(Sender: TObject);
begin
   try
      FrRelatorioCaixa := TFrRelatorioCaixa.Create(self);
      FrRelatorioCaixa.DataHoraAbert := Query.FieldByName('f_aber_data').AsDateTime;

      FrRelatorioCaixa.CarregarRelatorio(
         {Informa o id de abertura}
         Query.FieldByName('id_abertura').AsString
         ,true
      );
   finally
      FreeAndNil( FrRelatorioCaixa );
   end;
end;

procedure TFrPrintResumoCaixa.Action1Update(Sender: TObject);
begin
   (Sender as TAction).Enabled := not (Query.IsEmpty);
end;

procedure TFrPrintResumoCaixa.Action4Execute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPrintResumoCaixa.FormCreate(Sender: TObject);
begin
   Query.Open();
end;

end.
