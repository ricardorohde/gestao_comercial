object FrNcmCest: TFrNcmCest
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastros de NCM/CEST'
  ClientHeight = 595
  ClientWidth = 1144
  Color = clGray
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
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 549
    Width = 1140
    Height = 44
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GradientColorStop = 13948116
    ParentFont = False
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
      RzSpacer6
      btnRefresh
      RzSpacer7
      btnExit)
    object btnNew: TRzToolButton
      AlignWithMargins = True
      Left = 6
      Top = 2
      Width = 100
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Bottom = 2
      DisabledIndex = 9
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actCadastrar
      Align = alClient
    end
    object btnEdit: TRzToolButton
      AlignWithMargins = True
      Left = 119
      Top = 2
      Width = 100
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Bottom = 2
      DisabledIndex = 13
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actAlterar
      Align = alClient
    end
    object btnCancel: TRzToolButton
      AlignWithMargins = True
      Left = 232
      Top = 2
      Width = 100
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Bottom = 2
      DisabledIndex = 7
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actExcluir
      Align = alClient
    end
    object btnOK: TRzToolButton
      AlignWithMargins = True
      Left = 345
      Top = 2
      Width = 100
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Bottom = 2
      DisabledIndex = 15
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actGravar
      Align = alClient
    end
    object btnError: TRzToolButton
      AlignWithMargins = True
      Left = 458
      Top = 2
      Width = 100
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Bottom = 2
      DisabledIndex = 4
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actCancelar
      Align = alClient
    end
    object btnExit: TRzToolButton
      AlignWithMargins = True
      Left = 692
      Top = 2
      Width = 80
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Bottom = 2
      DisabledIndex = 5
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actSair
      Align = alClient
    end
    object RzSpacer1: TRzSpacer
      Left = 109
      Top = 10
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 222
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 335
      Top = 10
    end
    object RzSpacer4: TRzSpacer
      Left = 561
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 448
      Top = 10
      Grooved = True
    end
    object btnRefresh: TRzToolButton
      AlignWithMargins = True
      Left = 579
      Top = 2
      Width = 100
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Bottom = 2
      DisabledIndex = 8
      DropDownMenu = Pop01
      ImageIndex = 8
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      ToolStyle = tsDropDown
      Align = alClient
      Caption = 'Tabela NCM'
    end
    object RzSpacer6: TRzSpacer
      Left = 569
      Top = 10
      Grooved = True
    end
    object RzSpacer7: TRzSpacer
      Left = 682
      Top = 10
      Grooved = True
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 1140
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
    TabOrder = 1
    VisualStyle = vsGradient
    object Label42: TLabel
      AlignWithMargins = True
      Left = 33
      Top = 3
      Width = 225
      Height = 28
      Align = alLeft
      Caption = 'Cadastro de NCMs / CESTs'
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
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 1140
    Height = 509
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
      Width = 1140
      Height = 509
      ActivePage = tabPrincipal
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChanging = pgControlChanging
      object tabPrincipal: TTabSheet
        Caption = 'Principal'
        object brProgress: TRzProgressStatus
          AlignWithMargins = True
          Left = 2
          Top = 460
          Width = 1128
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 0
          Align = alBottom
          ParentShowHint = False
          Visible = False
          BarStyle = bsGradient
          PartsComplete = 0
          Percent = 0
          ShowPercent = True
          TotalParts = 0
          ExplicitLeft = 176
          ExplicitTop = 424
          ExplicitWidth = 100
        end
        object JvDBGrid1: TJvDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1126
          Height = 474
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          DrawingStyle = gdsClassic
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnDblClick = actAlterarExecute
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
              FieldName = 'NCM_CODIGO'
              Title.Caption = 'NCM/SH'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM_CEST'
              Title.Caption = 'CEST'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM_DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 449
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM_TAXA_IMP'
              Title.Caption = 'Importados %'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM_TAXA_NAC'
              Title.Caption = 'Nacionais %'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM_TAXA_EST'
              Title.Caption = 'Estaduais %'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM_CHAVE'
              Title.Caption = 'Chave'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM_VERSAO'
              Title.Caption = 'Vers'#227'o'
              Width = 185
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM_STATUS'
              Title.Caption = 'Ativo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 37
              Visible = True
            end>
          Delphi2010OptionsMigrated = True
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 43
          Height = 14
          Caption = 'NCM/SH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 3
          Top = 41
          Width = 53
          Height = 14
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 203
          Top = 3
          Width = 78
          Height = 14
          Caption = 'Importados % '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 320
          Top = 3
          Width = 67
          Height = 14
          Caption = 'Nacionais %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 437
          Top = 3
          Width = 66
          Height = 14
          Caption = 'Estaduais %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 103
          Top = 3
          Width = 24
          Height = 14
          Caption = 'CEST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 3
          Top = 169
          Width = 524
          Height = 28
          Caption = 
            'Para sabe qual o C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria' +
            ' - CEST, que deve ser informado, consulte seu contador.'
          WordWrap = True
        end
        object eNCM: TRzDBEdit
          Left = 3
          Top = 17
          Width = 94
          Height = 22
          DataSource = dsDados
          DataField = 'NCM_CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object eNcmDesc: TRzDBEdit
          Left = 103
          Top = 17
          Width = 94
          Height = 22
          DataSource = dsDados
          DataField = 'NCM_CEST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object eDescricao: TRzDBMemo
          Left = 3
          Top = 56
          Width = 545
          Height = 61
          DataField = 'NCM_DESCRICAO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object eStatus: TRzDBRadioGroup
          Left = 3
          Top = 123
          Width = 545
          Height = 40
          DataField = 'NCM_STATUS'
          DataSource = dsDados
          Items.Strings = (
            'Ativo'
            'Inativo')
          Values.Strings = (
            '1'
            '2')
          Caption = 'Status'
          Columns = 2
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          SpaceEvenly = True
          TabOrder = 3
        end
        object eTaxaImp: TJvDBCalcEdit
          Left = 203
          Top = 17
          Width = 111
          Height = 22
          DisplayFormat = ',0.00'
          TabOrder = 4
          DecimalPlacesAlwaysShown = True
          DataField = 'NCM_TAXA_IMP'
          DataSource = dsDados
        end
        object eTaxaNac: TJvDBCalcEdit
          Left = 320
          Top = 17
          Width = 111
          Height = 22
          DisplayFormat = ',0.00'
          TabOrder = 5
          DecimalPlacesAlwaysShown = True
          DataField = 'NCM_TAXA_NAC'
          DataSource = dsDados
        end
        object eTaxaEst: TJvDBCalcEdit
          Left = 437
          Top = 17
          Width = 111
          Height = 22
          DisplayFormat = ',0.00'
          TabOrder = 6
          DecimalPlacesAlwaysShown = True
          DataField = 'NCM_TAXA_EST'
          DataSource = dsDados
        end
      end
    end
  end
  object ActionNCM: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 455
    Top = 271
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
    end
    object actUpRefazer: TAction
      Category = 'Atualizar'
      Caption = 'Gerar Nova Tabela de NCM'
      OnExecute = actUpRefazerExecute
      OnUpdate = actUpRefazerUpdate
    end
    object actUpAtualizar: TAction
      Category = 'Atualizar'
      Caption = 'Atualizar Tabela de NCM'
      ImageIndex = 48
      OnExecute = actUpAtualizarExecute
      OnUpdate = actUpAtualizarUpdate
    end
    object actUpExcluir: TAction
      Category = 'Atualizar'
      Caption = 'Limpar Tabela de NCM'
      OnExecute = actUpExcluirExecute
      OnUpdate = actUpAtualizarUpdate
    end
  end
  object tbDados: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000300 ORDER BY NCM_CODIGO ASC')
    Left = 488
    Top = 288
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
    object tbDadosNCM_DATA_REG: TSQLTimeStampField
      FieldName = 'NCM_DATA_REG'
      Origin = 'NCM_DATA_REG'
    end
    object tbDadosNCM_CODIGO: TStringField
      FieldName = 'NCM_CODIGO'
      Origin = 'NCM_CODIGO'
      Size = 10
    end
    object tbDadosNCM_DESCRICAO: TStringField
      FieldName = 'NCM_DESCRICAO'
      Origin = 'NCM_DESCRICAO'
      Size = 500
    end
    object tbDadosNCM_VIGENCIA_INI: TDateField
      FieldName = 'NCM_VIGENCIA_INI'
      Origin = 'NCM_VIGENCIA_INI'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbDadosNCM_VIGENCIA_FIM: TDateField
      FieldName = 'NCM_VIGENCIA_FIM'
      Origin = 'NCM_VIGENCIA_FIM'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbDadosNCM_VERSAO: TStringField
      Alignment = taCenter
      FieldName = 'NCM_VERSAO'
      Origin = 'NCM_VERSAO'
      Size = 35
    end
    object tbDadosNCM_CHAVE: TStringField
      Alignment = taCenter
      FieldName = 'NCM_CHAVE'
      Origin = 'NCM_CHAVE'
      Size = 35
    end
    object tbDadosNCM_FONTE: TStringField
      FieldName = 'NCM_FONTE'
      Origin = 'NCM_FONTE'
      Size = 60
    end
    object tbDadosNCM_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'NCM_STATUS'
      Origin = 'NCM_STATUS'
      OnGetText = tbDadosNCM_STATUSGetText
    end
    object tbDadosNCM_CEST: TStringField
      FieldName = 'NCM_CEST'
      Origin = 'NCM_CEST'
      Size = 10
    end
    object tbDadosNCM_TAXA_IMP: TFMTBCDField
      FieldName = 'NCM_TAXA_IMP'
      Origin = 'NCM_TAXA_IMP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosNCM_TAXA_NAC: TFMTBCDField
      FieldName = 'NCM_TAXA_NAC'
      Origin = 'NCM_TAXA_NAC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosNCM_TAXA_EST: TFMTBCDField
      FieldName = 'NCM_TAXA_EST'
      Origin = 'NCM_TAXA_EST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 520
    Top = 288
  end
  object ACBrIBPTax1: TACBrIBPTax
    ProxyPort = '8080'
    Left = 553
    Top = 288
  end
  object tbPesq: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000300')
    Left = 488
    Top = 256
    object tbPesqID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tbPesqNCM_DATA_REG: TSQLTimeStampField
      FieldName = 'NCM_DATA_REG'
      Origin = 'NCM_DATA_REG'
    end
    object tbPesqNCM_CODIGO: TStringField
      FieldName = 'NCM_CODIGO'
      Origin = 'NCM_CODIGO'
      Size = 10
    end
    object tbPesqNCM_DESCRICAO: TStringField
      FieldName = 'NCM_DESCRICAO'
      Origin = 'NCM_DESCRICAO'
      Size = 500
    end
    object tbPesqNCM_VIGENCIA_INI: TDateField
      FieldName = 'NCM_VIGENCIA_INI'
      Origin = 'NCM_VIGENCIA_INI'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbPesqNCM_VIGENCIA_FIM: TDateField
      FieldName = 'NCM_VIGENCIA_FIM'
      Origin = 'NCM_VIGENCIA_FIM'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbPesqNCM_VERSAO: TStringField
      FieldName = 'NCM_VERSAO'
      Origin = 'NCM_VERSAO'
      Size = 35
    end
    object tbPesqNCM_CHAVE: TStringField
      FieldName = 'NCM_CHAVE'
      Origin = 'NCM_CHAVE'
      Size = 35
    end
    object tbPesqNCM_FONTE: TStringField
      FieldName = 'NCM_FONTE'
      Origin = 'NCM_FONTE'
      Size = 60
    end
    object tbPesqNCM_STATUS: TIntegerField
      FieldName = 'NCM_STATUS'
      Origin = 'NCM_STATUS'
    end
    object tbPesqNCM_CEST: TStringField
      FieldName = 'NCM_CEST'
      Origin = 'NCM_CEST'
      Size = 10
    end
    object tbPesqNCM_TAXA_IMP: TFMTBCDField
      FieldName = 'NCM_TAXA_IMP'
      Origin = 'NCM_TAXA_IMP'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbPesqNCM_TAXA_NAC: TFMTBCDField
      FieldName = 'NCM_TAXA_NAC'
      Origin = 'NCM_TAXA_NAC'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbPesqNCM_TAXA_EST: TFMTBCDField
      FieldName = 'NCM_TAXA_EST'
      Origin = 'NCM_TAXA_EST'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbPesqNCM_TAXA_MUN: TFMTBCDField
      FieldName = 'NCM_TAXA_MUN'
      Origin = 'NCM_TAXA_MUN'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
  end
  object OpenDlg: TOpenDialog
    Filter = 'Tabelas IBPTs|*.csv'
    Title = 'Selecione a tabela'
    Left = 553
    Top = 256
  end
  object Pop01: TPopupMenu
    Left = 520
    Top = 256
    object GerarNovaTabeladeNCM1: TMenuItem
      Action = actUpRefazer
    end
    object AtualizarTabeladeNCM1: TMenuItem
      Action = actUpAtualizar
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LimparTabeladeNCM1: TMenuItem
      Action = actUpExcluir
    end
  end
end
