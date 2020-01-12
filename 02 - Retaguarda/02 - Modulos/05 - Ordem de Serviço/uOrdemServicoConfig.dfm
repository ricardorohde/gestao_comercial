object FrOrdemServicoConfig: TFrOrdemServicoConfig
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configurar Emissor O.S'
  ClientHeight = 210
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 449
    Height = 50
    Align = alTop
    Alignment = taCenter
    Caption = 
      'Permite configurar diversos par'#226'metros do emissor de Ordens de S' +
      'ervi'#231'os.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    WordWrap = True
    ExplicitWidth = 434
  end
  object Label2: TLabel
    Left = 4
    Top = 88
    Width = 39
    Height = 15
    Caption = 'Linha 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 4
    Top = 127
    Width = 39
    Height = 15
    Caption = 'Linha 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 174
    Width = 455
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    TabOrder = 0
  end
  object chExibeTitulo: TRzDBCheckBox
    Left = 4
    Top = 64
    Width = 239
    Height = 17
    DataField = '70_EXIBE_TITULO'
    DataSource = DataSource1
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Caption = 'Exibe o t'#237'tulo acima dos dados do Cliente.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object txtLinha1: TRzDBEdit
    Left = 4
    Top = 104
    Width = 445
    Height = 21
    DataSource = DataSource1
    DataField = '70_MSG_LINHA1'
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object txtLinha2: TRzDBEdit
    Left = 4
    Top = 143
    Width = 445
    Height = 21
    DataSource = DataSource1
    DataField = '70_MSG_LINHA2'
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Query: TFDQuery
    OnNewRecord = QueryNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000073 WHERE ID_EMP = :ID_EMP')
    Left = 336
    Top = 56
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftInteger
        ParamType = ptInput
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
    object QueryStringField70_EXIBE_TITULO: TStringField
      DefaultExpression = #39'N'#39
      FieldName = '70_EXIBE_TITULO'
      Origin = '"70_EXIBE_TITULO"'
      FixedChar = True
      Size = 1
    end
    object QueryStringField70_MSG_LINHA1: TStringField
      FieldName = '70_MSG_LINHA1'
      Origin = '"70_MSG_LINHA1"'
      Size = 100
    end
    object QueryStringField70_MSG_LINHA2: TStringField
      FieldName = '70_MSG_LINHA2'
      Origin = '"70_MSG_LINHA2"'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Query
    Left = 376
    Top = 56
  end
end
