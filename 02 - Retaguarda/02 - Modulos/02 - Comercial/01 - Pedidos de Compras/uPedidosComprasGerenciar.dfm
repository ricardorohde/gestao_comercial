object FrPedidosComprasGerenciar: TFrPedidosComprasGerenciar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Gerenciar Pedidos de Compras.'
  ClientHeight = 541
  ClientWidth = 1251
  Color = clGray
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 88
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
      btnCancel
      RzSpacer6
      btnOK
      RzSpacer3
      BtnOK1
      RzSpacer5
      btnError
      RzSpacer4
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
      DropDownMenu = PopPrinter
      ImageIndex = 0
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Caption = 'Imprimir'
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
      DisabledIndex = 1
      GradientColorStyle = gcsCustom
      DropDownMenu = Pop01
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actAprovar
    end
    object btnCancel: TRzToolButton
      AlignWithMargins = True
      Left = 227
      Top = 3
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 2
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actReabrir
    end
    object btnOK: TRzToolButton
      AlignWithMargins = True
      Left = 339
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
    end
    object btnExit: TRzToolButton
      AlignWithMargins = True
      Left = 673
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
    object RzSpacer4: TRzSpacer
      Left = 663
      Top = 13
    end
    object RzSpacer6: TRzSpacer
      Left = 329
      Top = 13
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 441
      Top = 13
      Grooved = True
    end
    object btnError: TRzToolButton
      Left = 563
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
    end
    object RzSpacer5: TRzSpacer
      Left = 555
      Top = 13
      Grooved = True
    end
    object BtnOK1: TRzToolButton
      AlignWithMargins = True
      Left = 452
      Top = 3
      Width = 100
      Height = 44
      DisabledIndex = 6
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actFaturar
    end
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 140
    Width = 1247
    Height = 166
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = dsDados
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    OnDrawColumnCell = eGridDrawColumnCell
    AutoAppend = False
    ShowGlyphs = False
    BevelInner = bvNone
    BevelOuter = bvNone
    AlternateRowColor = 14408667
    ScrollBars = ssVertical
    AutoSizeColumns = True
    AutoSizeColumnIndex = 8
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
        FieldName = 'PED_NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
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
        FieldName = 'PED_DATA_PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Data Pedido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_DATA_REG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Modifica'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_ENTREGUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Rec.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_FATURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Fat.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_SOLICITANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Solicitante'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_COMPRADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Comprador'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_RAZAO_SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Fornecedor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 417
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Cnpj'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FOR_UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object JvDBGrid2: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 355
    Width = 1247
    Height = 128
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = dsItens
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
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
    RowsHeight = 19
    TitleRowHeight = 19
    ShowMemos = False
    BooleanEditor = False
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_CODIGO_BRR'
        Title.Caption = 'C'#243'digo de Barras'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 687
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_UNIDADE'
        Title.Caption = 'Un.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITM_VLR_UNITARIO'
        Title.Caption = 'Valor Unit'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITM_QTDE'
        Title.Caption = 'Qtde.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITM_VLR_TOTAL'
        Title.Caption = 'Valor Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 114
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 485
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
    TabOrder = 3
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 1086
      Top = 3
      Width = 160
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
        Width = 154
        Height = 19
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total do Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 104
      end
      object JvDBCalcEdit4: TJvDBCalcEdit
        Left = 0
        Top = 22
        Width = 160
        Height = 26
        Margins.Top = 0
        BevelEdges = []
        BevelOuter = bvNone
        Align = alClient
        BorderStyle = bsNone
        Color = 4227072
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_TOTAL'
        DataSource = dsDados
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 924
      Top = 3
      Width = 160
      Height = 48
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      BevelOuter = bvNone
      Color = 206
      ParentBackground = False
      TabOrder = 1
      object Label6: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 154
        Height = 19
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total de Descontos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 128
      end
      object JvDBCalcEdit5: TJvDBCalcEdit
        Left = 0
        Top = 22
        Width = 160
        Height = 26
        Margins.Top = 0
        BevelEdges = []
        BevelOuter = bvNone
        Align = alClient
        BorderStyle = bsNone
        Color = 206
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_DESCONTOS'
        DataSource = dsDados
      end
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 762
      Top = 3
      Width = 160
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
        Width = 154
        Height = 19
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Qtde. de Itens:'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 96
      end
      object DBText1: TDBText
        AlignWithMargins = True
        Left = 0
        Top = 22
        Width = 157
        Height = 26
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alClient
        Alignment = taRightJustify
        DataField = 'PED_QTDE_ITENS'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 73
        ExplicitTop = 20
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
    Height = 48
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 4
    object eCondicao: TRadioGroup
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 370
      Height = 45
      Margins.Top = 0
      Align = alLeft
      Caption = 'Condi'#231#227'o dos Pedidos.'
      Columns = 3
      Items.Strings = (
        'Or'#231'amentos'
        'Aprovados'
        'Todos')
      TabOrder = 0
      OnClick = eCondicaoClick
    end
    object grFiltrar: TRzGroupBox
      AlignWithMargins = True
      Left = 703
      Top = 0
      Width = 541
      Height = 45
      Margins.Top = 0
      Align = alClient
      Caption = 'Filtrar Pedidos'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      object eTipoFiltro: TRzComboBox
        AlignWithMargins = True
        Left = 4
        Top = 16
        Width = 153
        Height = 23
        Margins.Top = 0
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
        Text = 'N'#250'mero do Pedido'
        Items.Strings = (
          'N'#250'mero do Pedido'
          'Raz'#227'o Social / Nome'
          'Cnpj / Cpf')
        ItemIndex = 0
      end
      object eSearchText: TRzEdit
        AlignWithMargins = True
        Left = 163
        Top = 16
        Width = 374
        Height = 22
        Margins.Top = 0
        Margins.Bottom = 6
        Text = ''
        Align = alClient
        CharCase = ecUpperCase
        FocusColor = 13619151
        TabOrder = 1
        OnChange = eSearchTextChange
        ExplicitHeight = 23
      end
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 379
      Top = 0
      Width = 318
      Height = 45
      Margins.Top = 0
      Align = alLeft
      Caption = 'Filtrar por Data'
      TabOrder = 1
      object Label2: TLabel
        AlignWithMargins = True
        Left = 112
        Top = 20
        Width = 7
        Height = 20
        Align = alLeft
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 15
      end
      object PngBitBtn1: TPngBitBtn
        AlignWithMargins = True
        Left = 238
        Top = 17
        Width = 75
        Height = 22
        Margins.Top = 0
        Margins.Bottom = 4
        Align = alRight
        Caption = 'Filtrar'
        TabOrder = 2
        OnClick = PngBitBtn1Click
      end
      object eDataFim: TJvDateEdit
        AlignWithMargins = True
        Left = 125
        Top = 17
        Width = 102
        Height = 21
        Margins.Top = 0
        Margins.Bottom = 5
        Align = alLeft
        ShowNullDate = False
        TabOrder = 1
        ExplicitHeight = 23
      end
      object eDataIni: TJvDateEdit
        AlignWithMargins = True
        Left = 5
        Top = 17
        Width = 101
        Height = 21
        Margins.Top = 0
        Margins.Bottom = 5
        Align = alLeft
        ShowNullDate = False
        TabOrder = 0
        OnEnter = eDataIniEnter
        OnExit = eDataIniExit
        ExplicitHeight = 23
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
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    GradientColorStart = clSilver
    GradientColorStop = 3815994
    ParentFont = False
    TabOrder = 5
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 264
      Height = 26
      Caption = 'Gerenciar Pedidos de Compras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 323
      Top = 1
      Width = 906
      Height = 30
      Caption = 
        'Neste formul'#225'rio ser'#225' efetuada a gest'#227'o dos pedidos de compras, ' +
        'aqui voc'#234' poder'#225' fazer uma melhor gest'#227'o podendo imprimir, aprov' +
        'ar, reabrir, cancelar e baixar o pedido conforme a necessidade, ' +
        'alimentando o estoque de forma autom'#225'tica.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 315
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
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 308
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
    TabOrder = 6
    VisualStyle = vsGradient
    object Panel8: TPanel
      Left = 908
      Top = 0
      Width = 339
      Height = 45
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Label11: TLabel
        Left = 33
        Top = 3
        Width = 68
        Height = 15
        Caption = 'VALOR FRETE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 134
        Top = 3
        Width = 81
        Height = 15
        Caption = 'VALOR SEGURO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 238
        Top = 3
        Width = 89
        Height = 15
        Caption = 'VALOR DESPESAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Bevel4: TBevel
        Left = 117
        Top = 3
        Width = 2
        Height = 38
      end
      object Bevel5: TBevel
        Left = 226
        Top = 3
        Width = 2
        Height = 38
      end
      object JvDBCalcEdit7: TJvDBCalcEdit
        Left = 13
        Top = 22
        Width = 90
        Height = 23
        BevelEdges = []
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_FRETE'
        DataSource = dsDados
      end
      object JvDBCalcEdit8: TJvDBCalcEdit
        Left = 127
        Top = 22
        Width = 90
        Height = 23
        BevelEdges = []
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_SEGURO'
        DataSource = dsDados
      end
      object JvDBCalcEdit9: TJvDBCalcEdit
        Left = 239
        Top = 22
        Width = 90
        Height = 23
        BevelEdges = []
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_OUTROS'
        DataSource = dsDados
      end
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 341
    Top = 189
    StyleName = 'Standard'
    object actPrint: TAction
      Caption = 'Modelo Administrativo'
      ImageIndex = 0
      ShortCut = 16464
      OnExecute = actPrintExecute
      OnUpdate = actPrintUpdate
    end
    object actPrintExpedicao: TAction
      Caption = 'Modelo Expedi'#231#227'o'
      ImageIndex = 0
      OnExecute = actPrintExpedicaoExecute
      OnUpdate = actPrintUpdate
    end
    object actAprovar: TAction
      Caption = '&Aprovar Pedido'
      ImageIndex = 1
      ShortCut = 16449
      OnExecute = actAprovarExecute
      OnUpdate = actAprovarUpdate
    end
    object actReabrir: TAction
      Caption = '&Reabrir Pedido'
      ImageIndex = 2
      ShortCut = 16466
      OnExecute = actReabrirExecute
      OnUpdate = actReabrirUpdate
    end
    object actFaturar: TAction
      Caption = 'Faturar'
      ImageIndex = 6
      OnExecute = actFaturarExecute
      OnUpdate = actFaturarUpdate
    end
    object actBaixar: TAction
      Caption = '&Baixar Pedido'
      ImageIndex = 3
      ShortCut = 16450
      OnExecute = actBaixarExecute
      OnUpdate = actBaixarUpdate
    end
    object actCancelarPedido: TAction
      Caption = 'Cancelar Pedido'
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
  end
  object tbDados: TFDQuery
    AfterOpen = tbDadosAfterOpen
    AfterPost = tbDadosAfterPost
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    C000308'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'AND'
      '   PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA'
      'ORDER BY'
      '   ID DESC')
    Left = 18
    Top = 182
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'IDATA'
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
    object tbDadosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDadosID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tbDadosID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object tbDadosFOR_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_RAZAO_SOCIAL'
      Origin = 'FOR_RAZAO_SOCIAL'
      ProviderFlags = []
      Size = 120
    end
    object tbDadosFOR_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
      ProviderFlags = []
      OnGetText = tbDadosFOR_CNPJGetText
      Size = 15
    end
    object tbDadosFOR_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_UF'
      Origin = 'FOR_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object tbDadosID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = 'ID_FUNCIONARIO'
    end
    object tbDadosPED_COMPRADOR: TStringField
      FieldName = 'PED_COMPRADOR'
      Origin = 'PED_COMPRADOR'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosPED_NUMERO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PED_NUMERO'
      Origin = 'PED_NUMERO'
      DisplayFormat = '000000'
    end
    object tbDadosPED_DATA_REG: TSQLTimeStampField
      FieldName = 'PED_DATA_REG'
      Origin = 'PED_DATA_REG'
    end
    object tbDadosPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
      Origin = 'PED_DATA_PEDIDO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbDadosPED_PRAZO_ENTREGA: TStringField
      FieldName = 'PED_PRAZO_ENTREGA'
      Origin = 'PED_PRAZO_ENTREGA'
      Size = 60
    end
    object tbDadosPED_VEND_NOME: TStringField
      FieldName = 'PED_VEND_NOME'
      Origin = 'PED_VEND_NOME'
      Size = 120
    end
    object tbDadosPED_VEND_FONE_FIXO: TStringField
      FieldName = 'PED_VEND_FONE_FIXO'
      Origin = 'PED_VEND_FONE_FIXO'
      EditMask = '!\(99\)9999\-9999;0;'
      Size = 12
    end
    object tbDadosPED_VEND_FONE_MOVEL: TStringField
      FieldName = 'PED_VEND_FONE_MOVEL'
      Origin = 'PED_VEND_FONE_MOVEL'
      EditMask = '!\(99\)99999\-9999;0;'
      Size = 13
    end
    object tbDadosPED_VEND_SKYPE: TStringField
      FieldName = 'PED_VEND_SKYPE'
      Origin = 'PED_VEND_SKYPE'
      Size = 60
    end
    object tbDadosPED_OBSERVACAO: TStringField
      FieldName = 'PED_OBSERVACAO'
      Origin = 'PED_OBSERVACAO'
      Size = 600
    end
    object tbDadosPED_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'PED_STATUS'
      Origin = 'PED_STATUS'
      OnGetText = tbDadosPED_STATUSGetText
    end
    object tbDadosPED_FATURADO: TIntegerField
      Alignment = taCenter
      FieldName = 'PED_FATURADO'
      Origin = 'PED_FATURADO'
      OnGetText = tbDadosPED_FATURADOGetText
    end
    object tbDadosPED_ENTREGUE: TIntegerField
      Alignment = taCenter
      FieldName = 'PED_ENTREGUE'
      Origin = 'PED_ENTREGUE'
      OnGetText = tbDadosPED_ENTREGUEGetText
    end
    object tbDadosPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
      Origin = 'PED_DATA_ENTREGA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbDadosPED_SOLICITANTE: TStringField
      FieldName = 'PED_SOLICITANTE'
      Origin = 'PED_SOLICITANTE'
      Size = 60
    end
    object tbDadosID_PLN_CONTAS: TIntegerField
      FieldName = 'ID_PLN_CONTAS'
      Origin = 'ID_PLN_CONTAS'
    end
    object tbDadosPLN_CONTAS_DESC: TStringField
      FieldName = 'PLN_CONTAS_DESC'
      Origin = 'PLN_CONTAS_DESC'
      Size = 80
    end
    object tbDadosPED_VALIDADE: TIntegerField
      FieldName = 'PED_VALIDADE'
      Origin = 'PED_VALIDADE'
    end
    object tbDadosPED_VEND_EMAIL: TStringField
      FieldName = 'PED_VEND_EMAIL'
      Origin = 'PED_VEND_EMAIL'
      Size = 60
    end
    object tbDadosPED_PREVISAO_PAGTO: TDateField
      FieldName = 'PED_PREVISAO_PAGTO'
      Origin = 'PED_PREVISAO_PAGTO'
    end
    object tbDadosPED_VLR_FRETE: TFMTBCDField
      FieldName = 'PED_VLR_FRETE'
      Origin = 'PED_VLR_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosPED_VLR_SEGURO: TFMTBCDField
      FieldName = 'PED_VLR_SEGURO'
      Origin = 'PED_VLR_SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosPED_VLR_OUTROS: TFMTBCDField
      FieldName = 'PED_VLR_OUTROS'
      Origin = 'PED_VLR_OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosPED_VLR_DESCONTOS: TFMTBCDField
      FieldName = 'PED_VLR_DESCONTOS'
      Origin = 'PED_VLR_DESCONTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosPED_VLR_SUBTOTAL: TFMTBCDField
      FieldName = 'PED_VLR_SUBTOTAL'
      Origin = 'PED_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosPED_VLR_TOTAL: TFMTBCDField
      FieldName = 'PED_VLR_TOTAL'
      Origin = 'PED_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosPED_QTDE_ITENS: TLargeintField
      FieldName = 'PED_QTDE_ITENS'
      Origin = 'PED_QTDE_ITENS'
      DisplayFormat = ',0.00'
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = tbDados
    Left = 50
    Top = 182
  end
  object Pop01: TPopupMenu
    Left = 372
    Top = 189
    object AlterarCabealho1: TMenuItem
      Caption = 'Alterar Cabe'#231'alho'
      ShortCut = 113
    end
    object FreteSeguroeDesconto1: TMenuItem
      Caption = 'Frete, Seguro e Outros'
      ShortCut = 114
    end
  end
  object tbItens: TFDQuery
    IndexFieldNames = 'ID_PEDIDO'
    MasterSource = dsDados
    MasterFields = 'ID'
    DetailFields = 'ID_PEDIDO'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      '   (SELECT PRD_CODIGO       FROM C000405 WHERE ID = ID_PRODUTO),'
      '   (SELECT PRD_CODIGO_BRR   FROM C000405 WHERE ID = ID_PRODUTO),'
      '   (SELECT PRD_DESCRICAO    FROM C000405 WHERE ID = ID_PRODUTO),'
      '   (SELECT PRD_UNIDADE      FROM C000405 WHERE ID = ID_PRODUTO)'
      'FROM'
      '   C000309 AS T1'
      'WHERE'
      '   ID_PEDIDO = :ID'
      'ORDER BY'
      '   ID ASC')
    Left = 18
    Top = 228
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object tbItensID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object tbItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object tbItensPRD_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = []
      DisplayFormat = '000000'
    end
    object tbItensPRD_CODIGO_BRR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO_BRR'
      Origin = 'PRD_CODIGO_BRR'
      ProviderFlags = []
      Size = 15
    end
    object tbItensPRD_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object tbItensPRD_UNIDADE: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      ProviderFlags = []
      Size = 3
    end
    object tbItensITM_QTDE: TFMTBCDField
      FieldName = 'ITM_QTDE'
      Origin = 'ITM_QTDE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object tbItensITM_VLR_UNITARIO: TBCDField
      FieldName = 'ITM_VLR_UNITARIO'
      Origin = 'ITM_VLR_UNITARIO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object tbItensITM_VLR_TOTAL: TFMTBCDField
      FieldName = 'ITM_VLR_TOTAL'
      Origin = 'ITM_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsItens: TJvDataSource
    DataSet = tbItens
    Left = 50
    Top = 228
  end
  object Pop02: TPopupMenu
    Left = 402
    Top = 189
    object IncluirProdutos1: TMenuItem
      Caption = 'Incluir Produtos'
      ShortCut = 115
    end
    object AlterarProdutoSelecionado1: TMenuItem
      Caption = 'Alterar Produto Selecionado'
      ShortCut = 116
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExcluirProdutos1: TMenuItem
      Caption = 'Excluir Produtos'
      ShortCut = 117
    end
  end
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 18
    Top = 276
  end
  object Query210: TFDQuery
    CachedUpdates = True
    Connection = FrModuloRet.DBConexaoII
    SchemaAdapter = SchemaAD
    SQL.Strings = (
      'SELECT * FROM C000210 WHERE ID = -1')
    Left = 688
    Top = 192
    object Query210ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query210ID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object Query210ID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object Query210ID_ORIGEM: TIntegerField
      FieldName = 'ID_ORIGEM'
      Origin = 'ID_ORIGEM'
    end
    object Query210ID_PLANO_CONTAS: TIntegerField
      FieldName = 'ID_PLANO_CONTAS'
      Origin = 'ID_PLANO_CONTAS'
    end
    object Query210PAG_DATA_INCLUSAO: TDateField
      FieldName = 'PAG_DATA_INCLUSAO'
      Origin = 'PAG_DATA_INCLUSAO'
    end
    object Query210PAG_DOCUMENTO: TStringField
      FieldName = 'PAG_DOCUMENTO'
      Origin = 'PAG_DOCUMENTO'
      Size = 25
    end
    object Query210PAG_ORIGEM: TIntegerField
      FieldName = 'PAG_ORIGEM'
      Origin = 'PAG_ORIGEM'
    end
    object Query210PAG_STATUS: TIntegerField
      FieldName = 'PAG_STATUS'
      Origin = 'PAG_STATUS'
    end
    object Query210PAG_FORNECEDOR: TStringField
      FieldName = 'PAG_FORNECEDOR'
      Origin = 'PAG_FORNECEDOR'
      Size = 120
    end
    object Query210PAG_VALOR: TFMTBCDField
      FieldName = 'PAG_VALOR'
      Origin = 'PAG_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query210PAG_JUROS: TFMTBCDField
      FieldName = 'PAG_JUROS'
      Origin = 'PAG_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query210PAG_JUROS_CAREN: TIntegerField
      FieldName = 'PAG_JUROS_CAREN'
      Origin = 'PAG_JUROS_CAREN'
      DisplayFormat = ',0.00'
    end
    object Query210PAG_MULTA: TFMTBCDField
      FieldName = 'PAG_MULTA'
      Origin = 'PAG_MULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query210PAG_MULTA_CAREN: TIntegerField
      FieldName = 'PAG_MULTA_CAREN'
      Origin = 'PAG_MULTA_CAREN'
      DisplayFormat = ',0.00'
    end
  end
  object SchemaAD: TFDSchemaAdapter
    AfterApplyUpdate = SchemaADAfterApplyUpdate
    Left = 720
    Top = 224
  end
  object Query211: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_C000210'
    MasterSource = dsQuery210
    MasterFields = 'ID'
    DetailFields = 'ID_C000210'
    Connection = FrModuloRet.DBConexaoII
    SchemaAdapter = SchemaAD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM C000211 WHERE ID_C000210 = :ID')
    Left = 688
    Top = 224
    ParamData = <
      item
        Name = 'ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object Query211ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query211ID_C000210: TLargeintField
      FieldName = 'ID_C000210'
      Origin = 'ID_C000210'
    end
    object Query211PAG_PARCELA: TIntegerField
      FieldName = 'PAG_PARCELA'
      Origin = 'PAG_PARCELA'
    end
    object Query211PAG_DOCUMENTO: TStringField
      FieldName = 'PAG_DOCUMENTO'
      Origin = 'PAG_DOCUMENTO'
      Size = 25
    end
    object Query211PAG_VENCIMENTO: TDateField
      FieldName = 'PAG_VENCIMENTO'
      Origin = 'PAG_VENCIMENTO'
    end
    object Query211PAG_ANOTACOES: TStringField
      FieldName = 'PAG_ANOTACOES'
      Origin = 'PAG_ANOTACOES'
      Size = 120
    end
    object Query211PAG_STATUS: TIntegerField
      FieldName = 'PAG_STATUS'
      Origin = 'PAG_STATUS'
    end
    object Query211PAG_VALOR: TFMTBCDField
      FieldName = 'PAG_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query211PAG_VLR_ATUALIZADO: TFMTBCDField
      FieldName = 'PAG_VLR_ATUALIZADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query211PAG_VLR_RECEBIDO: TFMTBCDField
      FieldName = 'PAG_VLR_RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object Query211PAG_VLR_SALDO: TFMTBCDField
      FieldName = 'PAG_VLR_SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsQuery210: TDataSource
    AutoEdit = False
    DataSet = Query210
    Left = 720
    Top = 192
  end
  object PopPrinter: TPopupMenu
    Left = 432
    Top = 189
    object ModeloAdministrativo1: TMenuItem
      Action = actPrint
    end
    object ModeloExpedio1: TMenuItem
      Action = actPrintExpedicao
    end
  end
  object xQuery: TFDQuery
    Connection = FrModuloRet.DBConexaoII
    Left = 704
    Top = 264
  end
end
