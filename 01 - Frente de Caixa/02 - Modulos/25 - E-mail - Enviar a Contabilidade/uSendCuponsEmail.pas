unit uSendCuponsEmail;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.Zip,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, NxDBColumns, NxColumns, NxScrollControl,
   NxCustomGridControl, NxCustomGrid, NxDBGrid, Data.DB, IdBaseComponent,
   IdComponent, IdTCPConnection, IdTCPClient, FireDAC.Comp.DataSet,
   FireDAC.Comp.Client, Vcl.Buttons, JvExStdCtrls, JvCombobox,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
   Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvExMask, JvToolEdit,
   Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.ExtCtrls, ShellApi,
   IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
   IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, ACBrBase,
   ACBrValidador, Vcl.Menus;

type
   TFrSendCuponsEmail = class(TForm)
      Panel1: TPanel;
      ed_data_ini: TJvDateEdit;
      ed_data_fim: TJvDateEdit;
      ed_tipo: TJvComboBox;
      Label1: TLabel;
      Label2: TLabel;
      Panel2: TPanel;
      Panel3: TPanel;
      Label3: TLabel;
      ed_email: TEdit;
      bt_filtrar: TBitBtn;
      bt_enviar: TBitBtn;
      Query: TFDQuery;
      dsQuery: TDataSource;
      IdTCPClient1: TIdTCPClient;
      QueryID: TIntegerField;
      QueryF_CUPOM_DATA: TSQLTimeStampField;
      QueryF_CUPOM_NUMERO: TIntegerField;
      QueryF_VLR_CUPOM: TFMTBCDField;
      QueryF_CUPOM_STATUS: TIntegerField;
      QueryF_XML: TMemoField;
      QueryF_XML_CHAVE: TStringField;
      QueryF_XML_CANCELADO: TMemoField;
      QueryF_XML_CANCELADO_CHAVE: TStringField;
      NextDBGrid1: TNextDBGrid;
      NxDBDateColumn1: TNxDBDateColumn;
      NxDBNumberColumn1: TNxDBNumberColumn;
      NxDBTextColumn1: TNxDBTextColumn;
      NxDBImageColumn1: TNxDBImageColumn;
      ImageList1: TImageList;
      br_Progress: TProgressBar;
      IdSMTP: TIdSMTP;
      ACBrValidar: TACBrValidador;
      pQuery: TFDQuery;
    pQueryF_CUPOM_NUMERO: TIntegerField;
    pQueryF_XML: TMemoField;
    pQueryF_XML_CHAVE: TStringField;
    pQueryF_CUPOM_DATA: TDateField;
    pQueryF_CUPOM_STATUS: TIntegerField;
      QueryF_CANCELADO: TStringField;
      pQueryF_CAIXA_DESCRICAO: TStringField;
      PopupMenu1: TPopupMenu;
      Impressora1: TMenuItem;
    pQueryF_VLR_CUPOM: TSingleField;
    pQueryF_VLR_CUPOM_A: TSingleField;
    pQueryF_VLR_CUPOM_C: TSingleField;
      procedure FormCreate(Sender: TObject);
      procedure bt_enviarClick(Sender: TObject);
      procedure bt_filtrarClick(Sender: TObject);
   private
      { Private declarations }
      function Extrair_Arquivos_Xmls: Boolean;
      function Criar_PDF: Boolean;
      function Compactar_Arquivos_XMLs: Boolean;
      procedure Enviar_Email_XMLs;
   public
      { Public declarations }
   end;

var
   FrSendCuponsEmail: TFrSendCuponsEmail;

implementation

uses
   Classe.Empresa, uRelCupons;

{$R *.dfm}

function RemoveDirectory(const Path: string): Boolean;
var
   SHFileOpStruct: TSHFileOpStruct;
   DirBuf: array [0 .. 255] of Char;
begin
   if DirectoryExists(Path) then
      try
         FillChar(SHFileOpStruct, Sizeof(SHFileOpStruct), 0);
         FillChar(DirBuf, Sizeof(DirBuf), 0);
         StrPCopy(DirBuf, Path);
         with SHFileOpStruct do
         begin
            Wnd := 0;
            pFrom := @DirBuf;
            wFunc := FO_DELETE;
            fFlags := FOF_NOCONFIRMATION or FOF_SILENT;
         end;
         Result := SHFileOperation(SHFileOpStruct) = 0;
      except
         Result := False;
      end;
end;

procedure TFrSendCuponsEmail.bt_enviarClick(Sender: TObject);
begin
   if Query.IsEmpty then
   begin
      Application.MessageBox('Não existem cupons selecionados.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      Abort;
   end;

   ACBrValidar.Documento := ed_email.Text;
   if not ACBrValidar.Validar then
   begin
      Application.MessageBox('Informe o endereço válido de e-mail do destinatário.', 'TechCore-RTG', mb_IconStop or mb_Ok);
      ed_email.SetFocus;
      Abort;
   end;

   if Extrair_Arquivos_Xmls then
      if Criar_PDF then
         if Compactar_Arquivos_XMLs then
            Enviar_Email_XMLs;

   ChDir('../');
   RemoveDirectory('Contabilidade');

end;

procedure TFrSendCuponsEmail.bt_filtrarClick(Sender: TObject);
var
   StrSql: String;
begin
   // Exibe os cupons existentes
   StrSql := 'SELECT * FROM C000050 WHERE CAST(F_CUPOM_DATA AS DATE) BETWEEN :ADATA AND :FDATA AND F_CUPOM_DIRETIVA = 1';

   if ed_tipo.ItemIndex = 1 then
      StrSql := StrSql + ' AND F_CUPOM_STATUS = 1';

   if ed_tipo.ItemIndex = 2 then
      StrSql := StrSql + ' AND F_CUPOM_STATUS = 2';

   // Ordena os registros
   StrSql := StrSql + 'ORDER BY ID ASC';

   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add(StrSql);
   Query.ParamByName('ADATA').AsDateTime := ed_data_ini.Date;
   Query.ParamByName('FDATA').AsDateTime := ed_data_fim.Date;
   Query.Open();
end;

function TFrSendCuponsEmail.Compactar_Arquivos_XMLs: Boolean;
var
   ZipFile: TZipFile;
begin
   Result := False;

   ZipFile := TZipFile.Create;

   // Retorna para a pasta Contabilidade
   ChDir('../');

   bt_enviar.Caption := 'Compactando arquivos, aguarde...';

   // Efetua a compactação da pasta
   ZipFile.ZipDirectoryContents('Arquivos_XMLs.zip', 'Arquivos Extraidos');
   ZipFile.Free;

   Result := true;
end;

function TFrSendCuponsEmail.Criar_PDF: Boolean;
begin
   Result := False;
   try
      pQuery.ParamByName('ADATA').AsDateTime := ed_data_ini.Date;
      pQuery.ParamByName('FDATA').AsDateTime := ed_data_fim.Date;
      pQuery.Open();

      // Cria o formulário
      FrRelCupons := TFrRelCupons.Create(self);

      // Informa as datas
      FrRelCupons.vr_data_a := ed_data_ini.Date;
      FrRelCupons.vr_data_f := ed_data_fim.Date;

      // Gera oarquivo pdf
      FrRelCupons.Printer.SaveToFile('Cupons.pdf');

      Result := true;
   finally
      FreeAndNil(FrRelCupons);
   end;
end;

procedure TFrSendCuponsEmail.Enviar_Email_XMLs;
var
   // variáveis e objetos necessários para o envio
   IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
   IdSMTP: TIdSMTP;
   IdMessage: TIdMessage;
   IdText: TIdText;
   sAnexo: string;
begin

   // instanciação dos objetos
   IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(self);
   IdSMTP := TIdSMTP.Create(self);
   IdMessage := TIdMessage.Create(self);

   try
      // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

      // Configuração do servidor SMTP (TIdSMTP)
      IdSMTP.IOHandler := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS := utUseImplicitTLS;
      IdSMTP.AuthType := satDefault;
      IdSMTP.Port := FEmpresaClass.EmailPorta;
      IdSMTP.Host := FEmpresaClass.EmailHost;
      IdSMTP.Username := FEmpresaClass.EmailUserName;
      IdSMTP.Password := FEmpresaClass.EmailPassword;

      // Configuração da mensagem (TIdMessage)
      IdMessage.From.Address := FEmpresaClass.EmailUserName;
      IdMessage.From.Name := FEmpresaClass.NomeFantasia;
      IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
      IdMessage.Recipients.Add.Text := ed_email.Text;
      IdMessage.Subject := FEmpresaClass.EmailAssunto;
      IdMessage.Encoding := meMIME;

      // Configuração do corpo do email (TIdText)
      IdText := TIdText.Create(IdMessage.MessageParts);
      IdText.Body.Add(FEmpresaClass.EmailCorpo);
      IdText.ContentType := 'text/plain; charset=iso-8859-1';

      bt_enviar.Caption := 'Enviando Arquivos, aguarde...';

      // Opcional - Anexo da mensagem (TIdAttachmentFile)
      sAnexo := 'Arquivos_XMLs.zip';
      if FileExists(sAnexo) then
      begin
         TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
      end;

      // Conexão e autenticação
      try
         IdSMTP.Connect;
         IdSMTP.Authenticate;

         Application.ProcessMessages;
      except
         on E: Exception do
         begin
            MessageDlg('Erro na conexão ou autenticação: ' + E.Message, mtWarning, [mbOK], 0);
            Exit;
         end;
      end;

      // Envio da mensagem
      try
         IdSMTP.Send(IdMessage);
         MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
         self.Close;
      except
         On E: Exception do
         begin
            MessageDlg('Erro ao enviar a mensagem: ' + E.Message, mtWarning, [mbOK], 0);
         end;
      end;
   finally
      // desconecta do servidor
      IdSMTP.Disconnect;

      // liberação da DLL
      UnLoadOpenSSLLibrary;

      // liberação dos objetos da memória
      FreeAndNil(IdMessage);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(IdSMTP);
   end;
end;

function TFrSendCuponsEmail.Extrair_Arquivos_Xmls: Boolean;
var
   ArquivoXml: TextFile;
begin
   Result := False;

   // Cria a pasta contabilidade no diretório principal
   ChDir('../');

   if DirectoryExists('Contabilidade') then
      RemoveDirectory('Contabilidade');

   // Coloca o cursor no início do da tabela
   MkDir('Contabilidade');

   // Acessa o diretório
   ChDir('Contabilidade');

   // Cria o diretório onde será extraido os arquivos XMLs
   MkDir('Arquivos Extraidos');

   // Entra na pasta de arquivos extraidos
   ChDir('Arquivos Extraidos');

   // Posiciona o cursor no início da tabela
   Query.First;

   // Exibe o progress
   br_Progress.Visible := true;
   br_Progress.Max := Query.RecordCount;

   bt_enviar.Caption := 'Gerando arquivos, aguarde...';

   // Cria um loop para gerar os arquivos exibidos no grid
   repeat
      Application.ProcessMessages;
      br_Progress.Position := Query.RecNo;

      AssignFile(ArquivoXml, 'Cfe' + Query.FieldByName('F_XML_CHAVE').AsString + '.xml');

      Rewrite(ArquivoXml);
      Write(ArquivoXml, Query.FieldByName('F_XML').AsAnsiString);
      CloseFile(ArquivoXml);

      Query.Next;
   until (Query.Eof);

   Result := true;
end;

procedure TFrSendCuponsEmail.FormCreate(Sender: TObject);
begin
   // Ajusta os campos data
   ed_data_ini.Date := Date;
   ed_data_fim.Date := Date;
end;

end.
