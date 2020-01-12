unit Classe.Operador;

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
   TObjOperador = class

   private
      FOpr_IDOperador         : Integer;
      FOpr_Codigo             : Integer;
      FOpr_Apelido            : String;
      FOpr_CancelarItem       : Integer;
      FOpr_CancelarVenda      : Integer;
      FOpr_CancelarCupom      : Integer;
      FOpr_ConfiguraCaixa     : Integer;
      FF_Permite_Sangria      : Integer;
      FF_Permite_Retirada     : Integer;
      FF_Permite_Suprimentos  : Integer;
      FF_Senha_Cancela_Itens  : Integer;
      FF_Senha_Cancela_Venda  : Integer;
      FF_Senha_Cancela_Cupom  : Integer;
      FF_Print_Gerencial      : Integer;
      FOpr_Result             : Boolean;
      FF_Snh_Sangria          : Integer;
      FF_Snh_Retirada         : Integer;
      FF_Snh_Suprimento       : Integer;
      FF_User_Adm             : Integer;
      FF_Snh_Print_Gerencial  : Integer;
      FF_Enviar_Email         : Integer;
      FF_Snh_Enviar_Email     : Integer;
      FF_Listar_Cupons        : Integer;
      FF_Snh_Listar_Cupons    : Integer;

      function GetDadosOperadores(ID_Operador : Integer) : Boolean;

   public
      Constructor Create(ID_Operador : Integer);

      property Opr_IDOperador          : Integer Read FOpr_IDOperador         write FOpr_IDOperador;
      property Opr_Codigo              : Integer Read FOpr_Codigo             write FOpr_Codigo;
      property Opr_Apelido             : String  Read FOpr_Apelido            write FOpr_Apelido;
      property Opr_CancelarItem        : Integer Read FOpr_CancelarItem       Write FOpr_CancelarItem;
      property Opr_CancelarVenda       : Integer Read FOpr_CancelarVenda      write FOpr_CancelarVenda;
      property Opr_CancelarCupom       : Integer Read FOpr_CancelarCupom      write FOpr_CancelarCupom;
      property Opr_ConfiguraCaixa      : Integer Read FOpr_ConfiguraCaixa     write FOpr_ConfiguraCaixa;
      property F_Permite_Sangria       : Integer Read FF_Permite_Sangria      write FF_Permite_Sangria;
      property F_Permite_Retirada      : Integer Read FF_Permite_Retirada     write FF_Permite_Retirada;
      property F_Permite_Suprimentos   : Integer Read FF_Permite_Suprimentos  write FF_Permite_Suprimentos;
      property F_Senha_Cancela_Itens   : Integer Read FF_Senha_Cancela_Itens  write FF_Senha_Cancela_Itens;
      property F_Senha_Cancela_Venda   : Integer Read FF_Senha_Cancela_Venda  write FF_Senha_Cancela_Venda;
      property F_Senha_Cancela_Cupom   : Integer Read FF_Senha_Cancela_Cupom  write FF_Senha_Cancela_Cupom;
      property F_Print_Gerencial       : Integer Read FF_Print_Gerencial      write FF_Print_Gerencial;
      property F_Snh_Sangria           : Integer Read FF_Snh_Sangria          write FF_Snh_Sangria;
      property F_Snh_Retirada          : Integer Read FF_Snh_Retirada         write FF_Snh_Retirada;
      property F_Snh_suprimento        : Integer Read FF_Snh_Suprimento       write FF_Snh_Suprimento;
      property Opr_Result              : Boolean Read FOpr_Result             write FOpr_Result;
      property F_User_Adm              : Integer Read FF_User_Adm             Write FF_User_Adm;
      property F_Snh_Print_Gerencial   : Integer Read FF_Snh_Print_Gerencial  Write FF_Snh_Print_Gerencial;
      property F_Enviar_Email          : Integer Read FF_Enviar_Email         Write FF_Enviar_Email;
      property F_Snh_Enviar_Email      : Integer Read FF_Snh_Enviar_Email     Write FF_Snh_Enviar_Email;
      property F_Listar_Cupons         : Integer Read FF_Listar_Cupons        Write FF_Listar_Cupons;
      property F_Snh_Listar_Cupons     : Integer Read FF_Snh_Listar_Cupons    Write FF_Snh_Listar_Cupons;
   end;

var
   ObjOperador : TObjOperador;

implementation

uses
   uModulo, Classe.Empresa;

{ FOperador }

constructor TObjOperador.Create(ID_Operador : Integer);
begin
   FOpr_IDOperador         := -1;
   FOpr_Codigo             := -1;
   FOpr_Apelido            := '';
   FOpr_CancelarItem       := -1;
   FOpr_CancelarVenda      := -1;
   FOpr_CancelarCupom      := -1;
   FOpr_ConfiguraCaixa     := -1;
   FF_Permite_Sangria      := 0;
   FF_Permite_Retirada     := 0;
   FF_Permite_Suprimentos  := 0;
   FF_Senha_Cancela_Itens  := 0;
   FF_Senha_Cancela_Venda  := 0;
   FF_Senha_Cancela_Cupom  := 0;
   FF_Print_Gerencial      := 0;
   FF_Snh_Sangria          := 0;
   FF_Snh_Retirada         := 0;
   FF_Snh_Suprimento       := 0;
   FF_User_Adm             := 2;
   FF_Snh_Print_Gerencial  := 0;
   FF_Enviar_Email         := 0;
   FF_Snh_Enviar_Email     := 0;
   FF_Listar_Cupons        := 0;
   FF_Snh_Listar_Cupons    := 0;

   // Carrega os dados e libera o acesso
   FOpr_Result := GetDadosOperadores(ID_Operador);

end;

function TObjOperador.GetDadosOperadores(ID_Operador : Integer) : Boolean;
var
   aQuery : TFDQuery;
begin
   Result := true;

   aQuery            := TFDQuery.Create(application);
   aQuery.Connection := Frmodulo.DBCon_Local;
   try
      try
         aQuery.SQL.Add('SELECT * FROM C000060 WHERE ID = :ID AND ID_EMPRESA = :ID_EMPRESA');
         aQuery.ParamByName('ID').AsInteger         := ID_Operador;
         aQuery.ParamByName('ID_EMPRESA').AsInteger := FEmpresaClass.ID;
         aQuery.Open();

         if aQuery.IsEmpty then
         begin
            Result := false;
            Exit;
         end;

         Opr_IDOperador        := aQuery.FieldByName('ID').AsInteger;
         Opr_Codigo            := aQuery.FieldByName('opr_codigo').AsInteger;
         Opr_Apelido           := aQuery.FieldByName('opr_apelido').AsString;
         Opr_CancelarItem      := aQuery.FieldByName('opr_cancela_item').AsInteger;
         Opr_CancelarVenda     := aQuery.FieldByName('opr_cancela_venda').AsInteger;
         Opr_CancelarCupom     := aQuery.FieldByName('opr_cancela_cupom').AsInteger;
         Opr_ConfiguraCaixa    := aQuery.FieldByName('opr_configura_caixa').AsInteger;
         F_Permite_Sangria     := aQuery.FieldByName('F_Permite_Sangria').AsInteger;
         F_Permite_Retirada    := aQuery.FieldByName('F_Permite_Retirada').AsInteger;
         F_Permite_Suprimentos := aQuery.FieldByName('F_Permite_Suprimentos').AsInteger;
         F_Senha_Cancela_Itens := aQuery.FieldByName('F_Senha_Cancela_Itens').AsInteger;
         F_Senha_Cancela_Venda := aQuery.FieldByName('F_Senha_Cancela_Venda').AsInteger;
         F_Senha_Cancela_Cupom := aQuery.FieldByName('F_Senha_Cancela_Cupom').AsInteger;
         F_Print_Gerencial     := aQuery.FieldByName('F_Print_Gerencial').AsInteger;
         F_Snh_Sangria         := aQuery.FieldByName('F_Snh_Sangria').AsInteger;
         F_Snh_Retirada        := aQuery.FieldByName('F_Snh_Retirada').AsInteger;
         F_Snh_Suprimento      := aQuery.FieldByName('F_Snh_Suprimento').AsInteger;
         F_User_Adm            := aQuery.FieldByName('F_User_Adm').AsInteger;
         F_Snh_Print_Gerencial := aQuery.FieldByName('F_Snh_Print_Gerencial').AsInteger;
         F_Enviar_Email        := aQuery.FieldByName('F_Enviar_Email').AsInteger;
         F_Snh_Enviar_Email    := aQuery.FieldByName('F_Snh_Enviar_Email').AsInteger;
         F_Listar_Cupons       := aQuery.FieldByName('F_Listar_Cupons').AsInteger;
         F_Snh_Listar_Cupons   := aQuery.FieldByName('F_Snh_Listar_Cupons').AsInteger;

      except
         on e:Exception do
         begin
            Result := false;
            Application.MessageBox('Erro ao criar o objeto com os dados dos operadores, contate o Suporte Técnico.','TechCore-PDV',mb_IconStop or mb_Ok);
         end;
      end;

   finally
      FreeAndNil( aQuery );
   end;
end;

end.
