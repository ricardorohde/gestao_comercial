object FrProdutoEtiqueta3x21: TFrProdutoEtiqueta3x21
  Left = 0
  Top = 0
  Caption = 'FrProdutoEtiqueta3x21'
  ClientHeight = 492
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Printer: TRLReport
    Left = 80
    Top = 0
    Width = 404
    Height = 1123
    Margins.LeftMargin = 2.000000000000000000
    Margins.TopMargin = 2.500000000000000000
    Margins.RightMargin = 2.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 107.000000000000000000
    PageSetup.PaperHeight = 297.000000000000000000
    PreviewOptions.ShowModal = True
    object eGrid: TRLDetailGrid
      Left = 8
      Top = 9
      Width = 388
      Height = 74
      AutoSize = True
      ColCount = 3
      ColSpacing = 2.000000000000000000
      ColWidth = 33.000000000000000000
      object RLDBBarcode1: TRLDBBarcode
        Left = 0
        Top = 12
        Width = 125
        Height = 38
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        Align = faWidth
        Alignment = taCenter
        AutoSize = False
        BarcodeType = bcEAN13
        DataField = 'F_CODIGO_BARRAS'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ShowText = boCode
      end
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 125
        Height = 12
        Align = faWidth
        Alignment = taCenter
        AutoSize = False
        DataField = 'F_DESCRICAO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 0
        Top = 57
        Width = 125
        Height = 12
        Align = faWidth
        Alignment = taCenter
        AutoSize = False
        DataField = 'F_VALOR'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 0
        Top = 48
        Width = 125
        Height = 12
        Align = faWidth
        Alignment = taCenter
        AutoSize = False
        DataField = 'F_UNIDADE'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = pQuery
    Left = 16
    Top = 112
  end
  object Query: TFDQuery
    Filtered = True
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM TESTE')
    Left = 16
    Top = 16
  end
  object pQuery: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'F_DESCRICAO'
        DataType = ftString
        Size = 27
      end
      item
        Name = 'F_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'F_CODIGO_BARRAS'
        DataType = ftLargeint
      end
      item
        Name = 'F_UNIDADE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'F_VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 16
    Top = 80
    Content = {
      414442530F007742FE020000FF00010001FF02FF0304000C0000007000510075
      0065007200790005000A0000005400610062006C006500060000000000070000
      080032000000090000FF0AFF0B04000400000049004400050004000000490044
      000C00010000000E000D000F00011000011100011200011300FFFFFFFF1400FF
      FFFFFF15000116000117000118000400000049004400FEFF0B04001600000046
      005F00440045005300430052004900430041004F0005001600000046005F0044
      0045005300430052004900430041004F000C00020000000E0019001A001B0000
      000F00011000011200011B000115000116000118001600000046005F00440045
      005300430052004900430041004F001C001B000000FEFF0B0400100000004600
      5F0043004F004400490047004F0005001000000046005F0043004F0044004900
      47004F000C00030000000E000D000F00011000011200011B0001150001160001
      18001000000046005F0043004F004400490047004F00FEFF0B04001E00000046
      005F0043004F004400490047004F005F0042004100520052004100530005001E
      00000046005F0043004F004400490047004F005F004200410052005200410053
      000C00040000000E001D000F00011000011200011B000115000116000118001E
      00000046005F0043004F004400490047004F005F004200410052005200410053
      00FEFF0B04001200000046005F0055004E004900440041004400450005001200
      000046005F0055004E00490044004100440045000C00050000000E0019001A00
      0A0000000F00011000011200011B000115000116000118001200000046005F00
      55004E00490044004100440045001C000A000000FEFF0B04000E00000046005F
      00560041004C004F00520005000E00000046005F00560041004C004F0052000C
      00060000000E001E001F00120000002000020000000F00011000011200011B00
      0115000116000118000E00000046005F00560041004C004F0052002100120000
      00220002000000FEFEFF23FEFF24FEFF25FEFEFEFF26FEFF27FF28FEFEFE0E00
      4D0061006E0061006700650072001E0055007000640061007400650073005200
      650067006900730074007200790012005400610062006C0065004C0069007300
      74000A005400610062006C00650008004E0061006D006500140053006F007500
      7200630065004E0061006D0065000A0054006100620049004400240045006E00
      66006F0072006300650043006F006E00730074007200610069006E0074007300
      1E004D0069006E0069006D0075006D0043006100700061006300690074007900
      180043006800650063006B004E006F0074004E0075006C006C00140043006F00
      6C0075006D006E004C006900730074000C0043006F006C0075006D006E001000
      53006F007500720063006500490044000E006400740049006E00740033003200
      1000440061007400610054007900700065001400530065006100720063006800
      610062006C006500120041006C006C006F0077004E0075006C006C000E004100
      750074006F0049006E0063000800420061007300650022004100750074006F00
      49006E006300720065006D0065006E0074005300650065006400220041007500
      74006F0049006E006300720065006D0065006E00740053007400650070001200
      4F0049006E0055007000640061007400650010004F0049006E00570068006500
      7200650020004F004100660074006500720049006E0073004300680061006E00
      6700650064001A004F0072006900670069006E0043006F006C004E0061006D00
      650018006400740041006E007300690053007400720069006E00670008005300
      69007A00650014004F0041006C006C006F0077004E0075006C006C0014005300
      6F007500720063006500530069007A0065000E006400740049006E0074003600
      34000A0064007400420043004400120050007200650063006900730069006F00
      6E000A005300630061006C0065001E0053006F00750072006300650050007200
      650063006900730069006F006E00160053006F00750072006300650053006300
      61006C0065001C0043006F006E00730074007200610069006E0074004C006900
      73007400100056006900650077004C006900730074000E0052006F0077004C00
      6900730074001800520065006C006100740069006F006E004C00690073007400
      1C0055007000640061007400650073004A006F00750072006E0061006C000E00
      4300680061006E00670065007300}
    object pQueryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Required = True
    end
    object pQueryF_DESCRICAO: TStringField
      FieldName = 'F_DESCRICAO'
      Size = 27
    end
    object pQueryF_CODIGO: TIntegerField
      FieldName = 'F_CODIGO'
      DisplayFormat = '000000'
    end
    object pQueryF_CODIGO_BARRAS: TLargeintField
      FieldName = 'F_CODIGO_BARRAS'
      DisplayFormat = '000000'
    end
    object pQueryF_UNIDADE: TStringField
      FieldName = 'F_UNIDADE'
      Size = 10
    end
    object pQueryF_VALOR: TBCDField
      FieldName = 'F_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
end
