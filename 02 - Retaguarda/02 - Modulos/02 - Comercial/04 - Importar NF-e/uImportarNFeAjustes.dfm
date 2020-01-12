object FrImportarNFeAjustes: TFrImportarNFeAjustes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Importar NF-e'
  ClientHeight = 125
  ClientWidth = 529
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 120
    Top = 5
    Width = 76
    Height = 13
    Caption = 'Tipo de Produto'
  end
  object Label2: TLabel
    Left = 326
    Top = 5
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label3: TLabel
    Left = 3
    Top = 5
    Width = 72
    Height = 13
    Caption = 'C'#243'digo Interno'
  end
  object Label4: TLabel
    Left = 3
    Top = 44
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label5: TLabel
    Left = 326
    Top = 44
    Width = 14
    Height = 13
    Caption = 'UN'
  end
  object Label6: TLabel
    Left = 361
    Top = 44
    Width = 28
    Height = 13
    Caption = 'Qtde.'
  end
  object Label7: TLabel
    Left = 450
    Top = 44
    Width = 50
    Height = 13
    Caption = 'Valor Unit.'
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 87
    Width = 525
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    TabOrder = 0
    VisualStyle = vsGradient
  end
  object cb_tipo: TJvDBLookupCombo
    Left = 120
    Top = 20
    Width = 200
    Height = 21
    DataField = 'ID_TIPO_PRODUTO'
    DataSource = dsQuery
    LookupField = 'ID'
    LookupDisplay = 'TIP_DESCRICAO'
    LookupSource = dsQueryTipo
    TabOrder = 1
  end
  object cb_grupo: TJvDBLookupCombo
    Left = 326
    Top = 20
    Width = 199
    Height = 21
    DataField = 'ID_GRUPO'
    DataSource = dsQuery
    LookupField = 'ID'
    LookupDisplay = 'GRP_DESCRICAO'
    LookupSource = dsQueryGrupo
    TabOrder = 2
  end
  object ed_descricao: TRzDBEdit
    Left = 3
    Top = 59
    Width = 317
    Height = 21
    DataSource = dsQuery
    DataField = 'PRD_DESCRICAO'
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object RzDBButtonEdit1: TRzDBButtonEdit
    Left = 3
    Top = 20
    Width = 111
    Height = 21
    DataSource = dsQuery
    DataField = 'PRD_CODIGO'
    TabOrder = 4
    AltBtnKind = bkReject
    AltBtnVisible = True
    AltBtnWidth = 15
    ButtonWidth = 15
    OnAltBtnClick = RzDBButtonEdit1AltBtnClick
    OnButtonClick = RzDBButtonEdit1ButtonClick
  end
  object RzDBEdit1: TRzDBEdit
    Left = 326
    Top = 59
    Width = 29
    Height = 21
    DataSource = dsQuery
    DataField = 'PRD_UNIDADE'
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object JvDBCalcEdit1: TJvDBCalcEdit
    Left = 361
    Top = 59
    Width = 83
    Height = 21
    DisplayFormat = ',0.000'
    TabOrder = 6
    DecimalPlacesAlwaysShown = False
    DataField = 'PRD_QTDE'
    DataSource = dsQuery
  end
  object JvDBCalcEdit2: TJvDBCalcEdit
    Left = 450
    Top = 59
    Width = 75
    Height = 21
    DisplayFormat = ',0.000'
    TabOrder = 7
    DecimalPlacesAlwaysShown = False
    DataField = 'PRD_VLR_UNITARIO'
    DataSource = dsQuery
  end
  object dsQuery: TDataSource
    DataSet = FrImportarUpdateEstoque.Query
    Left = 176
    Top = 88
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
    Left = 104
    Top = 93
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
    Left = 136
    Top = 93
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
    Left = 8
    Top = 93
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
    Left = 40
    Top = 93
  end
end
