object FrOrdemServicoGerenciar: TFrOrdemServicoGerenciar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Gerenciar Ordens de Servi'#231'os.'
  ClientHeight = 580
  ClientWidth = 1251
  Color = clGray
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 94
    Width = 1247
    Height = 50
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    AutoStyle = False
    Images = FrPrincipal.Icones20x20
    Margin = 1
    RowHeight = 40
    ButtonLayout = blGlyphTop
    ButtonWidth = 60
    ButtonHeight = 40
    ShowButtonCaptions = True
    TextOptions = ttoShowTextLabels
    AutoSize = True
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdTop]
    BorderWidth = 0
    Color = clWhite
    GradientColorStyle = gcsCustom
    GradientColorStop = 14869218
    TabOrder = 0
    VisualStyle = vsGradient
    ToolbarControls = (
      btnNew
      RzSpacer1
      btnEdit
      RzSpacer2
      btnOK
      RzSpacer7
      RzToolButton1
      RzSpacer3
      btnNew2
      RzSpacer5
      btnExit)
    object btnNew: TRzToolButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 0
      GradientColorStyle = gcsCustom
      DropDownMenu = Pop01
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Action = actPrint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnEdit: TRzToolButton
      AlignWithMargins = True
      Left = 115
      Top = 3
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 10
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actAprovar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnOK: TRzToolButton
      AlignWithMargins = True
      Left = 227
      Top = 3
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 3
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actBaixar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnExit: TRzToolButton
      AlignWithMargins = True
      Left = 561
      Top = 3
      Width = 80
      Height = 44
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 5
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actSair
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object RzSpacer1: TRzSpacer
      Left = 105
      Top = 13
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 217
      Top = 13
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 437
      Top = 13
      Grooved = True
    end
    object RzSpacer5: TRzSpacer
      Left = 551
      Top = 13
      Grooved = True
    end
    object btnNew2: TRzToolButton
      AlignWithMargins = True
      Left = 448
      Top = 3
      Width = 100
      Height = 44
      DisabledIndex = 4
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actCancelarPedido
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object RzToolButton1: TRzToolButton
      Left = 337
      Top = 3
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 6
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = Action1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object RzSpacer7: TRzSpacer
      Left = 329
      Top = 13
      Grooved = True
    end
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 146
    Width = 1247
    Height = 166
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = dsQuery
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = eGridDrawColumnCell
    AutoAppend = False
    ShowGlyphs = False
    BevelInner = bvNone
    BevelOuter = bvNone
    AlternateRowColor = 14408667
    ScrollBars = ssVertical
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    CanDelete = False
    ColumnResize = gcrNone
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    ShowMemos = False
    BooleanEditor = False
    Columns = <
      item
        Expanded = False
        FieldName = 'OS_NUMERO'
        Title.Caption = 'N'#250'mero'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_DATA_REG'
        Title.Caption = 'Data Pedido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_DATA_MODIFICACAO'
        Title.Caption = 'Modifica'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_FATURADA'
        Title.Alignment = taCenter
        Title.Caption = 'Fat.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_ENTREGUE'
        Title.Alignment = taCenter
        Title.Caption = 'Ent.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_NOME_ATENDENTE'
        Title.Caption = 'Comprador'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_CLI_RAZAO_SOCIAL'
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 526
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_CLI_CNPJ'
        Title.Caption = 'Cnpj'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 123
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OS_CLI_UF'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 37
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 524
    Width = 1247
    Height = 54
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 1081
      Top = 3
      Width = 165
      Height = 48
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      BevelOuter = bvNone
      Color = 4227072
      ParentBackground = False
      TabOrder = 0
      object Label5: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 159
        Height = 17
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total da O.S:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 74
      end
      object JvDBCalcEdit4: TJvDBCalcEdit
        Left = 0
        Top = 20
        Width = 165
        Height = 28
        Margins.Top = 0
        BevelEdges = []
        BevelOuter = bvNone
        Align = alClient
        BorderStyle = bsNone
        Color = 4227072
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        Value = 2796.000000000000000000
        DecimalPlacesAlwaysShown = True
        DataField = 'OS_VLR_TOTAL'
        DataSource = dsQuery
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 934
      Top = 3
      Width = 145
      Height = 48
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      BevelOuter = bvNone
      Color = clMaroon
      ParentBackground = False
      TabOrder = 1
      object Label10: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 139
        Height = 17
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total dos Produtos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 114
      end
      object JvDBCalcEdit2: TJvDBCalcEdit
        Left = 0
        Top = 20
        Width = 145
        Height = 28
        Margins.Top = 0
        BevelEdges = []
        BevelOuter = bvNone
        Align = alClient
        BorderStyle = bsNone
        Color = clMaroon
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowButton = False
        ShowHint = False
        TabOrder = 0
        Value = 2796.000000000000000000
        DecimalPlacesAlwaysShown = True
        DataField = 'OS_VLR_PRODUTOS'
        DataSource = dsQuery
      end
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 787
      Top = 3
      Width = 145
      Height = 48
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      BevelOuter = bvNone
      Color = 8404992
      ParentBackground = False
      TabOrder = 2
      object Label7: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 139
        Height = 17
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Qtde. de Itens:'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 85
      end
      object RzDBLabel1: TRzDBLabel
        AlignWithMargins = True
        Left = 3
        Top = 20
        Width = 139
        Height = 28
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alClient
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
        BlinkIntervalOff = 2000
        DataField = 'PRD_QTDE_ITENS'
        DataSource = dsItens
        ExplicitLeft = 52
        ExplicitWidth = 65
        ExplicitHeight = 17
      end
    end
  end
  object Panel7: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 1247
    Height = 54
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    object eCondicao: TRadioGroup
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 350
      Height = 51
      Margins.Top = 0
      Align = alLeft
      Caption = 'Status da O.S.'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'Or'#231'amento'
        'Em Execu'#231#227'o'
        'Finalizada'
        'Entregue'
        'Cancelada'
        'Todos')
      ParentFont = False
      TabOrder = 0
      OnClick = eCondicaoClick
    end
    object grFiltrar: TRzGroupBox
      AlignWithMargins = True
      Left = 683
      Top = 0
      Width = 561
      Height = 51
      Margins.Top = 0
      Align = alClient
      Caption = 'Filtrar por O.S.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      object eTipoFiltro: TRzComboBox
        AlignWithMargins = True
        Left = 4
        Top = 17
        Width = 153
        Height = 21
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
        Text = 'N'#250'mero da O.S'
        Items.Strings = (
          'N'#250'mero da O.S'
          'Raz'#227'o Social / Nome'
          'Cnpj / Cpf')
        ItemIndex = 0
      end
      object eSearchText: TRzEdit
        AlignWithMargins = True
        Left = 163
        Top = 17
        Width = 394
        Height = 25
        Margins.Bottom = 8
        Text = ''
        Align = alClient
        CharCase = ecUpperCase
        FocusColor = 13619151
        TabOrder = 1
        OnChange = eSearchTextChange
        ExplicitHeight = 21
      end
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 359
      Top = 0
      Width = 318
      Height = 51
      Margins.Top = 0
      Align = alLeft
      Caption = 'Filtrar por Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        AlignWithMargins = True
        Left = 110
        Top = 23
        Width = 7
        Height = 13
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object PngBitBtn1: TPngBitBtn
        AlignWithMargins = True
        Left = 238
        Top = 16
        Width = 75
        Height = 28
        Margins.Top = 0
        Margins.Bottom = 4
        Caption = 'Filtrar'
        TabOrder = 2
        OnClick = PngBitBtn1Click
      end
      object eDataFim: TJvDateEdit
        AlignWithMargins = True
        Left = 121
        Top = 19
        Width = 102
        Height = 21
        Margins.Top = 0
        Margins.Bottom = 5
        ShowNullDate = False
        TabOrder = 1
      end
      object eDataIni: TJvDateEdit
        AlignWithMargins = True
        Left = 5
        Top = 19
        Width = 101
        Height = 21
        Margins.Top = 0
        Margins.Bottom = 5
        ShowNullDate = False
        TabOrder = 0
        OnEnter = eDataIniEnter
        OnExit = eDataIniExit
      end
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 1247
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
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    GradientColorStart = clSilver
    GradientColorStop = 3815994
    ParentFont = False
    TabOrder = 4
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 261
      Height = 25
      Caption = 'Gerenciar Ordens de Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227072
      Font.Height = -19
      Font.Name = 'Segoe UI'
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
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 314
    Width = 1247
    Height = 45
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    BorderHighlight = clNone
    GradientColorStart = clSilver
    GradientColorStop = 3815994
    TabOrder = 5
    VisualStyle = vsGradient
  end
  object JvDBGrid2: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 361
    Width = 1247
    Height = 161
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = dsItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    AutoAppend = False
    ShowGlyphs = False
    BevelInner = bvNone
    BevelOuter = bvNone
    AlternateRowColor = 14408667
    ScrollBars = ssVertical
    AutoSizeColumns = True
    AutoSizeColumnIndex = 2
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    CanDelete = False
    ColumnResize = gcrNone
    EditControls = <>
    RowsHeight = 19
    TitleRowHeight = 17
    ShowMemos = False
    BooleanEditor = False
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_CODIGO_BARRAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'C'#243'digo de Barras'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 476
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_UNIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Un.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRD_NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Ncm'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRD_CEST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Cest'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_UNITARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Valor Unit'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Qtde.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_SUBTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Valor SubTotal'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Valor Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 341
    Top = 205
    StyleName = 'Platform Default'
    object actPrint: TAction
      Caption = 'Im&primir'
      ImageIndex = 0
      ShortCut = 16464
      OnExecute = actPrintADExecute
      OnUpdate = actPrintUpdate
    end
    object actAprovar: TAction
      Caption = '&Status da O.S'
      ImageIndex = 10
      ShortCut = 16449
      OnExecute = actAprovarExecute
      OnUpdate = actAprovarUpdate
    end
    object Action1: TAction
      Caption = 'Faturar'
      ImageIndex = 6
      OnExecute = Action1Execute
      OnUpdate = Action1Update
    end
    object actBaixar: TAction
      Caption = '&Baixar O.S'
      ImageIndex = 3
      ShortCut = 16450
      OnExecute = actBaixarExecute
      OnUpdate = actBaixarUpdate
    end
    object actCancelarPedido: TAction
      Caption = 'Cancelar O.S'
      ImageIndex = 4
      OnExecute = actCancelarPedidoExecute
      OnUpdate = actCancelarPedidoUpdate
    end
    object actSair: TAction
      Caption = '&Sair'
      ImageIndex = 5
      ShortCut = 16467
      OnExecute = actSairExecute
    end
    object actPrintAD: TAction
      Caption = 'Imprimir Administrativo'
      OnExecute = actPrintADExecute
    end
    object actPrintPR: TAction
      Caption = 'Imprimir Produ'#231#227'o'
      OnExecute = actPrintPRExecute
    end
    object Action2: TAction
      Caption = 'Action2'
      OnExecute = Action2Execute
    end
  end
  object Query: TFDQuery
    Active = True
    AfterOpen = QueryAfterOpen
    AfterPost = QueryAfterPost
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT '
      '   * '
      'FROM '
      '   C000070 '
      'WHERE '
      '   ID_EMPRESA = :ID_EMPRESA '
      'AND '
      '   CAST(OS_DATA_REG AS DATE) BETWEEN :ADATA AND :FDATA'
      'ORDER BY '
      ' OS_DATA_REG DESC')
    Left = 12
    Top = 196
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'ADATA'
        DataType = ftDate
        ParamType = ptInput
        Value = 43101d
      end
      item
        Name = 'FDATA'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
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
    object QueryID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object QueryID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
      Origin = 'ID_ATENDENTE'
    end
    object QueryID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
      Origin = 'ID_TECNICO'
    end
    object QueryID_PLN_CONTAS: TIntegerField
      FieldName = 'ID_PLN_CONTAS'
      Origin = 'ID_PLN_CONTAS'
    end
    object QueryOS_DATA_REG: TSQLTimeStampField
      FieldName = 'OS_DATA_REG'
      Origin = 'OS_DATA_REG'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QueryOS_DATA_MODIFICACAO: TSQLTimeStampField
      FieldName = 'OS_DATA_MODIFICACAO'
      Origin = 'OS_DATA_MODIFICACAO'
    end
    object QueryOS_NUMERO: TIntegerField
      Alignment = taCenter
      FieldName = 'OS_NUMERO'
      Origin = 'OS_NUMERO'
      DisplayFormat = '000000'
    end
    object QueryOS_ANOTACOES_ENT: TStringField
      FieldName = 'OS_ANOTACOES_ENT'
      Origin = 'OS_ANOTACOES_ENT'
      Size = 500
    end
    object QueryOS_ANOTACOES_SAI: TStringField
      FieldName = 'OS_ANOTACOES_SAI'
      Origin = 'OS_ANOTACOES_SAI'
      Size = 500
    end
    object QueryOS_FATURADA: TIntegerField
      Alignment = taCenter
      FieldName = 'OS_FATURADA'
      Origin = 'OS_FATURADA'
      OnGetText = QueryOS_FATURADAGetText
    end
    object QueryOS_PREV_ENTREGA: TDateField
      FieldName = 'OS_PREV_ENTREGA'
      Origin = 'OS_PREV_ENTREGA'
    end
    object QueryOS_ENTREGUE: TIntegerField
      Alignment = taCenter
      FieldName = 'OS_ENTREGUE'
      Origin = 'OS_ENTREGUE'
      OnGetText = QueryOS_ENTREGUEGetText
    end
    object QueryOS_DATA_ENTREGA: TSQLTimeStampField
      FieldName = 'OS_DATA_ENTREGA'
      Origin = 'OS_DATA_ENTREGA'
    end
    object QueryOS_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'OS_STATUS'
      Origin = 'OS_STATUS'
      OnGetText = QueryOS_STATUSGetText
    end
    object QueryOS_CLI_RAZAO_SOCIAL: TStringField
      FieldName = 'OS_CLI_RAZAO_SOCIAL'
      Origin = 'OS_CLI_RAZAO_SOCIAL'
      Size = 120
    end
    object QueryOS_CLI_CNPJ: TStringField
      FieldName = 'OS_CLI_CNPJ'
      Origin = 'OS_CLI_CNPJ'
      OnGetText = QueryOS_CLI_CNPJGetText
      Size = 15
    end
    object QueryOS_CLI_UF: TStringField
      FieldName = 'OS_CLI_UF'
      Origin = 'OS_CLI_UF'
      FixedChar = True
      Size = 2
    end
    object QueryOS_NOME_TECNICO: TStringField
      FieldName = 'OS_NOME_TECNICO'
      Origin = 'OS_NOME_TECNICO'
      Size = 85
    end
    object QueryOS_NOME_ATENDENTE: TStringField
      FieldName = 'OS_NOME_ATENDENTE'
      Origin = 'OS_NOME_ATENDENTE'
      Size = 85
    end
    object QueryOS_REPRESENTANTE: TStringField
      FieldName = 'OS_REPRESENTANTE'
      Origin = 'OS_REPRESENTANTE'
      Size = 65
    end
    object QueryOS_VLR_FRETE: TFMTBCDField
      FieldName = 'OS_VLR_FRETE'
      Origin = 'OS_VLR_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryOS_VLR_SEGURO: TFMTBCDField
      FieldName = 'OS_VLR_SEGURO'
      Origin = 'OS_VLR_SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryOS_VLR_OUTROS: TFMTBCDField
      FieldName = 'OS_VLR_OUTROS'
      Origin = 'OS_VLR_OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryOS_VLR_DESCONTOS: TFMTBCDField
      FieldName = 'OS_VLR_DESCONTOS'
      Origin = 'OS_VLR_DESCONTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryOS_VLR_PRODUTOS: TBCDField
      FieldName = 'OS_VLR_PRODUTOS'
      Origin = 'OS_VLR_PRODUTOS'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryOS_VLR_TOTAL: TBCDField
      FieldName = 'OS_VLR_TOTAL'
      Origin = 'OS_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
    end
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = Query
    Left = 44
    Top = 196
  end
  object QueryProdutos: TFDQuery
    IndexFieldNames = 'ID_C000070'
    AggregatesActive = True
    MasterSource = dsQuery
    MasterFields = 'ID'
    DetailFields = 'ID_C000070'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   *'
      'FROM'
      '   C000071'
      'WHERE'
      '   ID_C000070 = :ID'
      'ORDER BY'
      '   ID ASC')
    Left = 12
    Top = 226
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QueryProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryProdutosID_C000070: TIntegerField
      FieldName = 'ID_C000070'
      Origin = 'ID_C000070'
    end
    object QueryProdutosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object QueryProdutosPRD_CODIGO_BARRAS: TStringField
      FieldName = 'PRD_CODIGO_BARRAS'
      Origin = 'PRD_CODIGO_BARRAS'
      Size = 15
    end
    object QueryProdutosPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      Size = 120
    end
    object QueryProdutosPRD_UNIDADE: TStringField
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      Size = 4
    end
    object QueryProdutosPRD_NCM: TStringField
      FieldName = 'PRD_NCM'
      Origin = 'PRD_NCM'
      Size = 10
    end
    object QueryProdutosPRD_NCM_EX: TStringField
      FieldName = 'PRD_NCM_EX'
      Origin = 'PRD_NCM_EX'
      FixedChar = True
      Size = 2
    end
    object QueryProdutosPRD_CEST: TStringField
      FieldName = 'PRD_CEST'
      Origin = 'PRD_CEST'
      Size = 10
    end
    object QueryProdutosPRD_QTDE: TBCDField
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      Precision = 18
    end
    object QueryProdutosPRD_VLR_UNITARIO: TBCDField
      FieldName = 'PRD_VLR_UNITARIO'
      Origin = 'PRD_VLR_UNITARIO'
      Precision = 18
    end
    object QueryProdutosPRD_VLR_SUBTOTAL: TBCDField
      FieldName = 'PRD_VLR_SUBTOTAL'
      Origin = 'PRD_VLR_SUBTOTAL'
      Precision = 18
    end
    object QueryProdutosPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      Origin = 'PRD_ORIGEM'
    end
    object QueryProdutosPRD_INFOS: TStringField
      FieldName = 'PRD_INFOS'
      Origin = 'PRD_INFOS'
      Size = 256
    end
    object QueryProdutosPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Size = 25
    end
    object QueryProdutosPRD_INCLUSAO: TIntegerField
      FieldName = 'PRD_INCLUSAO'
      Origin = 'PRD_INCLUSAO'
    end
    object QueryProdutosPRD_CST: TStringField
      FieldName = 'PRD_CST'
      Origin = 'PRD_CST'
      Size = 3
    end
    object QueryProdutosPRD_CFOP: TIntegerField
      FieldName = 'PRD_CFOP'
      Origin = 'PRD_CFOP'
    end
    object QueryProdutosPRD_VLR_TOTAL: TFMTBCDField
      FieldName = 'PRD_VLR_TOTAL'
      Origin = 'PRD_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 10
    end
    object QueryProdutosPRD_QTDE_ITENS: TAggregateField
      Alignment = taRightJustify
      FieldName = 'PRD_QTDE_ITENS'
      OnGetText = QueryProdutosPRD_QTDE_ITENSGetText
      Active = True
      DisplayName = ''
      Expression = 'COUNT(ID)'
    end
  end
  object dsItens: TJvDataSource
    DataSet = QueryProdutos
    Left = 44
    Top = 226
  end
  object Pop01: TPopupMenu
    Left = 374
    Top = 205
    object IncluirProdutos1: TMenuItem
      Action = actPrintAD
    end
    object AlterarProdutoSelecionado1: TMenuItem
      Action = actPrintPR
    end
  end
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 96
    Top = 192
  end
  object dsQueryFatContas: TDataSource
    AutoEdit = False
    DataSet = Query110
    Left = 616
    Top = 200
  end
  object Query110: TFDQuery
    CachedUpdates = True
    Connection = FrModuloRet.DBConexao
    SchemaAdapter = SchemaAD
    SQL.Strings = (
      'SELECT * FROM C000110 WHERE ID = -1;')
    Left = 584
    Top = 200
    object Query110ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query110ID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object Query110ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query110ID_ORIGEM: TIntegerField
      FieldName = 'ID_ORIGEM'
      Origin = 'ID_ORIGEM'
    end
    object Query110ID_CONTAS: TIntegerField
      FieldName = 'ID_CONTAS'
      Origin = 'ID_CONTAS'
    end
    object Query110ID_PLN_CTAS: TIntegerField
      FieldName = 'ID_PLN_CTAS'
      Origin = 'ID_PLN_CTAS'
    end
    object Query110REC_DATA_REGISTRO: TSQLTimeStampField
      FieldName = 'REC_DATA_REGISTRO'
      Origin = 'REC_DATA_REGISTRO'
    end
    object Query110REC_STATUS: TIntegerField
      FieldName = 'REC_STATUS'
      Origin = 'REC_STATUS'
    end
    object Query110REC_ORIGEM: TIntegerField
      FieldName = 'REC_ORIGEM'
      Origin = 'REC_ORIGEM'
    end
    object Query110REC_CLIENTE: TStringField
      FieldName = 'REC_CLIENTE'
      Origin = 'REC_CLIENTE'
      Size = 120
    end
    object Query110REC_DOCUMENTO: TStringField
      FieldName = 'REC_DOCUMENTO'
      Origin = 'REC_DOCUMENTO'
      Size = 25
    end
    object Query110REC_JUROS_CAREN: TIntegerField
      FieldName = 'REC_JUROS_CAREN'
      Origin = 'REC_JUROS_CAREN'
    end
    object Query110REC_MULTA_CAREN: TIntegerField
      FieldName = 'REC_MULTA_CAREN'
      Origin = 'REC_MULTA_CAREN'
    end
    object Query110REC_VLR_CONTA: TFMTBCDField
      FieldName = 'REC_VLR_CONTA'
      Origin = 'REC_VLR_CONTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query110REC_JUROS: TFMTBCDField
      FieldName = 'REC_JUROS'
      Origin = 'REC_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query110REC_MULTA: TFMTBCDField
      FieldName = 'REC_MULTA'
      Origin = 'REC_MULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object Query111: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_C000110'
    MasterSource = dsQueryFatContas
    MasterFields = 'ID'
    DetailFields = 'ID_C000110'
    Connection = FrModuloRet.DBConexao
    SchemaAdapter = SchemaAD
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    SQL.Strings = (
      'SELECT * FROM C000111 WHERE ID_C000110 = :ID')
    Left = 584
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Query111ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query111ID_C000110: TIntegerField
      FieldName = 'ID_C000110'
      Origin = 'ID_C000110'
    end
    object Query111REC_PARCELA: TIntegerField
      FieldName = 'REC_PARCELA'
      Origin = 'REC_PARCELA'
    end
    object Query111REC_DOCUMENTO: TStringField
      FieldName = 'REC_DOCUMENTO'
      Origin = 'REC_DOCUMENTO'
      Size = 25
    end
    object Query111REC_VENCIMENTO: TDateField
      FieldName = 'REC_VENCIMENTO'
      Origin = 'REC_VENCIMENTO'
    end
    object Query111REC_ANOTACOES: TStringField
      FieldName = 'REC_ANOTACOES'
      Origin = 'REC_ANOTACOES'
      Size = 120
    end
    object Query111REC_STATUS: TIntegerField
      FieldName = 'REC_STATUS'
      Origin = 'REC_STATUS'
    end
    object Query111REC_VALOR: TFMTBCDField
      FieldName = 'REC_VALOR'
      Origin = 'REC_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query111REC_VLR_ATUALIZADO: TFMTBCDField
      FieldName = 'REC_VLR_ATUALIZADO'
      Origin = 'REC_VLR_ATUALIZADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query111REC_VLR_RECEBIDO: TFMTBCDField
      FieldName = 'REC_VLR_RECEBIDO'
      Origin = 'REC_VLR_RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query111REC_VLR_SALDO: TFMTBCDField
      FieldName = 'REC_VLR_SALDO'
      Origin = 'REC_VLR_SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object SchemaAD: TFDSchemaAdapter
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    AfterApplyUpdate = SchemaADAfterApplyUpdate
    Left = 616
    Top = 232
  end
  object QueryBaixar: TFDQuery
    Connection = FrModuloRet.DBConexao
    SchemaAdapter = SchemaBaixar
    Left = 232
    Top = 240
  end
  object QueryEstq: TFDQuery
    Connection = FrModuloRet.DBConexao
    SchemaAdapter = SchemaBaixar
    Left = 232
    Top = 272
  end
  object SchemaBaixar: TFDSchemaAdapter
    Left = 264
    Top = 256
  end
end
