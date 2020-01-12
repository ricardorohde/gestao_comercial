object FrPedidosVendas: TFrPedidosVendas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Pedidos de Vendas'
  ClientHeight = 580
  ClientWidth = 1233
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
    Top = 38
    Width = 1229
    Height = 48
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
      RzSpacer5
      btnError
      RzSpacer3
      btnNew1
      RzSpacer7
      btnExit)
    object btnNew: TRzToolButton
      AlignWithMargins = True
      Left = 3
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 9
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actCadastrar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object btnEdit: TRzToolButton
      AlignWithMargins = True
      Left = 115
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 10
      GradientColorStyle = gcsCustom
      DropDownMenu = Pop01
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Action = actPopAlterar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object btnCancel: TRzToolButton
      AlignWithMargins = True
      Left = 227
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 7
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actExcluir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object btnOK: TRzToolButton
      AlignWithMargins = True
      Left = 339
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object btnError: TRzToolButton
      AlignWithMargins = True
      Left = 451
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 8
      GradientColorStyle = gcsCustom
      DropDownMenu = Pop02
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Action = actIncluirProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object btnExit: TRzToolButton
      AlignWithMargins = True
      Left = 675
      Top = 2
      Width = 80
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
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
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object RzSpacer1: TRzSpacer
      Left = 105
      Top = 12
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 217
      Top = 12
      Grooved = True
    end
    object RzSpacer5: TRzSpacer
      Left = 441
      Top = 12
      Grooved = True
    end
    object RzSpacer6: TRzSpacer
      Left = 329
      Top = 12
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 553
      Top = 12
      Grooved = True
    end
    object btnNew1: TRzToolButton
      AlignWithMargins = True
      Left = 563
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 6
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actPagamentos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object RzSpacer7: TRzSpacer
      Left = 665
      Top = 12
      Grooved = True
    end
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 88
    Width = 1229
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
        FieldName = 'PED_NUMERO'
        Title.Caption = 'N'#250'mero'
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
        FieldName = 'PED_DATA_PEDIDO'
        Title.Caption = 'Data Pedido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_DATA_REG'
        Title.Caption = 'Modifica'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_STATUS'
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_ENTREGUE'
        Title.Alignment = taCenter
        Title.Caption = 'Ent.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_FATURADO'
        Title.Alignment = taCenter
        Title.Caption = 'Fat.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_VENDEDOR'
        Title.Caption = 'Vendedor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RAZAO_SOCIAL'
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 522
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CNPJ'
        Title.Caption = 'Cnpj'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_UF'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object JvDBGrid2: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 303
    Width = 1229
    Height = 219
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
    AutoSizeColumnIndex = 2
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
        Width = 110
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
        Width = 351
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_UNIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'UN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 32
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRD_CST'
        Title.Alignment = taCenter
        Title.Caption = 'CST'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRD_CFOP'
        Title.Alignment = taCenter
        Title.Caption = 'CFOP'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRD_NCM'
        Title.Alignment = taCenter
        Title.Caption = 'NCM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRD_CEST'
        Title.Alignment = taCenter
        Title.Caption = 'CEST'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_UNITARIO'
        Title.Caption = 'Valor Unit'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_QTDE'
        Title.Caption = 'Qtde.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_SUBTOTAL'
        Title.Caption = 'Valor SubTotal'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_TOTAL'
        Title.Caption = 'Valor Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 113
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 524
    Width = 1229
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
    object Label12: TLabel
      Left = 2
      Top = 2
      Width = 23
      Height = 15
      Caption = 'F2 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 25
      Top = 2
      Width = 116
      Height = 15
      Caption = 'Cabe'#231'alho do Pedido'
    end
    object Label14: TLabel
      Left = 2
      Top = 17
      Width = 23
      Height = 15
      Caption = 'F3 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 25
      Top = 18
      Width = 120
      Height = 15
      Caption = 'Frete, Seguro e Outros'
    end
    object Label16: TLabel
      Left = 2
      Top = 32
      Width = 23
      Height = 15
      Caption = 'F4 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 25
      Top = 32
      Width = 50
      Height = 15
      Caption = 'Produtos'
    end
    object Label18: TLabel
      Left = 153
      Top = 2
      Width = 23
      Height = 15
      Caption = 'F5 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 176
      Top = 2
      Width = 91
      Height = 15
      Caption = 'Alterar Produtos'
    end
    object Label20: TLabel
      Left = 153
      Top = 18
      Width = 23
      Height = 15
      Caption = 'F6 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 176
      Top = 18
      Width = 91
      Height = 15
      Caption = 'Excluir Produtos'
    end
    object Label22: TLabel
      Left = 153
      Top = 32
      Width = 23
      Height = 15
      Caption = 'F7 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 176
      Top = 32
      Width = 143
      Height = 15
      Caption = 'Condi'#231#245'es de Pagamentos'
    end
    object Label24: TLabel
      Left = 352
      Top = 2
      Width = 162
      Height = 15
      Caption = 'Tipo de Frete, Transportadora'
    end
    object Label25: TLabel
      Left = 329
      Top = 2
      Width = 23
      Height = 15
      Caption = 'F8 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 1063
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
        Width = 165
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
        Value = 240.000000000000000000
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_TOTAL'
        DataSource = dsDados
      end
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 769
      Top = 3
      Width = 145
      Height = 48
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      BevelOuter = bvNone
      Color = 8404992
      ParentBackground = False
      TabOrder = 1
      object Label7: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 139
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
      object RzDBLabel1: TRzDBLabel
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 139
        Height = 26
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alClient
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = True
        BlinkIntervalOff = 2000
        DataField = 'PRD_QTDE_ITENS'
        DataSource = dsItens
        ExplicitLeft = 52
        ExplicitTop = 20
        ExplicitWidth = 65
        ExplicitHeight = 17
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 916
      Top = 3
      Width = 145
      Height = 48
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      BevelOuter = bvNone
      Color = clMaroon
      ParentBackground = False
      TabOrder = 2
      object Label10: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 139
        Height = 19
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total dos Produtos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 124
      end
      object JvDBCalcEdit7: TJvDBCalcEdit
        Left = 0
        Top = 22
        Width = 145
        Height = 26
        Margins.Top = 0
        BevelEdges = []
        BevelOuter = bvNone
        Align = alClient
        BorderStyle = bsNone
        Color = clMaroon
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowButton = False
        ShowHint = False
        TabOrder = 0
        Value = 240.000000000000000000
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_PRODUTOS'
        DataSource = dsDados
      end
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 1229
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
    TabOrder = 4
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 162
      Height = 26
      Caption = 'Pedidos de Vendas'
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
      Width = 977
      Height = 30
      Caption = 
        'Neste formul'#225'rio ser'#227'o efetuados todos os pedidos de vendas, per' +
        'mite a altera'#231#227'o das informa'#231#245'es enquanto for um simples or'#231'amen' +
        'to, ap'#243's a sua aprova'#231#227'o no formul'#225'rio de gerenciamento o or'#231'ame' +
        'nto ser'#225' convertido em pedido e n'#227'o ser'#225' mais permitido sua alte' +
        'ra'#231#227'o at'#233' que seja novamente convertido em or'#231'amento.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 213
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
    Top = 256
    Width = 1229
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
    object Label2: TLabel
      Left = 111
      Top = 15
      Width = 7
      Height = 15
      Caption = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 716
      Top = 0
      Width = 513
      Height = 45
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 13
        Top = 3
        Width = 105
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'VALOR FRETE '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 161
        Top = 3
        Width = 84
        Height = 15
        Alignment = taRightJustify
        Caption = 'VALOR SEGURO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 280
        Top = 3
        Width = 92
        Height = 15
        Alignment = taRightJustify
        Caption = 'VALOR DESPESAS '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 128
        Top = 3
        Width = 2
        Height = 38
      end
      object Bevel2: TBevel
        Left = 255
        Top = 3
        Width = 2
        Height = 38
      end
      object Label11: TLabel
        Left = 400
        Top = 3
        Width = 99
        Height = 15
        Alignment = taRightJustify
        Caption = 'VALOR DESCONTO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Bevel4: TBevel
        Left = 382
        Top = 3
        Width = 2
        Height = 38
      end
      object JvDBCalcEdit1: TJvDBCalcEdit
        Left = 28
        Top = 22
        Width = 90
        Height = 23
        BevelEdges = []
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
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
      object JvDBCalcEdit2: TJvDBCalcEdit
        Left = 140
        Top = 22
        Width = 105
        Height = 23
        BevelEdges = []
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
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
      object JvDBCalcEdit3: TJvDBCalcEdit
        Left = 267
        Top = 22
        Width = 105
        Height = 23
        BevelEdges = []
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
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
      object JvDBCalcEdit8: TJvDBCalcEdit
        Left = 394
        Top = 22
        Width = 105
        Height = 23
        BevelEdges = []
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_DESCONTOS'
        DataSource = dsDados
      end
    end
    object PngBitBtn1: TPngBitBtn
      Left = 232
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
      OnClick = PngBitBtn1Click
    end
    object eDataFim: TJvDateEdit
      Left = 124
      Top = 11
      Width = 102
      Height = 23
      ShowNullDate = False
      TabOrder = 2
    end
    object eDataIni: TJvDateEdit
      Left = 6
      Top = 11
      Width = 101
      Height = 23
      ShowNullDate = False
      TabOrder = 3
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 335
    Top = 151
    StyleName = 'Platform Default'
    object actCadastrar: TAction
      Caption = 'Adicionar'
      ImageIndex = 9
      OnExecute = actCadastrarExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 7
      OnExecute = actExcluirExecute
      OnUpdate = actExcluirUpdate
    end
    object actPrint: TAction
      Caption = 'Modo Administrativo'
      ImageIndex = 0
      OnExecute = actPrintExecute
      OnUpdate = actPrintUpdate
    end
    object actPrintExpedicao: TAction
      Caption = 'Modo Expedi'#231#227'o'
      ImageIndex = 0
      OnExecute = actPrintExpedicaoExecute
      OnUpdate = actPrintUpdate
    end
    object actProdutos: TAction
      Caption = 'Produtos'
      ImageIndex = 8
    end
    object actPagamentos: TAction
      Caption = 'Pagamentos'
      ImageIndex = 6
      ShortCut = 118
      OnExecute = actPagamentosExecute
      OnUpdate = actPagamentosUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 5
      OnExecute = actSairExecute
    end
    object actPopAlterar: TAction
      Category = 'PopUpMenu'
      Caption = 'Cabe'#231'alho'
      ImageIndex = 10
      ShortCut = 113
      OnExecute = actPopAlterarExecute
      OnUpdate = actPopAlterarUpdate
    end
    object actPopFrete: TAction
      Category = 'PopUpMenu'
      Caption = 'Valores - Frete, Seguro e Outros'
      ShortCut = 114
      OnExecute = actPopFreteExecute
      OnUpdate = actPopAlterarUpdate
    end
    object actIncluirProdutos: TAction
      Category = 'PopUpProdutos'
      Caption = 'Produtos'
      ImageIndex = 8
      ShortCut = 115
      OnExecute = actIncluirProdutosExecute
      OnUpdate = actIncluirProdutosUpdate
    end
    object actAlterarProdutos: TAction
      Category = 'PopUpProdutos'
      Caption = 'Alterar Produto Selecionado'
      ShortCut = 116
      OnExecute = actAlterarProdutosExecute
      OnUpdate = actExcluirProdutosUpdate
    end
    object actExcluirProdutos: TAction
      Category = 'PopUpProdutos'
      Caption = 'Excluir Produtos'
      ShortCut = 117
      OnExecute = actExcluirProdutosExecute
      OnUpdate = actExcluirProdutosUpdate
    end
    object actFreteTransporte: TAction
      Category = 'PopUpMenu'
      Caption = 'Transporte - Tipo de Frete, Transportadora'
      ShortCut = 119
      OnExecute = actFreteTransporteExecute
      OnUpdate = actPopAlterarUpdate
    end
  end
  object tbDados: TFDQuery
    BeforeInsert = tbDadosBeforeInsert
    AfterInsert = tbDadosAfterInsert
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    AfterDelete = tbDadosAfterDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*'
      'FROM'
      '   C000100 AS T1'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'AND'
      '   PED_DATA_PEDIDO BETWEEN :IDATA AND :FDATA'
      'ORDER BY'
      '   ID DESC')
    Left = 40
    Top = 160
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
    object tbDadosID_TABELA_PRECOS: TIntegerField
      FieldName = 'ID_TABELA_PRECOS'
      Origin = 'ID_TABELA_PRECOS'
    end
    object tbDadosID_CLIENTE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      OnChange = tbDadosID_CLIENTEChange
    end
    object tbDadosID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = 'ID_FUNCIONARIO'
      OnChange = tbDadosID_FUNCIONARIOChange
    end
    object tbDadosCLI_RAZAO_SOCIAL: TStringField
      DisplayWidth = 120
      FieldName = 'CLI_RAZAO_SOCIAL'
      Origin = 'CLI_RAZAO_SOCIAL'
      ProviderFlags = []
      Size = 120
    end
    object tbDadosCLI_CNPJ: TStringField
      DisplayWidth = 15
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
      ProviderFlags = []
      OnGetText = tbDadosCLI_CNPJGetText
      Size = 15
    end
    object tbDadosCLI_UF: TStringField
      Alignment = taCenter
      FieldName = 'CLI_UF'
      Origin = 'CLI_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object tbDadosPED_VENDEDOR: TStringField
      FieldName = 'PED_VENDEDOR'
      Origin = 'PED_VENDEDOR'
      ProviderFlags = []
      Size = 86
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
    object tbDadosPED_PREV_ENTREGA: TStringField
      FieldName = 'PED_PREV_ENTREGA'
      Origin = 'PED_PREV_ENTREGA'
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
    object tbDadosID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Origin = 'ID_TRANSPORTADORA'
      OnChange = tbDadosID_TRANSPORTADORAChange
    end
    object tbDadosTRA_RAZAO_SOCIAL: TStringField
      FieldName = 'TRA_RAZAO_SOCIAL'
      Origin = 'TRA_RAZAO_SOCIAL'
      ProviderFlags = []
      Size = 120
    end
    object tbDadosTRA_CNPJ: TStringField
      FieldName = 'TRA_CNPJ'
      Origin = 'TRA_CNPJ'
      ProviderFlags = []
      OnGetText = tbDadosTRA_CNPJGetText
      Size = 15
    end
    object tbDadosTRA_UF: TStringField
      Alignment = taCenter
      FieldName = 'TRA_UF'
      Origin = 'TRA_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object tbDadosPED_TIPO_FRETE: TIntegerField
      DefaultExpression = '5'
      FieldName = 'PED_TIPO_FRETE'
      Origin = 'PED_TIPO_FRETE'
    end
    object tbDadosPED_VEICULO_PLACA: TStringField
      FieldName = 'PED_VEICULO_PLACA'
      Origin = 'PED_VEICULO_PLACA'
      EditMask = '!LLL\-9999;0;'
      Size = 10
    end
    object tbDadosPED_VEICULO_UF: TStringField
      FieldName = 'PED_VEICULO_UF'
      Origin = 'PED_VEICULO_UF'
      Size = 2
    end
    object tbDadosPED_VEICULO_RNTC: TStringField
      FieldName = 'PED_VEICULO_RNTC'
      Origin = 'PED_VEICULO_RNTC'
      Size = 35
    end
    object tbDadosPED_VOLUME_QTDE: TIntegerField
      FieldName = 'PED_VOLUME_QTDE'
      Origin = 'PED_VOLUME_QTDE'
      DisplayFormat = '000'
    end
    object tbDadosPED_VOLUME_ESPECIE: TStringField
      FieldName = 'PED_VOLUME_ESPECIE'
      Origin = 'PED_VOLUME_ESPECIE'
      Size = 60
    end
    object tbDadosPED_VOLUME_MARCA: TStringField
      FieldName = 'PED_VOLUME_MARCA'
      Origin = 'PED_VOLUME_MARCA'
      Size = 60
    end
    object tbDadosPED_VOLUME_NUMERO: TStringField
      FieldName = 'PED_VOLUME_NUMERO'
      Origin = 'PED_VOLUME_NUMERO'
      Size = 60
    end
    object tbDadosID_PLN_CONTAS: TIntegerField
      FieldName = 'ID_PLN_CONTAS'
      Origin = 'ID_PLN_CONTAS'
    end
    object tbDadosPLN_CONTAS_DESC: TStringField
      FieldName = 'PLN_CONTAS_DESC'
      Origin = 'PLN_CONTAS_DESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosPED_VALIDADE: TIntegerField
      FieldName = 'PED_VALIDADE'
      Origin = 'PED_VALIDADE'
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
    object tbDadosPED_VLR_PRODUTOS: TFMTBCDField
      FieldName = 'PED_VLR_PRODUTOS'
      Origin = 'PED_VLR_PRODUTOS'
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
    object tbDadosPED_VLR_SUBTOTAL: TFMTBCDField
      FieldName = 'PED_VLR_SUBTOTAL'
      Origin = 'PED_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosPED_PARA_PAGTOS: TFMTBCDField
      FieldName = 'PED_PARA_PAGTOS'
      Origin = 'PED_PARA_PAGTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object tbDadosPED_VOLUME_PESO_L: TFMTBCDField
      FieldName = 'PED_VOLUME_PESO_L'
      Origin = 'PED_VOLUME_PESO_L'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object tbDadosPED_VOLUME_PESO_B: TFMTBCDField
      FieldName = 'PED_VOLUME_PESO_B'
      Origin = 'PED_VOLUME_PESO_B'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = tbDados
    Left = 72
    Top = 160
  end
  object Pop01: TPopupMenu
    Left = 372
    Top = 151
    object AlterarCabealho1: TMenuItem
      Action = actPopAlterar
    end
    object FreteSeguroeDesconto1: TMenuItem
      Action = actPopFrete
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Pagamentos1: TMenuItem
      Action = actPagamentos
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object FreteeTransporte1: TMenuItem
      Action = actFreteTransporte
    end
  end
  object tbItens: TFDQuery
    AfterPost = tbItensAfterPost
    BeforeDelete = tbItensBeforeDelete
    AfterDelete = tbItensAfterDelete
    IndexFieldNames = 'ID_PEDIDO'
    AggregatesActive = True
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
      '   C000101 AS T1'
      'WHERE'
      '   ID_PEDIDO = :ID'
      'ORDER BY'
      '   ID ASC')
    Left = 40
    Top = 198
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 27
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
      OnChange = tbItensID_PRODUTOChange
    end
    object tbItensID_TRIBUTOS: TIntegerField
      FieldName = 'ID_TRIBUTOS'
      Origin = 'ID_TRIBUTOS'
      OnChange = tbItensID_TRIBUTOSChange
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
    object tbItensPRD_CST: TStringField
      FieldName = 'PRD_CST'
      Origin = 'PRD_CST'
      Size = 3
    end
    object tbItensPRD_CFOP: TIntegerField
      FieldName = 'PRD_CFOP'
      Origin = 'PRD_CFOP'
    end
    object tbItensPRD_NCM: TStringField
      FieldName = 'PRD_NCM'
      Origin = 'PRD_NCM'
      Size = 10
    end
    object tbItensPRD_NCM_EX: TStringField
      FieldName = 'PRD_NCM_EX'
      Origin = 'PRD_NCM_EX'
      FixedChar = True
      Size = 2
    end
    object tbItensPRD_CEST: TStringField
      FieldName = 'PRD_CEST'
      Origin = 'PRD_CEST'
      Size = 10
    end
    object tbItensPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      Origin = 'PRD_ORIGEM'
    end
    object tbItensPRD_ICMS_MODAL: TIntegerField
      FieldName = 'PRD_ICMS_MODAL'
      Origin = 'PRD_ICMS_MODAL'
    end
    object tbItensPRD_IPI_CODIGO: TStringField
      FieldName = 'PRD_IPI_CODIGO'
      Origin = 'PRD_IPI_CODIGO'
      Size = 35
    end
    object tbItensPRD_PIS_CST: TStringField
      FieldName = 'PRD_PIS_CST'
      Origin = 'PRD_PIS_CST'
      Size = 3
    end
    object tbItensPRD_COFINS_CST: TStringField
      FieldName = 'PRD_COFINS_CST'
      Origin = 'PRD_COFINS_CST'
      Size = 3
    end
    object tbItensPRD_INFORMACOES: TStringField
      FieldName = 'PRD_INFORMACOES'
      Origin = 'PRD_INFORMACOES'
      Size = 1000
    end
    object tbItensPRD_IND_TOT: TIntegerField
      FieldName = 'PRD_IND_TOT'
      Origin = 'PRD_IND_TOT'
    end
    object tbItensPRD_INTEGRA_CALCULO: TStringField
      FieldName = 'PRD_INTEGRA_CALCULO'
      Origin = 'PRD_INTEGRA_CALCULO'
      FixedChar = True
      Size = 1
    end
    object tbItensPRD_VLR_UNITARIO: TBCDField
      FieldName = 'PRD_VLR_UNITARIO'
      Origin = 'PRD_VLR_UNITARIO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object tbItensPRD_QTDE: TBCDField
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object tbItensPRD_VLR_SUBTOTAL: TFMTBCDField
      FieldName = 'PRD_VLR_SUBTOTAL'
      Origin = 'PRD_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_VLR_FRETE: TFMTBCDField
      FieldName = 'PRD_VLR_FRETE'
      Origin = 'PRD_VLR_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object tbItensPRD_VLR_SEGURO: TFMTBCDField
      FieldName = 'PRD_VLR_SEGURO'
      Origin = 'PRD_VLR_SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object tbItensPRD_VLR_OUTROS: TFMTBCDField
      FieldName = 'PRD_VLR_OUTROS'
      Origin = 'PRD_VLR_OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object tbItensPRD_VLR_DESCONTO: TFMTBCDField
      FieldName = 'PRD_VLR_DESCONTO'
      Origin = 'PRD_VLR_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object tbItensPRD_VLR_TOTAL: TFMTBCDField
      FieldName = 'PRD_VLR_TOTAL'
      Origin = 'PRD_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object tbItensPRD_ICMS_ALIQ: TFMTBCDField
      FieldName = 'PRD_ICMS_ALIQ'
      Origin = 'PRD_ICMS_ALIQ'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_ICMS_RBCALC: TFMTBCDField
      FieldName = 'PRD_ICMS_RBCALC'
      Origin = 'PRD_ICMS_RBCALC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_ICMS_ST_ALIQ: TFMTBCDField
      FieldName = 'PRD_ICMS_ST_ALIQ'
      Origin = 'PRD_ICMS_ST_ALIQ'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_ICMS_ST_MODAL: TIntegerField
      FieldName = 'PRD_ICMS_ST_MODAL'
      Origin = 'PRD_ICMS_ST_MODAL'
      DisplayFormat = ',0.00'
    end
    object tbItensPRD_ICMS_ST_RBCALC: TFMTBCDField
      FieldName = 'PRD_ICMS_ST_RBCALC'
      Origin = 'PRD_ICMS_ST_RBCALC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_ICMS_ST_MVA: TFMTBCDField
      FieldName = 'PRD_ICMS_ST_MVA'
      Origin = 'PRD_ICMS_ST_MVA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_IPI_CST: TStringField
      FieldName = 'PRD_IPI_CST'
      Origin = 'PRD_IPI_CST'
      Size = 3
    end
    object tbItensPRD_IPI_ALIQ: TFMTBCDField
      FieldName = 'PRD_IPI_ALIQ'
      Origin = 'PRD_IPI_ALIQ'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_PIS_ALIQ: TFMTBCDField
      FieldName = 'PRD_PIS_ALIQ'
      Origin = 'PRD_PIS_ALIQ'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_PIS_ALIQ_ST: TFMTBCDField
      FieldName = 'PRD_PIS_ALIQ_ST'
      Origin = 'PRD_PIS_ALIQ_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_COFINS_ALIQ: TFMTBCDField
      FieldName = 'PRD_COFINS_ALIQ'
      Origin = 'PRD_COFINS_ALIQ'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_COFINS_ALIQ_ST: TFMTBCDField
      FieldName = 'PRD_COFINS_ALIQ_ST'
      Origin = 'PRD_COFINS_ALIQ_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbItensPRD_QTDE_ITENS: TAggregateField
      Alignment = taRightJustify
      FieldName = 'PRD_QTDE_ITENS'
      OnGetText = tbItensPRD_QTDE_ITENSGetText
      Active = True
      DisplayName = ''
      Expression = 'COUNT(ID)'
    end
  end
  object dsItens: TJvDataSource
    DataSet = tbItens
    Left = 72
    Top = 198
  end
  object Pop02: TPopupMenu
    Left = 408
    Top = 151
    object IncluirProdutos1: TMenuItem
      Action = actIncluirProdutos
    end
    object AlterarProdutoSelecionado1: TMenuItem
      Action = actAlterarProdutos
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExcluirProdutos1: TMenuItem
      Action = actExcluirProdutos
    end
  end
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 336
    Top = 184
  end
  object PopPrinter: TPopupMenu
    Left = 440
    Top = 152
    object ModoAdministrativo1: TMenuItem
      Action = actPrint
    end
    object ModoExpedio1: TMenuItem
      Action = actPrintExpedicao
    end
  end
end
