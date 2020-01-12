object FrImportarUpdateEstoque: TFrImportarUpdateEstoque
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Atualizar estoque.'
  ClientHeight = 425
  ClientWidth = 965
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 387
    Width = 961
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    CaptionOk = 'Processar'
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    TabOrder = 2
    VisualStyle = vsGradient
    object Button1: TButton
      Left = 5
      Top = 5
      Width = 130
      Height = 25
      Caption = 'F2 - Vincular / Modificar'
      TabOrder = 3
      OnClick = Vincular1Click
    end
    object JvDBCheckBox1: TJvDBCheckBox
      Left = 279
      Top = 9
      Width = 194
      Height = 17
      Caption = 'Alterar valor de custo do produto.'
      DataField = 'PRD_UP_VENDA'
      DataSource = dsQueryItens
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Button2: TButton
      Left = 140
      Top = 5
      Width = 130
      Height = 25
      Caption = 'F3 - Selecionar Todos'
      TabOrder = 5
      OnClick = Selecionartodos1Click
    end
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 42
    Width = 961
    Height = 343
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    DataSource = dsQueryItens
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = eGridDrawColumnCell
    OnDblClick = eGridDblClick
    PostOnEnterKey = True
    ShowTitleHint = True
    AutoSizeColumns = True
    AutoSizeColumnIndex = 6
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_CHECK'
        Title.Alignment = taCenter
        Title.Caption = 'SEL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_STS'
        Title.Alignment = taCenter
        Title.Caption = 'STS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_TIPO'
        Title.Caption = 'Tipo de Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_GRUPO'
        Title.Caption = 'Grupo de Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_CODIGO_BARRAS'
        Title.Caption = 'C'#243'digo de Barras'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 261
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_UNIDADE'
        Title.Caption = 'Un.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_QTDE'
        Title.Caption = 'Qtde.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_VLR_UNITARIO'
        Title.Caption = 'Valor Unit.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 961
    Height = 38
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = 8404992
    Enabled = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 37
      Height = 16
      Caption = 'NF-e: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDBLabel1: TRzDBLabel
      Left = 5
      Top = 19
      Width = 65
      Height = 17
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 2000
      DataField = 'NFE_NUMERO'
      DataSource = FrImportarNfe.dsQuery
    end
    object Label2: TLabel
      Left = 89
      Top = 3
      Width = 45
      Height = 16
      Caption = 'Chave:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDBLabel2: TRzDBLabel
      Left = 89
      Top = 19
      Width = 66
      Height = 16
      AutoSize = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 2000
      DataField = 'NFE_CHAVE'
      DataSource = FrImportarNfe.dsQuery
    end
    object RzDBLabel3: TRzDBLabel
      Left = 427
      Top = 19
      Width = 66
      Height = 16
      AutoSize = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 2000
      DataField = 'NFE_RAZAO'
      DataSource = FrImportarNfe.dsQuery
    end
    object Label3: TLabel
      Left = 427
      Top = 1
      Width = 78
      Height = 16
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dsQueryItens: TDataSource
    DataSet = Query
    Left = 40
    Top = 96
  end
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 216
    Top = 104
  end
  object Query: TFDQuery
    BeforePost = QueryBeforePost
    CachedUpdates = True
    IndexFieldNames = 'ID_C000040'
    MasterSource = FrImportarNfe.dsQuery
    MasterFields = 'ID'
    DetailFields = 'ID'
    AfterApplyUpdates = QueryAfterApplyUpdates
    Connection = FrModuloRet.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '   /* Exibe a descri'#231#227'o dos tipos de produtos */'
      '   CAST('#39#39' AS VARCHAR(120)) AS PRD_TIP_DESCRICAO,'
      '      '
      '   /* Exibe a descri'#231#227'o do grupo de produtos */'
      '   CAST('#39#39' AS VARCHAR(60)) AS PRD_GRP_DESCRICAO,'
      ''
      '   /* Exibe os demais dados do produto importado */'
      '   T1.*'
      'FROM'
      '   C000041 AS T1'
      'JOIN'
      '   C000040 AS T2'
      'ON'
      '   T2.ID          = T1.ID_C000040'
      'WHERE'
      '   T2.ID_EMPRESA  = :ID_EMP'
      'AND'
      '   T1.ID_C000040  = :ID'
      'AND'
      '   T1.PRD_ESTOQUE = '#39'N'#39
      'ORDER BY'
      '   T2.ID')
    Left = 8
    Top = 96
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_C000040: TIntegerField
      FieldName = 'ID_C000040'
      Origin = 'ID_C000040'
    end
    object QueryID_TIPO_PRODUTO: TIntegerField
      FieldName = 'ID_TIPO_PRODUTO'
      Origin = 'ID_TIPO_PRODUTO'
    end
    object QueryID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
    object QueryPRD_ITEM: TIntegerField
      FieldName = 'PRD_ITEM'
      Origin = 'PRD_ITEM'
    end
    object QueryPRD_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
    end
    object QueryPRD_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = []
      DisplayFormat = '000000'
    end
    object QueryPRD_CODIGO_TER: TStringField
      FieldName = 'PRD_CODIGO_TER'
      Origin = 'PRD_CODIGO_TER'
      Size = 35
    end
    object QueryPRD_CODIGO_BARRAS: TStringField
      FieldName = 'PRD_CODIGO_BARRAS'
      Origin = 'PRD_CODIGO_BARRAS'
      Size = 35
    end
    object QueryPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      OnSetText = QueryPRD_DESCRICAOSetText
      Size = 120
    end
    object QueryPRD_UNIDADE: TStringField
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      Size = 4
    end
    object QueryPRD_CFOP: TIntegerField
      FieldName = 'PRD_CFOP'
      Origin = 'PRD_CFOP'
    end
    object QueryPRD_NCM: TStringField
      FieldName = 'PRD_NCM'
      Origin = 'PRD_NCM'
      Size = 10
    end
    object QueryPRD_CEST: TStringField
      FieldName = 'PRD_CEST'
      Origin = 'PRD_CEST'
      Size = 10
    end
    object QueryPRD_QTDE: TBCDField
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      DisplayFormat = ',0.000'
      Precision = 18
    end
    object QueryPRD_VLR_UNITARIO: TBCDField
      FieldName = 'PRD_VLR_UNITARIO'
      Origin = 'PRD_VLR_UNITARIO'
      DisplayFormat = ',0.000'
      Precision = 18
    end
    object QueryPRD_VLR_FRETE: TBCDField
      FieldName = 'PRD_VLR_FRETE'
      Origin = 'PRD_VLR_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_VLR_SEGURO: TBCDField
      FieldName = 'PRD_VLR_SEGURO'
      Origin = 'PRD_VLR_SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_VLR_OUTRO: TBCDField
      FieldName = 'PRD_VLR_OUTRO'
      Origin = 'PRD_VLR_OUTRO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_VLR_DESCONTO: TBCDField
      FieldName = 'PRD_VLR_DESCONTO'
      Origin = 'PRD_VLR_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_INFOS: TStringField
      FieldName = 'PRD_INFOS'
      Origin = 'PRD_INFOS'
      Size = 120
    end
    object QueryPRD_VLR_ICMS: TBCDField
      FieldName = 'PRD_VLR_ICMS'
      Origin = 'PRD_VLR_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_VLR_IPI: TBCDField
      FieldName = 'PRD_VLR_IPI'
      Origin = 'PRD_VLR_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_VLR_PIS: TBCDField
      FieldName = 'PRD_VLR_PIS'
      Origin = 'PRD_VLR_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_VLR_COFINS: TBCDField
      FieldName = 'PRD_VLR_COFINS'
      Origin = 'PRD_VLR_COFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_VLR_TOTAL: TBCDField
      FieldName = 'PRD_VLR_TOTAL'
      Origin = 'PRD_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_ESTOQUE: TStringField
      FieldName = 'PRD_ESTOQUE'
      Origin = 'PRD_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object QueryPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      Origin = 'PRD_ORIGEM'
    end
    object QueryPRD_TIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRD_TIPO'
      LookupDataSet = QueryTipo
      LookupKeyFields = 'ID'
      LookupResultField = 'TIP_DESCRICAO'
      KeyFields = 'ID_TIPO_PRODUTO'
      Lookup = True
    end
    object QueryPRD_GRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRD_GRUPO'
      LookupDataSet = QueryGrupo
      LookupKeyFields = 'ID'
      LookupResultField = 'GRP_DESCRICAO'
      KeyFields = 'ID_GRUPO'
      Lookup = True
    end
    object QueryPRD_STS: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'PRD_STS'
      Origin = 'PRD_STS'
      FixedChar = True
      Size = 1
    end
    object QueryPRD_CHECK: TStringField
      Alignment = taCenter
      FieldName = 'PRD_CHECK'
      Origin = 'PRD_CHECK'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QueryPRD_UP_VENDA: TStringField
      FieldName = 'PRD_UP_VENDA'
      Origin = 'PRD_UP_VENDA'
      FixedChar = True
      Size = 1
    end
  end
  object QueryGrupo: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT '
      '   * '
      'FROM '
      '   C000402 '
      'WHERE '
      '   ID_EMPRESA = :ID_EMPRESA '
      'ORDER BY '
      '   GRP_DESCRICAO')
    Left = 376
    Top = 101
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QueryGrupoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryGrupoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object QueryGrupoGRP_CODIGO: TIntegerField
      FieldName = 'GRP_CODIGO'
      Origin = 'GRP_CODIGO'
      DisplayFormat = '000'
    end
    object QueryGrupoGRP_DATA_REG: TSQLTimeStampField
      FieldName = 'GRP_DATA_REG'
      Origin = 'GRP_DATA_REG'
    end
    object QueryGrupoGRP_DESCRICAO: TStringField
      FieldName = 'GRP_DESCRICAO'
      Origin = 'GRP_DESCRICAO'
      Size = 60
    end
    object QueryGrupoGRP_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'GRP_STATUS'
      Origin = 'GRP_STATUS'
    end
  end
  object dsQueryGrupo: TJvDataSource
    DataSet = QueryGrupo
    Left = 408
    Top = 101
  end
  object QueryTipo: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT '
      '   * '
      'FROM '
      '   C000401 '
      'WHERE '
      '   ID_EMPRESA = :ID_EMPRESA '
      'ORDER BY '
      '   TIP_DESCRICAO')
    Left = 312
    Top = 101
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tbDadosTIP_CODIGO: TIntegerField
      FieldName = 'TIP_CODIGO'
      Origin = 'TIP_CODIGO'
      DisplayFormat = '000'
    end
    object tbDadosTIP_DATA_REG: TSQLTimeStampField
      FieldName = 'TIP_DATA_REG'
      Origin = 'TIP_DATA_REG'
    end
    object tbDadosTIP_DESCRICAO: TStringField
      FieldName = 'TIP_DESCRICAO'
      Origin = 'TIP_DESCRICAO'
      Size = 60
    end
    object tbDadosTIP_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'TIP_STATUS'
      Origin = 'TIP_STATUS'
    end
  end
  object dsQueryTipo: TJvDataSource
    DataSet = QueryTipo
    Left = 344
    Top = 101
  end
  object Pop00: TPopupMenu
    Left = 264
    Top = 176
    object Vincular1: TMenuItem
      Caption = 'Vincular / Modificar'
      ShortCut = 113
      OnClick = Vincular1Click
    end
    object Selecionartodos1: TMenuItem
      Caption = 'Selecionar Todos'
      ShortCut = 114
      OnClick = Selecionartodos1Click
    end
  end
end
