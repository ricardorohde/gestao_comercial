object FrDreSintetico01: TFrDreSintetico01
  Left = 0
  Top = 0
  Caption = 'FrDreSintetico01'
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
    Left = 48
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DataSource2
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
      Borders.DrawBottom = True
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
        BeforePrint = RLLabel1BeforePrint
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 70
        Width = 37
        Height = 19
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
        Height = 19
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
        Height = 19
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
        Caption = 'DFC - DEMONSTRATIVO DE FLUXO DE CAIXA'
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
        BeforePrint = RLLabel16BeforePrint
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
      Top = 345
      Width = 718
      Height = 38
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult2: TRLDBResult
        Left = 509
        Top = 0
        Width = 209
        Height = 38
        Align = faRight
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'F_VALOR'
        DataSource = DataSource2
        DisplayMask = ',0.00'
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
    object RLBand5: TRLBand
      Left = 38
      Top = 383
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
      Height = 25
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel7: TRLLabel
        Left = 248
        Top = 5
        Width = 43
        Height = 15
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
    object RLGroup2: TRLGroup
      Left = 38
      Top = 153
      Width = 718
      Height = 192
      DataFields = 'F_TIPO'
      object RLBand8: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        BandType = btTitle
        Color = 14540253
        ParentColor = False
        Transparent = False
        object RLDBText3: TRLDBText
          Left = 0
          Top = 0
          Width = 173
          Height = 16
          Align = faLeft
          DataField = 'F_GRUPO'
          DataSource = DataSource2
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
      object RLBand10: TRLBand
        Left = 0
        Top = 16
        Width = 718
        Height = 16
        object RLDBText4: TRLDBText
          Left = 248
          Top = 0
          Width = 74
          Height = 14
          DataField = 'F_DESCRICAO'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText4BeforePrint
        end
        object RLDBText5: TRLDBText
          Left = 616
          Top = 0
          Width = 102
          Height = 16
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_VALOR'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText5BeforePrint
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 32
        Width = 718
        Height = 31
        BandType = btSummary
        object RLDBResult3: TRLDBResult
          Left = 594
          Top = 4
          Width = 124
          Height = 16
          Align = faRightTop
          Alignment = taRightJustify
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'F_VALOR'
          DataSource = DataSource2
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = 'Total : '
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 4
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 406
    Top = 292
  end
  object Query: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ('
      '   SELECT'
      '      PLN_CONTA_CODIGO || '#39' - '#39' || PLN_DESCRICAO'
      '   FROM'
      '      C000018'
      '   WHERE'
      
        '      PLN_CONTA_CODIGO = (SELECT SUBSTRING(PLN_CONTA_CODIGO FROM' +
        ' 1 FOR 1) FROM C000018 WHERE ID = TB0.ID_PLN)'
      '   ) AS F_GRUPO,'
      '   TB0.F_CUP_DATA AS F_DATA,'
      
        '   (SELECT PLN_CONTA_CODIGO || '#39' - '#39' || PLN_DESCRICAO FROM C0000' +
        '18 WHERE ID = TB0.ID_PLN) AS F_DESCRICAO,'
      '   CAST(SUM(TB0.F_VALOR) AS FLOAT) AS F_VALOR,'
      '   CAST('#39'R'#39' AS CHAR) AS F_TIPO'
      'FROM'
      '(SELECT'
      '   F_CUP_DATA,'
      '   ID_PLN_PDV AS ID_PLN,'
      '   COALESCE(SUM(F_CUP_TOTAL),0) AS F_VALOR'
      'FROM'
      '   C000030'
      'WHERE'
      '   F_CUP_DATA BETWEEN :A_DATA AND :B_DATA'
      'AND'
      '   F_CUP_STATUS = 1'
      'GROUP BY'
      '   F_CUP_DATA,'
      '   ID_PLN_PDV'
      ''
      'UNION ALL'
      ''
      'SELECT'
      '   T1.REC_DATA_RECEBTO,'
      '   T1.ID_PLN_CTAS AS ID_PLN,'
      '   COALESCE(SUM(T1.REC_VLR_RECEBIDO),0) AS F_VALOR'
      'FROM'
      '   C000112 AS T1'
      'JOIN'
      '   C000110 AS T2'
      'ON'
      '   T2.ID = T1.ID_C000110'
      'WHERE'
      '   T2.ID_EMPRESA = :ID_EMP'
      'AND'
      '   T1.REC_DATA_RECEBTO BETWEEN :A_DATA AND :B_DATA'
      'GROUP BY'
      '   T1.REC_DATA_RECEBTO,'
      '   T1.ID_PLN_CTAS) AS TB0'
      ''
      'GROUP BY'
      '   TB0.F_CUP_DATA,'
      '   TB0.ID_PLN,'
      '   CAST('#39'R'#39' AS CHAR)'
      ''
      'UNION ALL'
      ''
      'SELECT'
      '   ('
      '   SELECT'
      '      PLN_CONTA_CODIGO || '#39' - '#39' || PLN_DESCRICAO'
      '   FROM'
      '      C000018'
      '   WHERE'
      
        '      PLN_CONTA_CODIGO = (SELECT SUBSTRING(PLN_CONTA_CODIGO FROM' +
        ' 1 FOR 1) FROM C000018 WHERE ID = TB0.ID_PLN)'
      '   ) AS F_GRUPO,'
      '   TB0.PAG_DATA_PAGTO,'
      
        '   (SELECT PLN_CONTA_CODIGO || '#39' - '#39' || PLN_DESCRICAO FROM C0000' +
        '18 WHERE ID = TB0.ID_PLN) AS F_DESCRICAO,'
      '   SUM(TB0.F_VALOR) AS F_VALOR,'
      '   CAST('#39'D'#39' AS CHAR)'
      'FROM'
      '(SELECT'
      '   T1.PAG_DATA_PAGTO,'
      '   T1.ID_PLN_CTAS AS ID_PLN,'
      '   COALESCE(SUM(T1.PAG_VLR_RECEBIDO) * (-1),0) AS F_VALOR'
      'FROM'
      '   C000212 AS T1'
      'JOIN'
      '   C000210 AS T2'
      'ON'
      '   T2.ID = T1.ID_C000210'
      'WHERE'
      '   T2.ID_EMPRESA = :ID_EMP'
      'AND'
      '   T1.PAG_DATA_PAGTO BETWEEN :A_DATA AND :B_DATA'
      'GROUP BY'
      '   T1.PAG_DATA_PAGTO,'
      '   T1.ID_PLN_CTAS) AS TB0'
      ''
      'GROUP BY'
      '   TB0.PAG_DATA_PAGTO,'
      '   TB0.ID_PLN,'
      '   CAST('#39'D'#39' AS CHAR)')
    Left = 8
    Top = 8
    ParamData = <
      item
        Name = 'A_DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = 43101d
      end
      item
        Name = 'B_DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end
      item
        Name = 'ID_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QueryF_DATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'F_DATA'
      Origin = 'F_DATA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryF_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F_DESCRICAO'
      Origin = 'F_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 65
    end
    object QueryF_VALOR: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'F_VALOR'
      Origin = 'F_VALOR'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QueryF_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F_TIPO'
      Origin = 'F_TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QueryF_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F_GRUPO'
      Origin = 'F_GRUPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object DataSource2: TDataSource
    DataSet = Query
    Left = 8
    Top = 40
  end
end
