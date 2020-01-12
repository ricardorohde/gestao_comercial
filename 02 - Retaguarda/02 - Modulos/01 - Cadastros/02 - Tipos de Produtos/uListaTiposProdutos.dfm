object FrListarTiposProdutos: TFrListarTiposProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tipos de Produtos.'
  ClientHeight = 271
  ClientWidth = 537
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 531
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Tipos de Produtos - Selecionar'
    Color = 16744448
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 232
    Width = 531
    HotTrack = True
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 531
    Height = 176
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = dsDados
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = RzDialogButtons1ClickOk
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'TIP_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIP_DATA_REG'
        Title.Caption = 'Modifica'#231#227'o'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIP_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 302
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIP_STATUS'
        Title.Caption = 'Ativo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end>
  end
  object tbDados: TFDQuery
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
    Left = 256
    Top = 136
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object tbDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDadosID_EMPRESA: TIntegerField
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
      OnGetText = tbDadosTIP_STATUSGetText
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    Left = 288
    Top = 136
  end
end
