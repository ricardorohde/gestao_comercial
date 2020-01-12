unit Classe.Vendedor;

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
   TVendedor = class
    private
      FF_ID              : Integer;
      FF_Codigo          : Integer;
      FF_Nome            : String;
      FF_Apelido         : String;
      FF_Margem_Desconto : Real;
      FF_Status          : Integer;

      procedure GetRegistroVendedor(ID : Integer);

    public
      Constructor Create(ID : Integer);

      property F_ID              : Integer Read FF_ID              Write FF_ID;
      property F_Codigo          : Integer Read FF_Codigo          Write FF_Codigo;
      property F_Nome            : String  Read FF_Nome            Write FF_Nome;
      property F_Apelido         : String  Read FF_Apelido         Write FF_Apelido;
      property F_Margem_Desconto : Real    Read FF_Margem_Desconto Write FF_Margem_Desconto;
      property F_Status          : Integer Read FF_Status          Write FF_Status;

   end;

var
   Obj_Vendedores : TVendedor;

implementation

uses
   uModulo;

Constructor TVendedor.Create(ID : Integer);
begin
   FF_ID              := 0;
   FF_Codigo          := -1;
   FF_Nome            := '';
   FF_Apelido         := '';
   FF_Margem_Desconto := 0.00;
   FF_Status          := -1;

   GetRegistroVendedor(ID);
end;

procedure TVendedor.GetRegistroVendedor(ID: Integer);
var
   aQuery : TFDQuery;
begin
   aQuery            := TFDQuery.Create(nil);
   aQuery.Connection := FrModulo.DBCon_Local;

   try
      aQuery.SQL.Add('SELECT * FROM C000061 WHERE ID = :ID');
      aQuery.ParamByName('ID').AsInteger := ID;
      aQuery.Open();

      F_ID              := aQuery.FieldByName('ID').AsInteger;
      F_Codigo          := aQuery.FieldByName('F_CODIGO').AsInteger;
      F_Nome            := aQuery.FieldByName('F_NOME').AsString;
      F_Apelido         := aQuery.FieldByName('F_APELIDO').AsString;
      F_Margem_Desconto := aQuery.FieldByName('F_MARGEM_DESCONTO').AsFloat;
      F_Status          := aQuery.FieldByName('F_STATUS').AsInteger;

   finally
      FreeAndNil( aQuery );
   end;
end;

end.
