object FrFuncionarios: TFrFuncionarios
  Left = 0
  Top = 0
  Margins.Left = 2
  Margins.Top = 2
  Margins.Right = 2
  Margins.Bottom = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 551
  ClientWidth = 1109
  Color = clBtnFace
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object pgControl: TJvPageControl
    AlignWithMargins = True
    Left = 3
    Top = 39
    Width = 1103
    Height = 461
    ActivePage = tabDetalhes
    Align = alClient
    TabOrder = 0
    OnChanging = pgControlChanging
    object tabPrincipal: TTabSheet
      Caption = 'Principal'
      object JvDBGrid1: TJvDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1089
        Height = 426
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsDados
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Calibri'
        TitleFont.Style = [fsBold]
        OnDblClick = actAlterarExecute
        AutoAppend = False
        ScrollBars = ssVertical
        ShowCellHint = True
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
            FieldName = 'FUN_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUN_DATA_REG'
            Title.Caption = 'Modifica'#231#227'o'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUN_NOME'
            Title.Caption = 'Nome Completo'
            Width = 314
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUN_DATA_NASC'
            Title.Caption = 'Data Nasc.'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUN_FONE_MOVEL'
            Title.Caption = 'Celular'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUN_EMAIL'
            Title.Caption = 'E-mail'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUN_BAIRRO'
            Title.Caption = 'Bairro'
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUN_STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Ativo'
            Width = 34
            Visible = True
          end>
        Delphi2010OptionsMigrated = True
      end
    end
    object tabDetalhes: TTabSheet
      Caption = 'Detalhes'
      ImageIndex = 1
      object Label15: TLabel
        Left = 6
        Top = 4
        Width = 37
        Height = 14
        Caption = 'C'#243'digo'
        FocusControl = eNome
      end
      object Label16: TLabel
        Left = 95
        Top = 4
        Width = 77
        Height = 14
        Caption = 'Data Cadastro'
        FocusControl = eDataCadastro
      end
      object Label2: TLabel
        Left = 226
        Top = 4
        Width = 87
        Height = 14
        Caption = 'Nome Completo'
        FocusControl = eNome
      end
      object Label30: TLabel
        Left = 580
        Top = 45
        Width = 75
        Height = 14
        Caption = 'Data de Nasc.'
      end
      object Label48: TLabel
        Left = 6
        Top = 45
        Width = 43
        Height = 14
        Caption = 'Apelido'
        FocusControl = eApelido
      end
      object Label19: TLabel
        Left = 340
        Top = 45
        Width = 19
        Height = 14
        Caption = 'Cpf.'
        FocusControl = eCpf
      end
      object Label1: TLabel
        Left = 467
        Top = 45
        Width = 16
        Height = 14
        Caption = 'Rg.'
        FocusControl = eRg
      end
      object Label9: TLabel
        Left = 6
        Top = 86
        Width = 90
        Height = 14
        Cursor = crHandPoint
        Caption = 'CEP (Autom'#225'tico)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 119
        Top = 86
        Width = 50
        Height = 14
        Caption = 'Endere'#231'o'
        FocusControl = eEndereco
      end
      object Label33: TLabel
        Left = 493
        Top = 86
        Width = 13
        Height = 14
        Caption = 'N'#186
        FocusControl = eNumero
      end
      object Label25: TLabel
        Left = 540
        Top = 86
        Width = 76
        Height = 14
        Caption = 'Complemento'
        FocusControl = eComplemento
      end
      object Label8: TLabel
        Left = 6
        Top = 127
        Width = 33
        Height = 14
        Caption = 'Bairro'
        FocusControl = eBairro
      end
      object Label6: TLabel
        Left = 235
        Top = 127
        Width = 38
        Height = 14
        Caption = 'Cidade'
        FocusControl = eCidade
      end
      object Label41: TLabel
        Left = 540
        Top = 127
        Width = 37
        Height = 14
        Caption = 'C'#243'digo'
        FocusControl = eCidade
      end
      object Label11: TLabel
        Left = 622
        Top = 127
        Width = 61
        Height = 14
        Caption = 'UF - C'#243'digo'
        FocusControl = eUf
      end
      object Label12: TLabel
        Left = 6
        Top = 168
        Width = 52
        Height = 14
        Caption = 'Fone Fixo'
        FocusControl = eFoneFixo
      end
      object Label3: TLabel
        Left = 110
        Top = 168
        Width = 39
        Height = 14
        Caption = 'Celular'
        FocusControl = eFoneMovel
      end
      object Label4: TLabel
        Left = 235
        Top = 168
        Width = 31
        Height = 14
        Caption = 'Skype'
        FocusControl = eSkype
      end
      object Label34: TLabel
        Left = 460
        Top = 168
        Width = 52
        Height = 14
        Caption = 'Facebook'
        FocusControl = eFacebook
      end
      object Label45: TLabel
        Left = 6
        Top = 209
        Width = 35
        Height = 14
        Caption = 'E-mail'
        FocusControl = eEmail
      end
      object Label7: TLabel
        Left = 402
        Top = 209
        Width = 114
        Height = 14
        Caption = 'Tabela de Descontos'
        FocusControl = eEmail
      end
      object Label10: TLabel
        Left = 6
        Top = 248
        Width = 91
        Height = 14
        Caption = 'Outro (Detalhes)'
        FocusControl = eOutrosDetalhes
      end
      object Label20: TLabel
        Left = 693
        Top = 167
        Width = 34
        Height = 14
        Caption = 'Status'
      end
      object eCodigo: TDBEdit
        Left = 6
        Top = 19
        Width = 83
        Height = 22
        Hint = 
          'C'#243'digo da empresa ou filial (c'#243'digo 1 sempre ser'#225' empresa matriz' +
          ')'
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'FUN_CODIGO'
        DataSource = dsDados
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eDataCadastro: TDBEdit
        Left = 95
        Top = 19
        Width = 125
        Height = 22
        Hint = 
          'significa que nenhum lan'#231'amento poder'#225' ser feito com data ou ven' +
          'cimento antes dessa Data Base.'
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'FUN_DATA_REG'
        DataSource = dsDados
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eNome: TDBEdit
        Left = 226
        Top = 19
        Width = 461
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_NOME'
        DataSource = dsDados
        TabOrder = 0
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eDataNasc: TJvDBDateEdit
        Left = 580
        Top = 60
        Width = 107
        Height = 22
        DataField = 'FUN_DATA_NASC'
        DataSource = dsDados
        ShowNullDate = False
        TabOrder = 6
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eApelido: TDBEdit
        Left = 6
        Top = 60
        Width = 328
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_APELIDO'
        DataSource = dsDados
        TabOrder = 3
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eCpf: TDBEdit
        Left = 340
        Top = 60
        Width = 121
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_CPF'
        DataSource = dsDados
        TabOrder = 4
        OnEnter = eCpfEnter
        OnExit = eCpfExit
      end
      object eRg: TDBEdit
        Left = 467
        Top = 60
        Width = 107
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_RG'
        DataSource = dsDados
        TabOrder = 5
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eEndereco: TDBEdit
        Left = 119
        Top = 101
        Width = 368
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_ENDERECO'
        DataSource = dsDados
        TabOrder = 8
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eCep: TRzDBButtonEdit
        Left = 6
        Top = 101
        Width = 107
        Height = 23
        Hint = 
          'Informe o CEP e clique no bot'#227'o para o preenchimento autom'#225'tico,' +
          ' necess'#225'rio conex'#227'o com a internet.'#13#10'Voc'#234' poder'#225' efetuar a busca' +
          'r na base de dados local, mantendo a tecla (Ctrl) pressionada en' +
          'quanto efetua o clique no bot'#227'o.'
        DataSource = dsDados
        DataField = 'FUN_CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
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
        AltBtnWidth = 15
        ButtonWidth = 18
        OnButtonClick = eCepButtonClick
      end
      object eNumero: TDBEdit
        Left = 493
        Top = 101
        Width = 41
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_NUMERO'
        DataSource = dsDados
        TabOrder = 9
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eComplemento: TDBEdit
        Left = 540
        Top = 101
        Width = 147
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_COMPLEMENTO'
        DataSource = dsDados
        TabOrder = 10
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eBairro: TDBEdit
        Left = 6
        Top = 142
        Width = 223
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_BAIRRO'
        DataSource = dsDados
        TabOrder = 11
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eCidade: TDBEdit
        Left = 235
        Top = 142
        Width = 299
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_CIDADE'
        DataSource = dsDados
        TabOrder = 12
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object DBEdit2: TDBEdit
        Left = 540
        Top = 142
        Width = 76
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_CODIGO_CIDADE'
        DataSource = dsDados
        TabOrder = 13
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eUf: TDBEdit
        Left = 622
        Top = 142
        Width = 28
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_UF'
        DataSource = dsDados
        TabOrder = 14
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object DBEdit3: TDBEdit
        Left = 656
        Top = 142
        Width = 31
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_CODIGO_UF'
        DataSource = dsDados
        TabOrder = 15
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eFoneFixo: TDBEdit
        Left = 6
        Top = 183
        Width = 98
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_FONE_FIXO'
        DataSource = dsDados
        TabOrder = 16
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eFoneMovel: TDBEdit
        Left = 110
        Top = 183
        Width = 119
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_FONE_MOVEL'
        DataSource = dsDados
        TabOrder = 17
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eSkype: TDBEdit
        Left = 235
        Top = 183
        Width = 219
        Height = 22
        CharCase = ecLowerCase
        DataField = 'FUN_SKYPE'
        DataSource = dsDados
        TabOrder = 18
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eFacebook: TDBEdit
        Left = 460
        Top = 183
        Width = 227
        Height = 22
        CharCase = ecLowerCase
        DataField = 'FUN_FACEBOOK'
        DataSource = dsDados
        TabOrder = 19
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eEmail: TDBEdit
        Left = 6
        Top = 224
        Width = 390
        Height = 22
        CharCase = ecLowerCase
        DataField = 'FUN_EMAIL'
        DataSource = dsDados
        TabOrder = 20
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eTabPrecos: TJvDBLookupCombo
        Left = 402
        Top = 224
        Width = 285
        Height = 22
        DataField = 'ID_TABELA_DECONTO'
        DataSource = dsDados
        LookupField = 'ID'
        LookupDisplay = 'CONCATENATION'
        LookupSource = dsDesconto
        TabOrder = 21
      end
      object eOutrosDetalhes: TDBEdit
        Left = 6
        Top = 264
        Width = 681
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FUN_OUTROS_DETALHES'
        DataSource = dsDados
        Enabled = False
        TabOrder = 22
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object RzComboBox1: TRzComboBox
        Left = 693
        Top = 183
        Width = 179
        Height = 22
        Style = csDropDownList
        TabOrder = 23
        Items.Strings = (
          'Ativo'
          'Inativo')
        Values.Strings = (
          '1'
          '2')
      end
      object RzGroupBox1: TRzGroupBox
        Left = 693
        Top = 18
        Width = 181
        Height = 146
        Caption = ' Fun'#231#245'es espec'#237'ficas.'
        GroupStyle = gsUnderline
        TabOrder = 24
        object eVendedor: TDBCheckBox
          Left = 7
          Top = 21
          Width = 77
          Height = 17
          Caption = 'Vendedor'
          DataField = 'FUN_VENDEDOR'
          DataSource = dsDados
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '2'
          OnEnter = eCodigoEnter
          OnExit = eCodigoExit
        end
        object DBCheckBox1: TDBCheckBox
          Left = 7
          Top = 42
          Width = 77
          Height = 17
          Caption = 'Comprador'
          DataField = 'FUN_COMPRADOR'
          DataSource = dsDados
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '2'
          OnClick = eOutrosClick
          OnEnter = eCodigoEnter
          OnExit = eCodigoExit
        end
        object eOperador: TDBCheckBox
          Left = 7
          Top = 63
          Width = 119
          Height = 17
          Caption = 'Operador de Caixa'
          DataField = 'FUN_OPERADOR'
          DataSource = dsDados
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '2'
          OnEnter = eCodigoEnter
          OnExit = eCodigoExit
        end
        object eSupervisor: TDBCheckBox
          Left = 7
          Top = 84
          Width = 77
          Height = 17
          Caption = 'Supervisor'
          DataField = 'FUN_SUPERVISOR'
          DataSource = dsDados
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '2'
          OnEnter = eCodigoEnter
          OnExit = eCodigoExit
        end
        object eOutros: TDBCheckBox
          Left = 7
          Top = 105
          Width = 47
          Height = 17
          Caption = 'Outro'
          DataField = 'FUN_OUTROS'
          DataSource = dsDados
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '2'
          OnClick = eOutrosClick
          OnEnter = eCodigoEnter
          OnExit = eCodigoExit
        end
      end
    end
  end
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 3
    Top = 504
    Width = 1103
    Height = 44
    Margins.Top = 1
    Align = alBottom
    AutoStyle = False
    Images = FrPrincipal.sysIcones16
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
    TabOrder = 1
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
      btnError
      RzSpacer4
      btnExit)
    object btnNew: TRzToolButton
      Left = 4
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 35
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      Left = 112
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 37
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      Left = 220
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 39
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actExcluir
    end
    object btnOK: TRzToolButton
      Left = 328
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 41
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actGravar
    end
    object btnError: TRzToolButton
      Left = 436
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 43
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      Left = 544
      Top = 2
      Width = 80
      Height = 40
      DisabledIndex = 45
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actSair
    end
    object RzSpacer1: TRzSpacer
      Left = 104
      Top = 10
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 212
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 320
      Top = 10
    end
    object RzSpacer4: TRzSpacer
      Left = 536
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 428
      Top = 10
      Grooved = True
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 1105
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
    object Label13: TLabel
      AlignWithMargins = True
      Left = 42
      Top = 2
      Width = 216
      Height = 30
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Cadastro de Funcion'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 26
    end
    object Label14: TLabel
      AlignWithMargins = True
      Left = 271
      Top = 3
      Width = 606
      Height = 28
      Align = alLeft
      Caption = 
        'Formul'#225'rio para cadastro de funcion'#225'rios e usu'#225'rios do sistema, ' +
        'inclua, altere e exclua novos funcion'#225'rios e usu'#225'rios do sistema' +
        '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
      ExplicitHeight = 30
    end
    object Bevel3: TBevel
      AlignWithMargins = True
      Left = 263
      Top = 3
      Width = 2
      Height = 28
      Align = alLeft
    end
    object Image2: TImage
      AlignWithMargins = True
      Left = 3
      Top = 2
      Width = 32
      Height = 30
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000007
        614944415478DAC5977B50D4D715C7BFBFE7EEB2CB3E585EB2B02C607828A8B0
        40B41D6A9A3AD1EA0411B1694C27C998346AFCA7A649955687B125269D4C663A
        D3494C33D4A66A7CD54E3036D5A0938AEF000642AA02F2D887F25CD85D16F6F9
        7BF4B79B16A5A26043A6E7AFDF9EDFB9F77EEEB9DFDF397709FC9F8D98CA5955
        05926B36AF2528F26508621E08324442BCC883DFF67AED175DDF2AC0B675660D
        CB91B5244916C56955CA28390B511431EAF5F343AE719F007EADCC197D6E577D
        BDFF5B01D8B1A6E8EFD2A28FA5C6EB150439F99DCBE3C3B0672CE40F84048220
        DFA9FEA8E155C92DCE1A40E5EAA21FD014F1719631218A24EE3D9D7EE7286892
        845615859E3E47800B72DB7F73BCE977B306B0B3ACF0CF7AADEA99789D9AFAEF
        408FD78FD14010A3A35E1862B5A02802D6BE9181EADAC6C4D9035853D46488D3
        99D54A79E4DCBD8110BCFE20FC210E1A5D14CAD715A3B1B10B8D97BB90961A83
        3EF728B4098A1A5E10FF4911D4D14DBB3FEDFB46003BD6145F4A8AD52C514AC2
        B30E8C40AD51C0941687ECF906A4A4E823316D377B71A5B10D72258B94243DA2
        550A8CB8C77CF65E87C88378664B755DEDFF0C50B9BA708FA4FC8DE167BD414D
        54543C3A2958121F8ED73520DD9800735E0648F2CEF0C161373EAD6FE65986B1
        703CFFA1D8EFA8DEF8FED5D0C301949AB76A558A6A91802C2327815AB9B26052
        F0F986EBA0690A4B0AB2EE9948104474DBFA11A351A1B1B53330E21A3BFBE2AE
        532B1E0AE057A5E61D6A956207C3D0AC768E8A78EA474B26DE85241D1CFDDB45
        54ACFA0E642C73CF44AD6D36B45CEB8239370359739371EC934BBE6030F0D8E6
        DD9F35CC08A06AE95239A71BBF6988D32693520118F278C4ADAFAE22887F7F8E
        FD83CEF0CEF0E4B2A23BA325A1BA3C5EB477F7413A1D142CCAC347274EA16C79
        315AAE5BB86E4B7FD5CB6F9CD93D23805FAE36EF957E3E678CD791E1345BFA46
        B0D06CC4CA55F991F7B7FA1C68BED61301E877B8F195B46397DB03BD3E063959
        99C8483345E2F61F3A22E4CC4D217D818070ADDDF6F6E6D7CFFC6246005B2B16
        2B14C1D03A8A249F1409C2208FA60CEA5885D1688A454E86016DDDBDE81F7062
        7DD9F770F8E3F358BEEC7118921225214E2E97070E1FE3529363E971AFCFD56D
        1BACDCB2FBCC7B33D6C0DDF6DECE276A3292E35E20080AF67E0762B5D1B8D53F
        8C1F3E6E46DDB916F1A7CFFF64CAB1078E480086587A60C8E970385CEB37BFF1
        D9E9870228DD7EA29466D9ED39FCC9470BE37AC9ACF439903134021C277D0537
        B0AC6411EAEA9BB171C3B398A25A63DFC123FC5C5322D5631D181E1BF7ADD8B4
        FB4CD38C00D6551D65392EFA084953CB4DA654451CEB86BAF700087707448183
        946BA90F1078BAB404076BCFA1BC7415626363264D26F03C6AF61D4249710E6C
        B7873C16DBC01E0960DB8C00CA769E3AA48C52ACCECDCB55D0D4E45640F8FAA0
        BA5E8D9C14050AF3D270F98B0E389CE378AABC1477A7E11FE7CEA3BBC786DCA5
        C5B83CCCA3C31D4080A0FC04490E492DB389E3B90FF6BDF0D60969557112C0EA
        CA132524CDD4151717CA699ABE97921B85E2762D98A10B20C500782E081202D2
        4C4698F317458AD357D7AEE36A5B276E26CC15FD0A2532534C44A25E0F39CBC2
        1F0C61D03922B6D9AC7E5EE0DB8241A16CFFC6DFDA2600CA779EFC8BC160586B
        4C35DE579413C60740065D50B6FC0C694603ECF6DE885B9B9088D34C8C68484A
        E60B73E6D134794F43952E57229ADADB425DB7EDE301915B74F0C5B7AD5F6760
        C749BB5C2E8B61289A9B6E7D466A7B5ACACD66BBDF655E7AEEC7F0FAFC088682
        78A77B04823C1A8BE72F988835A89290A88CC790D7019BE7D684FF6A475BA8E3
        B6BDC368912D20FEA37C5084EC410BB30CAD3225A85F91B696694C52D16CEB9B
        24257AA1D3EA304832B82A8F4159C9F7A57BC29DBAF0883603264D2A6E796EE3
        C648FB5D9910507BE19C77DCEFDF307DCA25DBF687260D88E0D53949FA9485F9
        73D9F022E1FB827FB00341772F1A075AA1D64761417AC6A471F703089BA4077C
        D9D559372380CAF72FEDD5C76B9E2E5A3C4F3ED58063F56FA138331DF13A1D92
        5473A064A2227E9D4C078D4C0D4FD08361FF48C417E083B08DDAE11CF3E054C3
        E7CE6901B6FFFE733D4773FD4FAC28A4E50A76CA980F4FFF1ACB0AF2A1512A91
        1FBF10B10AFD7DE71B0B8DE1726F037CC100FE7AFE2C372DC06BEF9E5FC7C8D8
        03D9F38CECFD62AE74FD09DFCDCD449CA48794E864A85855C4AF61D588969EC7
        43E37006DC5F67800BA0DBDD03572403575CD303ECB9B092A4E82DE403629CD4
        C582CC7475426E5AFAA4F91EA48176BB1DCD37DBCFCE4803D3D9B335AF95CA19
        D9E1F292A58ABBBBE3FD00C2023E7EF182D7E31FDF342B00526125367C50D99C
        3127797E5176F644290D1F47589403DE4158DCD689F02FBB6EF237AC568B47D5
        99353B00923DBFF7951442645A1F494E511664663353FDB109DF1B5B7B3AF96B
        168B4FE061DEFFD29B1DB30610B6F5353F4F9593EC270C4DA7CF37A529126262
        22BD20100C62D0E5C40D8BD52BA9BF2FC4892BC38B87C7CC2A40D8AAAAAAC81E
        A3AF8221990D8220140B02AF960A970724D1C285843F5A6FC90FD7EFDA3551F2
        FF054A670859C90503610000000049454E44AE426082}
      ExplicitHeight = 32
    end
  end
  object tbDados: TFDQuery
    BeforePost = tbDadosBeforePost
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   *'
      'FROM'
      '   C000301'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   FUN_NOME ASC')
    Left = 736
    Top = 230
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
    object tbDadosID_TABELA_DECONTO: TIntegerField
      FieldName = 'ID_TABELA_DECONTO'
      Origin = 'ID_TABELA_DECONTO'
    end
    object tbDadosFUN_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'FUN_CODIGO'
      Origin = 'FUN_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosFUN_DATA_REG: TSQLTimeStampField
      FieldName = 'FUN_DATA_REG'
      Origin = 'FUN_DATA_REG'
    end
    object tbDadosFUN_DATA_NASC: TDateField
      FieldName = 'FUN_DATA_NASC'
      Origin = 'FUN_DATA_NASC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbDadosFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      Size = 120
    end
    object tbDadosFUN_APELIDO: TStringField
      FieldName = 'FUN_APELIDO'
      Origin = 'FUN_APELIDO'
      Required = True
      Size = 80
    end
    object tbDadosFUN_CPF: TStringField
      FieldName = 'FUN_CPF'
      Origin = 'FUN_CPF'
      EditMask = '!999\.999\.999\-99;0;'
      Size = 13
    end
    object tbDadosFUN_RG: TStringField
      FieldName = 'FUN_RG'
      Origin = 'FUN_RG'
      Size = 13
    end
    object tbDadosFUN_ENDERECO: TStringField
      FieldName = 'FUN_ENDERECO'
      Origin = 'FUN_ENDERECO'
      Required = True
      Size = 120
    end
    object tbDadosFUN_NUMERO: TStringField
      FieldName = 'FUN_NUMERO'
      Origin = 'FUN_NUMERO'
      Size = 4
    end
    object tbDadosFUN_COMPLEMENTO: TStringField
      FieldName = 'FUN_COMPLEMENTO'
      Origin = 'FUN_COMPLEMENTO'
      Size = 60
    end
    object tbDadosFUN_CEP: TStringField
      FieldName = 'FUN_CEP'
      Origin = 'FUN_CEP'
      Required = True
      EditMask = '!99999\-999;0;'
      Size = 10
    end
    object tbDadosFUN_BAIRRO: TStringField
      FieldName = 'FUN_BAIRRO'
      Origin = 'FUN_BAIRRO'
      Required = True
      Size = 60
    end
    object tbDadosFUN_CIDADE: TStringField
      FieldName = 'FUN_CIDADE'
      Origin = 'FUN_CIDADE'
      Required = True
      Size = 60
    end
    object tbDadosFUN_CODIGO_CIDADE: TIntegerField
      FieldName = 'FUN_CODIGO_CIDADE'
      Origin = 'FUN_CODIGO_CIDADE'
    end
    object tbDadosFUN_UF: TStringField
      FieldName = 'FUN_UF'
      Origin = 'FUN_UF'
      FixedChar = True
      Size = 2
    end
    object tbDadosFUN_CODIGO_UF: TIntegerField
      FieldName = 'FUN_CODIGO_UF'
      Origin = 'FUN_CODIGO_UF'
    end
    object tbDadosFUN_FONE_FIXO: TStringField
      FieldName = 'FUN_FONE_FIXO'
      Origin = 'FUN_FONE_FIXO'
      EditMask = '!\(99\)9999\-9999;0;'
      Size = 12
    end
    object tbDadosFUN_FONE_MOVEL: TStringField
      FieldName = 'FUN_FONE_MOVEL'
      Origin = 'FUN_FONE_MOVEL'
      EditMask = '!\(99\)99999\-9999;0;'
      Size = 13
    end
    object tbDadosFUN_SKYPE: TStringField
      FieldName = 'FUN_SKYPE'
      Origin = 'FUN_SKYPE'
      Size = 60
    end
    object tbDadosFUN_FACEBOOK: TStringField
      FieldName = 'FUN_FACEBOOK'
      Origin = 'FUN_FACEBOOK'
      Size = 60
    end
    object tbDadosFUN_EMAIL: TStringField
      FieldName = 'FUN_EMAIL'
      Origin = 'FUN_EMAIL'
      Size = 60
    end
    object tbDadosFUN_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'FUN_STATUS'
      Origin = 'FUN_STATUS'
      OnGetText = tbDadosFUN_STATUSGetText
    end
    object tbDadosFUN_VENDEDOR: TIntegerField
      FieldName = 'FUN_VENDEDOR'
      Origin = 'FUN_VENDEDOR'
    end
    object tbDadosFUN_COMPRADOR: TIntegerField
      FieldName = 'FUN_COMPRADOR'
      Origin = 'FUN_COMPRADOR'
    end
    object tbDadosFUN_OPERADOR: TIntegerField
      FieldName = 'FUN_OPERADOR'
      Origin = 'FUN_OPERADOR'
    end
    object tbDadosFUN_SUPERVISOR: TIntegerField
      FieldName = 'FUN_SUPERVISOR'
      Origin = 'FUN_SUPERVISOR'
    end
    object tbDadosFUN_OUTROS: TIntegerField
      FieldName = 'FUN_OUTROS'
      Origin = 'FUN_OUTROS'
    end
    object tbDadosFUN_OUTROS_DETALHES: TStringField
      FieldName = 'FUN_OUTROS_DETALHES'
      Origin = 'FUN_OUTROS_DETALHES'
      Size = 120
    end
    object tbDadosFUN_LOGAR: TStringField
      FieldName = 'FUN_LOGAR'
      Origin = 'FUN_LOGAR'
      FixedChar = True
      Size = 1
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 768
    Top = 230
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.sysIcones16
    Left = 431
    Top = 263
    StyleName = 'Platform Default'
    object actCadastrar: TAction
      Caption = 'Cadastrar'
      ImageIndex = 34
      OnExecute = actCadastrarExecute
      OnUpdate = actCadastrarUpdate
    end
    object actAlterar: TAction
      Caption = 'Alterar'
      ImageIndex = 14
      OnExecute = actAlterarExecute
      OnUpdate = actAlterarUpdate
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 18
      OnExecute = actExcluirExecute
      OnUpdate = actAlterarUpdate
    end
    object actGravar: TAction
      Caption = 'Gravar'
      ImageIndex = 26
      OnExecute = actGravarExecute
      OnUpdate = actGravarUpdate
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 16
      OnExecute = actCancelarExecute
      OnUpdate = actGravarUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 24
      OnExecute = actSairExecute
      OnUpdate = actCadastrarUpdate
    end
  end
  object eChecaDoc: TACBrValidador
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 836
    Top = 230
  end
  object SearchCep: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    TimeOut = 10000
    WebService = wsViaCep
    PesquisarIBGE = True
    Left = 802
    Top = 230
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 871
    Top = 230
  end
  object tbDesconto: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   LPAD(DSC_CODIGO,3,0) || '#39' - '#39' || DSC_DESCRICAO'
      'FROM'
      '   C000302'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'AND'
      '   DSC_STATUS = 1'
      'ORDER BY'
      '   DSC_DESCRICAO ASC')
    Left = 735
    Top = 265
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsDesconto: TJvDataSource
    AutoEdit = False
    DataSet = tbDesconto
    Left = 767
    Top = 265
  end
end
