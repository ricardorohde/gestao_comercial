object frConfigEstoque: TfrConfigEstoque
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o do Estoque.'
  ClientHeight = 113
  ClientWidth = 302
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
    Left = 11
    Top = 8
    Width = 280
    Height = 33
    AutoSize = False
    Caption = 
      'Efetua o controle de estoque, impede a venda do produto com esto' +
      'que zerado'
    WordWrap = True
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 77
    Width = 302
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    ModalResultCancel = 0
    OnClickOk = RzDialogButtons1ClickOk
    OnClickCancel = RzDialogButtons1ClickCancel
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitLeft = 64
    ExplicitTop = 128
    ExplicitWidth = 185
  end
  object RzDBCheckBox1: TRzDBCheckBox
    Left = 8
    Top = 47
    Width = 119
    Height = 17
    DataField = 'CTRL_ESTOQUE'
    DataSource = dsQuery
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Caption = 'Controlar estoque?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Query: TFDQuery
    Active = True
    BeforePost = QueryBeforePost
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000405_CFG WHERE ID_EMPRESA = :ID_EMP')
    Left = 144
    Top = 32
    ParamData = <
      item
        Name = 'ID_EMP'
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
    object QueryCTRL_ESTOQUE: TStringField
      FieldName = 'CTRL_ESTOQUE'
      Origin = 'CTRL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
  object dsQuery: TDataSource
    DataSet = Query
    OnStateChange = dsQueryStateChange
    Left = 176
    Top = 32
  end
end
