unit uConfigEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, RzRadChk, RzDBChk,
  Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel, RzDlgBtn, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrConfigEstoque = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Label1: TLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    Query: TFDQuery;
    dsQuery: TDataSource;
    QueryID: TIntegerField;
    QueryID_EMPRESA: TIntegerField;
    QueryCTRL_ESTOQUE: TStringField;
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure dsQueryStateChange(Sender: TObject);
    procedure RzDialogButtons1ClickCancel(Sender: TObject);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConfigEstoque: TfrConfigEstoque;

implementation

{$R *.dfm}

uses uModuloRet, Classe.Empresa;

procedure TfrConfigEstoque.dsQueryStateChange(Sender: TObject);
begin
   RzDialogButtons1.BtnOK.Enabled := Query.State in [dsInsert, dsEdit];
end;

procedure TfrConfigEstoque.FormCreate(Sender: TObject);
begin
   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.Open();
end;

procedure TfrConfigEstoque.QueryBeforePost(DataSet: TDataSet);
begin
   {confirma se continuar}
   if Application.MessageBox('Ao habilitar ou desabilitar este recurso, o mesmo afetará todos os produtos, deseja continuar?','TechCore-RTG',mb_IconQuestion or mb_YesNo) = mrNo then
      Abort
   else
   begin
      {efetua o vinculo da empresa ao registro}
      DataSet.FieldByName('id_empresa').AsInteger := FEmpresaClass.ID;
      Self.ModalResult := mrOk;
   end;
end;

procedure TfrConfigEstoque.RzDialogButtons1ClickCancel(Sender: TObject);
begin
   if Query.State in [dsInsert, dsEdit] then
      Query.Cancel;

   Self.Close;

end;

procedure TfrConfigEstoque.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Query.Post;
end;

end.
