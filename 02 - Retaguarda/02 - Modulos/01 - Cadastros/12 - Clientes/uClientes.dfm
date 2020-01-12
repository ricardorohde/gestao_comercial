object FrClientes: TFrClientes
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastros de Clientes'
  ClientHeight = 590
  ClientWidth = 1126
  Color = clGray
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopCnt
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 1122
    Height = 44
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    AutoStyle = False
    Images = FrPrincipal.Icones20x20
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
      RzSpacer3
      btnOK
      RzSpacer5
      RzToolButton1
      RzSpacer6
      btnError
      RzSpacer4
      btnExit)
    object btnNew: TRzToolButton
      AlignWithMargins = True
      Left = 4
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      DisabledIndex = 9
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      AlignWithMargins = True
      Left = 102
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      DisabledIndex = 13
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      AlignWithMargins = True
      Left = 200
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      DisabledIndex = 7
      GradientColorStyle = gcsCustom
      DropDownMenu = PopExcluir
      ImageIndex = 7
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      ToolStyle = tsDropDown
      VisualStyle = vsWinXP
      Caption = 'Excluir'
    end
    object btnOK: TRzToolButton
      AlignWithMargins = True
      Left = 298
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      DisabledIndex = 15
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actGravar
    end
    object btnError: TRzToolButton
      AlignWithMargins = True
      Left = 494
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      DisabledIndex = 4
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      AlignWithMargins = True
      Left = 592
      Top = 2
      Width = 80
      Height = 40
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
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
      Left = 94
      Top = 10
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 192
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 290
      Top = 10
      Grooved = True
    end
    object RzSpacer4: TRzSpacer
      Left = 584
      Top = 10
      Grooved = True
    end
    object RzSpacer5: TRzSpacer
      Left = 388
      Top = 10
      Grooved = True
    end
    object RzSpacer6: TRzSpacer
      Left = 486
      Top = 10
      Grooved = True
    end
    object RzToolButton1: TRzToolButton
      Left = 396
      Top = 2
      Width = 90
      Height = 40
      DisabledIndex = 8
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actSelecionar
      ParentShowHint = False
      ShowHint = False
    end
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 84
    Width = 1122
    Height = 504
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
      Width = 1122
      Height = 504
      Margins.Top = 1
      Margins.Bottom = 1
      ActivePage = tabPrincipal
      Align = alClient
      TabOrder = 0
      OnChanging = pgControlChanging
      object tabPrincipal: TTabSheet
        Caption = 'Lista de Clientes'
        object JvDBGrid1: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1114
          Height = 476
          Align = alClient
          DataSource = dsDados
          DrawingStyle = gdsClassic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = actAlterarExecute
          AlternateRowColor = 15658734
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
              Width = 65
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
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_RAZAO_SOCIAL'
              Title.Caption = 'Razao Social / Nome'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 369
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
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_IESTADUAL'
              Title.Caption = 'Insc. Estadual / Rg.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 89
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
              FieldName = 'CLI_FONE_FIXO'
              Title.Caption = 'Telefone'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_EMAIL'
              Title.Caption = 'E-mail'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 221
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_STATUS'
              Title.Alignment = taCenter
              Title.Caption = 'Ativo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 38
              Visible = True
            end>
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        OnShow = tabDetalhesShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pnFundo: TRzPanel
          Left = 0
          Top = 0
          Width = 1114
          Height = 476
          Align = alClient
          BorderOuter = fsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label9: TLabel
            Left = 6
            Top = 84
            Width = 95
            Height = 15
            Cursor = crHandPoint
            Caption = 'CEP (Autom'#225'tico)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 119
            Top = 84
            Width = 49
            Height = 15
            Caption = 'Endere'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 580
            Top = 44
            Width = 80
            Height = 15
            Caption = 'Insc. Municipal'
            FocusControl = eMunicipal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 693
            Top = 42
            Width = 51
            Height = 15
            Caption = 'LogoTipo'
            FocusControl = eMunicipal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 6
            Top = 124
            Width = 31
            Height = 15
            Caption = 'Bairro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 235
            Top = 124
            Width = 37
            Height = 15
            Caption = 'Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 493
            Top = 84
            Width = 14
            Height = 15
            Caption = 'N'#186
            FocusControl = eNumero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 540
            Top = 84
            Width = 77
            Height = 15
            Caption = 'Complemento'
            FocusControl = eComplemento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lRazao: TLabel
            Left = 226
            Top = 4
            Width = 65
            Height = 15
            Caption = 'Raz'#227'o Social'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 693
            Top = 4
            Width = 21
            Height = 15
            Caption = 'Pais'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
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
          object Label16: TLabel
            Left = 95
            Top = 4
            Width = 74
            Height = 15
            Caption = 'Data Cadastro'
            FocusControl = eDataCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lCnpj: TLabel
            Left = 340
            Top = 44
            Width = 25
            Height = 15
            Caption = 'Cnpj'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lIEstadual: TLabel
            Left = 467
            Top = 44
            Width = 71
            Height = 15
            Caption = 'Insc. Estadual'
            FocusControl = eInscEstadual
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 799
            Top = 4
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
            FocusControl = eCodigoPais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lFantasia: TLabel
            Left = 6
            Top = 44
            Width = 79
            Height = 15
            Caption = 'Nome Fantasia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 6
            Top = 244
            Width = 67
            Height = 15
            Caption = 'Observa'#231#245'es'
            FocusControl = eSite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 693
            Top = 277
            Width = 115
            Height = 15
            Caption = 'Contribuinte do ICMS'
            FocusControl = eFacebook
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 693
            Top = 317
            Width = 32
            Height = 15
            Caption = 'Status'
            FocusControl = eFacebook
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 110
            Top = 164
            Width = 62
            Height = 15
            Caption = 'Fone M'#243'vel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 235
            Top = 164
            Width = 31
            Height = 15
            Caption = 'Skype'
            FocusControl = eSkype
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 622
            Top = 124
            Width = 64
            Height = 15
            Caption = 'UF - C'#243'digo'
            FocusControl = eUf
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 6
            Top = 164
            Width = 50
            Height = 15
            Caption = 'Fone Fixo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 297
            Top = 204
            Width = 34
            Height = 15
            Caption = 'E-mail'
            FocusControl = eEmail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 540
            Top = 124
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
          object Label34: TLabel
            Left = 460
            Top = 164
            Width = 51
            Height = 15
            Caption = 'Facebook'
            FocusControl = eFacebook
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 6
            Top = 204
            Width = 19
            Height = 15
            Caption = 'Site'
            FocusControl = eSite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 6
            Top = 311
            Width = 90
            Height = 15
            Caption = 'Outros Contatos'
            FocusControl = eFacebook
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object eSite: TDBEdit
            Left = 6
            Top = 221
            Width = 285
            Height = 21
            CharCase = ecLowerCase
            DataField = 'CLI_SITE'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 22
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eEmail: TDBEdit
            Left = 297
            Top = 221
            Width = 390
            Height = 21
            CharCase = ecLowerCase
            DataField = 'CLI_EMAIL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eSkype: TDBEdit
            Left = 235
            Top = 181
            Width = 219
            Height = 21
            CharCase = ecLowerCase
            DataField = 'CLI_SKYPE'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eFacebook: TDBEdit
            Left = 460
            Top = 181
            Width = 227
            Height = 21
            CharCase = ecLowerCase
            DataField = 'CLI_FACEBOOK'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object DBEdit3: TDBEdit
            Left = 656
            Top = 141
            Width = 31
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_CODIGO_UF'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object RzDBMemo1: TRzDBMemo
            Left = 6
            Top = 261
            Width = 681
            Height = 48
            DataField = 'CLI_OBSERVACAO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 24
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object Panel1: TPanel
            Left = 693
            Top = 58
            Width = 164
            Height = 213
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 27
            object Panel2: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 168
              Width = 156
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitWidth = 195
              object BtnLogomarca: TSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 37
                Height = 35
                Cursor = crHandPoint
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
                ExplicitLeft = 4
                ExplicitTop = 4
                ExplicitHeight = 33
              end
              object SpeedButton1: TSpeedButton
                AlignWithMargins = True
                Left = 116
                Top = 3
                Width = 37
                Height = 35
                Cursor = crHandPoint
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
                ExplicitLeft = 12
                ExplicitTop = 8
                ExplicitHeight = 33
              end
            end
            object eLogo: TJvDBImage
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 156
              Height = 158
              Align = alClient
              BorderStyle = bsNone
              DataField = 'CLI_FOTO'
              DataSource = dsDados
              Stretch = True
              TabOrder = 1
              ShowNameIfEmpty = False
              ExplicitHeight = 150
            end
          end
          object DBEdit2: TDBEdit
            Left = 540
            Top = 141
            Width = 76
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_CODIGO_CIDADE'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eInscEstadual: TDBEdit
            Left = 467
            Top = 61
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_IESTADUAL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eMunicipal: TDBEdit
            Left = 580
            Top = 61
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_IMUNICIPAL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object ePais: TDBEdit
            Left = 693
            Top = 21
            Width = 100
            Height = 21
            Hint = 'Se n'#227'o informado, ser'#225' utilizado (Brasil)'
            CharCase = ecUpperCase
            DataField = 'CLI_PAIS'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eCodigoPais: TDBEdit
            Left = 799
            Top = 21
            Width = 58
            Height = 21
            Hint = 'Se n'#227'o informado, ser'#225' utilizado (1058)'
            CharCase = ecUpperCase
            DataField = 'CLI_CODIGO_PAIS'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eComplemento: TDBEdit
            Left = 540
            Top = 101
            Width = 147
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_COMPLEMENTO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eUf: TDBEdit
            Left = 622
            Top = 141
            Width = 28
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_UF'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eCep: TRzDBButtonEdit
            Left = 6
            Top = 101
            Width = 107
            Height = 21
            Hint = 
              'Informe o CEP e clique no bot'#227'o para o preenchimento autom'#225'tico,' +
              ' necess'#225'rio conex'#227'o com a internet.'#13#10'Voc'#234' poder'#225' efetuar a busca' +
              'r na base de dados local, mantendo a tecla (Ctrl) pressionada en' +
              'quanto efetua o clique no bot'#227'o.'
            DataSource = dsDados
            DataField = 'CLI_CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 9
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            TextHint = 'F2 - Buscar'
            TextHintVisibleOnFocus = True
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
            ButtonGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000848484FF8484
              84FF848484FF00000000848484FF848484FF848484FF4F4F4F99000000000000
              0000000000000000000000000000000000000000000000000000000000008484
              84FF000000000000000000000000848484FF00000000848484FFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000008484
              84FF000000000000000000000000848484FF00000000848484FFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000848484FF8484
              84FF848484FF00000000848484FF848484FF848484FF4F4F4F99B8824DFF4A34
              1F66B8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000B8824DFF4A34
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
            ButtonNumGlyphs = 1
            ButtonKind = bkCustom
            ButtonShortCut = 113
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = eCepButtonClick
          end
          object eNumero: TDBEdit
            Left = 493
            Top = 101
            Width = 41
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_NUMERO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eEndereco: TRzDBEdit
            Left = 119
            Top = 101
            Width = 368
            Height = 21
            DataSource = dsDados
            DataField = 'CLI_ENDERECO'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object RzDBComboBox1: TRzDBComboBox
            Left = 693
            Top = 334
            Width = 164
            Height = 21
            DataField = 'CLI_STATUS'
            DataSource = dsDados
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 26
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
            Items.Strings = (
              'Ativo'
              'Inativo')
            Values.Strings = (
              '1'
              '2')
          end
          object eFantasia: TRzDBEdit
            Left = 6
            Top = 61
            Width = 328
            Height = 21
            DataSource = dsDados
            DataField = 'CLI_NOME_FANTASIA'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eCnpj: TRzDBEdit
            Left = 340
            Top = 61
            Width = 121
            Height = 21
            DataSource = dsDados
            DataField = 'CLI_CNPJ'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = eCodigoEnter
            OnExit = eCnpjExit
          end
          object eContribICMS: TRzDBComboBox
            Left = 693
            Top = 294
            Width = 164
            Height = 21
            DataField = 'CLI_CONTRIB_ICMS'
            DataSource = dsDados
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 25
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
            Items.Strings = (
              'Contribuinte do ICMS'
              'Contribuinte Isento'
              'N'#227'o Contribuinte')
            Values.Strings = (
              '1'
              '2'
              '9')
          end
          object eRazao: TRzDBEdit
            Left = 226
            Top = 21
            Width = 461
            Height = 21
            DataSource = dsDados
            DataField = 'CLI_RAZAO_SOCIAL'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eFoneFixo: TRzDBEdit
            Left = 6
            Top = 181
            Width = 98
            Height = 21
            DataSource = dsDados
            DataField = 'CLI_FONE_FIXO'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 18
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eFoneMovel: TRzDBEdit
            Left = 110
            Top = 181
            Width = 119
            Height = 21
            DataSource = dsDados
            DataField = 'CLI_FONE_MOVEL'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 14
            ParentFont = False
            TabOrder = 19
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eBairro: TRzDBEdit
            Left = 6
            Top = 141
            Width = 223
            Height = 21
            DataSource = dsDados
            DataField = 'CLI_BAIRRO'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eCidade: TRzDBEdit
            Left = 235
            Top = 141
            Width = 299
            Height = 21
            DataSource = dsDados
            DataField = 'CLI_CIDADE'
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eDataCadastro: TDBEdit
            Left = 95
            Top = 21
            Width = 125
            Height = 21
            Hint = 
              'significa que nenhum lan'#231'amento poder'#225' ser feito com data ou ven' +
              'cimento antes dessa Data Base.'
            CharCase = ecUpperCase
            DataField = 'CLI_DATA_REG'
            DataSource = dsDados
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object eCodigo: TDBEdit
            Left = 6
            Top = 21
            Width = 83
            Height = 21
            Hint = 
              'C'#243'digo da empresa ou filial (c'#243'digo 1 sempre ser'#225' empresa matriz' +
              ')'
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'CLI_CODIGO'
            DataSource = dsDados
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnEnter = eCodigoEnter
            OnExit = eCodigoExit
          end
          object GridCont: TJvDBGrid
            Left = 6
            Top = 328
            Width = 681
            Height = 145
            DataSource = dsQueryCnt
            DrawingStyle = gdsClassic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection]
            ParentFont = False
            TabOrder = 28
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEnter = GridContEnter
            OnExit = GridContExit
            AlternateRowColor = 15658734
            PostOnEnterKey = True
            AutoSizeColumns = True
            AutoSizeColumnIndex = 0
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 18
            Columns = <
              item
                Expanded = False
                FieldName = 'CNT_NOME'
                Title.Caption = 'Nome Completo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 231
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNT_FONE_FIXO'
                Title.Caption = 'Fone Fixo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNT_FONE_MOVEL'
                Title.Caption = 'Telefone'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNT_EMAIL'
                Title.Caption = 'E-mail'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 255
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
    Width = 1122
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
    object Label26: TLabel
      Left = 41
      Top = 3
      Width = 184
      Height = 26
      Caption = 'Cadastros de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      AlignWithMargins = True
      Left = 254
      Top = 1
      Width = 856
      Height = 30
      Caption = 
        'Formul'#225'rio respons'#225'vel por permitir o cadastro e manuten'#231#227'o dos ' +
        'cadastro dos clientes, nele '#233' poss'#237'vel cadastrar, alterar, exclu' +
        'ir  o cliente e tamb'#233'm seus contatos.'
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
  object SearchCep: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    TimeOut = 10000
    WebService = wsViaCep
    PesquisarIBGE = True
    Left = 778
    Top = 190
  end
  object eChecaDoc: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 812
    Top = 190
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 847
    Top = 190
  end
  object tbDados: TFDQuery
    AfterInsert = tbDadosAfterInsert
    BeforePost = tbDadosBeforePost
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   *'
      'FROM'
      '   C000307'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   CLI_RAZAO_SOCIAL ASC')
    Left = 711
    Top = 190
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
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
    object tbDadosCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosCLI_DATA_REG: TSQLTimeStampField
      FieldName = 'CLI_DATA_REG'
      Origin = 'CLI_DATA_REG'
    end
    object tbDadosCLI_RAZAO_SOCIAL: TStringField
      FieldName = 'CLI_RAZAO_SOCIAL'
      Origin = 'CLI_RAZAO_SOCIAL'
      Required = True
      Size = 120
    end
    object tbDadosCLI_NOME_FANTASIA: TStringField
      FieldName = 'CLI_NOME_FANTASIA'
      Origin = 'CLI_NOME_FANTASIA'
      Size = 120
    end
    object tbDadosCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
      Required = True
      OnGetText = tbDadosCLI_CNPJGetText
      Size = 15
    end
    object tbDadosCLI_IESTADUAL: TStringField
      FieldName = 'CLI_IESTADUAL'
      Origin = 'CLI_IESTADUAL'
      Size = 15
    end
    object tbDadosCLI_IMUNICIPAL: TStringField
      FieldName = 'CLI_IMUNICIPAL'
      Origin = 'CLI_IMUNICIPAL'
      Size = 15
    end
    object tbDadosCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      Required = True
      EditMask = '!99999-999;0;_'
      Size = 10
    end
    object tbDadosCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      Required = True
      Size = 120
    end
    object tbDadosCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
    end
    object tbDadosCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      Size = 60
    end
    object tbDadosCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Required = True
      Size = 60
    end
    object tbDadosCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Required = True
      Size = 60
    end
    object tbDadosCLI_CODIGO_CIDADE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CLI_CODIGO_CIDADE'
      Origin = 'CLI_CODIGO_CIDADE'
    end
    object tbDadosCLI_UF: TStringField
      Alignment = taCenter
      FieldName = 'CLI_UF'
      Origin = 'CLI_UF'
      FixedChar = True
      Size = 2
    end
    object tbDadosCLI_CODIGO_UF: TIntegerField
      Alignment = taCenter
      FieldName = 'CLI_CODIGO_UF'
      Origin = 'CLI_CODIGO_UF'
    end
    object tbDadosCLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      Origin = 'CLI_PAIS'
      Size = 35
    end
    object tbDadosCLI_CODIGO_PAIS: TIntegerField
      FieldName = 'CLI_CODIGO_PAIS'
      Origin = 'CLI_CODIGO_PAIS'
    end
    object tbDadosCLI_FONE_FIXO: TStringField
      FieldName = 'CLI_FONE_FIXO'
      Origin = 'CLI_FONE_FIXO'
      EditMask = '!\(99\)9999\-9999;0;'
      Size = 12
    end
    object tbDadosCLI_FONE_MOVEL: TStringField
      FieldName = 'CLI_FONE_MOVEL'
      Origin = 'CLI_FONE_MOVEL'
      EditMask = '!\(99\)99999\-9999;0;'
      Size = 13
    end
    object tbDadosCLI_SKYPE: TStringField
      FieldName = 'CLI_SKYPE'
      Origin = 'CLI_SKYPE'
      Size = 60
    end
    object tbDadosCLI_FACEBOOK: TStringField
      FieldName = 'CLI_FACEBOOK'
      Origin = 'CLI_FACEBOOK'
      Size = 60
    end
    object tbDadosCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 60
    end
    object tbDadosCLI_SITE: TStringField
      FieldName = 'CLI_SITE'
      Origin = 'CLI_SITE'
      Size = 60
    end
    object tbDadosCLI_TIPO_PESSOA: TIntegerField
      FieldName = 'CLI_TIPO_PESSOA'
      Origin = 'CLI_TIPO_PESSOA'
      OnChange = tbDadosCLI_TIPO_PESSOAChange
    end
    object tbDadosCLI_CONTRIB_ICMS: TIntegerField
      FieldName = 'CLI_CONTRIB_ICMS'
      Origin = 'CLI_CONTRIB_ICMS'
    end
    object tbDadosCLI_OBSERVACAO: TStringField
      FieldName = 'CLI_OBSERVACAO'
      Origin = 'CLI_OBSERVACAO'
      Size = 600
    end
    object tbDadosCLI_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'CLI_STATUS'
      Origin = 'CLI_STATUS'
      OnGetText = tbDadosCLI_STATUSGetText
    end
    object tbDadosCLI_FOTO: TBlobField
      FieldName = 'CLI_FOTO'
      Origin = 'CLI_FOTO'
    end
  end
  object SqlAux: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 711
    Top = 222
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 743
    Top = 223
    StyleName = 'Platform Default'
    object actCadastrar: TAction
      Caption = 'Cadastrar'
      ImageIndex = 9
      OnExecute = actCadastrarExecute
      OnUpdate = actCadastrarUpdate
    end
    object actAlterar: TAction
      Caption = 'Alterar'
      ImageIndex = 13
      OnExecute = actAlterarExecute
      OnUpdate = actAlterarUpdate
    end
    object actExcluir: TAction
      Caption = 'Cadastro do Cliente'
      ImageIndex = 7
      OnExecute = actExcluirExecute
      OnUpdate = actAlterarUpdate
    end
    object actGravar: TAction
      Caption = 'Gravar'
      ImageIndex = 15
      OnExecute = actGravarExecute
      OnUpdate = actGravarUpdate
    end
    object actSelecionar: TAction
      Caption = 'Selecionar'
      ImageIndex = 8
      OnExecute = actSelecionarExecute
      OnUpdate = actSelecionarUpdate
    end
    object actCancelar: TAction
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
    object actContExcluir: TAction
      Category = 'Contatos'
      Caption = 'Cadastro do Contato'
      OnExecute = actContExcluirExecute
      OnUpdate = actContExcluirUpdate
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 743
    Top = 190
  end
  object QueryCnt: TFDQuery
    BeforeDelete = QueryCntBeforeDelete
    IndexFieldNames = 'ID_C000307'
    MasterSource = dsDados
    MasterFields = 'ID'
    DetailFields = 'ID_C000307'
    Connection = FrModuloRet.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM C000307_CNT WHERE ID_C000307 = :ID')
    Left = 366
    Top = 484
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QueryCntID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCntID_C000307: TIntegerField
      FieldName = 'ID_C000307'
      Origin = 'ID_C000307'
    end
    object QueryCntCNT_NOME: TStringField
      FieldName = 'CNT_NOME'
      Origin = 'CNT_NOME'
      OnSetText = QueryCntCNT_NOMESetText
      Size = 60
    end
    object QueryCntCNT_EMAIL: TStringField
      FieldName = 'CNT_EMAIL'
      Origin = 'CNT_EMAIL'
      OnSetText = QueryCntCNT_EMAILSetText
      Size = 60
    end
    object QueryCntCNT_FONE_FIXO: TStringField
      FieldName = 'CNT_FONE_FIXO'
      Origin = 'CNT_FONE_FIXO'
      EditMask = '!\(99\)9999\-9999;0;_'
      Size = 15
    end
    object QueryCntCNT_FONE_MOVEL: TStringField
      FieldName = 'CNT_FONE_MOVEL'
      Origin = 'CNT_FONE_MOVEL'
      EditMask = '!\(99\)99999\-9999;0;_'
      Size = 15
    end
    object QueryCntCNT_ENDERECO: TStringField
      FieldName = 'CNT_ENDERECO'
      Origin = 'CNT_ENDERECO'
      Size = 80
    end
    object QueryCntCNT_CEP: TStringField
      FieldName = 'CNT_CEP'
      Origin = 'CNT_CEP'
      EditMask = '!99999-000;0;_'
      Size = 10
    end
    object QueryCntCNT_BAIRRO: TStringField
      FieldName = 'CNT_BAIRRO'
      Origin = 'CNT_BAIRRO'
      Size = 60
    end
    object QueryCntCNT_CIDADE: TStringField
      FieldName = 'CNT_CIDADE'
      Origin = 'CNT_CIDADE'
      Size = 60
    end
    object QueryCntCNT_UF: TStringField
      Alignment = taCenter
      FieldName = 'CNT_UF'
      Origin = 'CNT_UF'
      FixedChar = True
      Size = 2
    end
    object QueryCntCNT_PARENTENSCO: TStringField
      FieldName = 'CNT_PARENTENSCO'
      Origin = 'CNT_PARENTENSCO'
      FixedChar = True
      Size = 15
    end
  end
  object dsQueryCnt: TDataSource
    DataSet = QueryCnt
    Left = 398
    Top = 484
  end
  object PopCnt: TPopupMenu
    Left = 430
    Top = 484
    object ExcluirContatos1: TMenuItem
      Caption = 'Excluir Contatos'
      OnClick = ExcluirContatos1Click
    end
  end
  object PopExcluir: TPopupMenu
    Left = 774
    Top = 223
    object Excluir1: TMenuItem
      Action = actExcluir
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExcluirContato1: TMenuItem
      Action = actContExcluir
    end
  end
  object OpenImg: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Title = 'Selecione o Logo.'
    Left = 810
    Top = 223
  end
end
