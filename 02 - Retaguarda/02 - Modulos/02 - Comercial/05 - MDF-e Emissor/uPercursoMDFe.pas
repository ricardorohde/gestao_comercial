unit uPercursoMDFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, RzPanel, RzDlgBtn, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrPercurso = class(TForm)
    DataSource1: TDataSource;
    JvDBGrid1: TJvDBGrid;
    ActionList1: TActionList;
    actIncluir: TAction;
    actExcluir: TAction;
    actSair: TAction;
    Button1: TButton;
    Button2: TButton;
    RzDialogButtons1: TRzDialogButtons;
    Query: TFDQuery;
    QueryID: TIntegerField;
    QueryID_C000700: TIntegerField;
    QueryMD_PERCURSO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure QueryAfterInsert(DataSet: TDataSet);
    procedure QueryBeforeDelete(DataSet: TDataSet);
    procedure actExcluirUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPercurso: TFrPercurso;

implementation

{$R *.dfm}

uses uEmissorMDFe, uModuloRet, uPercursoUF;

procedure TFrPercurso.actExcluirExecute(Sender: TObject);
begin
   Query.Delete;
end;

procedure TFrPercurso.actExcluirUpdate(Sender: TObject);
begin
   TAction(Sender).Enabled := not(Query.IsEmpty)
end;

procedure TFrPercurso.actIncluirExecute(Sender: TObject);
begin
   Query.Append;
end;

procedure TFrPercurso.actSairExecute(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrPercurso.FormShow(Sender: TObject);
begin
   Query.Open();
end;

procedure TFrPercurso.QueryAfterInsert(DataSet: TDataSet);
begin
   FrPercursoUF := TFrPercursoUF.Create(self);
   try
      if FrPercursoUF.ShowModal = mrOk then
      begin
         Query.FieldByName('md_percurso').AsString := FrPercursoUF.Uf.Value;
         Query.Post;
      end
      else
         Query.Cancel;
   finally
      FreeAndNil(FrPercursoUF);
   end;
end;

procedure TFrPercurso.QueryBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Tem certeza que deseja excluir este registro?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      abort;
end;

end.
