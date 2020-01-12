object FrListaTransportadoras: TFrListaTransportadoras
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecionar Transportadoras'
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
    Caption = 'Selecionar Transportadoras'
    Color = 16512
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
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
        FieldName = 'TRA_CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_DATA_REG'
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
        FieldName = 'TRA_RAZAO_SOCIAL'
        Title.Caption = 'Raz'#227'o Social / Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 332
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_CNPJ'
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
        FieldName = 'TRA_UF'
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
        FieldName = 'TRA_STATUS'
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
  end
  object tbDados: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   ID_EMPRESA,'
      '   TRA_CODIGO,'
      '   TRA_DATA_REG,'
      '   TRA_RAZAO_SOCIAL,'
      '   TRA_CNPJ,'
      '   TRA_UF,'
      '   TRA_STATUS'
      'FROM'
      '   C000310'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   TRA_RAZAO_SOCIAL ASC')
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
    object tbDadosTRA_CODIGO: TIntegerField
      FieldName = 'TRA_CODIGO'
      Origin = 'TRA_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosTRA_DATA_REG: TSQLTimeStampField
      FieldName = 'TRA_DATA_REG'
      Origin = 'TRA_DATA_REG'
    end
    object tbDadosTRA_RAZAO_SOCIAL: TStringField
      FieldName = 'TRA_RAZAO_SOCIAL'
      Origin = 'TRA_RAZAO_SOCIAL'
      Required = True
      Size = 120
    end
    object tbDadosTRA_CNPJ: TStringField
      FieldName = 'TRA_CNPJ'
      Origin = 'TRA_CNPJ'
      Required = True
      OnGetText = tbDadosTRA_CNPJGetText
      Size = 15
    end
    object tbDadosTRA_UF: TStringField
      Alignment = taCenter
      FieldName = 'TRA_UF'
      Origin = 'TRA_UF'
      FixedChar = True
      Size = 2
    end
    object tbDadosTRA_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'TRA_STATUS'
      Origin = 'TRA_STATUS'
      OnGetText = tbDadosTRA_STATUSGetText
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    Left = 288
    Top = 136
  end
end
