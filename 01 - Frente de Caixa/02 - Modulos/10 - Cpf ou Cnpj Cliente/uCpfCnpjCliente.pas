unit uCpfCnpjCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls,
  JvImage, ACBrBase, ACBrValidador;

type
  TFrCpfCnpjCliente = class(TForm)
    Panel1: TPanel;
    JvImage3: TJvImage;
    Label7: TLabel;
    JvImage1: TJvImage;
    Panel2: TPanel;
    Pop00: TPopupMenu;
    s1: TMenuItem;
    eCpfCnpj: TRzNumericEdit;
    N1: TMenuItem;
    S2: TMenuItem;
    ChecaDoc: TACBrValidador;
    procedure s1Click(Sender: TObject);
    procedure JvImage1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure eCpfCnpjEnter(Sender: TObject);
    procedure eCpfCnpjExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrCpfCnpjCliente: TFrCpfCnpjCliente;

implementation

uses
   uPrincipal;

{$R *.dfm}

procedure TFrCpfCnpjCliente.eCpfCnpjEnter(Sender: TObject);
begin
   TEdit(Sender).Color := $00D5FFFF;
end;

procedure TFrCpfCnpjCliente.eCpfCnpjExit(Sender: TObject);
begin
   TEdit(Sender).Color := clWindow;
end;

procedure TFrCpfCnpjCliente.JvImage1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrCpfCnpjCliente.s1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrCpfCnpjCliente.S2Click(Sender: TObject);
begin

   if Length( eCpfCnpj.Text ) < 8 then
   begin
      Imprime_display('informe um CPF ou CNPJ válido.', clRed);
      Sleep(2000);
      Imprime_display_anterior;
      Abort;
   end;

   if length( eCpfCnpj.Text ) < 12 then
   begin
      ChecaDoc.TipoDocto := docCPF;
      ChecaDoc.Documento := eCpfCnpj.Text;

      if not ChecaDoc.Validar then
      begin
         Imprime_display('número de CPF inválido.', clRed);
         Sleep(2000);
         Imprime_display_anterior;
         Abort;
      end
      else
         Self.ModalResult := mrOk;
   end;

   if length( eCpfCnpj.Text ) > 11 then
   begin
      ChecaDoc.TipoDocto := docCNPJ;
      ChecaDoc.Documento := eCpfCnpj.Text;

      if not ChecaDoc.Validar then
      begin
         Imprime_display('númerod de CNPJ inválido.', clRed);
         Sleep(2000);
         Imprime_display_anterior;
         Abort;
      end
      else
         Self.ModalResult := mrOk;
   end;

end;

end.
