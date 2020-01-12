object FrRel_Movto_Estoque: TFrRel_Movto_Estoque
  Left = 0
  Top = 0
  Caption = 'FrRel_Movto_Estoque'
  ClientHeight = 741
  ClientWidth = 1227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Print: TRLReport
    Left = 56
    Top = 8
    Width = 1123
    Height = 794
    AdjustableMargins = True
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    BeforePrint = PrintBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 82
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object lb_empresa: TRLLabel
        Left = 0
        Top = 22
        Width = 1047
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
        BeforePrint = lb_empresaBeforePrint
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 63
        Width = 33
        Height = 19
        Align = faLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 33
        Top = 63
        Width = 41
        Height = 19
        Align = faLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = '- '
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 910
        Top = 63
        Width = 137
        Height = 19
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
        Text = 'P'#225'ginas: '
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 1047
        Height = 22
        Align = faTop
        Alignment = taCenter
        Caption = 'MOVIMENTA'#199#195'O DO ESTOQUE - SAIDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 0
        Top = 38
        Width = 1047
        Height = 25
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
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 120
      Width = 1047
      Height = 217
      AllowedBands = [btTitle, btDetail, btSummary]
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      DataFields = 'PRD_GRUPO'
      object RLBand2: TRLBand
        Left = 0
        Top = 21
        Width = 1047
        Height = 17
        AutoSize = True
        BandType = btTitle
        object RLLabel3: TRLLabel
          Left = 3
          Top = 1
          Width = 46
          Height = 16
          AutoSize = False
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 369
          Top = 1
          Width = 36
          Height = 16
          Margins.Left = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Un.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 51
          Top = 1
          Width = 296
          Height = 16
          AutoSize = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 888
          Top = 1
          Width = 69
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 476
          Top = 2
          Width = 61
          Height = 14
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 407
          Top = 2
          Width = 66
          Height = 14
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Qtde. Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 604
          Top = 2
          Width = 63
          Height = 14
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Qtde. Atual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 680
          Top = 2
          Width = 61
          Height = 14
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Saidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 540
          Top = 2
          Width = 61
          Height = 14
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Saidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 745
          Top = 1
          Width = 46
          Height = 16
          Margins.Left = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 968
          Top = 1
          Width = 77
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total L'#237'quido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 813
          Top = 1
          Width = 69
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 38
        Width = 1047
        Height = 18
        object RLDBText1: TRLDBText
          Left = 3
          Top = 1
          Width = 46
          Height = 16
          AutoSize = False
          DataField = 'PRD_CODIGO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 369
          Top = 1
          Width = 36
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'PRD_UNIDADE'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 407
          Top = 1
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE_INICIAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 888
          Top = 1
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_TOTAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 51
          Top = 1
          Width = 296
          Height = 16
          AutoSize = False
          DataField = 'PRD_DESCRICAO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 476
          Top = 1
          Width = 61
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE_ENTRADA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 604
          Top = 1
          Width = 63
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE_ATUAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 680
          Top = 1
          Width = 61
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_QTDE'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 540
          Top = 1
          Width = 61
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE_SAIDA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 745
          Top = 1
          Width = 46
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'MOV_TIPO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 968
          Top = 1
          Width = 77
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_TOTAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 813
          Top = 1
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_TOTAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 21
        BandType = btTitle
        Color = 14869218
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand4BeforePrint
        object RLDBText3: TRLDBText
          Left = 3
          Top = 3
          Width = 122
          Height = 15
          DataField = 'PRD_GRUPO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'GRUPO: '
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 413
          Top = 6
          Width = 248
          Height = 12
          Alignment = taCenter
          Caption = '|         TOTAL GERAL DOS MOVIMENTOS        |'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 56
        Width = 1047
        Height = 26
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        object RLDBResult1: TRLDBResult
          Left = 801
          Top = 3
          Width = 245
          Height = 20
          Alignment = taRightJustify
          DataField = 'PRD_VLR_TOTAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = 'Receita Bruta: '
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 82
        Width = 1047
        Height = 16
        BandType = btFooter
        object RLLabel13: TRLLabel
          Left = 3
          Top = 2
          Width = 584
          Height = 11
          Caption = 
            'Legenda: CUP -> Cupons, PED -> Pedidos de Vendas, OS -> Ordens d' +
            'e Servi'#231'os, NFE -> Notas Fiscais, MOV -> Movimenta'#231#227'o Manual '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 337
      Width = 1047
      Height = 18
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel12: TRLLabel
        Left = 3
        Top = 1
        Width = 256
        Height = 12
        Caption = 'TechCore Solu'#231#245'es em Gest'#227'o / http://www.techcore.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo5: TRLSystemInfo
        AlignWithMargins = True
        Left = 937
        Top = 1
        Width = 110
        Height = 17
        Align = faRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        HoldStyle = hsCopyWidth
        Info = itPageNumber
        Layout = tlBottom
        ParentFont = False
        Text = 'P'#225'gina: '
      end
    end
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 8
    Top = 50
  end
  object Query: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   TB0.PRD_ID,'
      
        '   SUM(TB0.PRD_QTDE)        AS PRD_QTDE, -- Quantidade de saida ' +
        'no per'#237'odo'
      '   SUM(CAST(TB0.PRD_VLR_TOT AS NUMERIC(15,2))) AS PRD_VLR_TOTAL,'
      ''
      '   /* Dados adicionais do produto */'
      '   LPAD(T1.PRD_CODIGO,6,0) AS PRD_CODIGO,'
      '   T1.PRD_DESCRICAO,'
      '   T1.PRD_UNIDADE,'
      '   T2.GRP_DESCRICAO AS PRD_GRUPO,'
      '   T3.QTDE_ENTRADA,'
      '   T3.QTDE_INICIAL,'
      '   T3.QTDE_SAIDA * (-1) AS QTDE_SAIDA,'
      '   T3.QTDE_ATUAL,'
      '   TB0.TIPO AS MOV_TIPO'
      'FROM'
      '   (SELECT'
      '      T1.PRD_ID,'
      '      T1.PRD_QTDE,'
      '      T1.PRD_VLR_TOT AS PRD_VLR_TOT,'
      '      CAST('#39'CUP'#39' AS VARCHAR(3)) AS TIPO'
      '   FROM'
      '      C000031 AS T1'
      '   JOIN'
      '      C000030 AS T2'
      '   ON'
      '      T2.ID_50        = T1.ID_50'
      '   WHERE'
      '      T1.PRD_KIT      = '#39'N'#39
      '   AND'
      '      T2.ID_EMPRESA   = :ID_EMP'
      '   AND'
      '      T2.F_CUP_STATUS = 1'
      '   AND'
      '      T2.F_CUP_DATA BETWEEN :DT_A AND :DT_B'
      ''
      '   UNION ALL'
      ''
      '   SELECT'
      '      T0.ID_PRODUTO,'
      '      T0.PRD_QTDE *(-1) AS PRD_VLR,'
      '      0,'
      '      CAST('#39'MOV'#39' AS VARCHAR(3))'
      '   FROM'
      '      C000022 AS T0'
      '   WHERE'
      '      CAST(T0.MOV_DATA_REG AS DATE) BETWEEN :DT_A AND :DT_B'
      ''
      '   UNION ALL'
      ''
      '   SELECT'
      '      T1.ID_PRODUTO,'
      '      T1.PRD_QTDE * (-1),'
      '      T1.PRD_VLR_TOTAL AS PRD_VLR,'
      '      CAST('#39'PED'#39' AS VARCHAR(3))'
      '   FROM'
      '      C000101 AS T1'
      '   JOIN'
      '      C000100 AS T2'
      '   ON'
      '      T2.ID           = T1.ID_PEDIDO'
      '   WHERE'
      '      T2.ID_EMPRESA   = :ID_EMP'
      '   AND'
      '      T2.PED_DATA_PEDIDO BETWEEN :DT_A AND :DT_B'
      '   AND'
      '      T2.PED_ENTREGUE = 2'
      ''
      '   UNION ALL'
      ''
      '   SELECT'
      '      T1.ID_PRODUTO,'
      '      T1.PRD_QTDE * (-1),'
      '      T1.PRD_VLR_TOTAL AS PRD_VLR,'
      '      CAST('#39'OS'#39' AS VARCHAR(3))'
      '   FROM'
      '      C000071 AS T1'
      '   JOIN'
      '      C000070 AS T2'
      '   ON'
      '      T2.ID          = T1.ID_C000070'
      '   WHERE             '
      '      T2.ID_EMPRESA  = :ID_EMP'
      '   AND'
      '      CAST(T2.OS_DATA_REG AS DATE) BETWEEN :DT_A AND :DT_B'
      '   AND'
      '      T2.OS_ENTREGUE = 1'
      ''
      '   UNION ALL'
      ''
      '   SELECT'
      '      T1.ID_PRODUTO,'
      '      T1.PRD_QTDE * (-1),'
      '      T1.PRD_VLR_TOTAL AS PRD_VLR,'
      '      CAST('#39'NFE'#39' AS VARCHAR(3))'
      '   FROM'
      '      C000601 AS T1'
      '   JOIN'
      '      C000600 AS T2'
      '   ON'
      '      T2.ID          = T1.ID_NOTA_FISCAL'
      '   WHERE'
      '      T2.ID_EMPRESA  = :ID_EMP'
      '   AND'
      '      CAST(T2.NFE_DH_SAIDA AS DATE) BETWEEN :DT_A AND :DT_B'
      '   AND'
      '      T2.NFE_PEDIDO_ENTREGUE = 1'
      '   AND'
      '      T2.NFE_STATUS = 2'
      '   AND'
      '      T2.NFE_TIPO_OPERACAO = 1'
      '   ) AS TB0'
      ''
      'JOIN'
      '   C000405 AS T1'
      'ON'
      '   T1.ID = TB0.PRD_ID'
      'LEFT JOIN'
      '   C000402 AS T2'
      'ON'
      '   T2.ID = T1.ID_GRUPO'
      'JOIN'
      '   C000406 AS T3'
      'ON'
      '   T3.ID_PRODUTO = TB0.PRD_ID'
      ''
      'GROUP BY'
      '   TB0.PRD_ID,'
      '   T1.PRD_CODIGO,'
      '   T1.PRD_DESCRICAO,'
      '   T1.PRD_UNIDADE,'
      '   T3.QTDE_ENTRADA,'
      '   T3.QTDE_INICIAL,'
      '   T3.QTDE_SAIDA,'
      '   T3.QTDE_ATUAL,'
      '   T2.GRP_DESCRICAO'
      '   ,TB0.TIPO')
    Left = 8
    Top = 16
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'DT_A'
        DataType = ftDate
        ParamType = ptInput
        Value = 43466d
      end
      item
        Name = 'DT_B'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end>
    object QueryPRD_ID: TIntegerField
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
    end
    object QueryPRD_VLR_TOTAL: TFMTBCDField
      FieldName = 'PRD_VLR_TOTAL'
      Origin = 'PRD_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Size = 6
    end
    object QueryPRD_GRUPO: TStringField
      FieldName = 'PRD_GRUPO'
      Origin = 'PRD_GRUPO'
      Size = 60
    end
    object QueryPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      Size = 120
    end
    object QueryPRD_UNIDADE: TStringField
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      Size = 5
    end
    object QueryQTDE_ENTRADA: TBCDField
      FieldName = 'QTDE_ENTRADA'
      Origin = 'QTDE_ENTRADA'
      DisplayFormat = ',0.0000'
      Precision = 18
    end
    object QueryQTDE_INICIAL: TBCDField
      FieldName = 'QTDE_INICIAL'
      Origin = 'QTDE_INICIAL'
      DisplayFormat = ',0.0000'
      Precision = 18
    end
    object QueryQTDE_ATUAL: TBCDField
      FieldName = 'QTDE_ATUAL'
      Origin = 'QTDE_ATUAL'
      DisplayFormat = ',0.0000'
      Precision = 18
    end
    object QueryQTDE_SAIDA: TBCDField
      FieldName = 'QTDE_SAIDA'
      Origin = 'QTDE_SAIDA'
      DisplayFormat = ',0.0000'
      Precision = 18
    end
    object QueryPRD_QTDE: TBCDField
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      DisplayFormat = ',0.0000'
      Precision = 18
    end
    object QueryMOV_TIPO: TStringField
      FieldName = 'MOV_TIPO'
      Origin = 'MOV_TIPO'
      Required = True
      Size = 3
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'Movimento de Estoque(Saidas)'
    DisplayName = 'Movimento de Estoque(Saidas)'
    Left = 8
    Top = 80
  end
end
