unit uOrdemServicoAnotacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Vcl.StdCtrls, Vcl.DBCtrls, Data.DB;

type
  TFrOrdemServicoAnotacoes = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    dsQuery: TDataSource;
    ed_anotacoes: TDBMemo;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
    procedure ed_anotacoesEnter(Sender: TObject);
    procedure ed_anotacoesExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOrdemServicoAnotacoes: TFrOrdemServicoAnotacoes;

implementation

uses
   uOrdemServico, uModuloRet;

{$R *.dfm}

procedure TFrOrdemServicoAnotacoes.ed_anotacoesEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00DFDFDF;
end;

procedure TFrOrdemServicoAnotacoes.ed_anotacoesExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWhite;
end;

procedure TFrOrdemServicoAnotacoes.RzDialogButtons1ClickOk(Sender: TObject);
begin
   Self.ModalResult := mrOk;
end;

end.
