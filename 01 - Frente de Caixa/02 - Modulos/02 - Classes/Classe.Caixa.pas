unit Classe.Caixa;

interface

Uses
   Winapi.Windows, Winapi.Messages,  System.SysUtils, System.Variants, System.Classes,
   Vcl.Graphics,   Vcl.Controls,     Vcl.Forms,       Vcl.Dialogs,     Vcl.Imaging.pngimage,
   Vcl.ExtCtrls,   JvExExtCtrls,     JvImage,         Vcl.StdCtrls,    Vcl.Buttons,
   PngSpeedButton, Vcl.Imaging.jpeg, Vcl.Menus,       Data.DB,         System.DateUtils,

   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,   FireDAC.Stan.Error,
   FireDAC.DatS,      FireDAC.Phys.Intf,   FireDAC.DApt.Intf,    FireDAC.Stan.Async,
   FireDAC.DApt,      FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TObjCaixa = class
   private
      FCaixa_ID                : Integer;
      FCaixa_Codigo            : Integer;
      FCaixa_Descricao         : String;
      FCaixa_SolicitaCPF       : Integer;
      FCaixa_Solicita_Vendedor : Integer;
      FCaixa_Impressora        : String;
      FCaixa_Printer_Porta_F   : String;
      FCaixa_Printer_Porta_G   : String;
      FCaixa_Printer_Model_F   : Integer;
      FCaixa_Printer_Model_G   : Integer;
      FCaixa_SAT_Modelo        : Integer;
      FCaixa_SAT_Serie         : String;
      FCaixa_SAT_COD_Ativacao  : String;
      FCaixa_SAT_Assinatura    : AnsiString;
      FCaixa_SAT_DLL           : String;
      FCaixa_SAT_Ambiente      : Integer;
      FCaixa_CnpjSoftHouse     : String;
      FCaixa_Cupom_Vias_F      : Integer;
      FCaixa_Cupom_Vias_G      : Integer;
      FCaixa_Cupom_Vias_S      : Integer;
      FCaixa_Status            : Integer;
      FCaixa_Abert_Data        : TDateTime;
      FCaixa_Result            : Boolean;
      FTempo_Carga_ao_Servidor : Integer;
      FLogotipo_Lateral        : Integer;
      FQrCode_Lateral          : Integer;
      FQrCode_Largura_Modulo   : Integer;
      FContaCaixa              : Integer;

      function CarregaDados : Boolean;

   public
      Constructor Create;

      property Caixa_ID                : Integer      Read FCaixa_ID                   Write FCaixa_ID;
      property Caixa_Codigo            : Integer      Read FCaixa_Codigo               Write FCaixa_Codigo;
      property Caixa_Descricao         : String       Read FCaixa_Descricao            Write FCaixa_Descricao;
      property Caixa_SolicitaCPF       : Integer      Read FCaixa_SolicitaCPF          Write FCaixa_SolicitaCPF;
      property Caixa_Solicita_Vendedor : Integer      Read FCaixa_Solicita_Vendedor    Write FCaixa_Solicita_Vendedor;
      property Caixa_Impressora        : String       Read FCaixa_Impressora           Write FCaixa_Impressora;
      property Caixa_Printer_Porta_F   : String       Read FCaixa_Printer_Porta_F      Write FCaixa_Printer_Porta_F;
      property Caixa_Printer_Porta_G   : String       Read FCaixa_Printer_Porta_G      Write FCaixa_Printer_Porta_G;
      property Caixa_Printer_Model_F   : Integer      Read FCaixa_Printer_Model_F      Write FCaixa_Printer_Model_F;
      property Caixa_Printer_Model_G   : Integer      Read FCaixa_Printer_Model_G      Write FCaixa_Printer_Model_G;
      property Caixa_SAT_Modelo        : Integer      Read FCaixa_SAT_Modelo           Write FCaixa_SAT_Modelo;
      property Caixa_SAT_COD_Ativacao  : String       Read FCaixa_SAT_COD_Ativacao     Write FCaixa_SAT_COD_Ativacao;
      property Caixa_SAT_Serie         : String       Read FCaixa_SAT_Serie            Write FCaixa_SAT_Serie;
      property Caixa_SAT_Assinatura    : AnsiString   Read FCaixa_SAT_Assinatura       Write FCaixa_SAT_Assinatura;
      property Caixa_SAT_DLL           : String       Read FCaixa_SAT_DLL              Write FCaixa_SAT_DLL;
      property Caixa_SAT_Ambiente      : Integer      Read FCaixa_SAT_Ambiente         Write FCaixa_SAT_Ambiente ;
      property Caixa_CnpjSoftHouse     : String       Read FCaixa_CnpjSoftHouse        Write FCaixa_CnpjSoftHouse;
      property Caixa_Cupom_Vias_F      : Integer      Read FCaixa_Cupom_Vias_F         Write FCaixa_Cupom_Vias_F;
      property Caixa_Cupom_Vias_G      : Integer      Read FCaixa_Cupom_Vias_G         Write FCaixa_Cupom_Vias_G;
      property Caixa_Cupom_Vias_S      : Integer      Read FCaixa_Cupom_Vias_S         Write FCaixa_Cupom_Vias_S;
      property Caixa_Status            : Integer      Read FCaixa_Status               Write FCaixa_Status;
      property Caixa_Abert_Data        : TDateTime    Read FCaixa_Abert_Data           Write FCaixa_Abert_Data;
      property Tempo_Carga_ao_Servidor : Integer      Read FTempo_Carga_ao_Servidor    Write FTempo_Carga_ao_Servidor;
      property Logotipo_Lateral        : Integer      Read FLogotipo_Lateral           Write FLogotipo_Lateral;
      property QrCode_Lateral          : Integer      Read FQrCode_Lateral             Write FQrCode_Lateral;
      property QrCode_Largura_Modulo   : Integer      Read FQrCode_Largura_Modulo      Write FQrCode_Largura_Modulo;
      property ContaCaixa              : Integer      Read FContaCaixa                 Write FContaCaixa;

end;

 var
   ObjCaixa : TObjCaixa;

implementation

uses
   uModulo, Classe.Empresa;

{ TConfigCaixa }

constructor TObjCaixa.Create;
begin
   FCaixa_ID                  := 0;
   FCaixa_Codigo              := 0;
   FCaixa_Descricao           := '';
   FCaixa_SolicitaCPF         := 0;
   fCaixa_Solicita_Vendedor   := 0;
   FCaixa_Impressora          := '';
   FCaixa_Printer_Porta_F     := '';
   FCaixa_Printer_Porta_G     := '';
   FCaixa_Printer_Model_F     := -1;
   FCaixa_Printer_Model_G     := -1;
   FCaixa_SAT_Modelo          := 0;
   FCaixa_SAT_COD_Ativacao    := '';
   FCaixa_SAT_Serie           := '';
   FCaixa_SAT_Assinatura      := '';
   FCaixa_SAT_DLL             := '';
   FCaixa_SAT_Ambiente        := 1;  // Ambiente de Homologação
   FCaixa_CnpjSoftHouse       := '';
   FCaixa_Cupom_Vias_F        := 0;
   FCaixa_Cupom_Vias_G        := 0;
   FCaixa_Cupom_Vias_S        := 0;
   FCaixa_Status              := 0;
   Tempo_Carga_ao_Servidor    := 10000;
   Logotipo_Lateral           := 1;
   QrCode_Lateral             := 1;
   QrCode_Largura_Modulo      := 4;
   ContaCaixa                 := 0;

   // Determina se o acesso será liberado
   FCaixa_Result := CarregaDados;
end;

function TObjCaixa.CarregaDados : Boolean;
var
   Query : TFDQuery;
begin

   Result := true;

   Query            := TFDQuery.Create(application);
   Query.Connection := FrModulo.DBCon_Local;
   try
      try
         {Recupera a data e hora da abertura}
         Query.SQL.Add('SELECT');
         Query.SQL.Add('   F_ABER_DATA');
         Query.SQL.Add('FROM');
         Query.SQL.Add('   C000001');
         Query.SQL.Add('WHERE');
         Query.SQL.Add('   F_STATUS = 1');
         Query.Open();

         Caixa_Abert_Data := Query.FieldByName('F_ABER_DATA').AsDateTime;

         {Conta caixa}
         Query.Close;
         Query.SQL.Clear;
         Query.SQL.Add('select id from C000040 where id_emp = :id_emp and cta_pdv = :cta_pdv');
         Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
         Query.ParamByName('cta_pdv').AsString := 'S';
         Query.Open();

         ContaCaixa := Query.FieldByName('id').AsInteger;

         {Outros parâmetros}
         Query.Close;
         Query.SQL.Clear;
         Query.SQL.Add('SELECT');
         Query.SQL.Add('   (SELECT F_CODIGO    FROM C000017 WHERE ID = T1.ID) AS F_CODIGO,');
         Query.SQL.Add('   (SELECT F_DESCRICAO FROM C000017 WHERE ID = T1.ID) AS F_DESCRICAO,');
         Query.SQL.Add('   T1.*');
         Query.SQL.Add('FROM');
         Query.SQL.Add('   C000016 AS T1');
         Query.Open();

         if Query.IsEmpty then
            Result := false;

         Caixa_ID                := Query.FieldByName('ID').AsInteger;
         Caixa_Codigo            := Query.FieldByName('F_CODIGO').AsInteger;
         Caixa_Descricao         := Query.FieldByName('F_DESCRICAO').AsString;
         Caixa_SolicitaCPF       := Query.FieldByName('F_SOLICITA_CPF').AsInteger;
         Caixa_Solicita_Vendedor := Query.FieldByName('F_SOLICITA_VENDEDOR').AsInteger;
         Caixa_Printer_Porta_F   := Query.FieldByName('F_PRINTER_PORTA_F').AsString;
         Caixa_Printer_Porta_G   := Query.FieldByName('F_PRINTER_PORTA_G').AsString;
         Caixa_Printer_Model_F   := Query.FieldByName('F_PRINTER_MODELO_F').AsInteger;
         Caixa_Printer_Model_G   := Query.FieldByName('F_PRINTER_MODELO_G').AsInteger;
         Caixa_SAT_Modelo        := Query.FieldByName('F_SAT_MODELO').AsInteger;
         Caixa_SAT_COD_Ativacao  := Query.FieldByName('F_SAT_CODIGO_ATIVACAO').AsString;
         Caixa_SAT_Assinatura    := Query.FieldByName('F_SAT_ASSINATURA').AsString;
         Caixa_SAT_DLL           := Query.FieldByName('F_SAT_DLL').AsString;
         Caixa_SAT_Ambiente      := Query.FieldByName('F_SAT_AMBIENTE').AsInteger;
         Caixa_CnpjSoftHouse     := Query.FieldByName('F_CNPJ_SOFTHOUSE').AsString;
         Caixa_Cupom_Vias_F      := Query.FieldByName('F_PRINTER_VIAS_F').AsInteger;
         Caixa_Cupom_Vias_G      := Query.FieldByName('F_PRINTER_VIAS_G').AsInteger;
         Caixa_Cupom_Vias_S      := Query.FieldByName('F_PRINTER_VIAS_S').AsInteger;
         Tempo_Carga_ao_Servidor := Query.FieldByName('F_TEMPO_CARGA_AO_SERVIDOR').AsInteger;
         Logotipo_Lateral        := Query.FieldByName('F_Logo_Lateral').AsInteger;
         QrCode_Lateral          := Query.FieldByName('F_QrCode_Lateral').AsInteger;
         QrCode_Largura_Modulo   := Query.FieldByName('F_QrCode_Larg_Modulo').AsInteger;

      except
         on e:Exception do
         begin
            Result := false;
            Application.MessageBox('Erro ao criar o objeto caixa, contate o Suporte Técnico.','TechCore-PDV',mb_IconStop or mb_Ok);
         end;
      end;

   finally
      FreeAndNil( Query );
   end;
end;
end.
