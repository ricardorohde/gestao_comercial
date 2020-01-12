object FrMarcasProdutos: TFrMarcasProdutos
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Marcas de Produtos'
  ClientHeight = 512
  ClientWidth = 935
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe ui'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
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
      DisabledIndex = 5
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
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
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
      Width = 181
      Height = 28
      Align = alLeft
      Caption = 'Movimentar Estoque'
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
        Caption = 'Movimenta'#231#245'es'
        ExplicitTop = 24
        ExplicitHeight = 398
        object JvDBGrid1: TJvDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 917
          Height = 301
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsQuery
          DrawingStyle = gdsClassic
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe ui'
          TitleFont.Style = []
          AlternateRowColor = 15658734
          ScrollBars = ssVertical
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 19
          TitleRowHeight = 19
          Columns = <
            item
              Expanded = False
              FieldName = 'MOV_DATA_REG'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_TIPO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Modifica'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 163
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRICAO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 580
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_UNIDADE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              PickList.Strings = (
                'S'
                'N')
              ReadOnly = True
              Title.Caption = 'Ativo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_QTDE'
              Width = 60
              Visible = True
            end>
        end
        object RzDBMemo1: TRzDBMemo
          Left = 0
          Top = 307
          Width = 923
          Height = 89
          Align = alBottom
          Enabled = False
          TabOrder = 1
          ExplicitLeft = 200
          ExplicitTop = 240
          ExplicitWidth = 185
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        ExplicitTop = 24
        ExplicitHeight = 398
        object Label2: TLabel
          Left = 3
          Top = 3
          Width = 66
          Height = 15
          Caption = 'Modifica'#231#227'o'
        end
        object Label3: TLabel
          Left = 134
          Top = 3
          Width = 24
          Height = 15
          Caption = 'Tipo'
        end
        object Label4: TLabel
          Left = 230
          Top = 3
          Width = 43
          Height = 15
          Caption = 'Produto'
        end
        object Label1: TLabel
          Left = 3
          Top = 46
          Width = 67
          Height = 15
          Caption = 'Observa'#231#245'es'
        end
        object Label5: TLabel
          Left = 607
          Top = 3
          Width = 29
          Height = 15
          Caption = 'Qtde.'
        end
        object RzDBEdit2: TRzDBEdit
          Left = 3
          Top = 20
          Width = 125
          Height = 23
          DataSource = dsQuery
          DataField = 'MOV_DATA_REG'
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 0
        end
        object txtProduto: TRzDBButtonEdit
          Left = 230
          Top = 20
          Width = 371
          Height = 23
          DataSource = dsQuery
          DataField = 'PRD_DESCRICAO'
          TabOrder = 2
          AllowKeyEdit = False
          AltBtnWidth = 15
          ButtonWidth = 18
        end
        object txtObservacoes: TRzDBMemo
          Left = 3
          Top = 63
          Width = 678
          Height = 200
          DataField = 'MOV_OBSERVACAO'
          DataSource = dsQuery
          TabOrder = 4
        end
        object txtTipo: TRzDBComboBox
          Left = 134
          Top = 20
          Width = 90
          Height = 23
          DataField = 'MOV_TIPO'
          DataSource = dsQuery
          TabOrder = 1
          Items.Strings = (
            'Entrada'
            'Saida')
          Values.Strings = (
            '1'
            '2')
        end
        object txtQuant: TJvDBCalcEdit
          Left = 607
          Top = 20
          Width = 74
          Height = 23
          DisplayFormat = ',0.00'
          TabOrder = 3
          DecimalPlacesAlwaysShown = True
          DataField = 'MOV_QTDE'
          DataSource = dsQuery
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 167
    Top = 175
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
    BeforePost = QueryBeforePost
    AfterPost = QueryAfterPost
    OnNewRecord = QueryNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000022 WHERE ID_EMPRESA = :ID_EMPRESA')
    Left = 200
    Top = 176
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
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
    object QueryID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object QueryMOV_DATA_REG: TDateField
      FieldName = 'MOV_DATA_REG'
      Origin = 'MOV_DATA_REG'
    end
    object QueryMOV_TIPO: TIntegerField
      FieldName = 'MOV_TIPO'
      Origin = 'MOV_TIPO'
    end
    object QueryMOV_QTDE: TBCDField
      FieldName = 'MOV_QTDE'
      Origin = 'MOV_QTDE'
      Precision = 18
    end
    object QueryMOV_OBSERVACAO: TStringField
      FieldName = 'MOV_OBSERVACAO'
      Origin = 'MOV_OBSERVACAO'
      Size = 300
    end
    object QueryPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object QueryPRD_UNIDADE: TStringField
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      ProviderFlags = []
      Size = 5
    end
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = Query
    OnStateChange = dsQueryStateChange
    Left = 200
    Top = 208
  end
end
