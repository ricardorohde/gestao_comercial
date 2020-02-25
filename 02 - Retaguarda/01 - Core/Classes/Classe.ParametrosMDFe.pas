unit Classe.ParametrosMDFe;

interface

Uses
   System.SysUtils, System.classes, FireDAC.Comp.Client, FireDac.Stan.Intf, Data.DB;

type
   TParametrosMDFe = class
      private
         FAmbiente      : integer;
         FTipoDanfe     : integer;
         FTipoEmissao   : integer;
         FTipoXJust     : string;
         FnSerie        : integer;
         FnLote         : integer;
         FPathXSD       : string;
         FPathLOG       : string;
         FModelo        : integer;

         procedure CarregaParametros(id_emp : integer);

      public
         Constructor Create(id_emp : integer);

         property Ambiente     : integer read FAmbiente     write FAmbiente;
         property TipoDanfe    : integer read FTipoDanfe    write FTipoDanfe;
         property TipoEmissao  : integer read FTipoEmissao  write FTipoEmissao;
         property TipoXJust    : string  read FTipoXJust    write FTipoXJust;
         property nSerie       : integer read FnSerie       write FnSerie;
         property nLote        : integer read FnLote        write FnLote;
         property PathXSD      : string  read FPathXSD      write FPathXSD;
         property PathLog      : string  read FPathLog      write FPathLog;
         property Modelo       : integer read FModelo       write FModelo;

   end;

var
   ClassParametroMDFe : TParametrosMDFe;

implementation

{ TParametrosMDFe }

uses uModuloRet;

procedure TParametrosMDFe.CarregaParametros(id_emp: integer);
var
   xQuery : TFDQuery;
begin
   xQuery            := TFDQuery.Create(nil);
   xQuery.Connection := FrModuloRet.DBConexao;
   try
      xQuery.Close;
      xQuery.SQL.Clear;
      xQuery.SQL.Add('select');
      xQuery.SQL.Add('  emp_mdf_ambiente,');
      xQuery.SQL.Add('  emp_mdf_tipo_danfe,');
      xQuery.SQL.Add('  emp_mdf_tipo_emissao,');
      xQuery.SQL.Add('  emp_mdf_tipo_xjust,');
      xQuery.SQL.Add('  emp_mdf_pSerie,');
      xQuery.SQL.Add('  emp_mdf_pLote,');
      xQuery.SQL.Add('  emp_mdf_hSerie,');
      xQuery.SQL.Add('  emp_mdf_hLote,');
      xQuery.SQL.Add('  emp_mdf_folder_xsd,');
      xQuery.SQL.Add('  emp_mdf_folder_log,');
      xQuery.SQL.Add('  emp_mdf_pmodelo,');
      xQuery.SQL.Add('  emp_mdf_hmodelo');
      xQuery.SQL.Add('from');
      xQuery.SQL.Add('  C000501');
      xQuery.SQL.Add('where');
      xQuery.SQL.Add('  id = :id');
      xQuery.ParamByName('id').AsInteger := id_emp;
      xQuery.Open();

      // Carrega os dados selecionados
      FAmbiente    := xQuery.FieldByName('emp_mdf_ambiente').AsInteger;
      FTipoDanfe   := xQuery.FieldByName('emp_mdf_tipo_danfe').AsInteger;
      FTipoEmissao := xQuery.FieldByName('emp_mdf_tipo_emissao').AsInteger;
      FTipoXJust   := xQuery.FieldByName('emp_mdf_tipo_xjust').AsString;
      FPathXSD     := xQuery.FieldByName('emp_mdf_folder_xsd').AsString;
      FPathLOG     := xQuery.FieldByName('emp_mdf_folder_log').AsString;

      // Carrega o lote e a série
      case xQuery.FieldByName('emp_mdf_ambiente').AsInteger of

         0 : begin
            // número de série
            FnSerie := xQuery.FieldByName('emp_mdf_PSerie').AsInteger;
            FnLote  := xQuery.FieldByName('emp_mdf_PLote').AsInteger;

            // modelo do documento fiscal
            FModelo := xQuery.FieldByName('emp_mdf_PModelo').AsInteger;
         end;

         1 : begin
            // número de série
            FnSerie := xQuery.FieldByName('emp_mdf_hSerie').AsInteger;
            FnLote  := xQuery.FieldByName('emp_mdf_hLote').AsInteger;

            // modelo do documento fiscal
            FModelo := xQuery.FieldByName('emp_mdf_HModelo').AsInteger;
         end;

      end;

   finally
      FreeAndNil(xQuery);
   end;
end;

constructor TParametrosMDFe.Create(id_emp: integer);
begin
   CarregaParametros(id_emp);
end;

end.
