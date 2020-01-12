unit uSenhaConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus, ACBrBase, ACBrEnterTab, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzLabel, Vcl.Imaging.pngimage, JvExExtCtrls, JvImage;

type
  TFrSenhaConfig = class(TForm)
    JvImage1: TJvImage;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    ed_usuario: TRzEdit;
    ed_senha: TRzEdit;
    Button1: TButton;
    Button2: TButton;
    Panel6: TPanel;
    ACBrEnterTab1: TACBrEnterTab;
    Pop00: TPopupMenu;
    Sair1: TMenuItem;
    aQuery: TFDQuery;
    procedure Sair1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
   iFlag_Tipo_Acesso : Integer;
  end;

var
  FrSenhaConfig: TFrSenhaConfig;

implementation

{$R *.dfm}

procedure TFrSenhaConfig.Button1Click(Sender: TObject);
var
   Str : String;
begin
   if ed_usuario.Text = '' then
   begin
      Application.MessageBox('Informe o usuário.','TechCore-PDV',mb_IconStop or mb_Ok);
      ed_usuario.SetFocus;
      Abort;
   end;

   if ed_senha.Text = '' then
   begin
      Application.MessageBox('Informe a senha.','TechCore-PDV',mb_IconStop or mb_Ok);
      ed_Senha.SetFocus;
      Abort;
   end;

   { Configura a query conforme o tipo de acesso
      1 - Para configurar
      2 - Para fechar caixa
      3 - Para imprimir resumo do caixa
      4 - Para enviar e-mails
   }
   aQuery.Close;
   aQuery.SQL.Clear;
   aQuery.SQL.Add('Select');
   aQuery.SQL.Add('  f_user_adm,');
   aQuery.SQL.Add('  opr_status,');

   if iFlag_Tipo_Acesso = 1 then
      aQuery.SQL.Add('  opr_configura_caixa');

   if iFlag_Tipo_Acesso = 2 then
      aQuery.SQL.Add('  f_fechamento_caixa');

   if iFlag_Tipo_Acesso = 3 then
      aQuery.SQL.Add('  f_print_gerencial');

   if iFlag_Tipo_Acesso = 4 then
      aQuery.SQL.Add('  f_enviar_email');

   aQuery.SQL.Add('from');
   aQuery.SQL.Add('  C000060');
   aQuery.SQL.Add('where');
   aQuery.SQL.Add('  opr_usuario = :opr_usuario');
   aQuery.SQL.Add('and');
   aQuery.SQL.Add('  opr_senha   = :opr_senha');
   aQuery.ParamByName('opr_usuario').AsString := ed_usuario.Text;
   aQuery.ParamByName('opr_senha').AsString   := ed_senha.Text;
   aQuery.Open();

   if aQuery.IsEmpty then
   begin
      Application.MessageBox('Usuário e ou senha e incorretos.','TechCore-PDV',mb_IconStop or mb_Ok);
      ed_senha.SetFocus;
      Abort;
   end;

   if aQuery.FieldByName('opr_status').AsInteger = 2 then
   begin
      Application.MessageBox('Cadastro inativo para este usuário, contate o administrador do sistema.','TechCore-PDV',mb_IconStop or mb_Ok);
      ed_senha.SetFocus;
      Abort;
   end;

   if aQuery.FieldByName('f_user_adm').AsInteger = 1 then
   begin
      Self.ModalResult := mrOk;
      Exit;
   end;

   case iFlag_Tipo_Acesso of

      1 :if aQuery.FieldByName('opr_configura_caixa').AsInteger = 2 then
         begin
            Application.MessageBox('Acesso não permitido, contate o Administrador do Sistema.','TechCore-PDV',mb_IconStop or mb_Ok);
            ed_senha.SetFocus;
            Abort;
         end;

      2 :if aQuery.FieldByName('f_fechamento_caixa').AsInteger  = 2 then
         begin
            Application.MessageBox('Acesso não permitido, contate o Administrador do Sistema.','TechCore-PDV',mb_IconStop or mb_Ok);
            ed_senha.SetFocus;
            Abort;
         end;

      3 :if aQuery.FieldByName('f_print_gerencial').AsInteger  = 2 then
         begin
            Application.MessageBox('Acesso não permitido, contate o Administrador do Sistema.','TechCore-PDV',mb_IconStop or mb_Ok);
            ed_senha.SetFocus;
            Abort;
         end;

      4 :if aQuery.FieldByName('f_enviar_email').AsInteger  = 2 then
         begin
            Application.MessageBox('Acesso não permitido, contate o Administrador do Sistema.','TechCore-PDV',mb_IconStop or mb_Ok);
            ed_senha.SetFocus;
            Abort;
         end;
   end;

   Self.ModalResult := mrOk;
end;

procedure TFrSenhaConfig.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

end.
