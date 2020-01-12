object FrConfigFinanceiro: TFrConfigFinanceiro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configura'#231#245'es do financeiro.'
  ClientHeight = 165
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label71: TLabel
    Left = 4
    Top = 43
    Width = 193
    Height = 15
    Caption = 'Plano de Contas (Contas e Receber)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label70: TLabel
    Left = 4
    Top = 3
    Width = 183
    Height = 15
    Caption = 'Plano de Contas (Contas a Pagar)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 4
    Top = 85
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
    Left = 152
    Top = 87
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
  object edPlnContasRec: TRzDBButtonEdit
    Left = 4
    Top = 60
    Width = 422
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_CTAS_REC_DESC'
    TabOrder = 1
    OnEnter = edPlnContasPagEnter
    OnExit = edPlnContasPagExit
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
    OnButtonClick = edPlnContasRecButtonClick
  end
  object edPlnContasPag: TRzDBButtonEdit
    Left = 4
    Top = 18
    Width = 422
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_CTAS_PAG_DESC'
    Color = clWhite
    TabOrder = 0
    OnEnter = edPlnContasPagEnter
    OnExit = edPlnContasPagExit
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
    OnButtonClick = edPlnContasPagButtonClick
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 129
    Width = 430
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    GradientColorStyle = gcsCustom
    TabOrder = 6
    VisualStyle = vsGradient
  end
  object edCarenciaJuros: TJvDBSpinEdit
    Left = 4
    Top = 102
    Width = 41
    Height = 21
    TabOrder = 2
    OnEnter = edPlnContasPagEnter
    OnExit = edPlnContasPagExit
    DataField = 'F_JUROS_CAREN'
    DataSource = dsQuery
  end
  object edJuros: TJvDBCalcEdit
    Left = 51
    Top = 102
    Width = 95
    Height = 21
    DisplayFormat = ',0.00'
    TabOrder = 3
    DecimalPlacesAlwaysShown = True
    OnEnter = edPlnContasPagEnter
    OnExit = edPlnContasPagExit
    DataField = 'F_JUROS'
    DataSource = dsQuery
  end
  object edCarenciaMulta: TJvDBSpinEdit
    Left = 152
    Top = 102
    Width = 41
    Height = 21
    TabOrder = 4
    OnEnter = edPlnContasPagEnter
    OnExit = edPlnContasPagExit
    DataField = 'F_MULTA_CAREN'
    DataSource = dsQuery
  end
  object edMulta: TJvDBCalcEdit
    Left = 199
    Top = 102
    Width = 95
    Height = 21
    DisplayFormat = ',0.00'
    TabOrder = 5
    DecimalPlacesAlwaysShown = True
    OnEnter = edPlnContasPagEnter
    OnExit = edPlnContasPagExit
    DataField = 'F_MULTA'
    DataSource = dsQuery
  end
  object Query: TFDQuery
    BeforePost = QueryBeforePost
    OnNewRecord = QueryNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000501_FIN WHERE ID_EMP = :ID_EMP')
    Left = 344
    Top = 96
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
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
    object QueryID_PLN_CTAS_PAG: TIntegerField
      FieldName = 'ID_PLN_CTAS_PAG'
      Origin = 'ID_PLN_CTAS_PAG'
    end
    object QueryPLN_CTAS_PAG_DESC: TStringField
      FieldName = 'PLN_CTAS_PAG_DESC'
      Origin = 'PLN_CTAS_PAG_DESC'
      ProviderFlags = []
      Size = 77
    end
    object QueryID_PLN_CTAS_REC: TIntegerField
      FieldName = 'ID_PLN_CTAS_REC'
      Origin = 'ID_PLN_CTAS_REC'
    end
    object QueryPLN_CTAS_REC_DESC: TStringField
      FieldName = 'PLN_CTAS_REC_DESC'
      Origin = 'PLN_CTAS_REC_DESC'
      ProviderFlags = []
      Size = 77
    end
    object QueryF_JUROS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'F_JUROS'
      Origin = 'F_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryF_JUROS_CAREN: TIntegerField
      DefaultExpression = '0.00'
      FieldName = 'F_JUROS_CAREN'
      Origin = 'F_JUROS_CAREN'
    end
    object QueryF_MULTA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'F_MULTA'
      Origin = 'F_MULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryF_MULTA_CAREN: TIntegerField
      DefaultExpression = '0.00'
      FieldName = 'F_MULTA_CAREN'
      Origin = 'F_MULTA_CAREN'
    end
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 376
    Top = 96
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 304
    Top = 96
  end
end
