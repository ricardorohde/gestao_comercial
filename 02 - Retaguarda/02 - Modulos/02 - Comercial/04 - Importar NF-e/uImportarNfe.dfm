object FrImportarNfe: TFrImportarNfe
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
  OnClose = FormClose
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GradientColorStop = 14869218
    ParentFont = False
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
      DropDownMenu = Pop00
      ImageIndex = 9
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Caption = 'Importar'
      PopupMenu = Pop00
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
      VisualStyle = vsWinXP
      Action = actContas
    end
    object btnExit: TRzToolButton
      AlignWithMargins = True
      Left = 465
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
      Left = 455
      Top = 13
      Grooved = True
    end
    object btnError: TRzToolButton
      AlignWithMargins = True
      Left = 339
      Top = 3
      Width = 114
      Height = 44
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 8
      GradientColorStyle = gcsCustom
      DropDownMenu = Pop01
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Action = actEstoque
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
    AutoSizeColumnIndex = 6
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
        FieldName = 'NFE_DATA_IMPORTADO'
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
        FieldName = 'NFE_DATA_EMISSAO'
        Title.Caption = 'Data Emiss'#227'o'
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
        FieldName = 'NFE_NUMERO'
        Title.Caption = 'N'#250'mero'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_CHAVE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Chave'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_STATUS'
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_NAT_OPERACAO'
        Title.Caption = 'Natureza da Opera'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_RAZAO'
        Title.Caption = 'Fornecedor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_CNPJ'
        Title.Caption = 'Cnpj'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_UF'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_NSU'
        Title.Caption = 'NSU'
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
        FieldName = 'NFE_VLR_TOTAL'
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 80
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
    OnDrawColumnCell = JvDBGrid2DrawColumnCell
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
        FieldName = 'PRD_CODIGO_TER'
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
        Width = 122
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
        Width = 301
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
        Width = 26
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
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_CFOP'
        Title.Caption = 'CFOP'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_NCM'
        Title.Caption = 'NCM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_CEST'
        Title.Caption = 'CEST'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_UNITARIO'
        Title.Caption = 'Valor Unit.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 80
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
        Width = 92
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
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_ESTOQUE'
        Title.Alignment = taCenter
        Title.Caption = 'L'#231'do'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
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
        Caption = 'Total da NF-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 90
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
        DecimalPlacesAlwaysShown = True
        DataField = 'NFE_VLR_TOTAL'
        DataSource = dsQuery
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
        DataField = 'NFE_VLR_DESCONTOS'
        DataSource = dsQuery
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
        DataField = 'NFE_QTDE_ITENS'
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
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 947
      ExplicitHeight = 30
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
        DataField = 'NFE_VLR_FRETE'
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
        DataField = 'NFE_VLR_SEGURO'
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
        DataField = 'NFE_VLR_OUTROS'
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
      OnClick = PngBitBtn1Click
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
    object actImportar: TAction
      Caption = 'Importar Sefaz'
      ImageIndex = 9
    end
    object actComprar: TAction
      Caption = 'Gerar Compra'
      Enabled = False
      ImageIndex = 10
    end
    object actContas: TAction
      Caption = 'Gerar Contas'
      Enabled = False
      ImageIndex = 6
    end
    object actEstoque: TAction
      Caption = 'Estoque'
      ImageIndex = 8
      OnUpdate = actEstoqueUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 5
      OnExecute = actSairExecute
    end
    object actImportarOnline: TAction
      Caption = 'Chave de Consulta'
      Enabled = False
      ShortCut = 113
      OnExecute = actImportarOnlineExecute
    end
    object actImportarArquivo: TAction
      Caption = 'Arquivo do Arquivo'
      ShortCut = 114
      OnExecute = actImportarArquivoExecute
    end
    object actIncluirProdutos: TAction
      Category = 'PopUpProdutos'
      Caption = 'Estoque'
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
    object actImportarItens: TAction
      Caption = 'Atualizar estoque'
      OnExecute = actImportarItensExecute
    end
    object actExtornarItem: TAction
      Caption = 'Extornar Item (Baixar Quantidade)'
      OnExecute = actExtornarItemExecute
      OnUpdate = actExtornarItemUpdate
    end
  end
  object Query: TFDQuery
    AfterPost = QueryAfterPost
    OnNewRecord = QueryNewRecord
    CachedUpdates = True
    Connection = FrModuloRet.DBConexao
    SchemaAdapter = SchemaAD
    SQL.Strings = (
      
        'SELECT * FROM C000040 WHERE NFE_DATA_IMPORTADO BETWEEN :DATA_A A' +
        'ND :DATA_B AND ID_EMPRESA = :ID_EMP')
    Left = 40
    Top = 160
    ParamData = <
      item
        Name = 'DATA_A'
        DataType = ftDate
        ParamType = ptInput
        Value = 43466d
      end
      item
        Name = 'DATA_B'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end
      item
        Name = 'ID_EMP'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
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
    object QueryNFE_DATA_IMPORTADO: TDateField
      FieldName = 'NFE_DATA_IMPORTADO'
      Origin = 'NFE_DATA_IMPORTADO'
    end
    object QueryNFE_DATA_EMISSAO: TSQLTimeStampField
      FieldName = 'NFE_DATA_EMISSAO'
      Origin = 'NFE_DATA_EMISSAO'
    end
    object QueryNFE_NUMERO: TIntegerField
      FieldName = 'NFE_NUMERO'
      Origin = 'NFE_NUMERO'
      DisplayFormat = '000,000,000'
    end
    object QueryNFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Origin = 'NFE_CHAVE'
      Size = 65
    end
    object QueryNFE_CNPJ: TStringField
      FieldName = 'NFE_CNPJ'
      Origin = 'NFE_CNPJ'
      OnGetText = QueryNFE_CNPJGetText
      Size = 18
    end
    object QueryNFE_RAZAO: TStringField
      FieldName = 'NFE_RAZAO'
      Origin = 'NFE_RAZAO'
      Size = 120
    end
    object QueryNFE_UF: TStringField
      Alignment = taCenter
      FieldName = 'NFE_UF'
      Origin = 'NFE_UF'
      FixedChar = True
      Size = 2
    end
    object QueryNFE_NSU: TIntegerField
      FieldName = 'NFE_NSU'
      Origin = 'NFE_NSU'
    end
    object QueryNFE_VLR_FRETE: TFMTBCDField
      FieldName = 'NFE_VLR_FRETE'
      Origin = 'NFE_VLR_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryNFE_VLR_SEGURO: TFMTBCDField
      FieldName = 'NFE_VLR_SEGURO'
      Origin = 'NFE_VLR_SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryNFE_VLR_OUTROS: TFMTBCDField
      FieldName = 'NFE_VLR_OUTROS'
      Origin = 'NFE_VLR_OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryNFE_VLR_DESCONTOS: TFMTBCDField
      FieldName = 'NFE_VLR_DESCONTOS'
      Origin = 'NFE_VLR_DESCONTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryNFE_NAT_OPERACAO: TStringField
      FieldName = 'NFE_NAT_OPERACAO'
      Origin = 'NFE_NAT_OPERACAO'
      Size = 120
    end
    object QueryNFE_VLR_TOTAL: TFMTBCDField
      FieldName = 'NFE_VLR_TOTAL'
      Origin = 'NFE_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryNFE_QTDE_ITENS: TLargeintField
      FieldName = 'NFE_QTDE_ITENS'
      Origin = 'NFE_QTDE_ITENS'
      DisplayFormat = '000'
    end
    object QueryNFE_COMPRAS: TStringField
      FieldName = 'NFE_COMPRAS'
      Origin = 'NFE_COMPRAS'
      FixedChar = True
      Size = 1
    end
    object QueryNFE_ESTOQUE: TStringField
      FieldName = 'NFE_ESTOQUE'
      Origin = 'NFE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object QueryNFE_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'NFE_STATUS'
      Origin = 'NFE_STATUS'
      OnGetText = QueryNFE_STATUSGetText
    end
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = Query
    Left = 72
    Top = 160
  end
  object Pop00: TPopupMenu
    Left = 372
    Top = 151
    object AlterarCabealho1: TMenuItem
      Action = actImportarOnline
    end
    object FreteSeguroeDesconto1: TMenuItem
      Action = actImportarArquivo
    end
  end
  object QueryItens: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_C000040'
    MasterSource = dsQuery
    MasterFields = 'ID'
    DetailFields = 'ID_C000040'
    AfterApplyUpdates = QueryItensAfterApplyUpdates
    Connection = FrModuloRet.DBConexao
    SchemaAdapter = SchemaAD
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM C000041 WHERE ID_C000040 = :ID')
    Left = 40
    Top = 198
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 33
      end>
    object QueryItensID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryItensID_C000040: TIntegerField
      FieldName = 'ID_C000040'
      Origin = 'ID_C000040'
    end
    object QueryItensPRD_ITEM: TIntegerField
      FieldName = 'PRD_ITEM'
      Origin = 'PRD_ITEM'
    end
    object QueryItensPRD_CODIGO_TER: TStringField
      FieldName = 'PRD_CODIGO_TER'
      Origin = 'PRD_CODIGO_TER'
      Size = 35
    end
    object QueryItensPRD_CODIGO_BARRAS: TStringField
      FieldName = 'PRD_CODIGO_BARRAS'
      Origin = 'PRD_CODIGO_BARRAS'
      Size = 35
    end
    object QueryItensPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      Size = 120
    end
    object QueryItensPRD_UNIDADE: TStringField
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      Size = 4
    end
    object QueryItensPRD_CFOP: TIntegerField
      FieldName = 'PRD_CFOP'
      Origin = 'PRD_CFOP'
    end
    object QueryItensPRD_NCM: TStringField
      FieldName = 'PRD_NCM'
      Origin = 'PRD_NCM'
      Size = 10
    end
    object QueryItensPRD_CEST: TStringField
      FieldName = 'PRD_CEST'
      Origin = 'PRD_CEST'
      Size = 10
    end
    object QueryItensPRD_QTDE: TBCDField
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      DisplayFormat = ',0.000'
      Precision = 18
    end
    object QueryItensPRD_VLR_UNITARIO: TBCDField
      FieldName = 'PRD_VLR_UNITARIO'
      Origin = 'PRD_VLR_UNITARIO'
      DisplayFormat = ',0.000'
      Precision = 18
    end
    object QueryItensPRD_VLR_FRETE: TFMTBCDField
      FieldName = 'PRD_VLR_FRETE'
      Origin = 'PRD_VLR_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensPRD_VLR_SEGURO: TFMTBCDField
      FieldName = 'PRD_VLR_SEGURO'
      Origin = 'PRD_VLR_SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensPRD_VLR_OUTRO: TFMTBCDField
      FieldName = 'PRD_VLR_OUTRO'
      Origin = 'PRD_VLR_OUTRO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensPRD_VLR_DESCONTO: TFMTBCDField
      FieldName = 'PRD_VLR_DESCONTO'
      Origin = 'PRD_VLR_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensPRD_INFOS: TStringField
      FieldName = 'PRD_INFOS'
      Origin = 'PRD_INFOS'
      Size = 120
    end
    object QueryItensPRD_VLR_ICMS: TFMTBCDField
      FieldName = 'PRD_VLR_ICMS'
      Origin = 'PRD_VLR_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensPRD_VLR_IPI: TFMTBCDField
      FieldName = 'PRD_VLR_IPI'
      Origin = 'PRD_VLR_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensPRD_VLR_PIS: TFMTBCDField
      FieldName = 'PRD_VLR_PIS'
      Origin = 'PRD_VLR_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensPRD_VLR_COFINS: TFMTBCDField
      FieldName = 'PRD_VLR_COFINS'
      Origin = 'PRD_VLR_COFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensPRD_VLR_TOTAL: TFMTBCDField
      FieldName = 'PRD_VLR_TOTAL'
      Origin = 'PRD_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryItensID_TIPO_PRODUTO: TIntegerField
      FieldName = 'ID_TIPO_PRODUTO'
      Origin = 'ID_TIPO_PRODUTO'
    end
    object QueryItensID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
    object QueryItensPRD_ID: TIntegerField
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
    end
    object QueryItensPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      Origin = 'PRD_ORIGEM'
    end
    object QueryItensPRD_ESTOQUE: TStringField
      Alignment = taCenter
      FieldName = 'PRD_ESTOQUE'
      Origin = 'PRD_ESTOQUE'
      OnGetText = QueryItensPRD_ESTOQUEGetText
      FixedChar = True
      Size = 1
    end
    object QueryItensPRD_CHECK: TStringField
      FieldName = 'PRD_CHECK'
      Origin = 'PRD_CHECK'
      FixedChar = True
      Size = 1
    end
    object QueryItensPRD_STS: TStringField
      FieldName = 'PRD_STS'
      Origin = 'PRD_STS'
      FixedChar = True
      Size = 1
    end
    object QueryItensPRD_UP_VENDA: TStringField
      FieldName = 'PRD_UP_VENDA'
      Origin = 'PRD_UP_VENDA'
      FixedChar = True
      Size = 1
    end
    object QueryItensPRD_AJUSTADO: TStringField
      FieldName = 'PRD_AJUSTADO'
      Origin = 'PRD_AJUSTADO'
      FixedChar = True
      Size = 1
    end
    object QueryItensPRD_CODIGO: TIntegerField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
    end
  end
  object dsQueryItens: TJvDataSource
    AutoEdit = False
    DataSet = QueryItens
    Left = 72
    Top = 198
  end
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 336
    Top = 186
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFCeFortes1
    Left = 200
    Top = 152
  end
  object ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe1
    FonteLinhaItem.Charset = DEFAULT_CHARSET
    FonteLinhaItem.Color = clWindowText
    FonteLinhaItem.Height = -9
    FonteLinhaItem.Name = 'Lucida Console'
    FonteLinhaItem.Style = []
    Left = 232
    Top = 152
  end
  object OpenDialog1: TOpenDialog
    FileName = 
      'C:\TechCore-ERP\Servidor\Notas Fiscais\Exportadas\35190862947080' +
      '000144550020000005551750899717.xml'
    Filter = 'Notas fiscais | *.xml'
    Left = 200
    Top = 184
  end
  object SchemaAD: TFDSchemaAdapter
    AfterApplyUpdate = SchemaADAfterApplyUpdate
    Left = 112
    Top = 176
  end
  object Pop01: TPopupMenu
    Left = 408
    Top = 151
    object ArquivodoArquivo1: TMenuItem
      Action = actImportarItens
    end
    object ExtornarItemBaixarQuantidade1: TMenuItem
      Action = actExtornarItem
    end
  end
end
