object FrPercurso: TFrPercurso
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Percurso'
  ClientHeight = 193
  ClientWidth = 186
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object JvDBGrid1: TJvDBGrid
    Left = 4
    Top = 4
    Width = 81
    Height = 149
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 20
    Columns = <
      item
        Expanded = False
        FieldName = 'MD_PERCURSO'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 64
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 91
    Top = 4
    Width = 90
    Height = 73
    Action = actIncluir
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 91
    Top = 80
    Width = 90
    Height = 73
    Action = actExcluir
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 157
    Width = 186
    CaptionCancel = '&Sair'
    EnableOk = False
    EnableHelp = False
    HotTrack = True
    ShowGlyphs = True
    ShowOKButton = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = 124
    ExplicitTop = 96
    ExplicitWidth = 185
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 28
    Top = 52
  end
  object ActionList1: TActionList
    Left = 28
    Top = 84
    object actIncluir: TAction
      Caption = 'Incluir'
      OnExecute = actIncluirExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      OnExecute = actExcluirExecute
      OnUpdate = actExcluirUpdate
    end
    object actSair: TAction
      Caption = 'actSair'
      OnExecute = actSairExecute
    end
  end
  object Query: TFDQuery
    AfterInsert = QueryAfterInsert
    BeforeDelete = QueryBeforeDelete
    IndexFieldNames = 'ID_C000700'
    MasterSource = FrEmissorMDFe.dsQuery
    MasterFields = 'ID'
    DetailFields = 'ID_C000700'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000702 WHERE ID_C000700 = :ID ORDER BY ID ')
    Left = 28
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end>
    object QueryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_C000700: TIntegerField
      FieldName = 'ID_C000700'
      Origin = 'ID_C000700'
    end
    object QueryMD_PERCURSO: TStringField
      Alignment = taCenter
      FieldName = 'MD_PERCURSO'
      Origin = 'MD_PERCURSO'
      FixedChar = True
      Size = 2
    end
  end
end
