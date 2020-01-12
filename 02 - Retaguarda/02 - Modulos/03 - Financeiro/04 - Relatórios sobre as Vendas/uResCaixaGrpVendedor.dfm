object FrResCaixasGrpVendedor: TFrResCaixasGrpVendedor
  Left = 0
  Top = 0
  Caption = 'FrResCaixasGrpVendedor'
  ClientHeight = 611
  ClientWidth = 890
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
      Height = 107
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 22
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
        Top = 90
        Width = 37
        Height = 17
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
        Top = 90
        Width = 45
        Height = 17
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
        Top = 90
        Width = 167
        Height = 17
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
        Height = 22
        Align = faTop
        Alignment = taCenter
        Caption = 'RESUMO DAS VENDAS (FRENTE DE CAIXA)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 0
        Top = 70
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
        Top = 38
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'Formas de Pagamentos - Agrupado por Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
      end
      object lbCaixa: TRLLabel
        Left = 0
        Top = 54
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'Caixa Selecionado: Todos os Caixas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
        BeforePrint = lbCaixaBeforePrint
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 243
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
      Top = 145
      Width = 718
      Height = 98
      DataFields = 'F_CUP_DATA;FUN_APELIDO'
      object RLBand3: TRLBand
        Left = 0
        Top = 38
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
          Layout = tlCenter
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
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 22
        Width = 718
        Height = 16
        BandType = btTitle
        Color = 14540253
        ParentColor = False
        Transparent = False
        object RLDBText2: TRLDBText
          Left = 0
          Top = 0
          Width = 119
          Height = 16
          Align = faLeft
          DataField = 'FUN_APELIDO'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'DATA: '
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 119
          Top = 0
          Width = 125
          Height = 16
          Align = faLeft
          DataField = 'F_CUP_DATA'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ' - DATA: '
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 0
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
          Top = 0
          Width = 156
          Height = 21
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o do Recebimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 616
          Top = 0
          Width = 102
          Height = 21
          Align = faRight
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
          Layout = tlBottom
          ParentFont = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 54
        Width = 718
        Height = 20
        AutoSize = True
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 481
          Top = 4
          Width = 237
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
          Text = 'Total do dia e Vendedor: '
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
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 287
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
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 12
    Top = 36
  end
  object Query: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   TB0.F_CUP_DATA,'
      '   TB0.FUN_APELIDO,'
      '   TB0.FRM_DESCRICAO,'
      '   CAST(SUM(TB0.FRM_VALOR) AS FLOAT) AS FRM_VALOR'
      'FROM'
      '   (SELECT'
      '      T2.ID_50,'
      '      T2.F_CUP_DATA,'
      
        '      (SELECT FUN_APELIDO FROM C000301 WHERE ID = T2.ID_VENDEDOR' +
        '),'
      '      T1.FRM_DESCRICAO,'
      '      IIF(T1.FRM_ID = 1'
      '         , IIF(T2.F_CUP_TROCO > 0'
      '               , T1.FRM_VALOR - T2.F_CUP_TROCO'
      '               , T1.FRM_VALOR'
      '         )'
      '         , T1.FRM_VALOR'
      '      ) AS FRM_VALOR'
      '   FROM'
      '      C000032 AS T1'
      '   JOIN'
      '      C000030 AS T2'
      '   ON'
      '      T2.ID_50        = T1.ID_50'
      '   AND'
      '      T2.ID_ABERTURA  = T1.ID_ABERTURA'
      '   WHERE'
      '      T2.ID_EMPRESA   = :ID_EMP'
      '   AND'
      '      T2.F_CUP_STATUS = 1'
      '   AND'
      '      T2.ID_CAIXA     = :ID_CAIXA'
      '   AND'
      '      T2.F_CUP_DATA BETWEEN :DT_A AND :DT_B'
      '   ORDER BY'
      '      T2.F_CUP_DATA, T2.ID_VENDEDOR, T1.FRM_ID'
      '   ) AS TB0'
      'GROUP BY'
      '   TB0.F_CUP_DATA,'
      '   TB0.FUN_APELIDO,'
      '   TB0.FRM_DESCRICAO')
    Left = 12
    Top = 8
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'ID_CAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'DT_A'
        DataType = ftDate
        ParamType = ptInput
        Value = 43101d
      end
      item
        Name = 'DT_B'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end>
    object QueryF_CUP_DATA: TDateField
      FieldName = 'F_CUP_DATA'
      Origin = 'F_CUP_DATA'
    end
    object QueryFRM_DESCRICAO: TStringField
      FieldName = 'FRM_DESCRICAO'
      Origin = 'FRM_DESCRICAO'
      Size = 60
    end
    object QueryFRM_VALOR: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'FRM_VALOR'
      Origin = 'FRM_VALOR'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QueryFUN_APELIDO: TStringField
      FieldName = 'FUN_APELIDO'
      Origin = 'FUN_APELIDO'
      Size = 80
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 440
    Top = 312
  end
end
