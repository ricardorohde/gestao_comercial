object FrOrdemServico: TFrOrdemServico
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Ordem de Servi'#231'o'
  ClientHeight = 580
  ClientWidth = 1245
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
    Top = 38
    Width = 1241
    Height = 49
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
      Top = 3
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 0
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actCadastrar
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
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 10
      GradientColorStyle = gcsCustom
      DropDownMenu = Pop04
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Action = actPopAlterar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnCancel: TRzToolButton
      AlignWithMargins = True
      Left = 227
      Top = 3
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
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
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
      DisabledIndex = 0
      GradientColorStyle = gcsCustom
      DropDownMenu = Pop03
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
    object btnError: TRzToolButton
      AlignWithMargins = True
      Left = 451
      Top = 3
      Width = 100
      Height = 44
      Margins.Left = 2
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
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnExit: TRzToolButton
      AlignWithMargins = True
      Left = 675
      Top = 3
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
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object RzSpacer1: TRzSpacer
      Left = 105
      Top = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 217
      Top = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Grooved = True
    end
    object RzSpacer5: TRzSpacer
      Left = 441
      Top = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Grooved = True
    end
    object RzSpacer6: TRzSpacer
      Left = 329
      Top = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 553
      Top = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Grooved = True
    end
    object btnNew1: TRzToolButton
      AlignWithMargins = True
      Left = 563
      Top = 3
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
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object RzSpacer7: TRzSpacer
      Left = 665
      Top = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Grooved = True
    end
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 89
    Width = 1241
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
    TitleFont.Name = 'Tahoma'
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
    EditControls = <
      item
        FieldName = 'OS_STATUS'
        FitCell = fcDesignSize
        LeaveOnEnterKey = True
        LeaveOnUpDownKey = True
      end>
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
        Title.Caption = 'Data da O.S'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 79
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
        Width = 117
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
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_PREV_ENTREGA'
        Title.Caption = 'Prev. Entrega'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
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
        Width = 33
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
        Title.Caption = 'Atendente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 187
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
        Width = 397
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
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS_CLI_UF'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object JvDBGrid2: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 304
    Width = 1241
    Height = 218
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
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
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
    RowsHeight = 17
    TitleRowHeight = 17
    ShowMemos = False
    BooleanEditor = False
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_CODIGO'
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
        Title.Caption = 'C'#243'digo de Barras'
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
        FieldName = 'PRD_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 420
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_UNIDADE'
        Title.Caption = 'Un.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRD_NCM'
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
        Title.Alignment = taCenter
        Title.Caption = 'Cest'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_UNITARIO'
        Title.Caption = 'Valor Unit'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_QTDE'
        Title.Caption = 'Qtde.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_SUBTOTAL'
        Title.Caption = 'Valor SubTotal'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_TOTAL'
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
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 524
    Width = 1241
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
      Left = 1075
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
        Caption = 'Total da O.S'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 71
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
        DecimalPlacesAlwaysShown = True
        DataField = 'OS_VLR_TOTAL'
        DataSource = dsQuery
      end
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 781
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
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 928
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
      object JvDBCalcEdit7: TJvDBCalcEdit
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
        DecimalPlacesAlwaysShown = True
        DataField = 'OS_VLR_PRODUTOS'
        DataSource = dsQuery
      end
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 1241
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
      Width = 159
      Height = 25
      Caption = 'Ordem de Servi'#231'o'
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
    Top = 257
    Width = 1241
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
      Top = 16
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
    object Panel3: TPanel
      Left = 728
      Top = 0
      Width = 513
      Height = 45
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
    end
    object PngBitBtn1: TPngBitBtn
      Left = 232
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = PngBitBtn1Click
    end
    object eDataFim: TJvDateEdit
      Left = 124
      Top = 13
      Width = 102
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 2
    end
    object eDataIni: TJvDateEdit
      Left = 6
      Top = 13
      Width = 101
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
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
    object actPopAlterar: TAction
      Caption = 'Cabe'#231'alho'
      ImageIndex = 10
      ShortCut = 113
      OnExecute = actPopAlterarExecute
      OnUpdate = actPopAlterarUpdate
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 7
      OnExecute = actExcluirExecute
      OnUpdate = actExcluirUpdate
    end
    object actPrint: TAction
      Caption = 'Imprimir'
      ImageIndex = 0
      OnExecute = Action1Execute
      OnUpdate = actPrintUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 5
      OnExecute = actSairExecute
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
      OnUpdate = actAlterarProdutosUpdate
    end
    object actExcluirProdutos: TAction
      Category = 'PopUpProdutos'
      Caption = 'Excluir Produtos'
      ImageIndex = 11
      ShortCut = 117
      OnExecute = actExcluirProdutosExecute
      OnUpdate = actExcluirProdutosUpdate
    end
    object actPagamentos: TAction
      Caption = 'Pagamentos'
      ImageIndex = 6
      ShortCut = 118
      OnExecute = actPagamentosExecute
      OnUpdate = actPagamentosUpdate
    end
    object Action1: TAction
      Category = 'Impress'#245'es'
      Caption = 'Imprimir Administrativo'
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Category = 'Impress'#245'es'
      Caption = 'Imprimir Produ'#231#227'o'
      OnExecute = Action2Execute
    end
    object actAnotacoes: TAction
      Caption = 'Inserir Observa'#231#245'es'
      OnExecute = actAnotacoesExecute
      OnUpdate = actAnotacoesUpdate
    end
  end
  object Query: TFDQuery
    ActiveStoredUsage = []
    BeforeInsert = QueryBeforeInsert
    AfterPost = QueryAfterPost
    BeforeDelete = QueryBeforeDelete
    OnNewRecord = QueryNewRecord
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
    Left = 40
    Top = 168
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
      AutoGenerateValue = arAutoInc
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
    object QueryOS_VLR_PRODUTOS: TBCDField
      FieldName = 'OS_VLR_PRODUTOS'
      Origin = 'OS_VLR_PRODUTOS'
      DisplayFormat = ',0.00'
      Precision = 18
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
      DisplayWidth = 2
      FieldName = 'OS_STATUS'
      Origin = 'OS_STATUS'
      OnGetText = QueryOS_STATUSGetText
      DisplayFormat = '00'
    end
    object QueryOS_CLI_RAZAO_SOCIAL: TStringField
      FieldName = 'OS_CLI_RAZAO_SOCIAL'
      Origin = 'OS_CLI_RAZAO_SOCIAL'
      ProviderFlags = []
      Size = 120
    end
    object QueryOS_CLI_CNPJ: TStringField
      FieldName = 'OS_CLI_CNPJ'
      Origin = 'OS_CLI_CNPJ'
      ProviderFlags = []
      OnGetText = QueryOS_CLI_CNPJGetText
      Size = 15
    end
    object QueryOS_CLI_IESTADUAL: TStringField
      FieldName = 'OS_CLI_IESTADUAL'
      Origin = 'OS_CLI_IESTADUAL'
      Size = 15
    end
    object QueryOS_CLI_UF: TStringField
      Alignment = taCenter
      FieldName = 'OS_CLI_UF'
      Origin = 'OS_CLI_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object QueryOS_NOME_TECNICO: TStringField
      FieldName = 'OS_NOME_TECNICO'
      Origin = 'OS_NOME_TECNICO'
      ProviderFlags = []
      Size = 85
    end
    object QueryOS_NOME_ATENDENTE: TStringField
      FieldName = 'OS_NOME_ATENDENTE'
      Origin = 'OS_NOME_ATENDENTE'
      ProviderFlags = []
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
    object QueryOS_PARA_PAGTOS: TFMTBCDField
      FieldName = 'OS_PARA_PAGTOS'
      Origin = 'OS_PARA_PAGTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 10
    end
    object QueryOS_VLR_TOTAL: TBCDField
      FieldName = 'OS_VLR_TOTAL'
      Origin = 'OS_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryID_PLN_CONTAS: TIntegerField
      FieldName = 'ID_PLN_CONTAS'
      Origin = 'ID_PLN_CONTAS'
    end
    object QueryPLN_CONTAS_DESC: TStringField
      FieldName = 'PLN_CONTAS_DESC'
      Origin = 'PLN_CONTAS_DESC'
      Size = 80
    end
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = Query
    Left = 72
    Top = 168
  end
  object QueryProdutos: TFDQuery
    AfterPost = QueryProdutosAfterPost
    BeforeDelete = QueryProdutosBeforeDelete
    AfterDelete = QueryProdutosAfterDelete
    OnNewRecord = QueryProdutosNewRecord
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
    Left = 40
    Top = 198
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QueryProdutosID: TIntegerField
      AutoGenerateValue = arAutoInc
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
    object QueryProdutosID_TRIBUTOS: TIntegerField
      FieldName = 'ID_TRIBUTOS'
      Origin = 'ID_TRIBUTOS'
    end
    object QueryProdutosPRD_INCLUSAO: TIntegerField
      FieldName = 'PRD_INCLUSAO'
      Origin = 'PRD_INCLUSAO'
    end
    object QueryProdutosPRD_CODIGO: TStringField
      DisplayWidth = 25
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Size = 25
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
    object QueryProdutosPRD_INFOS: TStringField
      FieldName = 'PRD_INFOS'
      Origin = 'PRD_INFOS'
      Size = 256
    end
    object QueryProdutosPRD_QTDE: TBCDField
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      DisplayFormat = ',0.000'
      Precision = 18
    end
    object QueryProdutosPRD_VLR_UNITARIO: TBCDField
      FieldName = 'PRD_VLR_UNITARIO'
      Origin = 'PRD_VLR_UNITARIO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryProdutosPRD_VLR_SUBTOTAL: TBCDField
      FieldName = 'PRD_VLR_SUBTOTAL'
      Origin = 'PRD_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryProdutosPRD_VLR_TOTAL: TFMTBCDField
      FieldName = 'PRD_VLR_TOTAL'
      Origin = 'PRD_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 10
    end
    object QueryProdutosPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      Origin = 'PRD_ORIGEM'
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
    AutoEdit = False
    DataSet = QueryProdutos
    Left = 72
    Top = 198
  end
  object Pop02: TPopupMenu
    Left = 368
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
  object JvImageList1: TJvImageList
    Items = <>
    Left = 464
    Top = 151
  end
  object Pop03: TPopupMenu
    Left = 400
    Top = 151
    object ImprimirAdministrativo1: TMenuItem
      Action = Action1
    end
    object ImprimirProduo1: TMenuItem
      Action = Action2
    end
  end
  object Pop04: TPopupMenu
    Left = 432
    Top = 152
    object Observaes1: TMenuItem
      Action = actAnotacoes
    end
  end
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 168
    Top = 176
  end
end
