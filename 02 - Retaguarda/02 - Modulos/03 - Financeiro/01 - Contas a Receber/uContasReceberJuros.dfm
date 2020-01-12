object FrContasReceberJuros: TFrContasReceberJuros
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Juros e Multa.'
  ClientHeight = 85
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 5
    Width = 89
    Height = 15
    Caption = 'Car'#234'ncia / Juros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 153
    Top = 7
    Width = 93
    Height = 15
    Caption = 'Car'#234'ncia / Multa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 49
    Width = 302
    CaptionCancel = 'Cancelar'
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    GradientColorStyle = gcsCustom
    TabOrder = 0
    VisualStyle = vsGradient
  end
  object edCarenciaJuros: TJvDBSpinEdit
    Left = 5
    Top = 22
    Width = 41
    Height = 21
    TabOrder = 1
    DataField = 'REC_JUROS_CAREN'
    DataSource = dsQuery
  end
  object edJuros: TJvDBCalcEdit
    Left = 52
    Top = 22
    Width = 95
    Height = 21
    DisplayFormat = ',0.00'
    TabOrder = 2
    DecimalPlacesAlwaysShown = True
    DataField = 'REC_JUROS'
    DataSource = dsQuery
  end
  object edCarenciaMulta: TJvDBSpinEdit
    Left = 153
    Top = 22
    Width = 41
    Height = 21
    TabOrder = 3
    DataField = 'REC_MULTA_CAREN'
    DataSource = dsQuery
  end
  object edMulta: TJvDBCalcEdit
    Left = 200
    Top = 22
    Width = 95
    Height = 21
    DisplayFormat = ',0.00'
    TabOrder = 4
    DecimalPlacesAlwaysShown = True
    DataField = 'REC_MULTA'
    DataSource = dsQuery
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 81
    Top = 54
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 32
    Top = 55
  end
  object Query: TFDQuery
    BeforePost = QueryBeforePost
    AfterPost = QueryAfterPost
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   REC_JUROS,'
      '   REC_JUROS_CAREN,'
      '   REC_MULTA,'
      '   REC_MULTA_CAREN'
      'FROM'
      '   C000110'
      'WHERE'
      '   ID = :ID')
    Top = 55
    ParamData = <
      item
        Name = 'ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryREC_JUROS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'REC_JUROS'
      Origin = 'REC_JUROS'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object QueryREC_JUROS_CAREN: TIntegerField
      DefaultExpression = '0'
      FieldName = 'REC_JUROS_CAREN'
      Origin = 'REC_JUROS_CAREN'
    end
    object QueryREC_MULTA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'REC_MULTA'
      Origin = 'REC_MULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryREC_MULTA_CAREN: TIntegerField
      DefaultExpression = '0'
      FieldName = 'REC_MULTA_CAREN'
      Origin = 'REC_MULTA_CAREN'
    end
  end
end
