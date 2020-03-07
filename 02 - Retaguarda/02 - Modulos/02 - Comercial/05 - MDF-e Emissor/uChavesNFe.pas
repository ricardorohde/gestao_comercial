unit uChavesNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.ExtCtrls, RzPanel, RzDlgBtn, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.DBCtrls, JvDBControls;

type
  TFrChavesNFe = class(TForm)
    GridChave: TJvDBGrid;
    Query: TFDQuery;
    dsQuery: TDataSource;
    RzDialogButtons1: TRzDialogButtons;
    QueryID: TIntegerField;
    QueryID_C000705: TIntegerField;
    QueryMD_CHAVE_NFE: TStringField;
    JvDBNavigator1: TJvDBNavigator;
    procedure QueryAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure QueryAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrChavesNFe: TFrChavesNFe;

implementation

{$R *.dfm}

uses uDoctos, uModuloRet, uChaveNFe;

procedure TFrChavesNFe.QueryAfterEdit(DataSet: TDataSet);
begin
   FrChaveNFe := TFrChaveNFe.Create(self);
   try
      if FrChaveNFe.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel
   finally
      FreeAndNil(FrChaveNFe);
   end;
end;

procedure TFrChavesNFe.QueryAfterInsert(DataSet: TDataSet);
begin
   FrChaveNFe := TFrChaveNFe.Create(self);
   try
      if FrChaveNFe.ShowModal = mrOk then
         Query.Post
      else
         Query.Cancel
   finally
      FreeAndNil(FrChaveNFe);
   end;
end;

procedure TFrChavesNFe.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort;
end;

procedure TFrChavesNFe.FormShow(Sender: TObject);
begin
   Query.Open();
end;

end.
