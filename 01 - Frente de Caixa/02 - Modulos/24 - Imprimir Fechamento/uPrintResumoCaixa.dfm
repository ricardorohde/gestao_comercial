object FrPrintResumoCaixa: TFrPrintResumoCaixa
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrPrintResumoCaixa'
  ClientHeight = 298
  ClientWidth = 675
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 252
    Width = 671
    Height = 44
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    AutoStyle = False
    Images = ImageList1
    RowHeight = 40
    ButtonLayout = blGlyphTop
    ButtonWidth = 60
    ButtonHeight = 40
    ShowButtonCaptions = True
    TextOptions = ttoShowTextLabels
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdTop]
    BorderWidth = 0
    GradientColorStyle = gcsCustom
    GradientColorStop = 13948116
    TabOrder = 0
    VisualStyle = vsGradient
    ToolbarControls = (
      btnNew
      RzSpacer1
      btnOK)
    object btnNew: TRzToolButton
      Left = 4
      Top = 2
      Width = 110
      Height = 40
      DisabledIndex = 35
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = Action1
    end
    object btnOK: TRzToolButton
      Left = 122
      Top = 2
      Width = 110
      Height = 40
      DisabledIndex = 41
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = Action4
    end
    object RzSpacer1: TRzSpacer
      Left = 114
      Top = 10
      Grooved = True
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 671
    Height = 34
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    BorderHighlight = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    GradientColorStart = clSilver
    GradientColorStop = 3815994
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 148
      Height = 26
      Caption = 'Resumo do Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image2: TImage
      Left = 6
      Top = 5
      Width = 24
      Height = 24
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        48597300000B1300000B1301009A9C180000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A000002114944415478DA63
        6440032935931519FEFC13622007B030BD9BD3927B1F5988119993DB34AD8E8D
        85B5908F8F8F891CF33F7FFEF4F7E7EFDF7D93EBB25AB05A90D330F59EA3AD8D
        E2CD3B77187EFEF84992E1EC1CEC0C6AAACA0C870E1DBD37A9215B19BB0F1AA6
        3E30353694BF77FF2183BAAA0A4916DCBC7D874149519EE1F4D9F30F2737642B
        E0B4C0C4C848FED193270CBADA9A28067CFFFE83E1D7AFDF60361B1B2B032727
        078AFCE5ABD719E4646418CE9C3B479E054F9FBD6078FFEE1D982D2824C4202D
        25415D0B0801922C3879FA0C032B30184801BF81C1676E6A42D802073B5BF92F
        5FBE9264380CF0F070331C387498B00F2E5EBACC2024284092E1EFDE7F60D0D7
        D3252E881E3F7ECCA0A3A345920557AE5C6390959525DF823B77EF33BC7CF90A
        CC16171763505156A4AE0554F5C1F51B3731D2392100CA279A1AEA842DB0B5B6
        94870505A9001474878F1EC76F81B9A9B1FCE97317C8B2C0D4C880E1E4E9B383
        202763B3E0DDFBF70C5FA119901B98A1840405879805540B223B1B6BF9F3172E
        31FCFEF38B240B5859D8188C0C748165D1B187539A7059D0387589B8A858103F
        1F2F2749A643C1C7CF9FBF0193F81AA00FE2B15AD0D0D0C0F2EC27BFCFF38777
        3D3F7F7C9F061253D3350DC367E8ADCBA75781685E7EC15992F2CADBA5D83F6E
        019AF307AB0530606CEC20F28B85511E1CB627F79FC56781AEB9A3318866FBF3
        FFE1D9B307DEA0CB0300583F5E285B7440780000000049454E44AE426082}
    end
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 671
    Height = 212
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsQuery
    DrawingStyle = gdsClassic
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    AlternateRowColor = 16382457
    AutoSizeColumns = True
    AutoSizeColumnIndex = 0
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ABERTURA'
        Title.Caption = 'Identificador'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_ABER_DATA'
        Title.Caption = 'Data / Hora Abertura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_ABER_VALOR'
        Title.Caption = 'R$ - Abertura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_FECH_DATA'
        Title.Caption = 'Data / Hora Fechamento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_FECH_VALOR'
        Title.Caption = 'R$ - Fechamento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 106
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 52
    Top = 200
  end
  object Query: TFDQuery
    Connection = FrModulo.DBCon_Local
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   ID_ABERTURA,'
      '   F_ABER_DATA,'
      '   F_ABER_VALOR,'
      '   F_FECH_DATA,'
      '   F_FECH_VALOR,'
      '   F_STATUS'
      'FROM'
      '   C000002'
      'WHERE'
      '   F_STATUS = 2'
      'ORDER BY'
      '   F_ABER_DATA DESC')
    Left = 20
    Top = 200
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_ABERTURA: TStringField
      FieldName = 'ID_ABERTURA'
      Origin = 'ID_ABERTURA'
      Required = True
      Size = 35
    end
    object QueryF_ABER_DATA: TSQLTimeStampField
      FieldName = 'F_ABER_DATA'
      Origin = 'F_ABER_DATA'
    end
    object QueryF_ABER_VALOR: TFMTBCDField
      FieldName = 'F_ABER_VALOR'
      Origin = 'F_ABER_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryF_STATUS: TIntegerField
      FieldName = 'F_STATUS'
      Origin = 'F_STATUS'
    end
    object QueryF_FECH_DATA: TSQLTimeStampField
      FieldName = 'F_FECH_DATA'
      Origin = 'F_FECH_DATA'
    end
    object QueryF_FECH_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'F_FECH_VALOR'
      Origin = 'F_FECH_VALOR'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 84
    Top = 200
    Bitmap = {
      494C010107000900040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000000000005296C2FF5296
      C2FF5296C2FF5296C2FF5296C2FF5296C2FF5296C2FF5296C2FF5296C2FF5296
      C2FF5296C2FF5296C2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004132
      2655413226554132265541322655413226554132265541322655413226554132
      2655413226554132265500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0B0A0F00000000000000000000
      000000000000000000000000000000000000000000000000000000000000BF96
      78EDEBCDA8FFEBCDA8FFEBCDA8FFEBCDA8FFEBCDA8FFEBCDA8FFEBCDA8FFEBCD
      A8FFEBCDA8FFDEBB97FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0A0F969288C52D2B283A000000000000
      000000000000000000000000000000000000000000000000000000000000BB98
      79E3FFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFEBCDA8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0A0F969288C5B8B3A5F0000000000000
      000000000000000000000000000000000000000000000000000000000000BB98
      79E3FFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFCE3
      BDFFFFE8C2FFECCDA8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFF4242C7FFFFFFFFFF4242C7FF4242C7FF4242C7FF4242C7FFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000000000000000000000000
      000000000000010201041643296F145B4D9057836EC1C4BEAFFF423F3B550000
      000000000000000000000000000000000000000000000000000000000000BB98
      79E3FFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFC895
      6AFFFCE4BDFFF8DFB9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000000000000000000000000
      00000000000014321359044D5F684C494462B3B3A1F790AB81FFBBBBA8FFAFAA
      9BE44947425F000000000000000000000000000000000000000000000000BB98
      79E3FFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFC087
      5BFFC9966AFFFBE2BCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000000000000000000000000
      0000000000001433135B02445A5A969186C1BEB6A6FFB9B19FFF90AB81FFBFBD
      ABFFBCB6A8F50E0E0C130000000000000000000000000000000000000000BB98
      79E3FFE8C2FFEBCBA3FFEBCBA3FFEBCBA3FFEBCBA3FFEBCBA3FFEBCBA3FFCB93
      68FFF0B78BFFE6AD81FF0B06040F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFF9C8B77FFFFFFFFFF9C8B77FF9C8B77FF9C8B77FF9C8B77FFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000000000000000000000000
      0000000000001432135962858CA3FAF9F8FFEDEAE6FFE9E6E1FFB3AD9AFF92AC
      83FFC5BEB0FF403D39530000000000000000000000000000000000000000BB98
      79E3FFE8C2FFC38B5FFFDCA376FFDCA376FFDCA376FFDCA376FFDCA376FFE2A9
      7CFFF0B78BFFF0B78BFF9B6B46D20C0704110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000000000000000000000000
      000000000000829174D3C5C9B6FFE8E5E0FFB4AB99FFCBC5B8FFBFB8A9FFA6B1
      94FFADB59BFF6E6C64900000000000000000000000000000000000000000BB98
      79E3FFE8C2FFC58C60FFE0A77AFFE0A77AFFE0A77AFFE0A77AFFE0A77AFFE6AD
      80FFF0B78BFFF0B78BFF956744CB0704030B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5296C2FF000000000000000000000000000000004947425FAEA7
      9AE18F8A7FB9C4BEAFFF95AF86FFFCFBFBFFFFFFFFFFFFFFFFFFFDFDFCFFB6AF
      9CFF94AD85FFC5BEB0FF56544E7100000000000000000000000000000000BB98
      79E3FFE8C2FFE6C49BFFE6C49BFFE6C49BFFE6C49BFFE6C49BFFE6C49BFFCB93
      68FFF0B78BFFE4AB7EFF0704030B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5296C2FF0000000000000000000000003636343C938A7CD2C4BC
      AFFFC7C1B2FFB4AB99FFA8B496FFC8D3BFFFE6E3DDFFB5AC9BFFE9E7E2FFC2BA
      ABFF99AE89FFBFBCABFF6A68608B00000000000000000000000000000000BB98
      79E3FFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFC087
      5BFFCA976CFFFCE3BDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000079787680AFA89DDFE4E1
      DBFFD2CCC1FFB4AA98FFB7AF9DFF95AE86FFDBDCD0FFF9F8F7FFF8F8F6FFBEB7
      ACF6838B78C1427668B00000000000000000000000000000000000000000BB98
      79E3FFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFC692
      66FFFBE2BBFFFAE0BBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFFA9998AFF8F7865FF8F7865FF8F7865FF8F7865FFAA9A8BFFFFFF
      FFFFFFFFFFFF5296C2FF0000000000000000000000004947464DE1DFDBF6D7D3
      CDF5C2BAACFFE4E0DAFFCDC8BCFFC1BBABFF8DAB7EFF57777AA51D1C1A250E0E
      0C1300020003135A4C8D0000000000000000000000000000000000000000BB98
      79E3FFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFCE3
      BDFFFFE8C2FFECCDA8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FFFFFF
      FFFFFFFFFFFF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FFFFFF
      FFFFFFFFFFFF5296C2FF00000000000000000000000018171719CDCDC8E19690
      8BAFA29B92D1E7E5DFFFD6D1C7FF6964599B6260588063805FC2115B548A0428
      2E3913351B5E095663790000000000000000000000000000000000000000BB98
      79E3FFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFEBCDA8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005296C2FF5296
      C2FF5296C2FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF5296
      C2FF5296C2FF5296C2FF00000000000000000000000000000000000000000000
      000000000000040403052323202F000000000000000000000000050C0515113F
      2D650A424760000609090000000000000000000000000000000000000000BF96
      78EDEBCDA8FFEBCDA8FFEBCDA8FFEBCDA8FFEBCDA8FFEBCDA8FFEBCDA8FFEBCD
      A8FFEBCDA8FFDEBB97FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B5A4BBF6A594CBD00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004132
      2655413226554132265541322655413226554132265541322655413226554132
      2655413226554132265500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000342E
      2755342E2755342E2755342E2755342E2755342E2755342E2755342E2755342E
      2755342E27550000000000000000000000000000000000000000000000000101
      01022A39215D5A7849C06F955AF0759C5DFF6F955AF05A7749BF2A38215C0101
      010200000000000000000000000000000000000000000000000000000000FEFE
      FEFFCDDBC4FF9CB88BFF81A56AFF759C5DFF81A56AFF9CB88BFFCEDBC5FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000101
      02021717495D363698C04141BDF04242C7FF4141BDF0363698C01818485C0101
      020200000000000000000000000000000000000000000000000000000000A092
      84EDDED8D2FFDED8D2FFDED8D2FFDED8D2FFDED8D2FFDED8D2FFDED8D2FFDED8
      D2FFA09284ED00000000000000000000000000000000000000000F150C236485
      51D7789D65F390B984FF99C491FF9EC899FF99C491FF90B984FF779D64F36384
      50D50F150D220000000000000000000000000000000000000000ECF1E9FF8FAF
      7BFF8BAE77FFA4C899FFB4D8AEFFBDDFBAFFB4D8AEFFA4C89AFF8AAE76FF90B0
      7CFFEDF2EAFF000000000000000000000000000000000000000009091B233B3B
      AAD74E4EC7F37474E6FF8686F1FF8F8FF7FF8686F1FF7373E6FF4E4EC7F33B3B
      A8D509091B220000000000000000000000002E262052BBA696FEAB9683FFC0B3
      A4FFF3ECE4FFF3ECE4FFF3ECE4FFF3ECE4FFF3ECE4FFF3ECE4FFF3ECE4FFF3EC
      E4FFC0B3A4FFAB9683FFB9A795FD2E2620520000000010170D256F955AF08CB4
      80FC9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF8CB3
      7FFB6F9459EF0F150C23000000000000000000000000EBF1E8FF80A46AFFA1C5
      96FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFA2C5
      96FF80A469FFECF1E9FF00000000000000000000000009091D254141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6D6D
      E0FB4141BCF009091B23000000000000000030272155BDA997FF8F7865FFA08E
      7CFFA49482FFA49482FFA49482FFA49482FFA49482FFA49482FFA49482FFA494
      82FFA08E7CFF8F7865FFBDA997FF3027215500020003668853DB8BB47EFC9EC9
      99FF9EC999FF9EC999FFA4CDA0FFE0EEDFFFA3CC9FFF9EC999FF9EC999FF9EC9
      99FF8BB37EFC658553D90101010200000000FDFEFDFF8CAD78FF9FC393FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9EC393FF8EAD79FFFEFEFEFF00000000000002033C3CACDB6C6CE0FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6B6BE0FC3C3CABD9010102020000000030272155BDA997FFC2AF9DFFBDA9
      97FFBDA997FFBDA997FFBDA997FFBDA997FFBDA997FFBDA997FFBDA997FFBDA9
      97FFBDA997FFC2AF9DFFBDA997FF302721552938215B779D64F39EC999FF9EC9
      99FF9EC999FFA0CA9BFFE5F1E4FFFFFFFFFFE3EFE1FF9FCA9AFF9EC999FF9EC9
      99FF9DC998FF779D63F328351F5800000000CEDCC6FF8AAD76FFBDE0BAFFBDE0
      BAFFBDE0BAFFBBDEB7FFA8CC9FFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBCE0B9FF8AAD75FFD0DDC7FF000000001717475B4D4DC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8E8EF7FF4C4CC7F3171745580000000030272155BDA997FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFBDA997FF302721555A7849C191BA85FF9EC999FF9EC9
      99FF9EC999FFD9EAD7FFFFFFFFFFFFFFFFFFFFFFFFFFD9EAD7FF9EC999FF9EC9
      99FF9EC999FF90B985FF597748BE000000009AB789FFA5C99BFFBDE0BAFFBDE0
      BAFFBBDEB8FF8AAF77FF779E5FFFA1C697FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF9CB98CFF00000000353598C17575E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7373E6FF353597BE0000000030272155BDA997FFD4C1B0FFC38D
      62FFEFB68AFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFEFB6
      8AFFC38D63FFD4C1B0FFBDA997FF3027215570955AF19BC493FF9EC999FF9EC9
      99FF9EC999FF9EC999FF9EC999FFFFFFFFFF9EC999FF9EC999FF9EC999FF9EC9
      99FF9EC999FF99C593FF6F9459EF0000000080A369FFB6D9B1FFBDE0BAFFBBDF
      B8FF8DB17AFF8AAF77FFAFD3A8FF7CA366FFA5C99BFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF82A56AFF000000004141BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFB1B1F9FFF6F6FEFFBCBCFAFFF7F7FEFFB1B1F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF0000000030272155BDA997FFD4C1B0FFC68F
      66FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFC68F66FFCDC7BAFFBDA997FF30272155749A5DFC9DC897FF9EC999FF9EC9
      99FF9EC999FF9EC999FF9EC999FFFFFFFFFF9EC999FF9EC999FF9EC999FF9EC9
      99FF9EC999FF9DC798FF749A5CFB00000000779E60FFBCDFB8FFBDE0BAFFB7DA
      B1FF95B987FFBBDFB8FFBDE0BAFFB3D6ADFF7DA468FFA2C798FFBDE0BAFFBDE0
      BAFFBDE0BAFFBBDEB8FF789F60FF000000004242C4FC8E8EF6FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FFC3C3FAFFFEFEFFFFC2C2FBFF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8D8DF5FF4242C5FB0000000030272155BDA997FFD4C1B0FFC68F
      66FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFC68F66FFCEC7BAFFBDA997FF3027215570955AF19BC493FF9EC999FF9EC9
      99FF9EC999FF9EC999FF9EC999FFFFFFFFFF9EC999FF9EC999FF9EC999FF9EC9
      99FF9EC999FF99C593FF6F9459EF0000000080A369FFB6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFB1D4ABFF7DA367FFA5CA9CFFBDE0
      BAFFBDE0BAFFB5D9B0FF82A56AFF000000004141BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFA8A8F9FFF6F6FEFFC9C9FBFFF6F6FEFFA8A8F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF0000000028211C48AC9987F6D4C1B0FFC68F
      66FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFC68F66FFD4C1B0FFAC9787F528211C475B794BC291BA85FF9EC999FF9EC9
      99FF9EC999FF9EC999FF9EC999FFFFFFFFFF9EC999FF9EC999FF9EC999FF9EC9
      99FF9EC999FF90B985FF5A7849C0000000009BB789FFA5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFB1D4ABFF7DA367FFA6CA
      9CFFBDE0BAFFA4C89AFF9BB88BFF00000000363699C27575E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7373E6FF363698C0000000000000000000000000706151BFA595
      84FAFFFFFFFFFFFFFFFFFFFFFFFFEDDED3FFEDDFD4FFFFFFFFFFFFFFFFFFFFFF
      FFFFA59584FA706151BF00000000000000002938215B779D64F39EC999FF9EC9
      99FF9EC999FF9EC999FF9EC999FFFFFFFFFF9EC999FF9EC999FF9EC999FF9EC9
      99FF9EC999FF769C63F328351F5800000000CEDCC6FF8BAD77FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFB3D6ADFFA4C7
      99FFBDE0BAFF89AD76FFD0DDC7FF000000001717475B4D4DC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8F8FF7FF4D4DC6F317174558000000000000000000000000000000008479
      6CC7FFFFFFFFFFFFFFFFEEE1D7FFB98157FFBA8359FFF0E4DCFFFFFFFFFFFFFF
      FFFF84796CC700000000000000000000000000020003668853DB8CB580FC9EC9
      99FF9EC999FF9EC999FF9EC999FFFFFFFFFF9EC999FF9EC999FF9EC999FF9EC9
      99FF8CB47FFC658553D90101010200000000FDFEFDFF8CAD78FFA1C596FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFA1C595FF8EAD79FFFEFEFEFF00000000000002033C3CACDB6F6FE2FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6D6DE0FC3C3CABD901010202000000000000000000000000000000008479
      6CC7FFFFFFFFFFFFFFFFB88055FFB5794DFFB5794DFFB88055FFFFFFFFFFFFFF
      FFFF84796CC70000000000000000000000000000000010170D256F955AF08CB4
      80FC9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF8CB3
      7FFB6F9459EF0F150C23000000000000000000000000EBF1E8FF80A46AFFA1C5
      96FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFA2C5
      96FF80A469FFECF1E9FF00000000000000000000000009091D254141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6D6D
      E0FB4141BCF009091B2300000000000000000000000000000000000000008479
      6CC7FFFFFFFFFFFFFFFFFFFFFFFFCEA689FFCEA689FFFFFFFFFFFFFFFFFFFFFF
      FFFF84796CC700000000000000000000000000000000000000000F150C236485
      51D7789D65F391BB86FF9BC594FF9BC695FF9BC594FF91BA86FF779D64F36384
      50D50F150D220000000000000000000000000000000000000000ECF1E9FF8FAF
      7BFF8BAE77FFA5CA9CFFB7DAB2FFB8DBB4FFB7DAB2FFA6C99CFF8AAE76FF90B0
      7CFFEDF2EAFF000000000000000000000000000000000000000009091B233B3B
      AAD74E4EC7F37575E8FF8989F4FF8989F4FF8989F4FF7575E8FF4E4EC7F33B3B
      A8D509091B220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000795133AA795133AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01022A39215D5A7849C0709459ED72985CF6709459ED5A7749BF2A38215C0101
      010200000000000000000000000000000000000000000000000000000000FEFE
      FEFFCDDBC4FF9CB88BFF83A76DFF7CA266FF83A76DFF9CB88BFFCEDBC5FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000101
      02021717495D363698C04141BBED4242C2F64141BBED363698C01818485C0101
      0202000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000281A1039281A103900000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00C003FFFFE0030000C003FF7FE0030000
      C003FE3FE0030000C003FE3FE0030000C003F81FE0030000C003F807E0030000
      C003F803E0010000C003F803E0000000C003F803E0000000C003C001E0010000
      C0038001E0030000C0038003E0030000C0038003E0030000C0038003E0030000
      C003F9C3E0030000FE7FFFFFE0030000000000000000E007000000000000E007
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C003000000000000E007000000000000E007000000000000E007
      000000000000FE7F000000000000FE7F00000000000000000000000000000000
      000000000000}
  end
  object ActionManager1: TActionManager
    Images = ImageList1
    Left = 120
    Top = 200
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'F2 - Imprmir Resumo'
      ImageIndex = 3
      ShortCut = 113
      OnExecute = Action1Execute
      OnUpdate = Action1Update
    end
    object Action4: TAction
      Caption = 'F11 - Sair'
      ImageIndex = 6
      ShortCut = 122
      OnExecute = Action4Execute
    end
  end
end
