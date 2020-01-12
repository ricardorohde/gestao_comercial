object FrListaFornecedores: TFrListaFornecedores
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecionar Fornecedores'
  ClientHeight = 344
  ClientWidth = 730
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
    Width = 724
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Selecionar Fornecedores'
    Color = 16512
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -4
    ExplicitWidth = 531
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 724
    Height = 255
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
    OnDblClick = RzDialogButtons2ClickOk
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 18
    Columns = <
      item
        Expanded = False
        FieldName = 'FOR_CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_DATA_REG'
        Title.Caption = 'Modifica'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_RAZAO_SOCIAL'
        Title.Caption = 'Raz'#227'o Social / Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 331
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_CNPJ'
        Title.Caption = 'Cnpj / Cpf'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_UF'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_STATUS'
        Title.Caption = 'Ativo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end>
  end
  object RzDialogButtons2: TRzDialogButtons
    Left = 0
    Top = 308
    Width = 730
    HotTrack = True
    OnClickOk = RzDialogButtons2ClickOk
    TabOrder = 2
    ExplicitLeft = 176
    ExplicitTop = 120
    ExplicitWidth = 185
  end
  object tbDados: TFDQuery
    Connection = FrModulo.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   ID_EMPRESA,'
      '   FOR_CODIGO,'
      '   FOR_DATA_REG,'
      '   FOR_RAZAO_SOCIAL,'
      '   FOR_CNPJ,'
      '   FOR_UF,'
      '   FOR_STATUS'
      'FROM'
      '   C000305'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   FOR_RAZAO_SOCIAL ASC')
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
    object tbDadosFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosFOR_DATA_REG: TSQLTimeStampField
      FieldName = 'FOR_DATA_REG'
      Origin = 'FOR_DATA_REG'
    end
    object tbDadosFOR_RAZAO_SOCIAL: TStringField
      FieldName = 'FOR_RAZAO_SOCIAL'
      Origin = 'FOR_RAZAO_SOCIAL'
      Required = True
      Size = 120
    end
    object tbDadosFOR_CNPJ: TStringField
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
      Required = True
      OnGetText = tbDadosFOR_CNPJGetText
      Size = 15
    end
    object tbDadosFOR_UF: TStringField
      Alignment = taCenter
      FieldName = 'FOR_UF'
      Origin = 'FOR_UF'
      FixedChar = True
      Size = 2
    end
    object tbDadosFOR_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'FOR_STATUS'
      Origin = 'FOR_STATUS'
      OnGetText = tbDadosFOR_STATUSGetText
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    Left = 288
    Top = 136
  end
end
