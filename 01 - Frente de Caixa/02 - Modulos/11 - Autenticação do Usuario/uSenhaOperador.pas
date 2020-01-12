unit uSenhaOperador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, Vcl.Imaging.pngimage, JvExExtCtrls, JvImage, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrBase, ACBrEnterTab;

type
  TFrSenhaOperador = class(TForm)
    Pop00: TPopupMenu;
    E1: TMenuItem;
    ed_senha: TRzEdit;
    Image1: TImage;
    C1: TMenuItem;
    N1: TMenuItem;
    Shape3: TShape;
    procedure E1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Etapas_Processos, eUserCodigo : Integer;
    eUserLogin, eUserSenha : String;
  public
    iFlag_Tipo_Acesso : Integer;
  end;

var
  FrSenhaOperador: TFrSenhaOperador;

implementation

uses
   uModulo, Classe.Empresa, uPrincipal, uVendas;

{$R *.dfm}

procedure TFrSenhaOperador.C1Click(Sender: TObject);
var
   aQuery : TFDQuery;
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        20/02/2019
      Descrição:  Procedimento para verificar se foi informado o usuário
   ------------------------------------------------------------------------------------- }
   case Etapas_Processos of
      1 :
      begin

         // Verifica se foi informado o usuário
         if ed_senha.Text = '' then
         begin
            Imprime_display('Informe o código ou o nome do usuário', clYellow);
            Sleep(2000);
            Imprime_display_anterior;
            Abort;
         end;

         // Armazena o nome de usuário e ou código informado
         eUserLogin := AnsiUpperCase(ed_senha.Text);

         // Se for código converte para inteiro
         TryStrToInt(eUserLogin, eUserCodigo);

         // Altera o formulário para solicitar a senha
         ed_senha.Clear;
         ed_senha.PasswordChar := '*';
         ed_senha.TextHint     := 'Informe a Senha';

         // Define a próxima etapa
         Etapas_Processos := 2;
      end;

      2 :
      begin

         // Verifica se foi informado a senha
         if ed_Senha.Text = '' then
         begin
            Imprime_display('Informe a senha do usuário', clYellow);
            Sleep(2000);
            Imprime_display_anterior;
            Abort;
         end;

         // Armazena o nome de usuário e ou código informado
         eUserSenha := AnsiUpperCase(ed_senha.Text);

         // Define a próxima etapa
         Etapas_Processos := 3;

      end;

   end;

   // Verifica se os dados informados existem
   if Etapas_Processos = 3 then
   begin

      aQuery            := TFDQuery.Create(self);
      aQuery.Connection := FrModulo.DBCon_Local;
      try
         // Ajusta a string conforme o tipo de solicitação
         //if iFlag_Tipo_Acesso = 5 then
         //   Str := 'SELECT OPR_CANCELA_CUPOM,  OPR_STATUS FROM C000060 WHERE ID_EMPRESA = :ID_EMPRESA AND ( OPR_USUARIO = :OPR_USUARIO or OPR_CODIGO = :OPR_CODIGO) AND OPR_SENHA = :OPR_SENHA';

         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('Select');
         aQuery.SQL.Add('  opr_status');
         aQuery.SQL.Add('from');
         aQuery.SQL.Add('  C000060');
         aQuery.SQL.Add('Where');
         aQuery.SQL.Add('  id_empresa = :id_empresa');
         aQuery.SQL.Add('and');
         aQuery.SQL.Add('  (opr_usuario = :opr_usuario or opr_codigo = :opr_codigo)');
         aQuery.SQL.Add('and');
         aQuery.SQL.Add('  opr_senha = :opr_senha');
         aQuery.ParamByName('id_empresa').AsInteger := FEmpresaClass.ID;
         aQuery.ParamByName('opr_codigo').AsInteger := eUserCodigo;
         aQuery.ParamByName('opr_usuario').AsString := eUserLogin;
         aQuery.ParamByName('opr_senha').AsString   := eUserSenha;
         aQuery.Open();

         if aQuery.IsEmpty then
         begin
            Imprime_display('usuário e ou senhas incorretos.', clRed);
            Sleep(1000);
            Imprime_display_anterior;

            {Reinicia o formulário}
            Self.OnShow(nil);

            ed_senha.SelectAll;
            Abort;
         end;

         // Verifica se o usuário está inativo no sistema
         if aQuery.FieldByName('opr_status').AsInteger <> 1 then
         begin
            Imprime_display('usuario inativo no sistema.', clRed);
            Sleep(1000);
            Imprime_display_anterior;
            Abort;
         end;

         // Confirma a exclusão
         Self.ModalResult := mrOk;

      finally
         FreeAndNil( aQuery );
      end;

   end;

end;

procedure TFrSenhaOperador.E1Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrSenhaOperador.FormCreate(Sender: TObject);
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Dat:        20/02/2019
      Descrição:  Ajusta o formulário na a bertura
   ------------------------------------------------------------------------------------- }
   ed_senha.PasswordChar := #0;
   ed_senha.TextHint     := 'Informe o Usuário';
   Etapas_Processos      := 1;

end;

procedure TFrSenhaOperador.FormShow(Sender: TObject);
begin
   // Posiciona a tela de item no formulário
   Self.top  := FrVendas.pn_Principal.Top + 400;
   Self.Left := FrVendas.pn_Principal.Left + 46;

   {Retorna a etapa 1 do processo}
   Etapas_Processos := 1;

   {Ajusta o formulário}
   ed_senha.Clear;
   ed_senha.PasswordChar := #0;
   ed_senha.Hint := 'Informe o Usuários';

end;

end.
