unit uPercursoUF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Vcl.StdCtrls, RzCmboBx, RzDBCmbo, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TFrPercursoUF = class(TForm)
    GroupBox1: TGroupBox;
    RzDialogButtons1: TRzDialogButtons;
    Uf: TRzComboBox;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPercursoUF: TFrPercursoUF;

implementation

{$R *.dfm}

procedure TFrPercursoUF.RzDialogButtons1ClickOk(Sender: TObject);
begin
   if Uf.ItemIndex < 0 then
   begin
      Application.MessageBox('Selecione a UF de percurso.','TechCore-RTG',mb_IconWarning or mb_ok);
      Uf.SetFocus;
      Exit;
   end;

   Self.ModalResult := mrOk;
end;

end.
