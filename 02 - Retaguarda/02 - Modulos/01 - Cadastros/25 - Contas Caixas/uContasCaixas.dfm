object FrContasCaixas: TFrContasCaixas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Contas Caixas'
  ClientHeight = 512
  ClientWidth = 935
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 466
    Width = 931
    Height = 44
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
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
      btnError
      RzSpacer4
      btnExit)
    object btnNew: TRzToolButton
      Left = 4
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 9
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      Left = 102
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 13
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      Left = 200
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 7
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actExcluir
    end
    object btnOK: TRzToolButton
      Left = 298
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 15
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actGravar
    end
    object btnError: TRzToolButton
      Left = 396
      Top = 2
      Width = 90
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 5
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      Left = 494
      Top = 2
      Width = 80
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 5
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
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
    end
    object RzSpacer4: TRzSpacer
      Left = 486
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 388
      Top = 10
      Grooved = True
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 931
    Height = 34
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    BorderHighlight = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStart = clSilver
    GradientColorStop = 3815994
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    object Label42: TLabel
      AlignWithMargins = True
      Left = 33
      Top = 3
      Width = 117
      Height = 28
      Align = alLeft
      Caption = 'Contas Caixas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 26
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
        00180803000000D7A9CDCA0000009C504C544547704CA6894FAE8F54967745A3
        B7CDA2844BB49358A2B8CCA5B9CDA5864DCBA968B393599F824AAC8B4FAC8D53
        9E8047A6864CA5864BB08E51A1834CA5874D9D8049A080479C8049A18449A3B7
        CCA1844BAD8F56A3BBCCA3B8CCAE8F55AB8C51A4874F9F824BAE8E529E8047BD
        99569C80469F814A9E82479E8048F5CE85E2BD78B8975ADBB065BA995BEBC57E
        B59355D3B06EC29C5AB29154CDA55FEE6B1B260000002974524E5300EDF65C66
        B5FB9A33BAFDFDFCE0FDCFC9CCE9B3EB5E76507AC2F7FA4BC2F8F8FD95FE9EF2
        2C5D769BCF551B680000009C4944415478DA6354FDCCC0778B011330AA73317D
        FCFF00C8FA8B26A1C1F597E1F30B0606B1076812ACAAFFC18CBBBF6827A1F8EF
        3183CCDFE70C12CFC07C7E464696D7600910C1F1E70F4C21AF3CC333A6B70C0C
        A2E8123CF20C4C8CBF19186FA34BB029436C8048C830BE8249B0C8214BE0D481
        24C1270391BF8A2E21FC0DAA005D02E14134099A799043F01D760F2201541D48
        00D5834800EE410027C947A50DC387960000000049454E44AE426082}
      ExplicitHeight = 24
    end
    object Bevel1: TBevel
      AlignWithMargins = True
      Left = 163
      Top = 3
      Width = 2
      Height = 28
      Margins.Left = 10
      Margins.Right = 10
      Align = alLeft
      ExplicitLeft = 156
    end
    object Label9: TLabel
      Left = 175
      Top = 0
      Width = 756
      Height = 34
      Margins.Left = 0
      Align = alClient
      Caption = 
        'Permite efetuar o cadastro das contas caixas, banc'#225'rias e cart'#245'e' +
        's de cr'#233'ditos.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 425
      ExplicitHeight = 14
    end
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 931
    Height = 426
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    object pgControl: TJvPageControl
      Left = 0
      Top = 0
      Width = 931
      Height = 426
      Margins.Top = 1
      Margins.Bottom = 1
      ActivePage = tabDetalhes
      Align = alClient
      TabOrder = 0
      OnChanging = pgControlChanging
      object tabPrincipal: TTabSheet
        Caption = 'Contas'
        object eGrid: TJvDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 917
          Height = 392
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsQuery
          DrawingStyle = gdsClassic
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = actAlterarExecute
          AlternateRowColor = 15658734
          ScrollBars = ssVertical
          AutoSizeColumns = True
          AutoSizeColumnIndex = 2
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 18
          Columns = <
            item
              Expanded = False
              FieldName = 'CTA_CODIGO'
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTA_DATA_REG'
              Title.Caption = 'Modifica'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTA_DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 689
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CTA_ATIVO'
              PickList.Strings = (
                'S'
                'N')
              ReadOnly = True
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
        object RzPanel3: TRzPanel
          Left = 0
          Top = 0
          Width = 923
          Height = 398
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object Label1: TLabel
            Left = 6
            Top = 3
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label3: TLabel
            Left = 223
            Top = 3
            Width = 46
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object Label2: TLabel
            Left = 92
            Top = 3
            Width = 56
            Height = 13
            Caption = 'Modifica'#231#227'o'
          end
          object Label4: TLabel
            Left = 446
            Top = 3
            Width = 67
            Height = 13
            Caption = 'Tipo de Conta'
          end
          object RzDBEdit1: TRzDBEdit
            Left = 6
            Top = 18
            Width = 80
            Height = 21
            DataSource = dsQuery
            DataField = 'CTA_CODIGO'
            Alignment = taRightJustify
            CharCase = ecUpperCase
            Enabled = False
            TabOrder = 0
          end
          object RzDBRadioGroup1: TRzDBRadioGroup
            Left = 226
            Top = 110
            Width = 341
            Height = 43
            DataField = 'CTA_ATIVO'
            DataSource = dsQuery
            Items.Strings = (
              'Ativo'
              'Inativo')
            Values.Strings = (
              'S'
              'N')
            Caption = 'Status'
            Columns = 2
            SpaceEvenly = True
            TabOrder = 6
          end
          object eDescricao: TRzDBEdit
            Left = 223
            Top = 18
            Width = 217
            Height = 21
            DataSource = dsQuery
            DataField = 'CTA_DESCRICAO'
            CharCase = ecUpperCase
            TabOrder = 2
            OnEnter = eDescricaoEnter
            OnExit = eDescricaoExit
          end
          object RzDBEdit2: TRzDBEdit
            Left = 92
            Top = 18
            Width = 125
            Height = 21
            DataSource = dsQuery
            DataField = 'CTA_DATA_REG'
            CharCase = ecUpperCase
            Enabled = False
            TabOrder = 1
          end
          object cbTipoConta: TJvDBComboBox
            Left = 446
            Top = 18
            Width = 121
            Height = 21
            DataField = 'CTA_TIPO'
            DataSource = dsQuery
            Items.Strings = (
              'Conta Caixa'
              'Conta Corrente'
              'Conta Poupan'#231'a'
              'Cart'#227'o de Cr'#233'dito'
              'Cart'#227'o de D'#233'bito')
            TabOrder = 3
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnChange = cbTipoContaChange
            OnEnter = eDescricaoEnter
            OnExit = eDescricaoExit
          end
          object gpDescConta: TRzGroupBox
            Left = 3
            Top = 45
            Width = 214
            Height = 67
            Caption = ' Dados da Conta'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = [fsBold]
            Enabled = False
            GroupStyle = gsUnderline
            TabOrder = 4
            object Label6: TLabel
              Left = 107
              Top = 23
              Width = 54
              Height = 13
              Caption = 'Conta / Dig'
              Enabled = False
            end
            object Label5: TLabel
              Left = 3
              Top = 23
              Width = 63
              Height = 13
              Caption = 'Ag'#234'ncia / Dig'
              Enabled = False
            end
            object RzDBEdit3: TRzDBEdit
              Left = 3
              Top = 38
              Width = 71
              Height = 21
              DataSource = dsQuery
              DataField = 'CTA_AGENC'
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 0
              OnEnter = eDescricaoEnter
              OnExit = eDescricaoExit
            end
            object RzDBEdit4: TRzDBEdit
              Left = 80
              Top = 38
              Width = 21
              Height = 21
              DataSource = dsQuery
              DataField = 'CTA_AGENC_DIG'
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 1
              OnEnter = eDescricaoEnter
              OnExit = eDescricaoExit
            end
            object RzDBEdit5: TRzDBEdit
              Left = 107
              Top = 38
              Width = 71
              Height = 21
              DataSource = dsQuery
              DataField = 'CTA_CONTA'
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 2
              OnEnter = eDescricaoEnter
              OnExit = eDescricaoExit
            end
            object RzDBEdit6: TRzDBEdit
              Left = 184
              Top = 38
              Width = 21
              Height = 21
              DataSource = dsQuery
              DataField = 'CTA_CONTA_DIG'
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 3
              OnEnter = eDescricaoEnter
              OnExit = eDescricaoExit
            end
          end
          object gpDescCartao: TRzGroupBox
            Left = 223
            Top = 45
            Width = 347
            Height = 67
            Caption = ' Dados do Cart'#227'o'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = [fsBold]
            Enabled = False
            GroupStyle = gsUnderline
            TabOrder = 5
            object Label7: TLabel
              Left = 3
              Top = 23
              Width = 73
              Height = 13
              Caption = 'Cart'#227'o N'#250'mero'
              Enabled = False
            end
            object Label8: TLabel
              Left = 175
              Top = 23
              Width = 93
              Height = 13
              Caption = 'Bandeira do Cart'#227'o'
              Enabled = False
            end
            object RzDBEdit7: TRzDBEdit
              Left = 3
              Top = 38
              Width = 166
              Height = 21
              DataSource = dsQuery
              DataField = 'CTA_CRT_NUMERO'
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 0
              OnEnter = eDescricaoEnter
              OnExit = eDescricaoExit
            end
            object JvDBLookupCombo1: TJvDBLookupCombo
              Left = 175
              Top = 38
              Width = 169
              Height = 21
              DataField = 'CTA_CRT_ID_BANDEIRA'
              DataSource = dsQuery
              Enabled = False
              LookupField = 'ID'
              LookupDisplay = 'BND_DESCRICAO'
              LookupSource = dsQueryBND
              TabOrder = 1
              OnEnter = eDescricaoEnter
              OnExit = eDescricaoExit
            end
          end
          object RzDBRadioGroup2: TRzDBRadioGroup
            Left = 6
            Top = 110
            Width = 215
            Height = 43
            DataField = 'CTA_PDV'
            DataSource = dsQuery
            Items.Strings = (
              'Sim'
              'N'#227'o')
            Values.Strings = (
              'S'
              'N')
            Caption = 'Ativa PDV'
            Columns = 2
            SpaceEvenly = True
            TabOrder = 7
          end
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 431
    Top = 263
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
      Caption = 'Excluir'
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
      OnUpdate = actSairUpdate
    end
  end
  object Query: TFDQuery
    Active = True
    AfterEdit = QueryAfterEdit
    BeforePost = QueryBeforePost
    AfterPost = QueryAfterPost
    BeforeDelete = QueryBeforeDelete
    OnNewRecord = QueryNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      
        'SELECT * FROM C000050 WHERE ID_EMP = :ID_EMP ORDER BY CTA_CODIGO' +
        ' ASC')
    Left = 464
    Top = 264
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QueryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_EMP: TIntegerField
      FieldName = 'ID_EMP'
      Origin = 'ID_EMP'
    end
    object QueryCTA_CODIGO: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CTA_CODIGO'
      Origin = 'CTA_CODIGO'
      DisplayFormat = '000000'
    end
    object QueryCTA_DATA_REG: TSQLTimeStampField
      FieldName = 'CTA_DATA_REG'
      Origin = 'CTA_DATA_REG'
    end
    object QueryCTA_DESCRICAO: TStringField
      FieldName = 'CTA_DESCRICAO'
      Origin = 'CTA_DESCRICAO'
      Size = 35
    end
    object QueryCTA_ATIVO: TStringField
      FieldName = 'CTA_ATIVO'
      Origin = 'CTA_ATIVO'
      FixedChar = True
      Size = 1
    end
    object QueryCTA_TIPO: TIntegerField
      FieldName = 'CTA_TIPO'
      Origin = 'CTA_TIPO'
    end
    object QueryCTA_AGENC: TStringField
      FieldName = 'CTA_AGENC'
      Origin = 'CTA_AGENC'
      Size = 15
    end
    object QueryCTA_AGENC_DIG: TStringField
      FieldName = 'CTA_AGENC_DIG'
      Origin = 'CTA_AGENC_DIG'
      FixedChar = True
      Size = 1
    end
    object QueryCTA_CONTA: TStringField
      FieldName = 'CTA_CONTA'
      Origin = 'CTA_CONTA'
      Size = 15
    end
    object QueryCTA_CONTA_DIG: TStringField
      FieldName = 'CTA_CONTA_DIG'
      Origin = 'CTA_CONTA_DIG'
      FixedChar = True
      Size = 1
    end
    object QueryCTA_CRT_NUMERO: TStringField
      FieldName = 'CTA_CRT_NUMERO'
      Origin = 'CTA_CRT_NUMERO'
      Size = 35
    end
    object QueryCTA_CRT_ID_BANDEIRA: TIntegerField
      FieldName = 'CTA_CRT_ID_BANDEIRA'
      Origin = 'CTA_CRT_ID_BANDEIRA'
    end
    object QueryCTA_PDV: TStringField
      FieldName = 'CTA_PDV'
      Origin = 'CTA_PDV'
      FixedChar = True
      Size = 1
    end
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    OnStateChange = dsQueryStateChange
    Left = 464
    Top = 294
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 502
    Top = 262
  end
  object QueryBND: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      
        '   LPAD(BND_CODIGO,2,0) || '#39' - '#39' || BND_DESCRICAO AS BND_DESCRIC' +
        'AO'
      'FROM'
      '   C000012'
      'WHERE'
      '   ID_EMPRESA = :ID_EMP'
      'ORDER BY'
      '   BND_DESCRICAO ASC')
    Left = 462
    Top = 326
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QueryBNDID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryBNDBND_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BND_DESCRICAO'
      Origin = 'BND_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 65
    end
  end
  object dsQueryBND: TDataSource
    AutoEdit = False
    DataSet = QueryBND
    Left = 494
    Top = 326
  end
end
