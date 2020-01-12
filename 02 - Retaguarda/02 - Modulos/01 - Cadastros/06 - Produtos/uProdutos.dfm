object FrProdutos: TFrProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 569
  ClientWidth = 1192
  Color = clGray
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
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
    Width = 1188
    Height = 44
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    AutoStyle = False
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
      btnEdit
      RzSpacer2
      btnCancel
      RzSpacer6
      btnAttach
      RzSpacer3
      btnOK
      RzSpacer5
      btnError
      RzSpacer7
      btnNew1
      RzSpacer4
      btnExit)
    object btnNew: TRzToolButton
      Left = 4
      Top = 0
      Width = 90
      Height = 45
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 9
      GradientColorStyle = gcsCustom
      DownIndex = 12
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      Left = 102
      Top = 0
      Width = 100
      Height = 45
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 13
      GradientColorStyle = gcsCustom
      DownIndex = 14
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      Left = 210
      Top = 0
      Width = 100
      Height = 45
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 7
      GradientColorStyle = gcsCustom
      DownIndex = 18
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actExcluir
    end
    object btnOK: TRzToolButton
      Left = 426
      Top = 0
      Width = 100
      Height = 45
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 15
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actGravar
    end
    object btnError: TRzToolButton
      Left = 534
      Top = 0
      Width = 100
      Height = 45
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 4
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      Left = 750
      Top = 0
      Width = 80
      Height = 45
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 5
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actSair
    end
    object RzSpacer1: TRzSpacer
      Left = 94
      Top = 10
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 202
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 418
      Top = 10
    end
    object RzSpacer4: TRzSpacer
      Left = 742
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 526
      Top = 10
      Grooved = True
    end
    object btnAttach: TRzToolButton
      Left = 318
      Top = 0
      Width = 100
      Height = 45
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 2
      GradientColorStyle = gcsCustom
      DownIndex = 7
      DropDownMenu = PopOutros
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Action = actOutros
    end
    object RzSpacer6: TRzSpacer
      Left = 310
      Top = 10
      Grooved = True
    end
    object RzSpacer7: TRzSpacer
      Left = 634
      Top = 10
      Grooved = True
    end
    object btnNew1: TRzToolButton
      Left = 642
      Top = 0
      Width = 100
      Height = 45
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 8
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = Action1
    end
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 84
    Width = 1188
    Height = 483
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    object pgControl: TJvPageControl
      Left = 0
      Top = 0
      Width = 1188
      Height = 483
      ActivePage = tabPrincipal
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChanging = pgControlChanging
      ParentColor = False
      Color = clBtnFace
      object tabPrincipal: TTabSheet
        Caption = 'Principal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        object eGrid: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1180
          Height = 453
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = eGridDrawColumnCell
          OnDblClick = actAlterarExecute
          DotNetHighlighting = True
          AlternateRowColor = 15395562
          AutoSizeColumns = True
          AutoSizeColumnIndex = 2
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 19
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_CODIGO_BRR'
              Title.Caption = 'C'#243'digo de Barras'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 466
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_UNIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'UN'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_VLR_CUSTO'
              Title.Caption = 'Valor de Custo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_QTDE_INICIAL'
              Title.Caption = 'Qtde. Inicial'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_QTDE_ENTRADA'
              Title.Caption = 'Qtde. Entrada'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_QTDE_SAIDA'
              Title.Caption = 'Qtde. Saida'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_QTDE_ATUAL'
              Title.Caption = 'Qtde. Atual'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_STATUS'
              Title.Caption = 'Ativo'
              Width = 35
              Visible = True
            end>
          Delphi2010OptionsMigrated = True
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        object pnDetalhes: TRzPanel
          Left = 0
          Top = 0
          Width = 1180
          Height = 453
          Align = alClient
          BorderOuter = fsNone
          Color = clWindow
          TabOrder = 0
          object Label1: TLabel
            Left = 6
            Top = 4
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 407
            Top = 148
            Width = 33
            Height = 15
            Caption = 'Marca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 228
            Top = 266
            Width = 76
            Height = 15
            Caption = 'Valor de Custo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 6
            Top = 48
            Width = 51
            Height = 15
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 6
            Top = 266
            Width = 57
            Height = 15
            Caption = 'Peso Bruto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 117
            Top = 266
            Width = 68
            Height = 15
            Caption = 'Peso L'#237'quido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 95
            Top = 4
            Width = 66
            Height = 15
            Caption = 'Modifica'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 605
            Top = 48
            Width = 96
            Height = 15
            Caption = 'Imagem (150x150)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 471
            Top = 4
            Width = 55
            Height = 15
            Caption = 'Refer'#234'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 241
            Top = 4
            Width = 105
            Height = 15
            Caption = 'C'#243'digo de Terceiros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 605
            Top = 4
            Width = 86
            Height = 15
            Caption = 'Tipo de Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 361
            Top = 4
            Width = 90
            Height = 15
            Caption = 'C'#243'digo de Barras'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 564
            Top = 48
            Width = 18
            Height = 15
            Caption = 'Un.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 6
            Top = 148
            Width = 33
            Height = 15
            Caption = 'Grupo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 199
            Top = 148
            Width = 53
            Height = 15
            Caption = 'SubGrupo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 339
            Top = 266
            Width = 63
            Height = 15
            Caption = 'Qtde. Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 450
            Top = 266
            Width = 99
            Height = 15
            Caption = 'Status do Cadastro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 6
            Top = 98
            Width = 214
            Height = 15
            Caption = 'Descri'#231#227'o Curta (impresso nas etiquetas)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object eCodigo: TRzDBEdit
            Left = 6
            Top = 21
            Width = 83
            Height = 23
            Hint = 
              'Se n'#227'o informado o sistema assumir'#225' uma ordem sequencial com bas' +
              'e no ultimo c'#243'digo informado.'
            DataSource = dsDados
            DataField = 'PRD_CODIGO'
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
          end
          object eCodigoTerceiros: TRzDBEdit
            Left = 241
            Top = 21
            Width = 114
            Height = 23
            DataSource = dsDados
            DataField = 'PRD_CODIGO_TER'
            CharCase = ecUpperCase
            TabOrder = 2
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
          end
          object eDescricao: TRzDBEdit
            Left = 6
            Top = 65
            Width = 552
            Height = 29
            DataSource = dsDados
            DataField = 'PRD_DESCRICAO'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
          end
          object eGrupo: TRzDBButtonEdit
            Left = 6
            Top = 165
            Width = 187
            Height = 21
            DataSource = dsDados
            DataField = 'GRP_DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            TextHint = 'F2 - Buscar'
            TextHintVisibleOnFocus = True
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
            AllowKeyEdit = False
            ButtonShortCut = 113
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = eGrupoButtonClick
          end
          object eMarca: TRzDBButtonEdit
            Left = 407
            Top = 165
            Width = 192
            Height = 21
            DataSource = dsDados
            DataField = 'MRC_DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            TextHint = 'F2 - Buscar'
            TextHintVisibleOnFocus = True
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
            AllowKeyEdit = False
            ButtonShortCut = 113
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = eMarcaButtonClick
          end
          object eModificacao: TRzDBEdit
            Left = 95
            Top = 21
            Width = 140
            Height = 23
            DataSource = dsDados
            DataField = 'PRD_DATA_REG'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
          end
          object eReferencia: TRzDBEdit
            Left = 471
            Top = 21
            Width = 128
            Height = 23
            DataSource = dsDados
            DataField = 'PRD_REFERENCIA'
            CharCase = ecUpperCase
            TabOrder = 4
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
          end
          object eSubGrupo: TRzDBButtonEdit
            Left = 199
            Top = 165
            Width = 202
            Height = 21
            DataSource = dsDados
            DataField = 'SUB_DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            TextHint = 'F2 - Buscar'
            TextHintVisibleOnFocus = True
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
            AllowKeyEdit = False
            ButtonShortCut = 113
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = eSubGrupoButtonClick
          end
          object eTipo: TRzDBButtonEdit
            Left = 605
            Top = 21
            Width = 180
            Height = 23
            DataSource = dsDados
            DataField = 'TIP_DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            TextHint = 'F2 - Buscar'
            TextHintVisibleOnFocus = True
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
            AllowKeyEdit = False
            ButtonShortCut = 113
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = eTipoButtonClick
          end
          object eUnidade: TRzDBEdit
            Left = 564
            Top = 65
            Width = 35
            Height = 29
            DataSource = dsDados
            DataField = 'PRD_UNIDADE'
            Alignment = taCenter
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
          end
          object ed_valor_custo: TJvDBCalcEdit
            Left = 228
            Top = 283
            Width = 105
            Height = 23
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
            Value = 0.070000000000000010
            DecimalPlacesAlwaysShown = True
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
            DataField = 'PRD_VLR_CUSTO'
            DataSource = dsDados
          end
          object JvDBCalcEdit1: TJvDBCalcEdit
            Left = 6
            Top = 283
            Width = 105
            Height = 23
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
            DecimalPlacesAlwaysShown = True
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
            DataField = 'PRD_PESO_B'
            DataSource = dsDados
          end
          object JvDBCalcEdit2: TJvDBCalcEdit
            Left = 117
            Top = 283
            Width = 105
            Height = 23
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 15
            DecimalPlacesAlwaysShown = True
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
            DataField = 'PRD_PESO_L'
            DataSource = dsDados
          end
          object Panel2: TPanel
            Left = 605
            Top = 65
            Width = 180
            Height = 194
            Color = clSilver
            ParentBackground = False
            TabOrder = 13
            object Panel3: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 155
              Width = 172
              Height = 36
              Margins.Top = 0
              Margins.Bottom = 2
              Align = alBottom
              BevelOuter = bvNone
              Color = clSilver
              ParentBackground = False
              TabOrder = 0
              object BtnLogomarca: TSpeedButton
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 45
                Height = 36
                Cursor = crHandPoint
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alLeft
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFF4A34
                  1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
                  1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
                  1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
                  1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
                  4DFF4A341F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
                  4DFFB8824DFFB8824DFF4A341F66B8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
                  0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
                  0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
                  0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
                  000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
                  000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFF00000000000000000000000000000000}
                OnClick = BtnLogomarcaClick
              end
              object SpeedButton1: TSpeedButton
                AlignWithMargins = True
                Left = 127
                Top = 0
                Width = 45
                Height = 36
                Cursor = crHandPoint
                Margins.Left = 2
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alRight
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  200000000000000400000000000000000000000000000000000000000000131C
                  3C471E2B5F700000000000000000000000000000000000000000000000000000
                  00000000000000000000000000001F2D6375131C3C4700000000131C3C474260
                  D0F64463D8FF1F2D617300000000000000000000000000000000000000000000
                  00000000000000000000202E65774463D8FF4260D1F7131C3C472130687B4463
                  D8FF4463D8FF4463D8FF1F2D6173000000000000000000000000000000000000
                  000000000000202E65774463D8FF4463D8FF4463D8FF212F677A000000002231
                  6C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000000000000000
                  0000202E65774463D8FF4463D8FF4463D8FF22316B7E00000000000000000000
                  000022316C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000202E
                  65774463D8FF4463D8FF4463D8FF22316B7E0000000000000000000000000000
                  00000000000022316C7F4463D8FF4463D8FF4463D8FF1F2D6173202E65774463
                  D8FF4463D8FF4463D8FF22316B7E000000000000000000000000000000000000
                  0000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF22316B7E00000000000000000000000000000000000000000000
                  000000000000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463
                  D8FF22316B7E0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000202E65774463D8FF4463D8FF4463D8FF4463
                  D8FF1F2D62740000000000000000000000000000000000000000000000000000
                  00000000000000000000202E65774463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF1F2D627400000000000000000000000000000000000000000000
                  000000000000202E65774463D8FF4463D8FF4463D8FF22316B7E22316C7F4463
                  D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000000000000000
                  0000202E65774463D8FF4463D8FF4463D8FF21316A7D00000000000000002231
                  6C7F4463D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000202E
                  65774463D8FF4463D8FF4463D8FF21316A7D0000000000000000000000000000
                  000022316C7F4463D8FF4463D8FF4463D8FF1F2D6274000000001F2D63754463
                  D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
                  00000000000022316C7F4463D8FF4463D8FF4463D8FF1E2C6172151E414D4261
                  D3F94463D8FF21316A7D00000000000000000000000000000000000000000000
                  0000000000000000000022316C7F4463D8FF4261D3F9151E424E00000000151E
                  414D212F677A0000000000000000000000000000000000000000000000000000
                  00000000000000000000000000002130687B151E414D00000000}
                OnClick = SpeedButton1Click
                ExplicitLeft = 158
              end
            end
            object eLogo: TJvDBImage
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 172
              Height = 148
              Align = alClient
              BorderStyle = bsNone
              DataField = 'PRD_FOTO'
              DataSource = dsDados
              Stretch = True
              TabOrder = 1
              ShowNameIfEmpty = False
            end
          end
          object RzDBEdit1: TRzDBEdit
            Left = 361
            Top = 21
            Width = 104
            Height = 23
            DataSource = dsDados
            DataField = 'PRD_CODIGO_BRR'
            CharCase = ecUpperCase
            TabOrder = 3
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
          end
          object RzGroupBox1: TRzGroupBox
            Left = 6
            Top = 193
            Width = 593
            Height = 69
            Caption = '  Informa'#231#245'es fiscais.'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 12
            object Label11: TLabel
              Left = 6
              Top = 20
              Width = 28
              Height = 15
              Caption = 'NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 104
              Top = 20
              Width = 27
              Height = 15
              Caption = 'CEST'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 202
              Top = 20
              Width = 40
              Height = 15
              Caption = 'Origem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object eCest: TRzDBEdit
              Left = 104
              Top = 37
              Width = 92
              Height = 23
              DataSource = dsDados
              DataField = 'PRD_CEST'
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = eCodigoTerceirosEnter
              OnExit = eCodigoTerceirosExit
            end
            object eOrigem: TRzDBComboBox
              Left = 202
              Top = 37
              Width = 383
              Height = 23
              DataField = 'PRD_ORIGEM'
              DataSource = dsDados
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = eCodigoTerceirosEnter
              OnExit = eCodigoTerceirosExit
              Items.Strings = (
                '0 - Nacional, exceto as indicadas nos c'#243'digos 3, 4, 5 e 8;'
                
                  '1 - Estrangeira - Importa'#231#227'o direta, exceto a indicada no c'#243'digo' +
                  ' 6;'
                
                  '2 - Estrangeira - Adquirida no mercado interno, exceto a indicad' +
                  'a no c'#243'digo 7;'
                
                  '3 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
                  'ior a 40% e inferior ou igual a 70%;'
                
                  '4 - Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
                  ' os processos produtivos b'#225'sicos de que tratam as legisla'#231#245'es ci' +
                  'tadas nos Ajustes;'
                
                  '5 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
                  'ior ou igual a 40%;'
                
                  '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional, const' +
                  'ante em lista da CAMEX e g'#225's natural;'
                
                  '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
                  'onal, constante em lista da CAMEX e g'#225's natural.'
                
                  '8 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
                  'ior a 70%;')
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8')
            end
            object eNcm: TRzDBButtonEdit
              Left = 6
              Top = 37
              Width = 92
              Height = 23
              DataSource = dsDados
              DataField = 'PRD_NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TextHint = 'F2 - Buscar'
              TextHintVisibleOnFocus = True
              OnEnter = eCodigoTerceirosEnter
              OnExit = eCodigoTerceirosExit
              AllowKeyEdit = False
              ButtonShortCut = 113
              AltBtnWidth = 15
              ButtonWidth = 18
              OnButtonClick = eNcmButtonClick
            end
          end
          object ed_qtde: TJvDBCalcEdit
            Left = 339
            Top = 283
            Width = 105
            Height = 23
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 17
            Value = 104.000000000000000000
            DecimalPlacesAlwaysShown = True
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
            DataField = 'PRD_QTDE'
            DataSource = dsDados
          end
          object ed_status: TJvDBComboBox
            Left = 450
            Top = 283
            Width = 149
            Height = 23
            DataField = 'PRD_STATUS'
            DataSource = dsDados
            Items.Strings = (
              'Ativo'
              'Inativo')
            TabOrder = 18
            Values.Strings = (
              '1'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object RzDBCheckBox1: TRzDBCheckBox
            Left = 605
            Top = 265
            Width = 81
            Height = 17
            DataField = 'PRD_KIT'
            DataSource = dsDados
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Habilitar Kit'
            TabOrder = 19
          end
          object RzDBEdit4: TRzDBEdit
            Left = 6
            Top = 115
            Width = 593
            Height = 29
            DataSource = dsDados
            DataField = 'PRD_DESCRICAO_CURTA'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = eCodigoTerceirosEnter
            OnExit = eCodigoTerceirosExit
          end
          object RzDBCheckBox2: TRzDBCheckBox
            Left = 605
            Top = 284
            Width = 119
            Height = 17
            DataField = 'PRD_CTRL_ESTQ'
            DataSource = dsDados
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            Caption = 'Controlar Estoque?'
            TabOrder = 20
          end
        end
        object DBNavigator: TJvDBNavigator
          Left = 6
          Top = 315
          Width = 215
          Height = 25
          Margins.Left = 6
          Margins.Right = 370
          Margins.Bottom = 0
          DataSource = dsDados
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          TabOrder = 1
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Kit de Produtos'
        ImageIndex = 3
        object Label14: TLabel
          Left = 3
          Top = 3
          Width = 46
          Height = 15
          Caption = 'Produto:'
        end
        object RzDBEdit2: TRzDBEdit
          Left = 3
          Top = 24
          Width = 520
          Height = 28
          DataSource = dsDados
          DataField = 'PRD_DESCRICAO'
          DisabledColor = 33023
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          FocusColor = 14680063
          ParentFont = False
          TabOrder = 0
        end
        object RzDBEdit3: TRzDBEdit
          Left = 529
          Top = 24
          Width = 34
          Height = 28
          DataSource = dsDados
          DataField = 'PRD_UNIDADE'
          DisabledColor = 33023
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          FocusColor = 14680063
          ParentFont = False
          TabOrder = 1
        end
        object RzDBNavigator1: TRzDBNavigator
          Left = 2
          Top = 236
          Width = 230
          Height = 25
          DataSource = dsQueryKit
          ConfirmDelete = False
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          BorderOuter = fsNone
          TabOrder = 2
        end
        object JvDBGrid1: TJvDBGrid
          Left = 2
          Top = 58
          Width = 561
          Height = 172
          DataSource = dsQueryKit
          DrawingStyle = gdsClassic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          ParentFont = False
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          AlternateRowColor = 14803396
          AutoSizeColumns = True
          AutoSizeColumnIndex = 0
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <
            item
              ControlName = 'JvDBLookupCombo1'
              FieldName = 'PRD_ID'
              FitCell = fcCellSize
              LeaveOnEnterKey = True
              LeaveOnUpDownKey = True
            end>
          RowsHeight = 17
          TitleRowHeight = 19
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_DESCRICAO'
              Title.Caption = 'Produto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 361
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_UNIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Un.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_QTDE'
              Title.Caption = 'Qtde.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_VALOR'
              Title.Caption = 'Valor'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end>
          Delphi2010OptionsMigrated = True
        end
      end
      object tabFornecedor: TTabSheet
        Caption = 'Fornecedores'
        ImageIndex = 2
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1180
          Height = 453
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel1'
          TabOrder = 0
          object JvDBGrid3: TJvDBGrid
            Left = 0
            Top = 0
            Width = 1180
            Height = 453
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsFornecedor
            DrawingStyle = gdsClassic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = [fsBold]
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 19
            TitleRowHeight = 18
            Columns = <
              item
                Expanded = False
                FieldName = 'FOR_CODIGO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                Title.Caption = 'C'#211'DIGO'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FOR_RAZAO_SOCIAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                Title.Caption = 'FORNECEDOR'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 785
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FOR_UF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                Title.Caption = 'UF'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FOR_CNPJ'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                Title.Caption = 'CNPJ'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 256
                Visible = True
              end>
            Delphi2010OptionsMigrated = True
          end
        end
      end
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 1188
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
    TabOrder = 2
    VisualStyle = vsGradient
    object Label20: TLabel
      Left = 41
      Top = 3
      Width = 192
      Height = 26
      Caption = 'Cadastros de Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      AlignWithMargins = True
      Left = 254
      Top = 1
      Width = 859
      Height = 30
      Caption = 
        'Formul'#225'rio respons'#225'vel por permitir o cadastro e manuten'#231#227'o dos ' +
        'cadastro dos produtos, nele '#233' poss'#237'vel cadastrar, alterar, exclu' +
        'ir e at'#233' mesmo informar o fornecedor de determinado(s) produto(s' +
        ') ou mais produtos.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 244
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
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 431
    Top = 263
    StyleName = 'Platform Default'
    object actCadastrar: TAction
      Category = 'Produtos'
      Caption = 'Cadastrar'
      ImageIndex = 9
      OnExecute = actCadastrarExecute
      OnUpdate = actCadastrarUpdate
    end
    object actAlterar: TAction
      Category = 'Produtos'
      Caption = 'Alterar'
      ImageIndex = 13
      OnExecute = actAlterarExecute
      OnUpdate = actAlterarUpdate
    end
    object actExcluir: TAction
      Category = 'Produtos'
      Caption = 'Excluir'
      ImageIndex = 7
      OnExecute = actExcluirExecute
      OnUpdate = actAlterarUpdate
    end
    object actGravar: TAction
      Category = 'Produtos'
      Caption = 'Gravar'
      ImageIndex = 15
      OnExecute = actGravarExecute
      OnUpdate = actGravarUpdate
    end
    object actCancelar: TAction
      Category = 'Produtos'
      Caption = 'Cancelar'
      ImageIndex = 4
      OnExecute = actCancelarExecute
      OnUpdate = actGravarUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 5
      OnExecute = actSairExecute
      OnUpdate = actCadastrarUpdate
    end
    object actOutros: TAction
      Category = 'Outros'
      Caption = 'Fornecedores'
      ImageIndex = 2
      OnExecute = actOutrosExecute
      OnUpdate = actOutrosUpdate
    end
    object actCadFornecedor: TAction
      Category = 'Fornecedores'
      Caption = 'Incluir Fornecedor'
      OnExecute = actCadFornecedorExecute
    end
    object actExcFornecedor: TAction
      Category = 'Fornecedores'
      Caption = 'Remover Fornecedor'
      OnExecute = actExcFornecedorExecute
      OnUpdate = actExcFornecedorUpdate
    end
    object Action1: TAction
      Category = 'Produtos'
      Caption = 'Pesquisar'
      ImageIndex = 8
      OnExecute = Action1Execute
      OnUpdate = Action1Update
    end
    object actKit: TAction
      Category = 'Produtos'
      Caption = 'Kits Produtos'
    end
  end
  object tbDados: TFDQuery
    Active = True
    BeforePost = tbDadosBeforePost
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      
        '   (SELECT (LPAD(TIP_CODIGO,2,0) || '#39' - '#39' || TIP_DESCRICAO) AS T' +
        'IP_DESCRICAO FROM C000401 WHERE ID = ID_TIPO_PRODUTO),'
      
        '   (SELECT (LPAD(GRP_CODIGO,2,0) || '#39' - '#39' || GRP_DESCRICAO) AS G' +
        'RP_DESCRICAO FROM C000402 WHERE ID = ID_GRUPO),'
      
        '   (SELECT (LPAD(SUB_CODIGO,2,0) || '#39' - '#39' || SUB_DESCRICAO) AS S' +
        'UB_DESCRICAO FROM C000403 WHERE ID = ID_SUBGRUPO),'
      
        '   (SELECT (LPAD(MRC_CODIGO,2,0) || '#39' - '#39' || MRC_DESCRICAO) AS M' +
        'RC_DESCRICAO FROM C000404 WHERE ID = ID_MARCA),'
      
        '   (SELECT COALESCE(QTDE_INICIAL,0)        AS PRD_QTDE_INICIAL F' +
        'ROM C000406 WHERE ID_PRODUTO = T1.ID),'
      
        '   (SELECT COALESCE(QTDE_ENTRADA,0)        AS PRD_QTDE_ENTRADA F' +
        'ROM C000406 WHERE ID_PRODUTO = T1.ID),'
      
        '   (SELECT COALESCE(QTDE_SAIDA,0) * (-1)   AS PRD_QTDE_SAIDA   F' +
        'ROM C000406 WHERE ID_PRODUTO = T1.ID),'
      
        '   (SELECT COALESCE(QTDE_ATUAL,0)          AS PRD_QTDE_ATUAL   F' +
        'ROM C000406 WHERE ID_PRODUTO = T1.ID)'
      'FROM'
      '   C000405 AS T1'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   PRD_DESCRICAO ASC')
    Left = 839
    Top = 304
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
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
    object tbDadosID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
      OnChange = tbDadosID_GRUPOChange
    end
    object tbDadosID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
      Origin = 'ID_SUBGRUPO'
      OnChange = tbDadosID_SUBGRUPOChange
    end
    object tbDadosID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      Origin = 'ID_MARCA'
      OnChange = tbDadosID_MARCAChange
    end
    object tbDadosID_TRIBUTOS_SAI: TIntegerField
      FieldName = 'ID_TRIBUTOS_SAI'
      Origin = 'ID_TRIBUTOS_SAI'
    end
    object tbDadosID_TRIBUTOS_ENT: TIntegerField
      FieldName = 'ID_TRIBUTOS_ENT'
      Origin = 'ID_TRIBUTOS_ENT'
    end
    object tbDadosID_TIPO_PRODUTO: TIntegerField
      FieldName = 'ID_TIPO_PRODUTO'
      Origin = 'ID_TIPO_PRODUTO'
      OnChange = tbDadosID_TIPO_PRODUTOChange
    end
    object tbDadosTIP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIP_DESCRICAO'
      Origin = 'TIP_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object tbDadosGRP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRP_DESCRICAO'
      Origin = 'GRP_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object tbDadosSUB_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUB_DESCRICAO'
      Origin = 'SUB_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object tbDadosMRC_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MRC_DESCRICAO'
      Origin = 'MRC_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object tbDadosPRD_DATA_REG: TSQLTimeStampField
      FieldName = 'PRD_DATA_REG'
      Origin = 'PRD_DATA_REG'
    end
    object tbDadosPRD_CODIGO: TIntegerField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosPRD_CODIGO_TER: TStringField
      FieldName = 'PRD_CODIGO_TER'
      Origin = 'PRD_CODIGO_TER'
      Size = 15
    end
    object tbDadosPRD_CODIGO_BRR: TStringField
      FieldName = 'PRD_CODIGO_BRR'
      Origin = 'PRD_CODIGO_BRR'
      Size = 15
    end
    object tbDadosPRD_REFERENCIA: TStringField
      FieldName = 'PRD_REFERENCIA'
      Origin = 'PRD_REFERENCIA'
      Size = 15
    end
    object tbDadosPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      Size = 120
    end
    object tbDadosPRD_UNIDADE: TStringField
      Alignment = taCenter
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      Size = 3
    end
    object tbDadosPRD_NCM: TStringField
      FieldName = 'PRD_NCM'
      Origin = 'PRD_NCM'
      Size = 8
    end
    object tbDadosPRD_NCM_EX: TStringField
      FieldName = 'PRD_NCM_EX'
      Origin = 'PRD_NCM_EX'
      FixedChar = True
      Size = 2
    end
    object tbDadosPRD_CEST: TStringField
      FieldName = 'PRD_CEST'
      Origin = 'PRD_CEST'
      Size = 8
    end
    object tbDadosPRD_VLR_CUSTO: TBCDField
      FieldName = 'PRD_VLR_CUSTO'
      Origin = 'PRD_VLR_CUSTO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object tbDadosPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      Origin = 'PRD_ORIGEM'
    end
    object tbDadosPRD_FOTO: TMemoField
      FieldName = 'PRD_FOTO'
      Origin = 'PRD_FOTO'
      BlobType = ftMemo
    end
    object tbDadosPRD_PESO_L: TFMTBCDField
      FieldName = 'PRD_PESO_L'
      Origin = 'PRD_PESO_L'
      Precision = 18
      Size = 3
    end
    object tbDadosPRD_PESO_B: TFMTBCDField
      FieldName = 'PRD_PESO_B'
      Origin = 'PRD_PESO_B'
      Precision = 18
      Size = 3
    end
    object tbDadosPRD_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'PRD_STATUS'
      Origin = 'PRD_STATUS'
      OnGetText = tbDadosPRD_STATUSGetText
    end
    object tbDadosPRD_QTDE: TBCDField
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      Precision = 18
    end
    object tbDadosPRD_QTDE_ATUAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_QTDE_ATUAL'
      Origin = 'PRD_QTDE_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000'
      Precision = 18
    end
    object tbDadosPRD_QTDE_INICIAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_QTDE_INICIAL'
      Origin = 'PRD_QTDE_INICIAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000'
      Precision = 18
    end
    object tbDadosPRD_QTDE_ENTRADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_QTDE_ENTRADA'
      Origin = 'PRD_QTDE_ENTRADA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000'
      Precision = 18
    end
    object tbDadosPRD_QTDE_SAIDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_QTDE_SAIDA'
      Origin = 'PRD_QTDE_SAIDA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000'
      Precision = 18
    end
    object tbDadosPRD_KIT: TBooleanField
      FieldName = 'PRD_KIT'
      Origin = 'PRD_KIT'
    end
    object tbDadosPRD_DESCRICAO_CURTA: TStringField
      FieldName = 'PRD_DESCRICAO_CURTA'
      Origin = 'PRD_DESCRICAO_CURTA'
      Size = 30
    end
    object tbDadosPRD_KIT_VALOR: TFMTBCDField
      FieldName = 'PRD_KIT_VALOR'
      Origin = 'PRD_KIT_VALOR'
      Precision = 18
    end
    object tbDadosPRD_CTRL_ESTQ: TStringField
      FieldName = 'PRD_CTRL_ESTQ'
      Origin = 'PRD_CTRL_ESTQ'
      FixedChar = True
      Size = 1
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 872
    Top = 304
  end
  object tbPesq: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 835
    Top = 417
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 867
    Top = 417
  end
  object tbFornecedor: TFDQuery
    AfterPost = tbFornecedorAfterPost
    BeforeDelete = tbFornecedorBeforeDelete
    IndexFieldNames = 'ID_PRODUTO'
    MasterSource = dsDados
    MasterFields = 'ID'
    DetailFields = 'ID_PRODUTO'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   ID_PRODUTO,'
      '   ID_FORNECEDOR,'
      
        '   (SELECT FOR_CODIGO       FROM C000305 WHERE ID = ID_FORNECEDO' +
        'R),'
      
        '   (SELECT FOR_RAZAO_SOCIAL FROM C000305 WHERE ID = ID_FORNECEDO' +
        'R),'
      
        '   (SELECT FOR_UF           FROM C000305 WHERE ID = ID_FORNECEDO' +
        'R),'
      
        '   (SELECT FOR_CNPJ         FROM C000305 WHERE ID = ID_FORNECEDO' +
        'R)'
      'FROM'
      '   C000306'
      'WHERE'
      '   ID_PRODUTO = :ID'
      'ORDER BY'
      '   ID ASC')
    Left = 839
    Top = 373
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tbFornecedorID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbFornecedorID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object tbFornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object tbFornecedorFOR_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object tbFornecedorFOR_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_RAZAO_SOCIAL'
      Origin = 'FOR_RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object tbFornecedorFOR_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_UF'
      Origin = 'FOR_UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object tbFornecedorFOR_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = tbFornecedorFOR_CNPJGetText
      Size = 15
    end
  end
  object dsFornecedor: TJvDataSource
    DataSet = tbFornecedor
    Left = 869
    Top = 374
  end
  object PopOutros: TPopupMenu
    Left = 849
    Top = 206
    object IncluirFornecedor1: TMenuItem
      Action = actCadFornecedor
    end
    object RemoverFornecedor1: TMenuItem
      Action = actExcFornecedor
    end
  end
  object QueryKit: TFDQuery
    AfterInsert = QueryKitAfterInsert
    AfterEdit = QueryKitAfterEdit
    BeforePost = QueryKitBeforePost
    BeforeDelete = QueryKitBeforeDelete
    AfterDelete = QueryKitAfterDelete
    IndexFieldNames = 'ID_C000405'
    MasterSource = dsDados
    MasterFields = 'ID'
    DetailFields = 'ID_C000405'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT '
      '   T1.*,'
      
        '   (SELECT PRD_DESCRICAO FROM C000405 WHERE ID = T1.PRD_ID) AS P' +
        'RD_DESCRICAO'
      'FROM '
      '   C000405_KIT AS T1'
      'WHERE '
      '   ID_C000405 = :ID '
      'ORDER BY '
      '   PRD_DESCRICAO')
    Left = 39
    Top = 441
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QueryKitID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryKitID_C000405: TIntegerField
      FieldName = 'ID_C000405'
      Origin = 'ID_C000405'
    end
    object QueryKitPRD_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
    end
    object QueryKitPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object QueryKitPRD_UNIDADE: TStringField
      Alignment = taCenter
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      ProviderFlags = []
      Size = 5
    end
    object QueryKitPRD_VALOR: TBCDField
      DefaultExpression = '0.00'
      FieldName = 'PRD_VALOR'
      Origin = 'PRD_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryKitPRD_QTDE: TBCDField
      DefaultExpression = '1'
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      DisplayFormat = ',0.00'
      Precision = 18
    end
  end
  object dsQueryKit: TDataSource
    DataSet = QueryKit
    Left = 71
    Top = 441
  end
  object OpenImg: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Title = 'Selecione o Logo.'
    Left = 818
    Top = 199
  end
end
