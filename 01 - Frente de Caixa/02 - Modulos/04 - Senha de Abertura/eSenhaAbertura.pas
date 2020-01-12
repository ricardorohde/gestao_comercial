unit eSenhaAbertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, System.DateUtils,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, JvExExtCtrls, JvImage, JvExMask,
  JvToolEdit, JvBaseEdits, Vcl.Mask, RzEdit, ACBrBase, ACBrEnterTab,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  JvDataSource, JvComponentBase, JvComputerInfoEx;

type
  TFrSenhaAbertura = class(TForm)
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    eOperador: TRzEdit;
    eSenha: TRzEdit;
    eTroco: TJvCalcEdit;
    JvImage1: TJvImage;
    lbCaixa: TPanel;
    Button1: TButton;
    Button2: TButton;
    ACBrEnterTab1: TACBrEnterTab;
    Pop00: TPopupMenu;
    Sair1: TMenuItem;
    ed_caixa: TRzLabel;
    procedure Button2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Cax_Status : String;
  public
    { Public declarations }
  end;

var
  FrSenhaAbertura: TFrSenhaAbertura;

implementation

uses
   Classe.Empresa, uModulo, Classe.Operador, Classe.Caixa, uPrincipal;

{$R *.dfm}

procedure TFrSenhaAbertura.Button1Click(Sender: TObject);
var
   aQuery : TFDQuery;
   Opr_ID, Opr_Status: Integer;
   myAno, myMes, myDia, myHora, myMin, mySec, myMil : Word;
begin
   // Confere o preenchimento dos campos
   if eOperador.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar um Operador','TechCore-PDV',mb_IconStop or mb_Ok);
      eOperador.SetFocus;
      Abort;
   end;

   // Confere o preenchimento dos campos
   if eSenha.Text = '' then
   begin
      Application.MessageBox('Obrigatório informar a Senha','TechCore-PDV',mb_IconStop or mb_Ok);
      eSenha.SetFocus;
      Abort;
   end;

   // Confere o preenchimento dos campos
   if eTroco.Value < 0 then
   begin
      Application.MessageBox('O Valor do troco não pode ser menor que 0.00','TechCore-PDV',mb_IconStop or mb_Ok);
      eTroco.SetFocus;
      Abort;
   end;


   aQuery            := TFDQuery.Create(self);
   aQuery.Connection := FrModulo.DBCon_Local;
   try
      // Confere os dados informados
      aQuery.SQL.Add('SELECT ID, OPR_STATUS FROM C000060 WHERE OPR_USUARIO = :OPR_USUARIO AND OPR_SENHA = :OPR_SENHA');
      aQuery.ParamByName('opr_usuario').AsString := eOperador.Text;
      aQuery.ParamByName('opr_senha').AsString   := eSenha.Text;
      aQuery.Open();

      if aQuery.IsEmpty then
      begin
         Application.MessageBox('Usuário e ou Senha não encontrados.','TechCore-PDV',mb_IconStop or mb_Ok);
         eSenha.SetFocus;
         Abort;
      end;

      if aQuery.FieldByName('opr_status').AsInteger = 2 then
      begin
         Application.MessageBox('Acesso não permitido, contate o Administrador do Sistema.','TechCore-PDV',mb_IconStop or mb_Ok);
         eSenha.SetFocus;
         Abort;
      end;

      // Armazena os dados recuperados
      Opr_ID     := aQuery.FieldByName('ID').AsInteger;
      Opr_Status := aQuery.FieldByName('OPR_STATUS').AsInteger;

      // Prepara o objeto Operador
      if Assigned( ObjOperador ) then
         FreeAndNil( ObjOperador );

      ObjOperador := TObjOperador.Create( Opr_ID );

      // Prepara o objeto Caixa
      if Assigned( ObjCaixa ) then
         FreeAndNil( ObjCaixa );

      ObjCaixa := TObjCaixa.Create;

      // Se o caixa já estiver aberto, somente confirma a bertura
      if Cax_Status = 'Aberto' then
      begin
         Self.ModalResult := mrOk;
         Exit;
      end;

      try
         // Se houverem dados de abertura, (sujeiras) limpa a tabela
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('DELETE FROM C000001');
         aQuery.ExecSQL;

         // Gera o ID da abertura do caixa
         DecodeDateTime(Now, myAno, myMes, myDia, myHora, myMin, mySec, myMil);

         vr_id_abertura := Format('%.4d', [myAno]);
         vr_id_abertura := vr_id_abertura + Format('%.2d', [myMes]);
         vr_id_abertura := vr_id_abertura + Format('%.2d', [myDia]);
         vr_id_abertura := vr_id_abertura + Format('%.2d', [myHora]);
         vr_id_abertura := vr_id_abertura + Format('%.2d', [myMin]);
         vr_id_abertura := vr_id_abertura + Format('%.2d', [mySec]);
         vr_id_abertura := vr_id_abertura + Format('%.3d', [myMil]);

         // Grava os dados de abertura no banco de dados local
         aQuery.Close;
         aQuery.SQL.Clear;
         aQuery.SQL.Add('INSERT INTO C000001(');
         aQuery.SQL.Add('  ID_ABERTURA, ');
         aQuery.SQL.Add('  ID_EMPRESA,  ');
         aQuery.SQL.Add('  ID_OPERADOR, ');
         aQuery.SQL.Add('  F_ABER_DATA, ');
         aQuery.SQL.Add('  F_ABER_VALOR,');
         aQuery.SQL.Add('  F_STATUS     ');
         aQuery.SQL.Add(')VALUES(');
         aQuery.SQL.Add('  :ID_ABERTURA, ');
         aQuery.SQL.Add('  :ID_EMPRESA,  ');
         aQuery.SQL.Add('  :ID_OPERADOR, ');
         aQuery.SQL.Add('  :F_ABER_DATA, ');
         aQuery.SQL.Add('  :F_ABER_VALOR,');
         aQuery.SQL.Add('  :F_STATUS    )');

         aQuery.ParamByName('ID_ABERTURA').AsString   := vr_id_abertura;
         aQuery.ParamByName('ID_EMPRESA').AsInteger   := FEmpresaClass.ID;
         aQuery.ParamByName('ID_OPERADOR').AsInteger  := Opr_ID;
         aQuery.ParamByName('F_ABER_DATA').AsDateTime := now;
         aQuery.ParamByName('F_ABER_VALOR').AsFloat   := eTroco.Value;
         aQuery.ParamByName('F_STATUS').AsInteger     := 1;
         aQuery.ExecSQL;

         // Data da abertura
         ObjCaixa.Caixa_Abert_Data := Now;

         // Confirma a abertura do caixa
         Self.ModalResult := mrOk;

      except
         on e:Exception do
            Application.MessageBox(pChar('Erro ao abrir o Caixa, contate o Suporte Técnico.' + sLineBreak + e.Message),'TechCore-RTG',mb_IconStop or mb_Ok);
      end;

   finally
      FreeAndNil( aQuery );
   end;

end;

procedure TFrSenhaAbertura.Button2Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TFrSenhaAbertura.FormCreate(Sender: TObject);
var
   aQuery : TFDQuery;
begin
   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       07/03/2019
      Descrição:  configura o visual do caixa antes de iniciar
   ------------------------------------------------------------------------------------- }
   ed_caixa.Caption := ObjCaixa.Caixa_Descricao;

   { -----------------------------------------------------------------------------------
      Autor:      Winston Moreira
      Data:       17/02/2019
      Descrição:  Verifica se o caixa está ainda está aberto
   ------------------------------------------------------------------------------------- }
   aQuery            := TFDQuery.Create(self);
   aQuery.Connection := FrModulo.DBCon_Local;

   try
      aQuery.SQL.Add('SELECT');
      aQuery.SQL.Add('  T1.ID_CAIXA,');
      aQuery.SQL.Add('  T1.F_ABER_VALOR,');
      aQuery.SQL.Add('  (SELECT OPR_USUARIO FROM C000060 WHERE ID = T1.ID_OPERADOR)');
      aQuery.SQL.Add('FROM');
      aQuery.SQL.Add('  C000001 AS T1');
      aQuery.SQL.Add('WHERE');
      aQuery.SQL.Add('  T1.F_STATUS = :F_STATUS');
      aQuery.ParamByName('F_STATUS').AsInteger := 1;
      aQuery.Open();

      if not aQuery.IsEmpty then
      begin

         // Informa o usuário
         eOperador.Text    := aQuery.FieldByName('OPR_USUARIO').AsString;
         eOperador.Enabled := false;

         // Informa o valor do troco
         eTroco.Value   := aQuery.FieldByName('F_ABER_VALOR').AsFloat;
         eTroco.Enabled := false;

         // Determina como caixa aberto
         Cax_Status := 'Aberto';
      end;

   finally
      FreeAndNil( aQuery );
   end;

end;

procedure TFrSenhaAbertura.Sair1Click(Sender: TObject);
begin
   Self.Close;
end;

end.
