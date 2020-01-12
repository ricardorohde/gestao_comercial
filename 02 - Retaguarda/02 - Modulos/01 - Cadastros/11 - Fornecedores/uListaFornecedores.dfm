object FrListaFornecedores: TFrListaFornecedores
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Selecionar Fornecedores:'
  ClientHeight = 411
  ClientWidth = 810
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
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 83
    Width = 806
    Height = 288
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = dsDados
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = RzDialogButtons2ClickOk
    AlternateRowColor = 16119285
    AutoSizeColumns = True
    AutoSizeColumnIndex = 2
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    ColumnResize = gcrNone
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 18
    Columns = <
      item
        Expanded = False
        FieldName = 'FOR_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_DATA_REG'
        Title.Caption = 'Modifica'#231#227'o'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_RAZAO_SOCIAL'
        Title.Caption = 'Raz'#227'o Social / Nome'
        Width = 426
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_CNPJ'
        Title.Caption = 'Cnpj / Cpf'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_UF'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_STATUS'
        Title.Caption = 'Ativo'
        Width = 37
        Visible = True
      end>
  end
  object RzDialogButtons2: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 373
    Width = 806
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    CaptionCancel = 'Cancelar'
    HotTrack = True
    ShowDivider = True
    ShowGlyphs = True
    OnClickOk = RzDialogButtons2ClickOk
    TabOrder = 2
    VisualStyle = vsGradient
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 806
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
    object Label8: TLabel
      Left = 46
      Top = 5
      Width = 131
      Height = 24
      Caption = 'Fornecedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Image2: TImage
      Left = 6
      Top = 1
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000003
        E54944415478DAD5960B4C535718C7BF736E69C343C5D7C874139D25F5115DD0
        CCF9084FF181A08B5234D0C5A5D95C4CA4E2E296F168523685921854A8264613
        6568356819516B448910A82273D94C64219374125F51B22ACC015AE8EDF16B11
        A34DA1B7F6A2F14B6EEEB9E7FBDFF3FDCEF7DD73EE21F08E8DBCB70049494951
        3CCF471142425DCF52A9F44C4D4D8D7DC401121212D661D0426CCEF07065D5D5
        D5ED1F51000C5E8CC17F1CC2EDC0AB11AF6204A9151D0083676270A32F1D63CC
        8937757D7D7D856800E9E9E9529BCDD68E0093BCF9390A30FD030A6D0F9D0383
        12E87638F88F1B1A1ABA4401888F8F4FA1949A5FED937004A2A7508853486089
        9C83D1C1047EB9D207154DFD83123596A25C1480C4C4443DDE72BC05F5B44108
        2C450996E17B5100B0FEE5D19192AF746B645E837A5AFEAF76B86AED2F4700B5
        5819302E9D25C9CC4B91099143D1393B5C6A751CC712A80206602781D39D5F68
        91858E5EE40FC0B39E274D3F2737C792F5C00704E03C215F0E8C5E68E991C3DC
        8F38B8DFD10BA6DA76C8FE72F66BBAD2A3ADA05C3E15264784C08D7B3CCC09B5
        E2E8CE1534C37A3130804AF94470924618A350E032240E9E4187EDA93BD0ABE6
        028B9810EC5E1DF80132E86AFB9B308825AA365B40002F41CEAFFE07C59F08D1
        627C2B5D658E12A2F50320B58C00D108020066A0C9E6ADE20298574502C7B5E2
        0B21C3E930F93D40E94CBAF2F45D510106B2B0FA0B8C700A3F8520EFC1996B1B
        4CC3F49F153AA6DFBF63E7B1A95A12367907C8C6BDEEB03F06D6734F4B55B70B
        FD19CF7F800390892F1941120C10346AA0B3EF0900FF0C6B0F2ABA198E8F1840
        EAB7BA90ADF36E68968DBD590C5D3731E72FF618C201842BA0B6539153F6E75C
        83F9E04FBDA202ACDD96F721E59916D51B712590233BB7078505CBA4BD966AB7
        3F24662D743FB5F7A9B525F8170227EA2A780A85D57B8B1E040C9096959F01D4
        791003870DF6A5C42DB4A8167F1663552ADDCF7293098C4DBF5BCE3534C70C6A
        7029761342BF31951656BE31805293B70D15BB3D75120977CBB8AB60DAED4D9B
        DCFD91870E31D50F05ED7808F1DCA89083659B0C7A83DF004A4D6E1C23E4120A
        386FFEEDEA8CEBE30BB4D1AEF6A3829DD74B8E9C88F63A10630EDC1B12ABF6E9
        2D8201743A1DFDABB3BF059DB386029C183EE6DA1673E502577B7FEA866BFF76
        FDB760282DA6A1A5AA4CFFA9BB2904605D56EE124AC9E5E1CAE39AD9777F34BA
        B3B3677E2C8FDFA6643839FEC316551B8A9A050128B372B540C90EF0618BEDFF
        77B8EE4DB25111BEB498857CCC42912080344DDE613CD9FA3C4EE1F43BDDB303
        18EB4B8B08874D65FAAF850164E77C4E809BE27B50E1C680BF53555AFC9B2080
        B769EF1CE0390E2467307D9C4FA70000000049454E44AE426082}
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 806
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
    object eSearch: TRzEdit
      Left = 154
      Top = 17
      Width = 640
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
      OnKeyDown = eSearchKeyDown
    end
    object eTipo: TJvComboBox
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
      Text = 'RAZ'#195'O SOCIAL'
      Items.Strings = (
        'CNPJ'
        'RAZ'#195'O SOCIAL'
        'NOME FANTASIA')
      ItemIndex = 1
    end
  end
  object tbDados: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   ID_EMPRESA,'
      '   FOR_CODIGO,'
      '   FOR_DATA_REG,'
      '   FOR_RAZAO_SOCIAL,'
      '   FOR_NOME_FANTASIA,'
      '   FOR_CNPJ,'
      '   FOR_UF,'
      '   FOR_STATUS'
      'FROM'
      '   C000305'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   FOR_RAZAO_SOCIAL ASC')
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
    object tbDadosFOR_CODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosFOR_DATA_REG: TSQLTimeStampField
      FieldName = 'FOR_DATA_REG'
      Origin = 'FOR_DATA_REG'
    end
    object tbDadosFOR_RAZAO_SOCIAL: TStringField
      FieldName = 'FOR_RAZAO_SOCIAL'
      Origin = 'FOR_RAZAO_SOCIAL'
      Required = True
      Size = 120
    end
    object tbDadosFOR_NOME_FANTASIA: TStringField
      FieldName = 'FOR_NOME_FANTASIA'
      Origin = 'FOR_NOME_FANTASIA'
      Required = True
      Size = 80
    end
    object tbDadosFOR_CNPJ: TStringField
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
      Required = True
      OnGetText = tbDadosFOR_CNPJGetText
      Size = 15
    end
    object tbDadosFOR_UF: TStringField
      Alignment = taCenter
      FieldName = 'FOR_UF'
      Origin = 'FOR_UF'
      FixedChar = True
      Size = 2
    end
    object tbDadosFOR_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'FOR_STATUS'
      Origin = 'FOR_STATUS'
      OnGetText = tbDadosFOR_STATUSGetText
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    Left = 288
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 320
    Top = 136
    object ipodePesquisa1: TMenuItem
      Caption = 'Tipo de Pesquisa'
      ShortCut = 114
      OnClick = ipodePesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
    end
  end
end
