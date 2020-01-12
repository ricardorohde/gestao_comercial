object FrDreAnalitico01: TFrDreAnalitico01
  Left = 0
  Top = 0
  Caption = 'FrDreAnalitico01'
  ClientHeight = 675
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Printer: TRLReport
    Left = 64
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dsQuery
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 90
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 18
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'FLAMES COM'#201'RCIO PIROT'#201'CNICOS E EVENTOS LTDA - ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 70
        Width = 37
        Height = 20
        Align = faLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 37
        Top = 70
        Width = 45
        Height = 20
        Align = faLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = '- '
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 551
        Top = 70
        Width = 167
        Height = 20
        Align = faRight
        Alignment = taRightJustify
        Info = itLastPageNumber
        Layout = tlJustify
        Text = 'P'#225'ginas: '
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        Align = faTop
        Alignment = taCenter
        Caption = 'DRE - DEMONSTRATIVO DE RESULTADOS DO EXERC'#205'CIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 0
        Top = 50
        Width = 718
        Height = 20
        Align = faTop
        AutoSize = False
        Caption = 'PER'#205'ODO SELECIONADO: 00/00/0000 - 00/00/0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 34
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'Verificar fun'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
        Visible = False
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 316
      Width = 718
      Height = 44
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult2: TRLDBResult
        Left = 489
        Top = 0
        Width = 229
        Height = 44
        Align = faRight
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'FRM_VALOR'
        DataSource = dsQuery
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Info = riSum
        Layout = tlCenter
        ParentFont = False
        Text = 'TOTAL GERAL:  '
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 150
      Width = 718
      Height = 166
      DataFields = 'PLN_DESCRICAO'
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        BandType = btTitle
        Color = 14540253
        ParentColor = False
        Transparent = False
        object RLDBText2: TRLDBText
          Left = 0
          Top = 0
          Width = 216
          Height = 16
          Align = faLeft
          DataField = 'PLN_DESCRICAO'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'GRUPO DE CONTAS: '
          Transparent = False
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 16
        Width = 718
        Height = 64
        DataSource = dsQuerySub
        object RLBand7: TRLBand
          Left = 0
          Top = 16
          Width = 718
          Height = 20
          AutoSize = True
          BandType = btSummary
          object RLDBResult1: TRLDBResult
            Left = 580
            Top = 4
            Width = 138
            Height = 16
            Align = faRightTop
            Alignment = taRightJustify
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'FRM_VALOR'
            DataSource = dsQuery
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Info = riSum
            Layout = tlCenter
            ParentFont = False
            Text = 'Total :'
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 0
            Width = 718
            Height = 4
            Align = faTop
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 16
          object RLDBText1: TRLDBText
            Left = 368
            Top = 0
            Width = 106
            Height = 15
            DataField = 'FRM_DESCRICAO'
            DataSource = dsQuery
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 616
            Top = 0
            Width = 102
            Height = 16
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'FRM_VALOR'
            DataSource = dsQuery
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 360
      Width = 718
      Height = 16
      AutoSize = True
      BandType = btFooter
      object RLDraw1: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 4
        Align = faTop
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 4
        Width = 718
        Height = 12
        Align = faTop
        Caption = 'TechCore Solu'#231#245'es em Gest'#227'o - http://techcore.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 128
      Width = 718
      Height = 22
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel7: TRLLabel
        Left = 0
        Top = 5
        Width = 43
        Height = 15
        Align = faLeftOnly
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Contas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 613
        Top = 5
        Width = 102
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Valor (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 12
    Top = 52
  end
  object Query: TFDQuery
    Active = True
    AggregatesActive = True
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      
        'SELECT * FROM C000018 WHERE ID_EMPRESA = :ID_EMP AND PLN_CONTA_C' +
        'ODIGO IN (:3,:4) ORDER BY PLN_CONTA_CODIGO DESC')
    Left = 12
    Top = 16
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = '3'
        DataType = ftString
        ParamType = ptInput
        Size = 12
        Value = '3'
      end
      item
        Name = '4'
        DataType = ftString
        ParamType = ptInput
        Size = 12
        Value = '4'
      end>
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object QueryPLN_CONTA_CODIGO: TStringField
      FieldName = 'PLN_CONTA_CODIGO'
      Origin = 'PLN_CONTA_CODIGO'
      Size = 12
    end
    object QueryPLN_DESCRICAO: TStringField
      FieldName = 'PLN_DESCRICAO'
      Origin = 'PLN_DESCRICAO'
      Size = 65
    end
    object QueryPLN_TIPO: TStringField
      FieldName = 'PLN_TIPO'
      Origin = 'PLN_TIPO'
      FixedChar = True
      Size = 1
    end
    object QueryPLN_ATIVO: TStringField
      FieldName = 'PLN_ATIVO'
      Origin = 'PLN_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object QuerySub: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      
        'SELECT * FROM C000018 WHERE ID_EMPRESA = :ID_EMP AND PLN_CONTA_C' +
        'ODIGO LIKE :CONTA || '#39'%'#39' AND CHAR_LENGTH(PLN_CONTA_CODIGO) > 1 A' +
        'ND PLN_TIPO = '#39'A'#39' ORDER BY PLN_CONTA_CODIGO')
    Left = 12
    Top = 88
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'CONTA'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end>
  end
  object dsQuerySub: TDataSource
    AutoEdit = False
    DataSet = QuerySub
    Left = 12
    Top = 120
  end
end
