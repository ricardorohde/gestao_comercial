object FrPedidosCompras: TFrPedidosCompras
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Notas fiscais importadas.'
  ClientHeight = 541
  ClientWidth = 1233
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 1229
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
      RzSpacer2
      btnCancel
      RzSpacer6
      btnOK
      RzSpacer5
      btnError
      RzSpacer7
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
      DisabledIndex = 9
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Action = actCadastrar
    end
    object btnCancel: TRzToolButton
      AlignWithMargins = True
      Left = 115
      Top = 3
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 7
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actComprar
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
      DisabledIndex = 0
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Action = actContas
    end
    object btnError: TRzToolButton
      AlignWithMargins = True
      Left = 339
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
    end
    object btnExit: TRzToolButton
      AlignWithMargins = True
      Left = 459
      Top = 3
      Width = 90
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
    object RzSpacer2: TRzSpacer
      Left = 105
      Top = 13
      Grooved = True
    end
    object RzSpacer4: TRzSpacer
      Left = 449
      Top = 13
    end
    object RzSpacer5: TRzSpacer
      Left = 329
      Top = 13
      Grooved = True
    end
    object RzSpacer6: TRzSpacer
      Left = 217
      Top = 13
      Grooved = True
    end
    object RzSpacer7: TRzSpacer
      Left = 441
      Top = 13
      Grooved = True
    end
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 89
    Width = 1229
    Height = 166
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = dsQuery
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentCtl3D = False
    TabOrder = 1
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
    AutoSizeColumnIndex = 4
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    CanDelete = False
    ColumnResize = gcrNone
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 19
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
        Title.Caption = 'Data Entrada'
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
        Title.Caption = 'Data Emiss'#227'o'
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
        FieldName = 'PED_DATA_REG'
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
        Title.Caption = 'Chave'
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
        FieldName = 'PED_FATURADO'
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
        Width = 481
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
        Title.Alignment = taCenter
        Title.Caption = 'UF'
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
        FieldName = 'PED_SOLICITANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'NSU'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 116
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
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 116
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object JvDBGrid2: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 304
    Width = 1229
    Height = 179
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = dsQueryItens
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentCtl3D = False
    TabOrder = 2
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
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    CanDelete = False
    ColumnResize = gcrNone
    EditControls = <>
    RowsHeight = 17
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
        Width = 119
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
        Width = 682
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
        Width = 111
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 485
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
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 1068
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
        Height = 20
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total do Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 108
      end
      object JvDBCalcEdit4: TJvDBCalcEdit
        Left = 0
        Top = 23
        Width = 160
        Height = 25
        Margins.Top = 0
        BevelEdges = []
        BevelOuter = bvNone
        Align = alClient
        BorderStyle = bsNone
        Color = 4227072
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        Value = 110.000000000000000000
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_TOTAL'
        DataSource = dsQuery
        ExplicitTop = 24
        ExplicitHeight = 24
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 906
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
        Height = 20
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total de Descontos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 130
      end
      object JvDBCalcEdit5: TJvDBCalcEdit
        Left = 0
        Top = 23
        Width = 160
        Height = 25
        Margins.Top = 0
        BevelEdges = []
        BevelOuter = bvNone
        Align = alClient
        BorderStyle = bsNone
        Color = 206
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_DESCONTOS'
        DataSource = dsQuery
        ExplicitTop = 24
        ExplicitHeight = 30
      end
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 744
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
        Height = 20
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Qtde. de Itens:'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 95
      end
      object DBText1: TDBText
        AlignWithMargins = True
        Left = 0
        Top = 23
        Width = 157
        Height = 25
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alClient
        Alignment = taRightJustify
        DataField = 'PED_QTDE_ITENS'
        DataSource = dsQuery
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 3
        ExplicitTop = 22
        ExplicitHeight = 26
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
      AlignWithMargins = True
      Left = 33
      Top = 3
      Width = 217
      Height = 28
      Align = alLeft
      Caption = 'Notas fiscais Importadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 25
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 278
      Top = 3
      Width = 948
      Height = 28
      Margins.Left = 10
      Align = alClient
      Caption = 
        'Neste formul'#225'rio ser'#227'o listada todas as notas fiscasi importadas' +
        ' por fornecedor, permite a consulta a importa'#231#227'o de contas, cada' +
        'stro do fornecedor e cadastrou e ou atualiza'#231#227'o do estoque.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 271
      ExplicitWidth = 929
      ExplicitHeight = 26
    end
    object Bevel3: TBevel
      AlignWithMargins = True
      Left = 263
      Top = 3
      Width = 2
      Height = 28
      Margins.Left = 10
      Align = alLeft
      ExplicitLeft = 256
      ExplicitTop = -1
      ExplicitHeight = 34
    end
    object Image2: TImage
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
      ExplicitLeft = -14
      ExplicitTop = -1
      ExplicitHeight = 34
    end
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 257
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
      Left = 890
      Top = 0
      Width = 339
      Height = 45
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
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
      object Label3: TLabel
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
      object Label4: TLabel
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
      object Bevel1: TBevel
        Left = 117
        Top = 3
        Width = 2
        Height = 38
      end
      object Bevel2: TBevel
        Left = 226
        Top = 3
        Width = 2
        Height = 38
      end
      object JvDBCalcEdit1: TJvDBCalcEdit
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
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_FRETE'
        DataSource = dsQuery
      end
      object JvDBCalcEdit2: TJvDBCalcEdit
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
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_SEGURO'
        DataSource = dsQuery
      end
      object JvDBCalcEdit3: TJvDBCalcEdit
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
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = True
        DataField = 'PED_VLR_OUTROS'
        DataSource = dsQuery
      end
    end
    object PngBitBtn1: TPngBitBtn
      Left = 232
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
    end
    object eDataFim: TJvDateEdit
      Left = 124
      Top = 11
      Width = 102
      Height = 21
      ShowNullDate = False
      TabOrder = 2
    end
    object eDataIni: TJvDateEdit
      Left = 6
      Top = 11
      Width = 101
      Height = 21
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
      Caption = 'Importar NF-e'
      ImageIndex = 9
    end
    object actComprar: TAction
      Caption = 'Gerar Compra'
      ImageIndex = 7
    end
    object actContas: TAction
      Caption = 'Gerar Contas'
      ImageIndex = 0
    end
    object actCancelar: TAction
      Caption = 'Cadastrar'
      ImageIndex = 8
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 5
    end
    object actPopAlterar: TAction
      Category = 'PopUpMenu'
      Caption = 'Importar Arquivos'
      ImageIndex = 10
      ShortCut = 113
    end
    object actPopFrete: TAction
      Category = 'PopUpMenu'
      Caption = 'Frete, Seguro e Outros'
      ShortCut = 114
    end
    object actIncluirProdutos: TAction
      Category = 'PopUpProdutos'
      Caption = 'Produtos'
      ImageIndex = 8
      ShortCut = 115
    end
    object actAlterarProdutos: TAction
      Category = 'PopUpProdutos'
      Caption = 'Alterar Produto Selecionado'
      ShortCut = 116
    end
    object actExcluirProdutos: TAction
      Category = 'PopUpProdutos'
      Caption = 'Excluir Produtos'
      ShortCut = 117
    end
    object actImportar: TAction
      Category = 'PopUpMenu'
      Caption = 'actImportar'
    end
  end
  object Query: TFDQuery
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
    object QueryID_PLN_CONTAS: TIntegerField
      FieldName = 'ID_PLN_CONTAS'
      Origin = 'ID_PLN_CONTAS'
    end
    object QueryID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object QueryFOR_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_RAZAO_SOCIAL'
      Origin = 'FOR_RAZAO_SOCIAL'
      ProviderFlags = []
      Size = 120
    end
    object QueryFOR_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
      ProviderFlags = []
      Size = 15
    end
    object QueryFOR_UF: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'FOR_UF'
      Origin = 'FOR_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object QueryID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = 'ID_FUNCIONARIO'
    end
    object QueryPED_COMPRADOR: TStringField
      FieldName = 'PED_COMPRADOR'
      Origin = 'PED_COMPRADOR'
      ProviderFlags = []
      Size = 80
    end
    object QueryPED_NUMERO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PED_NUMERO'
      Origin = 'PED_NUMERO'
      DisplayFormat = '000000'
    end
    object QueryPED_DATA_REG: TSQLTimeStampField
      FieldName = 'PED_DATA_REG'
      Origin = 'PED_DATA_REG'
    end
    object QueryPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
      Origin = 'PED_DATA_PEDIDO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QueryPED_PRAZO_ENTREGA: TStringField
      FieldName = 'PED_PRAZO_ENTREGA'
      Origin = 'PED_PRAZO_ENTREGA'
      Size = 60
    end
    object QueryPED_VEND_NOME: TStringField
      FieldName = 'PED_VEND_NOME'
      Origin = 'PED_VEND_NOME'
      Size = 120
    end
    object QueryPED_VEND_FONE_FIXO: TStringField
      FieldName = 'PED_VEND_FONE_FIXO'
      Origin = 'PED_VEND_FONE_FIXO'
      EditMask = '!\(99\)9999\-9999;0;'
      Size = 12
    end
    object QueryPED_VEND_FONE_MOVEL: TStringField
      FieldName = 'PED_VEND_FONE_MOVEL'
      Origin = 'PED_VEND_FONE_MOVEL'
      EditMask = '!\(99\)99999\-9999;0;'
      Size = 13
    end
    object QueryPED_VEND_SKYPE: TStringField
      FieldName = 'PED_VEND_SKYPE'
      Origin = 'PED_VEND_SKYPE'
      Size = 60
    end
    object QueryPED_VEND_EMAIL: TStringField
      FieldName = 'PED_VEND_EMAIL'
      Origin = 'PED_VEND_EMAIL'
      Size = 60
    end
    object QueryPED_OBSERVACAO: TStringField
      FieldName = 'PED_OBSERVACAO'
      Origin = 'PED_OBSERVACAO'
      Size = 600
    end
    object QueryPED_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'PED_STATUS'
      Origin = 'PED_STATUS'
    end
    object QueryPED_FATURADO: TIntegerField
      Alignment = taCenter
      FieldName = 'PED_FATURADO'
      Origin = 'PED_FATURADO'
    end
    object QueryPED_ENTREGUE: TIntegerField
      Alignment = taCenter
      FieldName = 'PED_ENTREGUE'
      Origin = 'PED_ENTREGUE'
    end
    object QueryPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
      Origin = 'PED_DATA_ENTREGA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QueryPED_SOLICITANTE: TStringField
      FieldName = 'PED_SOLICITANTE'
      Origin = 'PED_SOLICITANTE'
      Size = 60
    end
    object QueryPED_VLR_FRETE: TBCDField
      FieldName = 'PED_VLR_FRETE'
      Origin = 'PED_VLR_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPED_VLR_SEGURO: TBCDField
      FieldName = 'PED_VLR_SEGURO'
      Origin = 'PED_VLR_SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPED_VLR_OUTROS: TBCDField
      FieldName = 'PED_VLR_OUTROS'
      Origin = 'PED_VLR_OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPED_VLR_DESCONTOS: TBCDField
      FieldName = 'PED_VLR_DESCONTOS'
      Origin = 'PED_VLR_DESCONTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPED_VLR_SUBTOTAL: TBCDField
      FieldName = 'PED_VLR_SUBTOTAL'
      Origin = 'PED_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPED_VLR_TOTAL: TBCDField
      FieldName = 'PED_VLR_TOTAL'
      Origin = 'PED_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPED_PREVISAO_PAGTO: TDateField
      FieldName = 'PED_PREVISAO_PAGTO'
      Origin = 'PED_PREVISAO_PAGTO'
    end
    object QueryPED_VALIDADE: TIntegerField
      FieldName = 'PED_VALIDADE'
      Origin = 'PED_VALIDADE'
    end
    object QueryPED_QTDE_ITENS: TLargeintField
      FieldName = 'PED_QTDE_ITENS'
      Origin = 'PED_QTDE_ITENS'
      DisplayFormat = ',0.000'
    end
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = Query
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
  end
  object QueryItens: TFDQuery
    IndexFieldNames = 'ID_PEDIDO'
    MasterSource = dsQuery
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
    Left = 40
    Top = 198
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 11
      end>
    object QueryItensID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object QueryItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object QueryItensITM_QTDE: TBCDField
      FieldName = 'ITM_QTDE'
      Origin = 'ITM_QTDE'
      DisplayFormat = ',0.000'
      Precision = 18
      Size = 3
    end
    object QueryItensITM_VLR_UNITARIO: TBCDField
      FieldName = 'ITM_VLR_UNITARIO'
      Origin = 'ITM_VLR_UNITARIO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryItensITM_VLR_TOTAL: TBCDField
      FieldName = 'ITM_VLR_TOTAL'
      Origin = 'ITM_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensPRD_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = []
      DisplayFormat = '000000'
    end
    object QueryItensPRD_CODIGO_BRR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO_BRR'
      Origin = 'PRD_CODIGO_BRR'
      ProviderFlags = []
      Size = 15
    end
    object QueryItensPRD_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object QueryItensPRD_UNIDADE: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      ProviderFlags = []
      Size = 3
    end
  end
  object dsQueryItens: TJvDataSource
    AutoEdit = False
    DataSet = QueryItens
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
    Top = 186
  end
end
