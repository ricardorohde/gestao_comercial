unit Classe.Servidores;

interface
Uses
   System.SysUtils,
   FireDAC.Comp.Client,
   Data.DB;

type
   TServidores = Class

      private
         FID         : Integer;
         FCodigo     : Integer;
         FDataReg    : TDateTime;
         FDescricao  : String;
         FEndereco   : String;
         FProtocolo  : String;
         FPorta      : Integer;
         FDataBase   : String;

      public
         Constructor Create;

      property ID          : Integer      Read FID          Write FID;
      property Codigo      : Integer      Read FCodigo      Write FCodigo;
      property DataReg     : TDateTime    Read FDataReg     Write FDataReg;
      property Descricao   : String       Read FDescricao   Write FDescricao;
      property Endereco    : String       Read FEndereco    Write FEndereco;
      property Protocolo   : String       Read FProtocolo   Write FProtocolo;
      property Porta       : Integer      Read FPorta       Write FPorta;
      property DataBase    : String       Read FDataBase    Write FDataBase;

   End;

var
   ClassServidores : TServidores;

implementation

{ TServidores }

constructor TServidores.Create;
begin
   //
end;

end.
