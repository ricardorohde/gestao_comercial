object FrEmpresaInicio: TFrEmpresaInicio
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro inicial das empresas.'
  ClientHeight = 385
  ClientWidth = 697
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 338
    Width = 693
    Height = 44
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Align = alBottom
    AutoStyle = False
    Images = sysIcones16
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
    ExplicitLeft = -412
    ExplicitTop = 418
    ExplicitWidth = 1105
    ToolbarControls = (
      btnNew
      RzSpacer1
      btnEdit
      RzSpacer2
      btnOK
      RzSpacer5
      btnError
      RzSpacer4
      btnExit)
    object btnNew: TRzToolButton
      Left = 4
      Top = 2
      Width = 90
      Height = 40
      DisabledIndex = 35
      ImageIndex = 13
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Caption = 'Cadastrar'
      OnClick = actCadastrarExecute
    end
    object btnEdit: TRzToolButton
      Left = 102
      Top = 2
      Width = 90
      Height = 40
      DisabledIndex = 37
      ImageIndex = 15
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Caption = 'Alterar'
      OnClick = actAlterarExecute
    end
    object btnOK: TRzToolButton
      Left = 200
      Top = 2
      Width = 90
      Height = 40
      DisabledIndex = 41
      ImageIndex = 3
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Caption = 'Gravar'
      OnClick = actGravarExecute
    end
    object btnError: TRzToolButton
      Left = 298
      Top = 2
      Width = 90
      Height = 40
      DisabledIndex = 43
      ImageIndex = 4
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Caption = 'Cancelar'
      OnClick = actCancelarExecute
    end
    object btnExit: TRzToolButton
      Left = 396
      Top = 2
      Width = 90
      Height = 40
      DisabledIndex = 45
      ImageIndex = 25
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Caption = 'Sair'
      OnClick = actSairExecute
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
    object RzSpacer4: TRzSpacer
      Left = 388
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 290
      Top = 10
      Grooved = True
    end
  end
  object pnFundo: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 693
    Height = 334
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    ExplicitLeft = 360
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 467
      Top = 45
      Width = 68
      Height = 13
      Caption = 'Insc. Estadual'
      FocusControl = eInscEstadual
    end
    object Label11: TLabel
      Left = 622
      Top = 127
      Width = 56
      Height = 13
      Caption = 'UF - C'#243'digo'
      FocusControl = eUf
    end
    object Label12: TLabel
      Left = 6
      Top = 168
      Width = 47
      Height = 13
      Caption = 'Fone Fixo'
      FocusControl = eFoneFixo
    end
    object Label13: TLabel
      Left = 580
      Top = 45
      Width = 70
      Height = 13
      Caption = 'Insc. Municipal'
      FocusControl = eMunicipal
    end
    object Label15: TLabel
      Left = 6
      Top = 4
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = eRazao
    end
    object Label16: TLabel
      Left = 95
      Top = 4
      Width = 70
      Height = 13
      Caption = 'Data Cadastro'
      FocusControl = eDataCadastro
    end
    object Label19: TLabel
      Left = 340
      Top = 45
      Width = 22
      Height = 13
      Caption = 'Cnpj'
      FocusControl = eCnpj
    end
    object Label2: TLabel
      Left = 226
      Top = 4
      Width = 60
      Height = 13
      Caption = 'Raz'#227'o Social'
      FocusControl = eRazao
    end
    object Label25: TLabel
      Left = 540
      Top = 86
      Width = 65
      Height = 13
      Caption = 'Complemento'
      FocusControl = eComplemento
    end
    object Label26: TLabel
      Left = 493
      Top = 253
      Width = 48
      Height = 13
      Caption = 'Segmento'
    end
    object Label27: TLabel
      Left = 297
      Top = 252
      Width = 90
      Height = 13
      Caption = 'Ramo de Atividade'
    end
    object Label3: TLabel
      Left = 110
      Top = 168
      Width = 50
      Height = 13
      Caption = 'WhatsApp'
      FocusControl = eWhatsApp
    end
    object Label30: TLabel
      Left = 580
      Top = 4
      Width = 69
      Height = 13
      Caption = 'Data Abertura'
    end
    object Label33: TLabel
      Left = 493
      Top = 86
      Width = 12
      Height = 13
      Caption = 'N'#186
      FocusControl = eNumero
    end
    object Label34: TLabel
      Left = 460
      Top = 168
      Width = 46
      Height = 13
      Caption = 'Facebook'
      FocusControl = eFacebook
    end
    object Label4: TLabel
      Left = 235
      Top = 168
      Width = 29
      Height = 13
      Caption = 'Skype'
      FocusControl = eSkype
    end
    object Label41: TLabel
      Left = 540
      Top = 127
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = eCidade
    end
    object Label44: TLabel
      Left = 6
      Top = 209
      Width = 77
      Height = 13
      Caption = 'Site da Empresa'
      FocusControl = eSite
    end
    object Label45: TLabel
      Left = 297
      Top = 209
      Width = 87
      Height = 13
      Caption = 'E-mail da Empresa'
      FocusControl = eEmail
    end
    object Label48: TLabel
      Left = 6
      Top = 45
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      FocusControl = eFantasia
    end
    object Label5: TLabel
      Left = 119
      Top = 86
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = eEndereco
    end
    object Label6: TLabel
      Left = 235
      Top = 127
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = eCidade
    end
    object Label8: TLabel
      Left = 6
      Top = 127
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = eBairro
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
    object DBEdit2: TDBEdit
      Left = 540
      Top = 142
      Width = 76
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_CODIGO_CIDADE'
      DataSource = dsDados
      TabOrder = 0
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object DBEdit3: TDBEdit
      Left = 656
      Top = 142
      Width = 31
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_CODIGO_UF'
      DataSource = dsDados
      TabOrder = 1
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eBairro: TDBEdit
      Left = 6
      Top = 142
      Width = 223
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_BAIRRO'
      DataSource = dsDados
      TabOrder = 2
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
      DataField = 'EMP_CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      ButtonWidth = 21
      OnButtonClick = eCepButtonClick
    end
    object eCidade: TDBEdit
      Left = 235
      Top = 142
      Width = 299
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_CIDADE'
      DataSource = dsDados
      TabOrder = 4
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eCnpj: TDBEdit
      Left = 340
      Top = 60
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_CNPJ'
      DataSource = dsDados
      MaxLength = 18
      TabOrder = 5
      OnEnter = eCodigoEnter
      OnExit = eCnpjExit
    end
    object eCodigo: TDBEdit
      Left = 6
      Top = 19
      Width = 83
      Height = 21
      Hint = 
        'C'#243'digo da empresa ou filial (c'#243'digo 1 sempre ser'#225' empresa matriz' +
        ')'
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'EMP_CODIGO'
      DataSource = dsDados
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eComplemento: TDBEdit
      Left = 540
      Top = 101
      Width = 147
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_COMPLEMENTO'
      DataSource = dsDados
      TabOrder = 7
    end
    object eDataCadastro: TDBEdit
      Left = 95
      Top = 19
      Width = 125
      Height = 21
      Hint = 
        'significa que nenhum lan'#231'amento poder'#225' ser feito com data ou ven' +
        'cimento antes dessa Data Base.'
      CharCase = ecUpperCase
      DataField = 'EMP_DATA_REG'
      DataSource = dsDados
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eEmail: TDBEdit
      Left = 297
      Top = 224
      Width = 390
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMP_EMAIL'
      DataSource = dsDados
      TabOrder = 9
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eEndereco: TDBEdit
      Left = 119
      Top = 101
      Width = 368
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_ENDERECO'
      DataSource = dsDados
      TabOrder = 10
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eFacebook: TDBEdit
      Left = 460
      Top = 183
      Width = 227
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMP_FACEBOOK'
      DataSource = dsDados
      TabOrder = 11
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eFantasia: TDBEdit
      Left = 6
      Top = 60
      Width = 328
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_FANTASIA'
      DataSource = dsDados
      TabOrder = 12
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eFoneFixo: TDBEdit
      Left = 6
      Top = 183
      Width = 98
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_FONEFIXO'
      DataSource = dsDados
      MaxLength = 13
      TabOrder = 13
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eInscEstadual: TDBEdit
      Left = 467
      Top = 60
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_IESTADUAL'
      DataSource = dsDados
      TabOrder = 14
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eMunicipal: TDBEdit
      Left = 580
      Top = 60
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_IMUNICIPAL'
      DataSource = dsDados
      TabOrder = 15
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eNumero: TDBEdit
      Left = 493
      Top = 101
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_NUMERO'
      DataSource = dsDados
      TabOrder = 16
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eRamoAtividade: TJvDBComboBox
      Left = 297
      Top = 268
      Width = 190
      Height = 21
      DataField = 'EMP_RAMO_ATIVIDADE'
      DataSource = dsDados
      Items.Strings = (
        'Ind'#250'strial'
        'Comercial'
        'Presta'#231#227'o de Servi'#231'os')
      TabOrder = 17
      Values.Strings = (
        '1'
        '2'
        '3')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eRazao: TDBEdit
      Left = 226
      Top = 19
      Width = 348
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_RAZAO'
      DataSource = dsDados
      TabOrder = 18
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eRegimeTrib: TRzDBRadioGroup
      Left = 6
      Top = 251
      Width = 285
      Height = 93
      DataField = 'EMP_CRT'
      DataSource = dsDados
      Items.Strings = (
        '1 - Simples Nacional'
        '2 - Simples Nacional Excesso da Receita'
        '3 - Regime Normal')
      Values.Strings = (
        '1'
        '2'
        '3')
      Caption = 'Regime Tribut'#225'rio'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -13
      CaptionFont.Name = 'Calibri'
      CaptionFont.Style = [fsBold]
      GroupStyle = gsUnderline
      SpaceEvenly = True
      StartYPos = 6
      TabOrder = 19
    end
    object eSegmento: TJvDBComboBox
      Left = 493
      Top = 268
      Width = 194
      Height = 21
      DataField = 'EMP_SEGMENTO'
      DataSource = dsDados
      Items.Strings = (
        'Alimenta'#231#227'o'
        'Combust'#237'veis'
        'Farmac'#234'utico'
        'Outros')
      TabOrder = 20
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eSite: TDBEdit
      Left = 6
      Top = 224
      Width = 285
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMP_SITE'
      DataSource = dsDados
      TabOrder = 21
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eSkype: TDBEdit
      Left = 235
      Top = 183
      Width = 219
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMP_SKYPE'
      DataSource = dsDados
      TabOrder = 22
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eUf: TDBEdit
      Left = 622
      Top = 142
      Width = 28
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_UF'
      DataSource = dsDados
      TabOrder = 23
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object eWhatsApp: TDBEdit
      Left = 110
      Top = 183
      Width = 119
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMP_FONEMOVEL'
      DataSource = dsDados
      MaxLength = 14
      TabOrder = 24
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 580
      Top = 19
      Width = 107
      Height = 23
      DataField = 'EMP_DATA_FUNDACAO'
      DataSource = dsDados
      ShowNullDate = False
      TabOrder = 25
      OnEnter = eCodigoEnter
      OnExit = eCodigoExit
    end
  end
  object tbDados: TFDQuery
    BeforePost = tbDadosBeforePost
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000501 AS T1 ORDER BY EMP_RAZAO ASC')
    Left = 305
    Top = 296
    object tbDadosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDadosEMP_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Required = True
      DisplayFormat = '000000'
    end
    object tbDadosEMP_DATA_REG: TSQLTimeStampField
      FieldName = 'EMP_DATA_REG'
      Origin = 'EMP_DATA_REG'
    end
    object tbDadosEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Origin = 'EMP_RAZAO'
      Required = True
      Size = 120
    end
    object tbDadosEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Origin = 'EMP_FANTASIA'
      Required = True
      Size = 80
    end
    object tbDadosEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      Origin = 'EMP_CNPJ'
      Required = True
      EditMask = '!99\.999\.999\/9999\-99;0;'
      Size = 15
    end
    object tbDadosEMP_IESTADUAL: TStringField
      FieldName = 'EMP_IESTADUAL'
      Origin = 'EMP_IESTADUAL'
      Size = 15
    end
    object tbDadosEMP_IMUNICIPAL: TStringField
      FieldName = 'EMP_IMUNICIPAL'
      Origin = 'EMP_IMUNICIPAL'
      Size = 15
    end
    object tbDadosEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      Origin = 'EMP_CEP'
      Required = True
      EditMask = '!99999\-999;0;'
      Size = 10
    end
    object tbDadosEMP_ENDERECO: TStringField
      FieldName = 'EMP_ENDERECO'
      Origin = 'EMP_ENDERECO'
      Required = True
      Size = 120
    end
    object tbDadosEMP_NUMERO: TIntegerField
      FieldName = 'EMP_NUMERO'
      Origin = 'EMP_NUMERO'
      DisplayFormat = '00000'
    end
    object tbDadosEMP_COMPLEMENTO: TStringField
      FieldName = 'EMP_COMPLEMENTO'
      Origin = 'EMP_COMPLEMENTO'
      Size = 60
    end
    object tbDadosEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      Origin = 'EMP_BAIRRO'
      Required = True
      Size = 60
    end
    object tbDadosEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      Origin = 'EMP_CIDADE'
      Required = True
      Size = 60
    end
    object tbDadosEMP_CODIGO_CIDADE: TIntegerField
      FieldName = 'EMP_CODIGO_CIDADE'
      Origin = 'EMP_CODIGO_CIDADE'
    end
    object tbDadosEMP_UF: TStringField
      FieldName = 'EMP_UF'
      Origin = 'EMP_UF'
      FixedChar = True
      Size = 2
    end
    object tbDadosEMP_CODIGO_UF: TIntegerField
      FieldName = 'EMP_CODIGO_UF'
      Origin = 'EMP_CODIGO_UF'
    end
    object tbDadosEMP_PAIS: TStringField
      FieldName = 'EMP_PAIS'
      Origin = 'EMP_PAIS'
      Size = 10
    end
    object tbDadosEMP_CODIGO_PAIS: TIntegerField
      FieldName = 'EMP_CODIGO_PAIS'
      Origin = 'EMP_CODIGO_PAIS'
    end
    object tbDadosEMP_FONEFIXO: TStringField
      FieldName = 'EMP_FONEFIXO'
      Origin = 'EMP_FONEFIXO'
      EditMask = '!\(99\)9999\-9999;0;'
      Size = 12
    end
    object tbDadosEMP_FONEMOVEL: TStringField
      FieldName = 'EMP_FONEMOVEL'
      Origin = 'EMP_FONEMOVEL'
      EditMask = '!\(99\)99999\-9999;0;'
      Size = 13
    end
    object tbDadosEMP_SKYPE: TStringField
      FieldName = 'EMP_SKYPE'
      Origin = 'EMP_SKYPE'
      Size = 60
    end
    object tbDadosEMP_FACEBOOK: TStringField
      FieldName = 'EMP_FACEBOOK'
      Origin = 'EMP_FACEBOOK'
      Size = 60
    end
    object tbDadosEMP_EMAIL: TStringField
      FieldName = 'EMP_EMAIL'
      Origin = 'EMP_EMAIL'
      Size = 60
    end
    object tbDadosEMP_SITE: TStringField
      FieldName = 'EMP_SITE'
      Origin = 'EMP_SITE'
      Size = 60
    end
    object tbDadosEMP_RESP_NOME: TStringField
      FieldName = 'EMP_RESP_NOME'
      Origin = 'EMP_RESP_NOME'
      Size = 120
    end
    object tbDadosEMP_RESP_CPF: TStringField
      FieldName = 'EMP_RESP_CPF'
      Origin = 'EMP_RESP_CPF'
      EditMask = '!999\.999\.999\-99;0;'
      Size = 13
    end
    object tbDadosEMP_RESP_RG: TStringField
      FieldName = 'EMP_RESP_RG'
      Origin = 'EMP_RESP_RG'
      Size = 13
    end
    object tbDadosEMP_RESP_FONEMOVEL: TStringField
      FieldName = 'EMP_RESP_FONEMOVEL'
      Origin = 'EMP_RESP_FONEMOVEL'
      EditMask = '!\(99\)99999\-9999;0;'
      Size = 13
    end
    object tbDadosEMP_RESP_DATANASC: TDateField
      FieldName = 'EMP_RESP_DATANASC'
      Origin = 'EMP_RESP_DATANASC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbDadosEMP_RESP_EMAIL: TStringField
      FieldName = 'EMP_RESP_EMAIL'
      Origin = 'EMP_RESP_EMAIL'
      Size = 60
    end
    object tbDadosEMP_RAMO_ATIVIDADE: TIntegerField
      FieldName = 'EMP_RAMO_ATIVIDADE'
      Origin = 'EMP_RAMO_ATIVIDADE'
    end
    object tbDadosEMP_SEGMENTO: TIntegerField
      FieldName = 'EMP_SEGMENTO'
      Origin = 'EMP_SEGMENTO'
    end
    object tbDadosEMP_CRT: TIntegerField
      FieldName = 'EMP_CRT'
      Origin = 'EMP_CRT'
    end
    object tbDadosEMP_ICMS_CREDITO: TIntegerField
      FieldName = 'EMP_ICMS_CREDITO'
      Origin = 'EMP_ICMS_CREDITO'
    end
    object tbDadosEMP_ICMS_ALIQUOTA: TBCDField
      FieldName = 'EMP_ICMS_ALIQUOTA'
      Origin = 'EMP_ICMS_ALIQUOTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosEMP_IESTADUAL_SUST: TStringField
      FieldName = 'EMP_IESTADUAL_SUST'
      Origin = 'EMP_IESTADUAL_SUST'
      Size = 15
    end
    object tbDadosEMP_LOGOTIPO: TMemoField
      FieldName = 'EMP_LOGOTIPO'
      Origin = 'EMP_LOGOTIPO'
      BlobType = ftMemo
    end
    object tbDadosEMP_NFE_AMBIENTE: TIntegerField
      FieldName = 'EMP_NFE_AMBIENTE'
      Origin = 'EMP_NFE_AMBIENTE'
    end
    object tbDadosEMP_NFE_HNUMERO: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_HNUMERO'
      Origin = 'EMP_NFE_HNUMERO'
      DisplayFormat = '000,000,000'
    end
    object tbDadosEMP_NFE_HLOTE: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_HLOTE'
      Origin = 'EMP_NFE_HLOTE'
      DisplayFormat = '000000'
    end
    object tbDadosEMP_NFE_HSERIE: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_HSERIE'
      Origin = 'EMP_NFE_HSERIE'
      DisplayFormat = '000'
    end
    object tbDadosEMP_NFE_HMODELO: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_HMODELO'
      Origin = 'EMP_NFE_HMODELO'
    end
    object tbDadosEMP_NFE_PNUMERO: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_PNUMERO'
      Origin = 'EMP_NFE_PNUMERO'
      DisplayFormat = '000,000,000'
    end
    object tbDadosEMP_NFE_PLOTE: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_PLOTE'
      Origin = 'EMP_NFE_PLOTE'
      DisplayFormat = '000000'
    end
    object tbDadosEMP_NFE_PSERIE: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_PSERIE'
      Origin = 'EMP_NFE_PSERIE'
      DisplayFormat = '000'
    end
    object tbDadosEMP_NFE_PMODELO: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_PMODELO'
      Origin = 'EMP_NFE_PMODELO'
    end
    object tbDadosEMP_NFE_TIPO_EMISSAO: TIntegerField
      FieldName = 'EMP_NFE_TIPO_EMISSAO'
      Origin = 'EMP_NFE_TIPO_EMISSAO'
    end
    object tbDadosEMP_NFE_TIPO_XJUST: TStringField
      FieldName = 'EMP_NFE_TIPO_XJUST'
      Origin = 'EMP_NFE_TIPO_XJUST'
      Size = 256
    end
    object tbDadosEMP_NFE_TIPO_DANFE: TIntegerField
      FieldName = 'EMP_NFE_TIPO_DANFE'
      Origin = 'EMP_NFE_TIPO_DANFE'
    end
    object tbDadosEMP_NFE_LOGOTIPO: TBlobField
      FieldName = 'EMP_NFE_LOGOTIPO'
      Origin = 'EMP_NFE_LOGOTIPO'
    end
    object tbDadosEMP_NFE_WEBSERVER: TStringField
      FieldName = 'EMP_NFE_WEBSERVER'
      Origin = 'EMP_NFE_WEBSERVER'
      FixedChar = True
      Size = 2
    end
    object tbDadosEMP_NFE_SSL_TYPE: TIntegerField
      FieldName = 'EMP_NFE_SSL_TYPE'
      Origin = 'EMP_NFE_SSL_TYPE'
    end
    object tbDadosEMP_NFE_CERTIFICADO: TStringField
      FieldName = 'EMP_NFE_CERTIFICADO'
      Origin = 'EMP_NFE_CERTIFICADO'
      Size = 120
    end
    object tbDadosEMP_NFE_PROXY_HOST: TStringField
      FieldName = 'EMP_NFE_PROXY_HOST'
      Origin = 'EMP_NFE_PROXY_HOST'
      Size = 256
    end
    object tbDadosEMP_NFE_PROXY_PORTA: TIntegerField
      FieldName = 'EMP_NFE_PROXY_PORTA'
      Origin = 'EMP_NFE_PROXY_PORTA'
    end
    object tbDadosEMP_NFE_PROXY_USUARIO: TStringField
      FieldName = 'EMP_NFE_PROXY_USUARIO'
      Origin = 'EMP_NFE_PROXY_USUARIO'
      Size = 120
    end
    object tbDadosEMP_NFE_PROXY_SENHA: TStringField
      FieldName = 'EMP_NFE_PROXY_SENHA'
      Origin = 'EMP_NFE_PROXY_SENHA'
      Size = 25
    end
    object tbDadosEMP_NFE_EMAIL_HOST: TStringField
      FieldName = 'EMP_NFE_EMAIL_HOST'
      Origin = 'EMP_NFE_EMAIL_HOST'
      Size = 120
    end
    object tbDadosEMP_NFE_EMAIL_PORTA: TIntegerField
      FieldName = 'EMP_NFE_EMAIL_PORTA'
      Origin = 'EMP_NFE_EMAIL_PORTA'
    end
    object tbDadosEMP_NFE_EMAIL_USUARIO: TStringField
      FieldName = 'EMP_NFE_EMAIL_USUARIO'
      Origin = 'EMP_NFE_EMAIL_USUARIO'
      Size = 120
    end
    object tbDadosEMP_NFE_EMAIL_SENHA: TStringField
      FieldName = 'EMP_NFE_EMAIL_SENHA'
      Origin = 'EMP_NFE_EMAIL_SENHA'
      Size = 25
    end
    object tbDadosEMP_NFE_EMAIL_SEGURO: TIntegerField
      FieldName = 'EMP_NFE_EMAIL_SEGURO'
      Origin = 'EMP_NFE_EMAIL_SEGURO'
    end
    object tbDadosEMP_NFE_EMAIL_ASSUNTO: TStringField
      FieldName = 'EMP_NFE_EMAIL_ASSUNTO'
      Origin = 'EMP_NFE_EMAIL_ASSUNTO'
      Size = 60
    end
    object tbDadosEMP_NFE_EMAIL_MESSAGE: TStringField
      FieldName = 'EMP_NFE_EMAIL_MESSAGE'
      Origin = 'EMP_NFE_EMAIL_MESSAGE'
      Size = 256
    end
    object tbDadosEMP_NFE_FOLDER_XSD: TStringField
      FieldName = 'EMP_NFE_FOLDER_XSD'
      Origin = 'EMP_NFE_FOLDER_XSD'
      Size = 256
    end
    object tbDadosEMP_NFE_FOLDER_LOGS: TStringField
      FieldName = 'EMP_NFE_FOLDER_LOGS'
      Origin = 'EMP_NFE_FOLDER_LOGS'
      Size = 256
    end
    object tbDadosEMP_OBSERVACAO: TStringField
      FieldName = 'EMP_OBSERVACAO'
      Origin = 'EMP_OBSERVACAO'
      Size = 600
    end
    object tbDadosEMP_DATA_FUNDACAO: TDateField
      FieldName = 'EMP_DATA_FUNDACAO'
      Origin = 'EMP_DATA_FUNDACAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbDadosEMP_STATUS: TIntegerField
      FieldName = 'EMP_STATUS'
      Origin = 'EMP_STATUS'
    end
    object tbDadosEMP_NFE_FOLDER_PDFS: TStringField
      FieldName = 'EMP_NFE_FOLDER_PDFS'
      Origin = 'EMP_NFE_FOLDER_PDFS'
      Size = 256
    end
    object tbDadosEMP_NFE_MODELO_DF: TIntegerField
      FieldName = 'EMP_NFE_MODELO_DF'
      Origin = 'EMP_NFE_MODELO_DF'
    end
    object tbDadosEMP_NFE_VERSAO_DF: TIntegerField
      FieldName = 'EMP_NFE_VERSAO_DF'
      Origin = 'EMP_NFE_VERSAO_DF'
    end
    object tbDadosEMP_NFE_AVISO_IPI_I: TStringField
      FieldName = 'EMP_NFE_AVISO_IPI_I'
      Origin = 'EMP_NFE_AVISO_IPI_I'
      Size = 256
    end
    object tbDadosEMP_NFE_AVISO_ICMS_A: TStringField
      FieldName = 'EMP_NFE_AVISO_ICMS_A'
      Origin = 'EMP_NFE_AVISO_ICMS_A'
      Size = 256
    end
    object tbDadosEMP_NFE_PRINT_LEI_12741: TIntegerField
      FieldName = 'EMP_NFE_PRINT_LEI_12741'
      Origin = 'EMP_NFE_PRINT_LEI_12741'
    end
    object tbDadosEMP_ATIVA_RETAGUARDA: TIntegerField
      FieldName = 'EMP_ATIVA_RETAGUARDA'
      Origin = 'EMP_ATIVA_RETAGUARDA'
    end
    object tbDadosEMP_ATIVA_CAIXA: TIntegerField
      DefaultExpression = '2'
      FieldName = 'EMP_ATIVA_CAIXA'
      Origin = 'EMP_ATIVA_CAIXA'
    end
    object tbDadosEMP_NCM_FONTE: TStringField
      FieldName = 'EMP_NCM_FONTE'
      Origin = 'EMP_NCM_FONTE'
      Size = 65
    end
    object tbDadosEMP_NCM_CHAVE: TStringField
      FieldName = 'EMP_NCM_CHAVE'
      Origin = 'EMP_NCM_CHAVE'
      Size = 15
    end
    object tbDadosEMP_DECIMAL_CUSTO: TIntegerField
      FieldName = 'EMP_DECIMAL_CUSTO'
      Origin = 'EMP_DECIMAL_CUSTO'
    end
    object tbDadosEMP_DECIMAL_VENDA: TIntegerField
      FieldName = 'EMP_DECIMAL_VENDA'
      Origin = 'EMP_DECIMAL_VENDA'
    end
    object tbDadosEMP_DECIMAL_QTDE: TIntegerField
      FieldName = 'EMP_DECIMAL_QTDE'
      Origin = 'EMP_DECIMAL_QTDE'
    end
    object tbDadosEMP_SERVER_REST_HOST: TStringField
      FieldName = 'EMP_SERVER_REST_HOST'
      Origin = 'EMP_SERVER_REST_HOST'
      Size = 255
    end
    object tbDadosEMP_SERVER_REST_PORT: TIntegerField
      FieldName = 'EMP_SERVER_REST_PORT'
      Origin = 'EMP_SERVER_REST_PORT'
    end
    object tbDadosEMP_PLN_PDV: TIntegerField
      FieldName = 'EMP_PLN_PDV'
      Origin = 'EMP_PLN_PDV'
    end
    object tbDadosEMP_PLN_PDV_DESC: TStringField
      FieldName = 'EMP_PLN_PDV_DESC'
      Origin = 'EMP_PLN_PDV_DESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_NFE_S: TIntegerField
      FieldName = 'EMP_PLN_NFE_S'
      Origin = 'EMP_PLN_NFE_S'
    end
    object tbDadosEMP_PLN_NFE_SDESC: TStringField
      FieldName = 'EMP_PLN_NFE_SDESC'
      Origin = 'EMP_PLN_NFE_SDESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_NFE_E: TIntegerField
      FieldName = 'EMP_PLN_NFE_E'
      Origin = 'EMP_PLN_NFE_E'
    end
    object tbDadosEMP_PLN_NFE_EDESC: TStringField
      FieldName = 'EMP_PLN_NFE_EDESC'
      Origin = 'EMP_PLN_NFE_EDESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_PED_V: TIntegerField
      FieldName = 'EMP_PLN_PED_V'
      Origin = 'EMP_PLN_PED_V'
    end
    object tbDadosEMP_PLN_PED_VDESC: TStringField
      FieldName = 'EMP_PLN_PED_VDESC'
      Origin = 'EMP_PLN_PED_VDESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_PED_C: TIntegerField
      FieldName = 'EMP_PLN_PED_C'
      Origin = 'EMP_PLN_PED_C'
    end
    object tbDadosEMP_PLN_PED_CDESC: TStringField
      FieldName = 'EMP_PLN_PED_CDESC'
      Origin = 'EMP_PLN_PED_CDESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_OS: TIntegerField
      FieldName = 'EMP_PLN_OS'
      Origin = 'EMP_PLN_OS'
    end
    object tbDadosEMP_PLN_OS_DESC: TStringField
      FieldName = 'EMP_PLN_OS_DESC'
      Origin = 'EMP_PLN_OS_DESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_CLI_PDV: TIntegerField
      FieldName = 'EMP_CLI_PDV'
      Origin = 'EMP_CLI_PDV'
    end
    object tbDadosEMP_CLI_PDV_DESC: TStringField
      FieldName = 'EMP_CLI_PDV_DESC'
      Origin = 'EMP_CLI_PDV_DESC'
      ProviderFlags = []
      Size = 120
    end
    object tbDadosEMP_PLN_CTAS_PAG: TIntegerField
      FieldName = 'EMP_PLN_CTAS_PAG'
      Origin = 'EMP_PLN_CTAS_PAG'
    end
    object tbDadosEMP_PLN_CTAS_PAG_DSC: TStringField
      FieldName = 'EMP_PLN_CTAS_PAG_DSC'
      Origin = 'EMP_PLN_CTAS_PAG_DSC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_CTAS_REC: TIntegerField
      FieldName = 'EMP_PLN_CTAS_REC'
      Origin = 'EMP_PLN_CTAS_REC'
    end
    object tbDadosEMP_PLN_CTAS_REC_DSC: TStringField
      FieldName = 'EMP_PLN_CTAS_REC_DSC'
      Origin = 'EMP_PLN_CTAS_REC_DSC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_USAR_LOGIN: TStringField
      FieldName = 'EMP_USAR_LOGIN'
      Origin = 'EMP_USAR_LOGIN'
      FixedChar = True
      Size = 1
    end
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 337
    Top = 296
  end
  object SearchCep: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    TimeOut = 10000
    WebService = wsViaCep
    PesquisarIBGE = True
    Left = 369
    Top = 296
  end
  object ChecaDoc: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 401
    Top = 296
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 433
    Top = 296
  end
  object ActionManager1: TActionManager
    Images = sysIcones16
    Left = 465
    Top = 296
    StyleName = 'Platform Default'
    object actCadastrar: TAction
      Caption = 'Cadastrar'
      ImageIndex = 13
      OnExecute = actCadastrarExecute
    end
    object actAlterar: TAction
      Caption = 'Alterar'
      ImageIndex = 15
      OnExecute = actAlterarExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 19
    end
    object actGravar: TAction
      Caption = 'Gravar'
      ImageIndex = 3
      OnExecute = actGravarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
      OnExecute = actCancelarExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 25
      OnExecute = actSairExecute
    end
  end
  object sysIcones16: TJvImageList
    ColorDepth = cd16Bit
    PixelFormat = pf16bit
    TransparentMode = tmAuto
    TransparentColor = clWhite
    Items = <>
    Left = 523
    Top = 296
    Bitmap = {
      494C010136003900D00010001000FFFFFFFF1110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000E000000001001000000000000070
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000079327932793279327932
      79327932793279327932793279320000000000000000734E734E734E734E734E
      734E734E734E734E734E734E734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E0000396739673967
      396739673967396739670000734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E0000396739673967
      396739673967396739670000734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E0000396739673967
      396739673967396739670000734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E0000396739673967
      396739673967396739670000734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C73FF7F79327932793279320000000000000000734E0000396739673967
      396739670000734E734E734E734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F79329C73793200000000000000000000734E0000000000000000
      000000000000734E0000734E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F79327932000000000000000000000000734E0000000000000000
      000000000000734E734E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000079327932793279327932
      79327932793279320000000000000000000000000000734E734E734E734E734E
      734E734E734E734E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000003967734E39670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003967396739673967396739673967
      3967396739675A675B6B5B6B5A67396739670000734E734E734E734E734E734E
      734E734E734E734E734E3967734E734E734E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003967396739673967396739673967
      396739677C6B1963D65ED75A3A637C6B39670000734E00000000000000000000
      00000000000000001042734E734E734E396700000000000000007932D300D300
      7932000000000000000000000000000000000000000000000000D65A734E734E
      D65A000000000000000000000000000000003967396739673967396739673967
      39675B67B25E2562846A6066025AB15E5B6B0000734E00003967396739673967
      3967104210421042734E734E734E39670000000000000000D300D30099019901
      D30000000000000000000000000000000000000000000000734E734E39673967
      734E0000000000000000000000000000000039673967396739673A6B5A6B7B73
      7C6FF862E05D027B247BC0760066C0593A670000734E00000000000000003967
      734E9C739C73FF7F9C73734E39670000000000000000D30099019901D300D300
      79320000000000000000000000000000000000000000734E39673967734E734E
      D65A0000000000000000000000000000000039675A6B5A6F7B6F5A6BF75E934E
      195F386F866ACA6AA56EA36A2062C055F6620000734E0000396739673967734E
      9C739C739C739C73FF7F8C3100000000000000007932D3009901D30079320000
      0000D300D300D300D300D300D300D30000000000D65A734E3967734ED65A0000
      0000734E734E734E734E734E734E734E00005A6B3967F75AB45251420E36891D
      8A257242E5550062C472E576C07600664D5A0000734E0000000000000000734E
      9C73FF7F9C739C739C738C310000000000000000D3009901D300793200000000
      0000D30099019901990199019901D30000000000734E3967734ED65A00000000
      0000734E39673967396739673967734E0000396772462F3A0D320D320D32AA25
      681D6A11843D406AA36A6062005E00668A660000734E0000396739673967734E
      9C73FF7FFF7F9C739C738C310000000000000000D3009901D300000000000000
      00000000D3009901990199019901D30000000000734E3967734E000000000000
      00000000734E3967396739673967734E000018632F3A2F3A0E362F3A703E4F3A
      CC250619C255497F697F207F606EA059D2620000734E00000000000000000000
      734E9C739C739C73734E10420000000000000000D3009901D300793200000000
      000000007932D300990199019901D30000000000734E3967734ED65A00000000
      00000000D65A734E396739673967734E0000175F2F3AB34E9246713EF54E795F
      164FEA35A96EFB7FF37F887F007F406AF95E0000734E00003967396739673967
      3967734E734E734E9C73734E00000000000000007932D3009901D30079320000
      7932D300D3009901D30099019901D30000000000D65A734E3967734ED65A0000
      D65A734E734E3967734E39673967734E00003967B452F656F54ED34216532E36
      2F36703A8B564B7B467FE07E807289663B670000734E00000000000000000000
      00000000000000000000734E00000000000000000000D30099019901D300D300
      D30099019901D3007932D3009901D300000000000000734E39673967734E734E
      734E39673967734ED65A734E3967734E00005A6B5A6BF75ED65AD552B3460B2A
      2E36703A88196A4E6952A439C9395B675A6B0000734E00003967396739673967
      39670000734E734E734E734E000000000000000000000000D300D30099019901
      9901D300D300000000000000D300D3000000000000000000734E734E39673967
      3967734E734E000000000000734E734E0000396739675A6B5A6F3967F75ED556
      9246D34A923EF74AD6425236523E7B6F39670000734E00000000000000000000
      00000000734E9C73734E000000000000000000000000000000007932D300D300
      D300793200000000000000000000000000000000000000000000D65A734E734E
      734ED65A0000000000000000000000000000396739673967396739675B6F5A6B
      D65AD552F552934AB452F75A3967396739670000734E00000000000000000000
      00000000734E734E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003967396739673967396739673967
      5B6F1863F75E39675B6F5A6F5A6B396739670000734E734E734E734E734E734E
      734E734E734E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003967396739673967396739673967
      39675A6B5A6B5A6B396739673967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003967396739673967396739673967
      3967396739673967396739673967396739670000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC7B
      000000000000000000000000000000000000000000000000000000000000BC7B
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000794ED300794E00000000000000003967734E734E
      734E734E734E396700000000000000000000000000000000BC7B9C7339679C73
      BC7B00000000000000000000000000000000000000000000BC7B000039679C73
      BC7B000000000000000000000000000000000000793279327932793279327932
      79327932793279327932794ED300D300D300000000000000734ED65A39673967
      396739673967D65A734E00000000000000000000BC7B9C73D65A794E93319331
      D65A39679C73BC7B000000000000000000000000BC7B0000D65A734E734E734E
      D65A39670000BC7B0000000000000000000000007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F1042D300D300D300794E00000000734E3967396739673967
      39673967396739673967734E0000000000009C73794E9331794E794EFF7F9331
      734E734ED65A9C73000000000000000000000000734E734E734E734EFF7F734E
      734E734ED65A00000000000000000000000000007932FF7F9C739C739C739C73
      9C73104210421042D300D300D300794E00000000734E39673967396739673967
      396739673967396739673967734E000000009331794E3F4F3F4F3F67FF7F9331
      864D864D864DBC7B00000000000000000000734E734E186318633967FF7F734E
      734E734E734EBC7B0000000000000000000000007932FF7FFF7FFF7FFF7F9C73
      7332FF67FF67FF7F394FD300794E000000003967D65A39673967FF7FFF7F3967
      39673967FF7FFF7F39673967D65A3967000093313F4F3F4F3F4F3F67FF7F9331
      2C672C676066FF7F3F670000000000000000734E1863186318633967FF7F734E
      18631863734EFF7F3967000000000000000000007932FF7F9C739C739C73734E
      BE5FFF67FF67FF67FF7F8C31000000000000734E396739673967FF7FFF7FFF7F
      3967FF7FFF7FFF7F396739673967734E000093313F4F3F4F3F4F3F67FF7F9331
      2C672C7F66663F6799010000000000000000734E1863186318633967FF7F734E
      18633967734E3967734E000000000000000000007932FF7FFF7FFF7FFF7F734E
      BE5FFF7FBE5FFF67FF678C31000000000000734E3967396739673967FF7FFF7F
      FF7FFF7FFF7F3967396739673967734E000093313F4F794E79323F67FF7F9331
      3367337FD65A9F0199010000000000000000734E1863734E734E3967FF7F734E
      39673967D65A734E734E000000000000000000007932FF7F9C739C739C73734E
      BE5FFF7FFF7FBE5FFF678C31000000000000734E39673967396739673967FF7F
      FF7FFF7F39673967396739673967734E000093313F4F9331FF7F3F67FF7F9331
      336718639901990199019901990199010000734E18638C31FF7F3967FF7F734E
      39671863734E734E734E734E734E734E000000007932FF7FFF7FFF7FFF7FFF7F
      734EBE5FBE5FBE5F73321042000000000000734E3967396739673967FF7FFF7F
      FF7FFF7FFF7F3967396739673967734E000093313F4F794E93313F67FF7F9331
      000099019901990199019901990199010000734E1863734E8C313967FF7F734E
      9C73734E734E734E734E734E734E734E000000007932FF7F9C739C739C739C73
      9C73734E734E734E9C737932000000000000734E396739673967FF7FFF7FFF7F
      3967FF7FFF7FFF7F396739673967734E000093313F4F3F4F3F4F3F67FF7F9331
      0000794E9901990199019901990199010000734E1863186318633967FF7F734E
      9C73734E734E734E734E734E734E734E000000007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F79320000000000003967D65A39673967FF7FFF7F3967
      39673967FF7FFF7F39673967D65A3967000093313F4F3F4F3F4F3F67FF7F9331
      3967BC7B794E9F0199010000000000000000734E1863186318633967FF7F734E
      3967BC7B734E734E734E000000000000000000007932FF7F9C739C739C739C73
      9C73FF7F79327932793279320000000000000000734E39673967396739673967
      396739673967396739673967734E0000000093313F4F3F4F3F4F3F67FF7F9331
      3367000033673F4F99010000000000000000734E1863186318633967FF7F734E
      39679C7339671863734E000000000000000000007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F79329C737932000000000000000000000000734E3967396739673967
      39673967396739673967734E0000000000009331794E3F4F3F4F3F67FF7F9331
      39670000666600003F4F0000000000000000734E734E186318633967FF7F734E
      39679C73734E00001863000000000000000000007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F7932793200000000000000000000000000000000734ED65A39673967
      396739673967D65A734E0000000000000000000018637932794E394FFF7F9331
      60666066606600000000000000000000000000001863734E734E1863FF7F734E
      734E734E734E0000000000000000000000000000793279327932793279327932
      79327932793200000000000000000000000000000000000000003967734E734E
      734E734E734E3967000000000000000000000000000000003967794E93319331
      0000000000000000000000000000000000000000000000003967734E734E734E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000736600400040
      0040004000407366000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000200380010000
      0000000000000000000000000000000000000000000000000000D65A10420000
      00000000000000000000000000000000000000000000000000400064007C007C
      007C007C007C0064004000000000000000000000D65A10421042104200000000
      000000000000D65A104210421042000000000000000000002003600260028001
      000000000000000000000000000000000000000000000000D65A734E734E1042
      000000000000000000000000000000000000000000000040007C007C007C007C
      007C007C007C007C007C00400000000000000000D65A734E734E734E10420000
      00000000D65A734E734E734E1042000000000000000020036002600260026002
      80010000000000000000000000000000000000000000D65A734E734E734E734E
      10420000000000000000000000000000000000000040007C007C007C007C007C
      007C007C007C007C007C007C00400000000000000000D65A734E734E734E1042
      0000D65A734E734E734E10420000000000000000200360026002600260026002
      6002800100000000000000000000000000000000D65A734E734E734E734E734E
      734E1042000000000000000000000000000073660064007C007CFF7FFF7F007C
      007C007CFF7FFF7F007C007C006473660000000000000000D65A734E734E734E
      1042734E734E734E104200000000000000000000200360026002800120036002
      6002600280010000000000000000000000000000D65A734E734E1042D65A734E
      734E734E10420000000000000000000000000040007C007C007CFF7FFF7FFF7F
      007CFF7FFF7FFF7F007C007C007C004000000000000000000000D65A734E734E
      734E734E734E1042000000000000000000000000200360028001000000002003
      6002600260028001000000000000000000000000D65A734E104200000000D65A
      734E734E734E1042000000000000000000000040007C007C007C007CFF7FFF7F
      FF7FFF7FFF7F007C007C007C007C0040000000000000000000000000D65A734E
      734E734E10420000000000000000000000000000200380010000000000000000
      2003600260026002800100000000000000000000D65A10420000000000000000
      D65A734E734E734E104200000000000000000040007C007C007C007C007CFF7F
      FF7FFF7F007C007C007C007C007C004000000000000000000000D65A734E734E
      734E734E734E1042000000000000000000000000000000000000000000000000
      0000200360026002600280010000000000000000000000000000000000000000
      0000D65A734E734E734E10420000000000000040007C007C007C007CFF7FFF7F
      FF7FFF7FFF7F007C007C007C007C00400000000000000000D65A734E734E734E
      1042734E734E734E104200000000000000000000000000000000000000000000
      0000000020036002600260028001000000000000000000000000000000000000
      00000000D65A734E734E734E1042000000000040007C007C007CFF7FFF7FFF7F
      007CFF7FFF7FFF7F007C007C007C0040000000000000D65A734E734E734E1042
      0000D65A734E734E734E10420000000000000000000000000000000000000000
      0000000000002003600260028001000000000000000000000000000000000000
      000000000000D65A734E734E10420000000073660064007C007CFF7FFF7F007C
      007C007CFF7FFF7F007C007C0064736600000000D65A734E734E734E10420000
      00000000D65A734E734E734E1042000000000000000000000000000000000000
      0000000000000000200360028001000000000000000000000000000000000000
      0000000000000000D65A734E10420000000000000040007C007C007C007C007C
      007C007C007C007C007C007C0040000000000000D65AD65AD65AD65A00000000
      000000000000D65AD65AD65AD65A000000000000000000000000000000000000
      0000000000000000000020038001000000000000000000000000000000000000
      00000000000000000000D65A104200000000000000000040007C007C007C007C
      007C007C007C007C007C00400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000400064007C007C
      007C007C007C0064004000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000736600400040
      0040004000407366000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000734E734E734E734E734E
      734E734E734E734E734E734E734E00000000C618C618734E0000000000000000
      0000000000000000000000000000000000008C318C31734E0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000734E0000000000000000
      000000000000000000000000734E0000000039678C31C618C618000000000000
      000000000000000000000000000000000000734E10428C318C31000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000734E0000396739673967
      396739673967396739670000734E0000000000008C318C318C31C618734E0000
      00000000000000000000000000000000000000001042104210428C31734E0000
      0000000000000000000000000000000000000000007C004C004C004C00000000
      000000000000007C004C004C004C0000000000000000734E0000000000000000
      000000000000000000000000734E00000000000039678C318C318C31C618604E
      0000000000000000000000000000000000000000734E1042104210428C31734E
      0000000000000000000000000000000000000000007C006400640064004C0000
      00000000007C006400640064004C0000000000000000734E0000396739673967
      396739673967396739670000734E00000000000000008C318C31F37F33673367
      604E0000000000000000000000000000000000000000104210429C7339673967
      734E0000000000000000000000000000000000000000007C006400640064004C
      0000007C006400640064004C00000000000000000000734E0000000000000000
      000000000000000000000000734E000000000000000039671042F97FF37F3367
      3367604E336700000000000000000000000000000000734E10429C739C733967
      3967734E3967000000000000000000000000000000000000007C006400640064
      004C006400640064004C000000000000000000000000734E0000396739673967
      396739673967396739670000734E000000000000000000002C67FF7FF97FF37F
      F37F33672C67604E000000000000000000000000000000003967FF7F9C739C73
      9C7339673967734E000000000000000000000000000000000000007C00640064
      006400640064004C0000000000000000000000000000734E0000000000000000
      000000000000000000000000734E000000000000000000002C67FF7FF97FF97F
      F37FF37F33673367604E2C670000000000000000000000003967FF7F9C739C73
      9C739C7339673967734E396700000000000000000000000000000000007C0064
      00640064004C00000000000000000000000000000000734E0000396739673967
      396739673967396739670000734E0000000000000000000000003367FF7FF97F
      F97FF37FF37F33673F67D300D3000000000000000000000000003967FF7F9C73
      9C739C739C73396739678C318C31000000000000000000000000007C00640064
      006400640064004C0000000000000000000000000000734E0000000000000000
      000000000000000000000000734E0000000000000000000000002C67FF7FF97F
      F97F3F6799019901D300D300D300D300000000000000000000003967FF7F9C73
      9C733967104210428C318C318C318C310000000000000000007C006400640064
      004C006400640064004C000000000000000000000000734E0000396739673967
      396739670000734E734E734E734E00000000000000000000000000003367FF7F
      F97F9901990199019901D300D300D300D300000000000000000000003967FF7F
      9C7310421042104210428C318C318C318C3100000000007C006400640064004C
      0000007C006400640064004C00000000000000000000734E0000000000000000
      000000000000734E0000734E000000000000000000000000000000002C67FF7F
      3F6799019901990199019901D300D300D300000000000000000000003967FF7F
      3967104210421042104210428C318C318C310000007C006400640064004C0000
      00000000007C006400640064004C0000000000000000734E0000000000000000
      000000000000734E734E00000000000000000000000000000000000000007F02
      7F02990199019901990199019901D300D300000000000000000000000000734E
      734E1042104210421042104210428C318C310000007C007C007C007C00000000
      000000000000007C007C007C007C0000000000000000734E734E734E734E734E
      734E734E734E734E000000000000000000000000000000000000000000009901
      7F027F02990199019901990199019901D3000000000000000000000000008C31
      734E734E1042104210421042104210428C310000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      99017F027F029901990199019901990199010000000000000000000000000000
      8C31734E734E1042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C618C618734E0000000000000000
      0000000000000000000000000000000000008C318C31734E0000000000000000
      0000000000000000000000000000000000000000000079327932793279327932
      7932793279327932793279327932000000000000000000000000000000000000
      734E734E734E734E734E000000000000000039678C31C618C618000000000000
      000000000000000000000000000000000000734E10428C318C31000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F793200000000000000000000000000000000734E
      3967396739673967734E000000000000000000008C318C318C31C618734E0000
      00000000000000000000000000000000000000001042104210428C31734E0000
      000000000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000000000000000734E3967
      396739673967734E00000000000000000000000039678C318C318C31C618604E
      0000000000000000000000000000000000000000734E1042104210428C31734E
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000000000000000000000734E39673967
      39673967734E000000000000000000000000000000008C318C31F37F33673367
      604E0000000000000000000000000000000000000000104210429C7339673967
      734E00000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F793200000000000000000000734E396739673967
      3967734E00000000000000000000000000000000000039671042F97FF37F3367
      3367604E336700000000000000000000000000000000734E10429C739C733967
      3967734E3967000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E3967396739673967
      734E000000000000000000000000000000000000000000002C67FF7FF97FF37F
      F37F33672C67604E000000000000000000000000000000003967FF7F9C739C73
      9C7339673967734E00000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E3967396739673967
      734E000000000000000000000000000000000000000000002C67FF7FF97FF97F
      F37FF37F33673367604E2C670000000000000000000000003967FF7F9C739C73
      9C739C7339673967734E3967000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F793200000000000000000000734E396739673967
      3967734E000000000000000000000000000000000000000000003367FF7FF97F
      F97FF37FF37F33673F67D300D3000000000000000000000000003967FF7F9C73
      9C739C739C73396739678C318C3100000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F7932000000000000000000000000734E39673967
      39673967734E00000000000000000000000000000000000000002C67FF7FF97F
      F97F3F6799019901D300D300D300D300000000000000000000003967FF7F9C73
      9C733967104210428C318C318C318C310000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000000000000000734E3967
      396739673967734E00000000000000000000000000000000000000003367FF7F
      F97F9901990199019901D300D300D300D300000000000000000000003967FF7F
      9C7310421042104210428C318C318C318C31000000007932FF7F9C739C739C73
      9C739C73FF7F793279327932793200000000000000000000000000000000734E
      3967396739673967734E0000000000000000000000000000000000002C67FF7F
      3F6799019901990199019901D300D300D300000000000000000000003967FF7F
      3967104210421042104210428C318C318C31000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F79329C7379320000000000000000000000000000000000000000
      734E734E734E734E734E00000000000000000000000000000000000000007F02
      7F02990199019901990199019901D300D300000000000000000000000000734E
      734E1042104210421042104210428C318C31000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F7932793200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009901
      7F027F02990199019901990199019901D3000000000000000000000000008C31
      734E734E1042104210421042104210428C310000000079327932793279327932
      7932793279327932000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      99017F027F029901990199019901990199010000000000000000000000000000
      8C31734E734E1042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D65A10420000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      D300D300D300D300D3000000000000000000000000000000D65A734E734E1042
      0000000000000000000000000000000000000000007C004C004C004C00000000
      000000000000007C004C004C004C000000000000D65A10421042104200000000
      000000000000D65A10421042104200000000000000000000000000000000D300
      9901990199019901D300000000000000000000000000D65A734E734E734E734E
      1042000000000000000000000000000000000000007C006400640064004C0000
      00000000007C006400640064004C000000000000D65A734E734E734E10420000
      00000000D65A734E734E734E10420000000000000000000000000000D3009901
      990199019901D300000000000000000000000000D65A734E734E734E734E734E
      734E1042000000000000000000000000000000000000007C006400640064004C
      0000007C006400640064004C00000000000000000000D65A734E734E734E1042
      0000D65A734E734E734E10420000000000000000000000000000D30099019901
      99019901D3000000000000000000000000000000D65A734E734E1042D65A734E
      734E734E1042000000000000000000000000000000000000007C006400640064
      004C006400640064004C0000000000000000000000000000D65A734E734E734E
      1042734E734E734E10420000000000000000000000000000D300990199019901
      9901D30000000000000000000000000000000000D65A734E104200000000D65A
      734E734E734E1042000000000000000000000000000000000000007C00640064
      006400640064004C000000000000000000000000000000000000D65A734E734E
      734E734E734E10420000000000000000000000000000D3009901990199019901
      D300000000000000000000000000000000000000D65A10420000000000000000
      D65A734E734E734E1042000000000000000000000000000000000000007C0064
      00640064004C00000000000000000000000000000000000000000000D65A734E
      734E734E104200000000000000000000000000000000D3009901990199019901
      D300000000000000000000000000000000000000000000000000000000000000
      0000D65A734E734E734E10420000000000000000000000000000007C00640064
      006400640064004C000000000000000000000000000000000000D65A734E734E
      734E734E734E104200000000000000000000000000000000D300990199019901
      9901D30000000000000000000000000000000000000000000000000000000000
      00000000D65A734E734E734E104200000000000000000000007C006400640064
      004C006400640064004C0000000000000000000000000000D65A734E734E734E
      1042734E734E734E104200000000000000000000000000000000D30099019901
      99019901D3000000000000000000000000000000000000000000000000000000
      000000000000D65A734E734E10420000000000000000007C006400640064004C
      0000007C006400640064004C00000000000000000000D65A734E734E734E1042
      0000D65A734E734E734E104200000000000000000000000000000000D3009901
      990199019901D300000000000000000000000000000000000000000000000000
      0000000000000000D65A734E1042000000000000007C006400640064004C0000
      00000000007C006400640064004C000000000000D65A734E734E734E10420000
      00000000D65A734E734E734E104200000000000000000000000000000000D300
      9901990199019901D30000000000000000000000000000000000000000000000
      00000000000000000000D65A1042000000000000007C007C007C007C00000000
      000000000000007C007C007C007C000000000000D65AD65AD65AD65A00000000
      000000000000D65AD65AD65AD65A000000000000000000000000000000000000
      D300D300D300D300D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC7B
      000000000000000000000000000000000000000000000000000000000000BC7B
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003967734E734E
      734E734E734E396700000000000000000000000000000000BC7B9C7339679C73
      BC7B00000000000000000000000000000000000000000000BC7B000039679C73
      BC7B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000734ED65A39673967
      396739673967D65A734E00000000000000000000BC7B9C73D65A794E93319331
      D65A39679C73BC7B000000000000000000000000BC7B0000D65A734E734E734E
      D65A39670000BC7B000000000000000000000000000000000000200380010000
      00000000000000000000000000000000000000000000734E3967396739673967
      39673967396739673967734E0000000000009C73794E9331794E794EFF7F9331
      734E734ED65A9C73000000000000000000000000734E734E734E734EFF7F734E
      734E734ED65A0000000000000000000000000000000000002003600260028001
      0000000000000000000000000000000000000000734E39673967396739673967
      396739673967396739673967734E000000009331794E3F4F3F4F3F67FF7F9331
      864D864D864DBC7B00000000000000000000734E734E186318633967FF7F734E
      734E734E734EBC7B000000000000000000000000000020036002600260026002
      8001000000000000000000000000000000003967D65A39673967FF7FFF7F3967
      39673967FF7FFF7F39673967D65A3967000093313F4F3F4F3F4F3F67FF7F9331
      2C672C676066FF7F3F670000000000000000734E1863186318633967FF7F734E
      18631863734EFF7F396700000000000000000000200360026002600260026002
      600280010000000000000000000000000000734E396739673967FF7FFF7FFF7F
      3967FF7FFF7FFF7F396739673967734E000093313F4F3F4F3F4F3F67FF7F9331
      2C672C7F66663F6799010000000000000000734E1863186318633967FF7F734E
      18633967734E3967734E00000000000000000000200360026002800120036002
      600260028001000000000000000000000000734E3967396739673967FF7FFF7F
      FF7FFF7FFF7F3967396739673967734E000093313F4F794E79323F67FF7F9331
      3367337FD65A9F0199010000000000000000734E1863734E734E3967FF7F734E
      39673967D65A734E734E00000000000000000000200360028001000000002003
      600260026002800100000000000000000000734E39673967396739673967FF7F
      FF7FFF7F39673967396739673967734E000093313F4F9331FF7F3F67FF7F9331
      336718639901990199019901990199010000734E18638C31FF7F3967FF7F734E
      39671863734E734E734E734E734E734E00000000200380010000000000000000
      200360026002600280010000000000000000734E3967396739673967FF7FFF7F
      FF7FFF7FFF7F3967396739673967734E000093313F4F794E93313F67FF7F9331
      000099019901990199019901990199010000734E1863734E8C313967FF7F734E
      9C73734E734E734E734E734E734E734E00000000000000000000000000000000
      000020036002600260028001000000000000734E396739673967FF7FFF7FFF7F
      3967FF7FFF7FFF7F396739673967734E000093313F4F3F4F3F4F3F67FF7F9331
      0000794E9901990199019901990199010000734E1863186318633967FF7F734E
      9C73734E734E734E734E734E734E734E00000000000000000000000000000000
      0000000020036002600260028001000000003967D65A39673967FF7FFF7F3967
      39673967FF7FFF7F39673967D65A3967000093313F4F3F4F3F4F3F67FF7F9331
      3967BC7B794E9F0199010000000000000000734E1863186318633967FF7F734E
      3967BC7B734E734E734E00000000000000000000000000000000000000000000
      0000000000002003600260028001000000000000734E39673967396739673967
      396739673967396739673967734E0000000093313F4F3F4F3F4F3F67FF7F9331
      3367000033673F4F99010000000000000000734E1863186318633967FF7F734E
      39679C7339671863734E00000000000000000000000000000000000000000000
      00000000000000002003600280010000000000000000734E3967396739673967
      39673967396739673967734E0000000000009331794E3F4F3F4F3F67FF7F9331
      39670000666600003F4F0000000000000000734E734E186318633967FF7F734E
      39679C73734E0000186300000000000000000000000000000000000000000000
      000000000000000000002003800100000000000000000000734ED65A39673967
      396739673967D65A734E0000000000000000000018637932794E394FFF7F9331
      60666066606600000000000000000000000000001863734E734E1863FF7F734E
      734E734E734E0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003967734E734E
      734E734E734E3967000000000000000000000000000000003967794E93319331
      0000000000000000000000000000000000000000000000003967734E734E734E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000736600400040
      0040004000407366000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000200380010000
      0000000000000000000000000000000000000000000000000000D65A10420000
      00000000000000000000000000000000000000000000000000400064007C007C
      007C007C007C0064004000000000000000000000D65A10421042104200000000
      000000000000D65A104210421042000000000000000000002003600260028001
      000000000000000000000000000000000000000000000000D65A734E734E1042
      000000000000000000000000000000000000000000000040007C007C007C007C
      007C007C007C007C007C00400000000000000000D65A734E734E734E10420000
      00000000D65A734E734E734E1042000000000000000020036002600260026002
      80010000000000000000000000000000000000000000D65A734E734E734E734E
      10420000000000000000000000000000000000000040007C007C007C007C007C
      007C007C007C007C007C007C00400000000000000000D65A734E734E734E1042
      0000D65A734E734E734E10420000000000000000200360026002600260026002
      6002800100000000000000000000000000000000D65A734E734E734E734E734E
      734E1042000000000000000000000000000073660064007C007CFF7FFF7F007C
      007C007CFF7FFF7F007C007C006473660000000000000000D65A734E734E734E
      1042734E734E734E104200000000000000000000200360026002800120036002
      6002600280010000000000000000000000000000D65A734E734E1042D65A734E
      734E734E10420000000000000000000000000040007C007C007CFF7FFF7FFF7F
      007CFF7FFF7FFF7F007C007C007C004000000000000000000000D65A734E734E
      734E734E734E1042000000000000000000000000200360028001000000002003
      6002600260028001000000000000000000000000D65A734E104200000000D65A
      734E734E734E1042000000000000000000000040007C007C007C007CFF7FFF7F
      FF7FFF7FFF7F007C007C007C007C0040000000000000000000000000D65A734E
      734E734E10420000000000000000000000000000200380010000000000000000
      2003600260026002800100000000000000000000D65A10420000000000000000
      D65A734E734E734E104200000000000000000040007C007C007C007C007CFF7F
      FF7FFF7F007C007C007C007C007C004000000000000000000000D65A734E734E
      734E734E734E1042000000000000000000000000000000000000000000000000
      0000200360026002600280010000000000000000000000000000000000000000
      0000D65A734E734E734E10420000000000000040007C007C007C007CFF7FFF7F
      FF7FFF7FFF7F007C007C007C007C00400000000000000000D65A734E734E734E
      1042734E734E734E104200000000000000000000000000000000000000000000
      0000000020036002600260028001000000000000000000000000000000000000
      00000000D65A734E734E734E1042000000000040007C007C007CFF7FFF7FFF7F
      007CFF7FFF7FFF7F007C007C007C0040000000000000D65A734E734E734E1042
      0000D65A734E734E734E10420000000000000000000000000000000000000000
      0000000000002003600260028001000000000000000000000000000000000000
      000000000000D65A734E734E10420000000073660064007C007CFF7FFF7F007C
      007C007CFF7FFF7F007C007C0064736600000000D65A734E734E734E10420000
      00000000D65A734E734E734E1042000000000000000000000000000000000000
      0000000000000000200360028001000000000000000000000000000000000000
      0000000000000000D65A734E10420000000000000040007C007C007C007C007C
      007C007C007C007C007C007C0040000000000000D65AD65AD65AD65A00000000
      000000000000D65AD65AD65AD65A000000000000000000000000000000000000
      0000000000000000000020038001000000000000000000000000000000000000
      00000000000000000000D65A104200000000000000000040007C007C007C007C
      007C007C007C007C007C00400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000400064007C007C
      007C007C007C0064004000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000736600400040
      0040004000407366000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C318C31734E0000000000000000
      0000000000000000000000000000000000000000000000000000736600400040
      00400040004073660000000000000000000000000000000000003967734E734E
      734E734E734E3967000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000734E10428C318C31000000000000
      00000000000000000000000000000000000000000000000000400064007C007C
      007C007C007C006400400000000000000000000000000000734ED65A39673967
      396739673967D65A734E00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001042104210428C31734E0000
      000000000000000000000000000000000000000000000040007C007C007C007C
      007C007C007C007C007C004000000000000000000000734E3967396739673967
      39673967396739673967734E0000000000000000007C004C004C004C00000000
      000000000000007C004C004C004C000000000000734E1042104210428C31734E
      00000000000000000000000000000000000000000040007C007C007C007C007C
      007C007C007C007C007C007C0040000000000000734E39673967396739673967
      396739673967396739673967734E000000000000007C006400640064004C0000
      00000000007C006400640064004C0000000000000000104210429C7339673967
      734E0000000000000000000000000000000073660064007C007CFF7FFF7F007C
      007C007CFF7FFF7F007C007C0064736600003967D65A39673967FF7FFF7F3967
      39673967FF7FFF7F39673967D65A3967000000000000007C006400640064004C
      0000007C006400640064004C00000000000000000000734E10429C739C733967
      3967734E39670000000000000000000000000040007C007C007CFF7FFF7FFF7F
      007CFF7FFF7FFF7F007C007C007C00400000734E396739673967FF7FFF7FFF7F
      3967FF7FFF7FFF7F396739673967734E0000000000000000007C006400640064
      004C006400640064004C00000000000000000000000000003967FF7F9C739C73
      9C7339673967734E000000000000000000000040007C007C007C007CFF7FFF7F
      FF7FFF7FFF7F007C007C007C007C00400000734E3967396739673967FF7FFF7F
      FF7FFF7FFF7F3967396739673967734E00000000000000000000007C00640064
      006400640064004C000000000000000000000000000000003967FF7F9C739C73
      9C739C7339673967734E39670000000000000040007C007C007C007C007CFF7F
      FF7FFF7F007C007C007C007C007C00400000734E39673967396739673967FF7F
      FF7FFF7F39673967396739673967734E000000000000000000000000007C0064
      00640064004C00000000000000000000000000000000000000003967FF7F9C73
      9C739C739C73396739678C318C31000000000040007C007C007C007CFF7FFF7F
      FF7FFF7FFF7F007C007C007C007C00400000734E3967396739673967FF7FFF7F
      FF7FFF7FFF7F3967396739673967734E00000000000000000000007C00640064
      006400640064004C0000000000000000000000000000000000003967FF7F9C73
      9C733967104210428C318C318C318C3100000040007C007C007CFF7FFF7FFF7F
      007CFF7FFF7FFF7F007C007C007C00400000734E396739673967FF7FFF7FFF7F
      3967FF7FFF7FFF7F396739673967734E0000000000000000007C006400640064
      004C006400640064004C0000000000000000000000000000000000003967FF7F
      9C7310421042104210428C318C318C318C3173660064007C007CFF7FFF7F007C
      007C007CFF7FFF7F007C007C0064736600003967D65A39673967FF7FFF7F3967
      39673967FF7FFF7F39673967D65A3967000000000000007C006400640064004C
      0000007C006400640064004C000000000000000000000000000000003967FF7F
      3967104210421042104210428C318C318C3100000040007C007C007C007C007C
      007C007C007C007C007C007C0040000000000000734E39673967396739673967
      396739673967396739673967734E000000000000007C006400640064004C0000
      00000000007C006400640064004C00000000000000000000000000000000734E
      734E1042104210421042104210428C318C31000000000040007C007C007C007C
      007C007C007C007C007C004000000000000000000000734E3967396739673967
      39673967396739673967734E0000000000000000007C007C007C007C00000000
      000000000000007C007C007C007C000000000000000000000000000000008C31
      734E734E1042104210421042104210428C3100000000000000400064007C007C
      007C007C007C006400400000000000000000000000000000734ED65A39673967
      396739673967D65A734E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8C31734E734E1042104210421042104210420000000000000000736600400040
      00400040004073660000000000000000000000000000000000003967734E734E
      734E734E734E3967000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DB56393E393E393E393E393E
      7D6B000000000000000000000000000000000000000079327932793279327932
      79327932793279327932793279320000000000000000734E734E734E734E734E
      734E734E734E734E734E734E734E00000000C618C618734E0000000000000000
      0000000000000000000000000000000000000000393E561D5621B32D561D561D
      4F216C216C216C216C255B6B000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E0000000039678C31C618C618000000000000
      0000000000000000000000000000000000000000393E561DB32D0A5B561D561D
      784A6C213242000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E0000396739673967
      396739673967396739670000734E0000000000008C318C318C31C618734E0000
      0000000000000000000000000000000000000000393E561D561D561D561D561D
      9125AF29AF29AF29AF29AF29AF2974460000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E00000000000039678C318C318C31C618604E
      0000000000000000000000000000000000000000393E561D561D561D561D561D
      BC4A7F5F7F5F7F5F7F5F7F5F7F5F74460000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E0000396739673967
      396739673967396739670000734E00000000000000008C318C31F37F33673367
      604E000000000000000000000000000000000000393E561D561D561D561D561D
      BC4A7F5F7F5F7F5F7F5F7F5F7F5F74460000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E000000000000000039671042F97FF37F3367
      3367604E33670000000000000000000000000000393E3942394239423942F835
      BC4A7F5F7F5F7F5F7F5F7F5F7F5F74460000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E0000396739673967
      396739673967396739670000734E000000000000000000002C67FF7FF97FF37F
      F37F33672C67604E000000000000000000000000393EB82DB82DB82DB82D9729
      BC4A7F5F7F5F7F5F7F5F7F5F7F5F74460000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E000000000000000000002C67FF7FF97FF97F
      F37FF37F33673367604E2C670000000000000000393EB82DB82DB82DB82D9729
      BC4A7F5F7F5F7F5F7F5F7F5F7F5F74460000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E0000396739673967
      396739673967396739670000734E0000000000000000000000003367FF7FF97F
      F97FF37FF37F33673F67D300D300000000000000393E3942394239423942F835
      BC4A7F5F7F5F7F5F7F5F7F5F7F5F74460000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E0000000000000000
      000000000000000000000000734E0000000000000000000000002C67FF7FF97F
      F97F3F6799019901D300D300D300D30000000000393E3942394239423942F835
      BC4A7F5F7F5F7F5F7F5F7F5F7F5F74460000000000007932FF7F9C739C739C73
      9C739C73FF7F79327932793279320000000000000000734E0000396739673967
      396739670000734E734E734E734E00000000000000000000000000003367FF7F
      F97F9901990199019901D300D300D300D3000000393EB82DB82DB82DB82D9729
      153A744674467446744674467446F85A0000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F79329C73793200000000000000000000734E0000000000000000
      000000000000734E0000734E000000000000000000000000000000002C67FF7F
      3F6799019901990199019901D300D300D3000000393EBB4EBB4EBB4EBB4E3942
      1C5F00000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F79327932000000000000000000000000734E0000000000000000
      000000000000734E734E00000000000000000000000000000000000000007F02
      7F02990199019901990199019901D300D3000000DB56393E393E393E393E393E
      7D6B000000000000000000000000000000000000000079327932793279327932
      79327932793279320000000000000000000000000000734E734E734E734E734E
      734E734E734E734E000000000000000000000000000000000000000000009901
      7F027F02990199019901990199019901D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      99017F027F029901990199019901990199010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005F4FFE36FE36
      FE36FE36FE36FE36FE3600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FE365E125E12
      7E129E225E125E125E1200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000797F377F377F
      377F377F377F377F000000000000000000000000000000000000DB56BB4EBB4E
      BB4EBB4EBB4EFC5A000000000000000000000000000000000000FE365E125E12
      9E225F4F5E125E125E1200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E07CE07CE07C
      E07CE07CE07CE07CE97D00000000000000000000000000003C63BB4E7A4ABB4E
      7A4ABB4E7A4ABB4E9E7300000000000000000000000000000000FE365E125E12
      5E125E125E125E125E1200000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000867DE07CE07CE07C
      E07CE07CE07CE07CE07CFF7F0000000000000000000000001C5FBB4E193EBB4E
      193EBB4E193EBB4E9E6F00000000000000000000000000000000FE365E125E12
      5E125E125E125E125E1200000000000000000000000000000000EA7DE07CE07C
      E07CE07CE07CE07C0000000000000000000000000000DE7FE07CE07CE07CE07C
      E07CE07CE07CE07CE07C227D0000000000000000000000001C5FBB4E193EBB4E
      193EBB4E193EBB4E9E6F00000000000000000000000000000000FE36F715F715
      F715F715F715F7153C1200000000000000000000000000000000EA7DE07CE07C
      E07CE07CE07CE07C0000000000000000000000000000017D657D227DE07CA77D
      E07C657D227D447DE07CE07C797F000000000000000000001C5FBB4E193EBB4E
      193EBB4E193EBB4E9E6F00000000000000000000000000000000FE3609190919
      0919091909190626F71500000000000000000000000000000000EA7DE07CE07C
      E07CE07CE07CE07C000000000000000000000000587FE07C0B7EFF7FE07CF57E
      E07C4D7E797F6F7EE07CE07CE07C000000000000000000001C5FBB4E193EBB4E
      193EBB4E193EBB4E9E6F00000000000000000000000000000000FE36F715F715
      F715F715F715F7153C1200000000000000000000000000000000EA7DE07CE07C
      E07CE07CE07CE07C000000000000000000000000E07CE07CFF7F227DE07CF57E
      017DC97DF57E6F7E447DBC7FE07C9B7F00000000000000001C5FBB4E193EBB4E
      193EBB4E193EBB4E9E6F00000000000000000000000000000000FE3609190919
      0919091909190626F71500000000000000000000000000000000EA7DE07CE07C
      E07CE07CE07CE07C0000000000000000000000009B7FE07CFE7F9B7F597FDD7F
      C87DDE7FBC7F6F7E377F6F7E017D000000000000000000001C5FBB4E193EBB4E
      193EBB4E193EBB4E9E6F00000000000000000000000000000000FE36F715F715
      F715F715F715F7153C1200000000000000000000000000000000EA7DE07CE07C
      E07CE07CE07CE07C0000000000000000000000000000227DE07CE07CE07CE07C
      E07CE07CE07CE07CE07CE07CFE7F00000000000000000000BB4E5A46F8395A46
      F8395A46F8395A46FC5A00000000000000000000000000000000FE3609190919
      0919091909190626F71500000000000000000000000000000000917EEA7DEA7D
      EA7DEA7DEA7DEA7D0000000000000000000000000000FF7FE07CE07CE07CE07C
      E07CE07CE07CE07CE07CA77D000000000000000000000000B82DB82DB82DB82D
      B82DB82DB82DB82DB82D00000000000000000000000000000000FE36F715F715
      F715F715F715F7153C1200000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000EA7DE07CE07CE07C
      E07CE07CE07CE07CE07C00000000000000000000000000007A4AB82DB82DB82D
      B82DB82DB82DB82D3D6700000000000000000000000000000000FE3609190919
      0919091909190626F71500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E07CE07CE07C
      E07CE07CE07CE07C6F7E0000000000000000000000000000000000007A4A7D6B
      7D6B7D6B3D6700000000000000000000000000000000000000005F4FFE36FE36
      FE36FE36FE36FE36FE3600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000DB6F0F3F
      CA2AED32555300000000000000000000000000000000D57E0679067906790679
      067906790679067906796A790000000000000000000000000000FF7F8A790679
      067906790679D67E0000000000000000000000000000954A533E7C6F00000000
      000000000000FE7F487F027FB57F00000000000000000000DC73AA26AA26AA26
      AA26AA26AA26AA26EE3600000000000000000000000006790679067906790679
      0679067906790679067906798A7900000000000000000000387F067906790679
      06790679067906792879000000000000000000000000533E195F1236BD730000
      0000000000004C7F007F007F037F0000000000000000BA6BAA26AA26AA26AA26
      AA26AA26AA26AA26AA26CA2A0000000000000000000006790679067906790679
      067906790679067906790679067900000000000000005A7F0679067906790679
      067906790679067906792779000000000000000000007C6B1232F1313236BD73
      00000000B47F007F007F007F4A7F000000000000FF7FAA26AA26AA26AA26AA26
      AA26AA26AA26AA26AA26AA260E3B0000000000000000067906794879BD7F0679
      06790679AB79F77E067906790679000000000000000006790679067906790679
      067906790679067906790679177F000000000000000000007C6B1232F131333A
      DE77D97F027F007F007F4B7FFE7F000000000000ED36AA26AA26AA26AA26D15F
      EB2EAA26AA26AA26AA26AA26AA260000000000000000067906790679BD7FBD7F
      0679AB79BD7FB47E067906790679000000000000BD7F06790679067906790679
      06790679067906790679067906790000000000000000000000009C6F1236F131
      6F4A037F007F017FB47F00000000000000000000AA26AA26AA26AA26D15FF267
      F267EB2EAA26AA26AA26AA26AA2655530000000000000679067906790679BD7F
      BD7FBD7FB47E0679067906790679000000000000727E06790679177FFF7FFF7F
      FF7FFF7FFF7FFF7F0679067906790000000000000000000000000000BD736472
      C07E007F037FD97F000000000000000000000000AA26AA26AA26D15FF267CA2A
      8F53F267EB2EAA26AA26AA26AA26ED360000000000000679067906790679AB79
      BD7FBD7F06790679067906790679000000000000307E06790679177FFF7FFF7F
      FF7FFF7FFF7FFF7F06790679067900000000000000000000000000000000A37E
      607EC07E904EBD779D6FDE770000000000000000AA26AA26AA260B37CA26AA26
      AA268F53F267EB32AA26AA26AA26CB2A000000000000067906790679AB79BD7F
      B47EBD7FBD7F0679067906790679000000000000D57E06790679067906790679
      067906790679067906790679067900000000000000000000000000009D73F85A
      A47E8472F131F131F13111325B67000000000000AA26AA26AA26AA26AA26AA26
      AA26AA268F53F267EB2EAA26AA260F3F00000000000006790679AC79BD7F937E
      06790679BD7FBD7F067906790679000000000000000006790679067906790679
      067906790679067906790679AB790000000000000000000000009C73F85A7C6B
      0000BD73F131F1311236333A333A000000000000AA26AA26AA26AA26AA26AA26
      AA26AA26AA268F53F267AA26AA26BB6F000000000000067906790679517E0679
      067906790679077906790679067900000000000000006A790679067906790679
      067906790679067906790679FF7F0000000000000000FF7F7B6BF85A9C6F0000
      00007C6BF1311236DE7BDF7B95460000000000009863AA26AA26AA26AA26AA26
      AA26AA26AA26AA26CA2AAA26AA26000000000000000006790679067906790679
      0679067906790679067906790779000000000000000000000679067906790679
      06790679067906790679F77E000000000000000000007B6BF85A7B6B00000000
      0000BD73F131333ADE7B0000FF7F0000000000000000CB2AAA26AA26AA26AA26
      AA26AA26AA26AA26AA26AA26DC73000000000000000006790679067906790679
      067906790679067906790679D57E0000000000000000000000008B7906790679
      06790679067906797B7F0000000000000000000000003A637C6BFF7F00000000
      000000005B67533E9546FF7F000000000000000000000000CB2AAA26AA26AA26
      AA26AA26AA26AA26AA2699670000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D57E
      0F7A727E9C7F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009863AA26AA26
      AA26AA26AA26ED32FF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BB6FCE368922AC2E765B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000DD778A2A88229863CD368822775F0000000000000000000000000000
      000021040000000000000000000000000000FF7F1C4F1C531C531C531C531C53
      1C531C531C531C531C531C531C53B94600000000000000000000000000000000
      00000000000000000000000000000000000000000000DF7F5E737E737E737E73
      7E737E73F34AAB2E1043FF7F5557CD36CC320000000000000000000000000000
      21045246A5140000000000000000000000005C63BF63BF63BF63BF63BF63BF63
      BF63BF63BF63BF63BF63BF63BF631C53000000000000966B0947094709470947
      094709470947094709472C4F00000000000000000000BF7B1D6B1D6B1D6B1D6B
      1D6B1D6BB03E1043FF7FFF7FFF7F98638A260000000000000000000000000000
      21045246D7520000000000000000000000005C63BF63BF63BF63BF63BF63BF63
      BF63BF63BF63BF63BF63BF63BF631C5300000000000009470947094709470947
      0947094709470947094709472D4F0000000000000000BF7B1D6B1D6B1D6B1D6B
      1D6B1D6BD44A88228822FF7F10438822EF3A0000000000000000000000000215
      62250B36F856E81C000000000000000000005C63BF63BF63BF63BF63BF63BF63
      BF63BF63BF63BF63BF63BF63BF631C530000000000000947966BFD7BFD7BFD7B
      FD7BFD7BFD7BFD7BFD7B094709470000000000000000DF7F5E6F5D6F5D6F5D6F
      5D6F5D6F5D6FAD3288221043AB2E8A26BB6F00000000000000000000C2082031
      2921D652B242F756B54E09210000000000005C63BF63BF63BF63BF63BF63583A
      BF63BF63BF63BF63BF63BF63BF631C530000000000000947966BFD7BFD7BFD7B
      FD7BFD7BFD7BFD7BFD7B094709470000000000000000DF7F5E737E737E737E73
      7E737E737E735D6FF44ED03E334FDD77000000000000000000000000C208002D
      5242D752D74EB242F756D7562104000000005C63BF63BF63BF63BF63583A583A
      583ABF63BF63BF63BF63BF63BF631C530000000000000947966BFD7BFD7B252A
      252AFD7BFD7BFD7BFD7B094709470000000000000000BF7B1D6B1D6B1D6B1D6B
      1D6B1D6B1D6B1D6B1D6B1D6BBF7B0000000000000000000000000000C2080C46
      FF7FBD739D73B64EB242F85AE81C000000005C63BF63BF63BF63583A793EBF63
      9A42583ABF63BF63BF63BF63BF631C530000000000000947966BFD7B472E252A
      252A262AFD7BFD7BFD7B094709470000000000000000BF7B1D6B1D6B1D6B1D6B
      1D6B1D6B1D6B1D6B1D6B1D6BBF7B0000000000000000000000000000503A385B
      9D73B64E195FF756D44AD54EAD31000000005C63BF63BF63BF63FB4ABF63BF63
      BF63BA42583ABF63BF63BF63BF631C530000000000000947966B6A3A252AFD7B
      FD7B252A262AFD7BFD7B094709470000000000000000DF7F5E6F5D6F5D6F5D6F
      5D6F5D6F5D6F5D6F5D6F5E6FFF7F00000000000000000921B54E3142F856B242
      FF7FFF7FFF7FFF7FB64EB242F85A4A2500005C63BF63BF63BF63BF63BF63BF63
      BF63BF639A42583ABF63BF63BF631C530000000000000947966BFD7BFD7BFD7B
      FD7BFD7B252A262AFD7B094709470000000000000000DF7F5E737E737E737E73
      7E737E737E737E737E735E73DF7F000000000000C618323EF856185BB64ED54A
      595F9C6FB64E9D73F856B346F756AD3100005C63BF63BF63BF63BF63BF63BF63
      BF63BF63BF639A42583ABF63BF631C530000000000000947966BFD7BFD7BFD7B
      FD7BFD7BDC7B8B3EFD7B094709470000000000000000BF7B1D6B1D6B1D6B1D6B
      1D6B1D6B1D6B1D6B1D6B1D6BBF7B000000000000EF39B54E9C6F3A63B64EB64E
      B2427B6BFF7BFF7BD756303EC835000000005C63BF63BF63BF63BF63BF63BF63
      BF63BF63BF63BF63FC4EBF63BF631C530000000000000947966BFD7BFD7BFD7B
      FD7BFD7BFD7BFD7BFD7B094709470000000000000000BF7B1D6B1D6B1D6B1D6B
      1D6B1D6B1D6B1D6B1D6B1D6BBF7B00000000000029219C6F5A67F8569C6F395F
      F856B13EEA3D630C210400006225000000005C63BF63BF63BF63BF63BF63BF63
      BF63BF63BF63BF63BF63BF63BF631C530000000000000947725F966B966B966B
      966B966B966B966B966B094709470000000000000000DF7F5E6F5D6F5D6F5D6F
      5D6F5D6F5D6F5D6F5D6F5E6FFF7F000000000000430839675246744A9C6F5A63
      8D2D8C2D0C326229A014C20C4131000000005C63BF63BF63BF63BF63BF63BF63
      BF63BF63BF63BF63BF63BF63BF631C5300000000000009470947094709470947
      094709470947094709470947966B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008410
      0000000000002000E21401210004000000007D6BBF63BF63BF63BF63BF63BF63
      BF63BF63BF63BF63BF63BF63BF631C4F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007D6B5C635C635C635C635C63
      5C635C635C635C635C635C635C63FF7F00000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000E00000000100010000000000000700000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000C003C00300000000
      C003DFFB00000000C003D00B00000000C003DFFB00000000C003D00B00000000
      C003DFFB00000000C003D00B00000000C003DFFB00000000C003D00B00000000
      C003DFFB00000000C003D04300000000C007DFD700000000C00FDFCF00000000
      C01FC01F00000000FFFFFFFF00000000FFF8FFFFFFFF00008000FFFFFFFF0000
      BFE0F0FFF0FF0000A001E0FFE0FF0000BC03C0FFC0FF0000A007830183010000
      BC07870187010000A0078F818F810000BE07878187810000A007820182010000
      BFF7C001C0010000A087E039E0390000BF8FF07FF07F0000BF9FFFFFFFFF0000
      803FFFFFFFFF0000FFFFFFFFFFFF0000FFFFFDFFFDFFFFF8F01FE0FFE8FF8000
      E00F801FA05F8000C007001F803F80018003001F001F80030001000F000F8007
      0001000F000F80070001000F000F800700010001000180070001010100018007
      00010101000180070001000F000F80078003008F000F800FC00700AF002F801F
      E00F803F803F803FF01FE1FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01F
      FFFFF3FFF3FFE00F87C3E1FFE1FFC0078383C0FFC0FF8003C107807F807F0001
      E00F803F803F0001F01F8C1F8C1F0001F83F9E0F9E0F0001F01FFF07FF070001
      E00FFF83FF830001C107FFC3FFC300018383FFE3FFE3800387C3FFF3FFF3C007
      FFFFFFFFFFFFE00FFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFC0031FFF1FFFFFFF
      DFFB0FFF0FFFFFFFD00B83FF83FF87C3DFFB81FF81FF8383D00BC0FFC0FFC107
      DFFBC03FC03FE00FD00BE01FE01FF01FDFFBE007E007F83FD00BF003F003F01F
      DFFBF001F001E00FD043F800F800C107DFD7F800F8008383DFCFFC00FC0087C3
      C01FFC00FC00FFFFFFFFFE00FE00FFFFFFFFFFFFFFFFFFFFFFFF1FFF1FFFC003
      FE0F0FFF0FFFC003FC0F83FF83FFC003F81F81FF81FFC003F03FC0FFC0FFC003
      E07FC03FC03FC003C0FFE01FE01FC003C0FFE007E007C003E07FF003F003C003
      F03FF001F001C003F81FF800F800C003FC0FF800F800C007FE0FFC00FC00C00F
      FFFFFC00FC00C01FFFFFFE00FE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3FFFFFFFFFFFE0FE1FF87C387C3FC0FC0FF83838383F81F807FC107C107F03F
      803FE00FE00FE07F8C1FF01FF01FC0FF9E0FF83FF83FC0FFFF07F01FF01FE07F
      FF83E00FE00FF03FFFC3C107C107F81FFFE383838383FC0FFFF387C387C3FE0F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFFFFFFF01FE0FFE8FFFFFF
      E00F801FA05FF3FFC007001F803FE1FF8003001F001FC0FF0001000F000F807F
      0001000F000F803F0001000F000F8C1F0001000100019E0F000101010001FF07
      000101010001FF830001000F000FFFC38003008F000FFFE3C00700AF002FFFF3
      E00F803F803FFFFFF01FE1FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01F
      FFFFF3FFF3FFE00F87C3E1FFE1FFC0078383C0FFC0FF8003C107807F807F0001
      E00F803F803F0001F01F8C1F8C1F0001F83F9E0F9E0F0001F01FFF07FF070001
      E00FFF83FF830001C107FFC3FFC300018383FFE3FFE3800387C3FFF3FFF3C007
      FFFFFFFFFFFFE00FFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFF1FFFF01FF01FFFFF
      0FFFE00FE00FFFFF83FFC007C00787C381FF800380038383C0FF00010001C107
      C03F00010001E00FE01F00010001F01FE00700010001F83FF00300010001F01F
      F00100010001E00FF80000010001C107F800800380038383FC00C007C00787C3
      FC00E00FE00FFFFFFE00F01FF01FFFFFFFFFFFFFFFFFFFFF80FFC003C0031FFF
      8007C003DFFB0FFF803FC003D00B83FF8001C003DFFB81FF8001C003D00BC0FF
      8001C003DFFBC03F8001C003D00BE01F8001C003DFFBE0078001C003D00BF003
      8001C003DFFBF0018001C003D043F8008001C007DFD7F80080FFC00FDFCFFC00
      80FFC01FC01FFC00FFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFF00FFFFFFFFFFFFF
      F00FFFFFF01FF01FF00FFFFFF00FE00FF00FFFFFE007E00FF00FF01FC007E00F
      F00FF01FC003E00FF00FF01F8003E00FF00FF01F8001E00FF00FF01F8003E00F
      F00FF01FC003E00FF00FF01FC007E00FF00FFFFFE00FE00FF00FFFFFF00FF83F
      F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F
      C007F01FC7C3E00FC003E00FC3C3C007C003C007C1838003C003C003E0038003
      C0038003F00F8001C0038003F81F8001C0038003FC078001C0038003F8038001
      C003C003F1038001C003C003C3038003C003E007C70BC003C003F00FC787E007
      FFFFFC3FFFFFF00FFFFFFFFFFFFFFFFFFFC10000FFFFFFFFFF8000000001FFFF
      C00000000001C007C00000000001C003C00000000001C003C00000000001C003
      C00100000001C003C00300000001C003C00300000001C003C00300000001C003
      C00300000001C003C00300000001C003C00300000001C003C00300000001C003
      FFFF00000001FFFFFFFF00008001FFFF00000000000000000000000000000000
      000000000000}
  end
end
