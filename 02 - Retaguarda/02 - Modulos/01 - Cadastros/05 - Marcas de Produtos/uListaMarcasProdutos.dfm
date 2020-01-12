object FrListaMarcasProdutos: TFrListaMarcasProdutos
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Marcas de Produtos.'
  ClientHeight = 301
  ClientWidth = 543
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 263
    Width = 539
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    HotTrack = True
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 3
    ExplicitTop = 213
    ExplicitWidth = 531
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 83
    Width = 539
    Height = 178
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = dsDados
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = RzDialogButtons1ClickOk
    AutoSizeColumns = True
    AutoSizeColumnIndex = 2
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'MRC_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRC_DATA_REG'
        Title.Caption = 'Modifica'#231#227'o'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRC_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 305
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRC_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Ativo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end>
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 539
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
    TabOrder = 3
    VisualStyle = vsGradient
    ExplicitLeft = -2
    object Image1: TImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 24
      Height = 28
      Align = alLeft
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        48597300000B1300000B1301009A9C180000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A000004154944415478DAAD
        567D685B55143FC9FBCC6793264DB32E693A3AECB456B721B2EC1F9D0EBA5684
        4DB0B6DB1F7EA14364059968452CD109827413A7882B03076DEDC732E7365C5B
        E7E6B06BAB6037954DB7D242927E256D539BBCBC24EF2BF1BED4825D5FB2B478
        E0C2BBEFDD7B7EE7DCDFEF9CFB5490879D78F504C1180C05189134CAF3840A8B
        58C2C9E8C1D683C2BDF6AA945EB61CEE70E11A551D8663CFA0693981112A9CC2
        812449B5FC9DE7F994C8892048421A4DC72551F28A89B4F7CDA307FC39018E1F
        6A376256AA8BC071F7E607EF335AED56B556AFC919211B8B433834278DDD1C63
        0441188CB14CC3DB1FBFCC28027CEEE93E5FB9FD815A67B90BCBE7E8EEB6C0F8
        84F4D7C8AD0BAFBF5FB74F3983E6EE58D523953A6779E97AFC4360CC0F377FBD
        C5361EA9D72B027CF65E57C0E62876B2511636556C024BB115F23AA2E03CF846
        7DA037EA2038199C683CD250AA0CD0DCE5AB79AED6158F2560666206E6666681
        6558C0310C709200020DD9045E00511E92043A830E6C2536B03B366482E9EDBE
        E83FF4417D594E80BBA34CA752C8A908A2B8A44A9C4060040E2AB57A5546EB02
        588BE504F8E49D8EBFAB9FAD369114B92EE73CC743FFE9FEC5373E3A605604F8
        F4DDCE5943A1B1689B7B2B180A0C6B72CE4418B83178036291E86CE387FB8BB3
        1ED18EDD3B5D777EBF9D21D252540885360B224F0B9486922B39B38EE338E093
        3CB06C1C16826158985F0039EB8AAA0A18BE3C941F07B24216E716603E148638
        521287D2E7925C661D45534021875AA4A022BB15CC5633A8B1A5DA1CE8BB36FD
        E2E1DA8DFF2BC9A228C26C3894799E0ACCB00D2F3C91BDD06AEA6B9D6B05980E
        4DC1C9336DE07096C2F5E19FA5BE73A7704580A34DED31F7933B7472E1AC15E0
        FC403F6CA9AC026F5B5B1A01A815018E37774E180A8C0E93C504AECD2E309A8C
        591AFA4A0B4C05E0E2F00FCB00D9339039D85357E30A4D8660DA3F0D4C9441EA
        A040875A008988959582E138586C85A04704836A69FBE8E81DB8F2C7E0BF00ED
        62DFB9AF88BC49969513470D4D6E1502CF67DEC9D295D222FC387435E3C137E9
        030249590638D5FA451A0571595E974CC487560278BA7FDBF5D4E30FD3DADC1D
        74D9AE22805FFEBC0EF7573D04B406654990108D4620168DC2A5DEEF16054ED8
        B602A0E5ADAFF79A2CBA93EEDD3B2DB2D6EF65F27DD9FE4D07A435249496952D
        658C8AF06C4F67389960AAAF7DFFEDC82A0A8F35B5ED41DDB27583D36E2829DB
        6842D7266098F205274929344468F9F2586ACBF6AD6AB3D90C17CE7AC373F3E1
        D7862F794FAFE260D9E4BF8848015DADD5D1AFA4A4F4A338AEC669BD56C2313C
        439E2889422216C7243125DA4AACB7231C33D273C5BBBFC4E1A4FDE363AD3FF5
        7B9B1449CE661E4F0F492792764A2566E4C7A57131A9A1831E4F1DBFBCC6BDEB
        E9C7705AF3FC406FCF4BFFDDFB0F5C5AC856779519030000000049454E44AE42
        6082}
      ExplicitLeft = 6
      ExplicitTop = 5
      ExplicitHeight = 24
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 33
      Top = 3
      Width = 168
      Height = 28
      Align = alLeft
      Caption = 'Marcas de Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 25
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 229
      Top = 3
      Width = 306
      Height = 28
      Margins.Left = 10
      Align = alLeft
      Caption = 
        'Agrupa, define, separa e auxilia no cadastros dos produtos e ou ' +
        'mat'#233'rias primas.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 221
      ExplicitHeight = 30
    end
    object Bevel1: TBevel
      AlignWithMargins = True
      Left = 214
      Top = 3
      Width = 2
      Height = 28
      Margins.Left = 10
      Align = alLeft
      ExplicitLeft = 200
      ExplicitTop = 6
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 539
    Height = 43
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -2
    object Label1: TLabel
      Left = 3
      Top = 2
      Width = 24
      Height = 15
      Caption = 'F3 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 27
      Top = 2
      Width = 89
      Height = 15
      Caption = 'Tipo de Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 178
      Top = 2
      Width = 125
      Height = 15
      Caption = 'Par'#226'metros da Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 154
      Top = 2
      Width = 24
      Height = 15
      Caption = 'F4 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eTipo: TRzComboBox
      Left = 3
      Top = 17
      Width = 145
      Height = 23
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Descri'#231#227'o'
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o')
      ItemIndex = 1
      Values.Strings = (
        ''
        ''
        ''
        '')
    end
    object eSearch: TRzEdit
      Left = 154
      Top = 17
      Width = 381
      Height = 23
      Text = ''
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = eSearchChange
    end
  end
  object tbDados: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT '
      '   * '
      'FROM '
      '   C000404 '
      'WHERE '
      '   ID_EMPRESA = :ID_EMPRESA '
      'ORDER BY '
      '   MRC_DESCRICAO')
    Left = 256
    Top = 136
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object tbDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDadosID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tbDadosMRC_CODIGO: TIntegerField
      FieldName = 'MRC_CODIGO'
      Origin = 'MRC_CODIGO'
      DisplayFormat = '000'
    end
    object tbDadosMRC_DATA_REG: TSQLTimeStampField
      FieldName = 'MRC_DATA_REG'
      Origin = 'MRC_DATA_REG'
    end
    object tbDadosMRC_DESCRICAO: TStringField
      FieldName = 'MRC_DESCRICAO'
      Origin = 'MRC_DESCRICAO'
      Size = 60
    end
    object tbDadosMRC_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'MRC_STATUS'
      Origin = 'MRC_STATUS'
      OnGetText = tbDadosMRC_STATUSGetText
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    Left = 288
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 79
    Top = 136
    object ipodePesquisa1: TMenuItem
      Caption = 'Tipo de Pesquisa'
      ShortCut = 114
      OnClick = ipodePesquisa1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 115
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
