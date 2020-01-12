unit Classe.Configuracoes;

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
   TConfiguracoes = class
    private
      // Host local
      FF_Host_Local_IP_Host   : String;
      FF_Host_Local_Porta_TCP : Integer;
      FF_Host_Local_DataBase  : String;
      FF_Host_Local_Usuario   : String;
      FF_Host_Local_Senha     : String;

      // Host remoto
      FF_Host_Remoto_IP_Host   : String;
      FF_Host_Remoto_Porta_TCP : Integer;
      FF_Host_Remoto_DataBase  : String;
      FF_Host_Remoto_Usuario   : String;
      FF_Host_Remoto_Senha     : String;

    public
      Constructor Create;

      // Host local
      property F_Host_Local_IP_Host   : String     read FF_Host_Local_IP_Host    write FF_Host_Local_IP_Host;
      property F_Host_Local_Porta_TCP : Integer    read FF_Host_Local_Porta_TCP  write FF_Host_Local_Porta_TCP;
      property F_Host_Local_DataBase  : String     read FF_Host_Local_DataBase   write FF_Host_Local_DataBase;
      property F_Host_Local_Usuario   : String     read FF_Host_Local_Usuario    write FF_Host_Local_Usuario;
      property F_Host_Local_Senha     : String     read FF_Host_Local_Senha      write FF_Host_Local_Senha;

      // Host remoto
      property F_Host_Remoto_IP_Host   : String     read FF_Host_Remoto_IP_Host    write FF_Host_Remoto_IP_Host;
      property F_Host_Remoto_Porta_TCP : Integer    read FF_Host_Remoto_Porta_TCP  write FF_Host_Remoto_Porta_TCP;
      property F_Host_Remoto_DataBase  : String     read FF_Host_Remoto_DataBase   write FF_Host_Remoto_DataBase;
      property F_Host_Remoto_Usuario   : String     read FF_Host_Remoto_Usuario    write FF_Host_Remoto_Usuario;
      property F_Host_Remoto_Senha     : String     read FF_Host_Remoto_Senha      write FF_Host_Remoto_Senha;
   end;

var
   Obj_configuracoes : TConfiguracoes;

implementation

Constructor TConfiguracoes.Create;
begin
   // Host local
   FF_Host_Local_IP_Host   := '';
   FF_Host_Local_Porta_TCP := 0;
   FF_Host_Local_DataBase  := '';
   FF_Host_Local_Usuario   := '';
   FF_Host_Local_Senha     := '';

   // Host remoto
   FF_Host_Remoto_IP_Host   := '';
   FF_Host_Remoto_Porta_TCP := 0;
   FF_Host_Remoto_DataBase  := '';
   FF_Host_Remoto_Usuario   := '';
   FF_Host_Remoto_Senha     := '';
end;

end.
