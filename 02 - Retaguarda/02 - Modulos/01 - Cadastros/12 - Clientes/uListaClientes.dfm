object FrListaClientes: TFrListaClientes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecionar Clientes.'
  ClientHeight = 344
  ClientWidth = 730
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
    Left = 3
    Top = 86
    Width = 724
    Height = 216
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = dsQuery
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
    OnDblClick = RzDialogButtons2ClickOk
    OnKeyUp = eGridKeyUp
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 18
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_DATA_REG'
        Title.Caption = 'Modifica'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RAZAO_SOCIAL'
        Title.Caption = 'Raz'#227'o Social / Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 332
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CNPJ'
        Title.Caption = 'Cnpj / Cpf'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_UF'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_STATUS'
        Title.Caption = 'Ativo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end>
  end
  object RzDialogButtons2: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 305
    Width = 724
    HotTrack = True
    OnClickOk = RzDialogButtons2ClickOk
    TabOrder = 2
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 724
    Height = 34
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
      Left = 41
      Top = 3
      Width = 156
      Height = 26
      Caption = 'Selecionar Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227072
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 221
      Top = 1
      Width = 500
      Height = 28
      AutoSize = False
      Caption = 
        'Neste formul'#225'rio '#233' poss'#237'vel selecionar todos os Clientes cadastr' +
        'ados no sistema e que estejam com o cadastro ativo.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 209
      Top = 2
      Width = 2
      Height = 30
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
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 724
    Height = 43
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
      Width = 601
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
  object Query: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   ID_EMPRESA,'
      '   CLI_CODIGO,'
      '   CLI_DATA_REG,'
      '   CLI_RAZAO_SOCIAL,'
      '   CLI_NOME_FANTASIA,'
      '   CLI_CNPJ,'
      '   CLI_UF,'
      '   CLI_STATUS'
      'FROM'
      '   C000307'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   CLI_RAZAO_SOCIAL ASC')
    Left = 256
    Top = 136
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object QueryCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      DisplayFormat = '000000'
    end
    object QueryCLI_DATA_REG: TSQLTimeStampField
      FieldName = 'CLI_DATA_REG'
      Origin = 'CLI_DATA_REG'
    end
    object QueryCLI_RAZAO_SOCIAL: TStringField
      FieldName = 'CLI_RAZAO_SOCIAL'
      Origin = 'CLI_RAZAO_SOCIAL'
      Required = True
      Size = 120
    end
    object QueryCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
      Required = True
      OnGetText = QueryCLI_CNPJGetText
      Size = 15
    end
    object QueryCLI_UF: TStringField
      Alignment = taCenter
      FieldName = 'CLI_UF'
      Origin = 'CLI_UF'
      FixedChar = True
      Size = 2
    end
    object QueryCLI_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'CLI_STATUS'
      Origin = 'CLI_STATUS'
      OnGetText = QueryCLI_STATUSGetText
    end
    object QueryCLI_NOME_FANTASIA: TStringField
      FieldName = 'CLI_NOME_FANTASIA'
      Origin = 'CLI_NOME_FANTASIA'
      Size = 120
    end
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = Query
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
      OnClick = Sair1Click
    end
  end
end
