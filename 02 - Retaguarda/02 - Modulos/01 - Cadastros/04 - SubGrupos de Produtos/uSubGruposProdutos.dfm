object FrSubGruposProdutos: TFrSubGruposProdutos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'SubGrupos de Produtos'
  ClientHeight = 606
  ClientWidth = 1133
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 560
    Width = 1129
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
    GradientColorStyle = gcsCustom
    GradientColorStop = 13948116
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitLeft = 3
    ExplicitTop = 559
    ExplicitWidth = 1127
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
      Left = 112
      Top = 2
      Width = 100
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
      Left = 220
      Top = 2
      Width = 100
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
      Left = 328
      Top = 2
      Width = 100
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
      Left = 436
      Top = 2
      Width = 100
      Height = 40
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DisabledIndex = 4
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      Left = 544
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
    Width = 1129
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
    ExplicitLeft = -170
    ExplicitWidth = 1105
    object Label42: TLabel
      AlignWithMargins = True
      Left = 33
      Top = 3
      Width = 202
      Height = 28
      Align = alLeft
      Caption = 'SubGrupos de Produtos'
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
    Width = 1129
    Height = 520
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    ExplicitLeft = 480
    ExplicitTop = 296
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pgControl: TJvPageControl
      Left = 0
      Top = 0
      Width = 1129
      Height = 520
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 2
      Margins.Bottom = 2
      ActivePage = tabPrincipal
      Align = alClient
      TabOrder = 0
      OnChanging = pgControlChanging
      ExplicitLeft = 3
      ExplicitTop = 49
      ExplicitWidth = 1127
      ExplicitHeight = 508
      object tabPrincipal: TTabSheet
        Caption = 'Empresas'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 1119
        ExplicitHeight = 480
        object JvDBGrid1: TJvDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1115
          Height = 486
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          DrawingStyle = gdsClassic
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          AlternateRowColor = 15658734
          ScrollBars = ssVertical
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 18
          Columns = <
            item
              Expanded = False
              FieldName = 'SUB_CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUB_DATA_REG'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
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
              FieldName = 'GRP_DESCRICAO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Caption = 'Grupo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 237
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUB_DESCRICAO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 639
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUB_STATUS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              PickList.Strings = (
                'S'
                'N')
              ReadOnly = True
              Title.Caption = 'Ativo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 35
              Visible = True
            end>
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 1119
        ExplicitHeight = 480
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 92
          Top = 3
          Width = 56
          Height = 13
          Caption = 'Modifica'#231#227'o'
        end
        object Label3: TLabel
          Left = 3
          Top = 41
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object RzDBRadioGroup1: TRzDBRadioGroup
          Left = 3
          Top = 83
          Width = 526
          Height = 44
          DataField = 'SUB_STATUS'
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
          SpaceEvenly = True
          TabOrder = 0
        end
        object RzDBEdit1: TRzDBEdit
          Left = 3
          Top = 18
          Width = 83
          Height = 21
          DataSource = dsDados
          DataField = 'SUB_CODIGO'
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 1
        end
        object RzDBEdit2: TRzDBEdit
          Left = 92
          Top = 18
          Width = 125
          Height = 21
          DataSource = dsDados
          DataField = 'SUB_DATA_REG'
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 2
        end
        object eDescricao: TRzDBEdit
          Left = 3
          Top = 56
          Width = 526
          Height = 21
          DataSource = dsDados
          DataField = 'SUB_DESCRICAO'
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object eGrupo: TJvDBLookupCombo
          Left = 223
          Top = 18
          Width = 306
          Height = 21
          DataField = 'ID_GRUPO'
          DataSource = dsDados
          LookupField = 'ID'
          LookupDisplay = 'GRP_DESCRICAO'
          LookupSource = dsGrupos
          TabOrder = 4
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 335
    Top = 262
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
  object tbDados: TFDQuery
    BeforePost = tbDadosBeforePost
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      '   (SELECT GRP_DESCRICAO FROM C000402 WHERE ID = ID_GRUPO)'
      'FROM'
      '   C000403 AS T1'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA')
    Left = 368
    Top = 262
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
    end
    object tbDadosSUB_CODIGO: TIntegerField
      FieldName = 'SUB_CODIGO'
      Origin = 'SUB_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosSUB_DATA_REG: TSQLTimeStampField
      FieldName = 'SUB_DATA_REG'
      Origin = 'SUB_DATA_REG'
    end
    object tbDadosSUB_DESCRICAO: TStringField
      FieldName = 'SUB_DESCRICAO'
      Origin = 'SUB_DESCRICAO'
      Size = 60
    end
    object tbDadosSUB_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'SUB_STATUS'
      Origin = 'SUB_STATUS'
      OnGetText = tbDadosSUB_STATUSGetText
    end
    object tbDadosGRP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRP_DESCRICAO'
      Origin = 'GRP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 368
    Top = 296
  end
  object tbGrupos: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000402 WHERE ID_EMPRESA = :ID_EMPRESA')
    Left = 271
    Top = 262
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tbGruposID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbGruposGRP_DESCRICAO: TStringField
      FieldName = 'GRP_DESCRICAO'
      Origin = 'GRP_DESCRICAO'
      Size = 60
    end
  end
  object dsGrupos: TJvDataSource
    DataSet = tbGrupos
    Left = 303
    Top = 262
  end
end
