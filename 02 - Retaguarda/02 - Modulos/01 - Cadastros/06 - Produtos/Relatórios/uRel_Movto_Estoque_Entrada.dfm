object FrRel_Movto_Estoque_Entrada: TFrRel_Movto_Estoque_Entrada
  Left = 0
  Top = 0
  Caption = 'FrRel_Movto_Estoque_Entrada'
  ClientHeight = 571
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
    Left = 42
    Top = 8
    Width = 1123
    Height = 794
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
        Caption = 'MOVIMENTA'#199#195'O DO ESTOQUE - ENTRADAS'
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
      Height = 100
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
        Height = 16
        BandType = btTitle
        object RLLabel3: TRLLabel
          Left = 3
          Top = 0
          Width = 46
          Height = 16
          AutoSize = False
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 415
          Top = 0
          Width = 35
          Height = 16
          Margins.Left = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Un.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 55
          Top = 0
          Width = 356
          Height = 16
          AutoSize = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 945
          Top = 0
          Width = 103
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ - Despesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 539
          Top = 0
          Width = 85
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Total Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 461
          Top = 0
          Width = 71
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Qtde. Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 740
          Top = 0
          Width = 87
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Qtde. Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 839
          Top = 0
          Width = 65
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Qtde. Atual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 631
          Top = 0
          Width = 73
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Total Saidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 37
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
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 415
          Top = 1
          Width = 35
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'PRD_UNIDADE'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 945
          Top = 1
          Width = 103
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 55
          Top = 1
          Width = 356
          Height = 16
          AutoSize = False
          DataField = 'PRD_DESCRICAO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 461
          Top = 1
          Width = 71
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE_INICIAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 536
          Top = 1
          Width = 88
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE_ENTRADA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 740
          Top = 1
          Width = 87
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_QTDE'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 839
          Top = 1
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE_ATUAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 628
          Top = 1
          Width = 76
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE_SAIDA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 55
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
          Left = 767
          Top = 3
          Width = 281
          Height = 20
          Alignment = taRightJustify
          DataField = 'PRD_VLR'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial NaE'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = 'Total de Despesas: '
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 220
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
      '   TB0.ID_PRODUTO,'
      
        '   SUM(TB0.PRD_QTDE) AS PRD_QTDE, -- Quantidade entrada no per'#237'o' +
        'do informado'
      '   SUM(CAST(TB0.PRD_VLR AS NUMERIC(15,2))) AS PRD_VLR,'
      ''
      '   /* Dados adicionais do produto */'
      
        '   (SELECT LPAD(PRD_CODIGO,6,0) FROM C000405 WHERE ID = TB0.ID_P' +
        'RODUTO) AS PRD_CODIGO,'
      
        '   (SELECT GRP_DESCRICAO FROM C000402 WHERE ID =(SELECT ID_GRUPO' +
        ' FROM C000405 WHERE ID = TB0.ID_PRODUTO)) AS PRD_GRUPO,'
      
        '   (SELECT PRD_DESCRICAO FROM C000405 WHERE ID = TB0.ID_PRODUTO)' +
        ' AS PRD_DESCRICAO,'
      
        '   (SELECT PRD_UNIDADE   FROM C000405 WHERE ID = TB0.ID_PRODUTO)' +
        ' AS PRD_UNIDADE,'
      
        '   (SELECT QTDE_SAIDA    FROM C000406 WHERE ID_PRODUTO = TB0.ID_' +
        'PRODUTO ) * (-1) AS QTDE_SAIDA, '
      
        '   (SELECT QTDE_ENTRADA  FROM C000406 WHERE ID_PRODUTO = TB0.ID_' +
        'PRODUTO ) AS QTDE_ENTRADA,'
      
        '   (SELECT QTDE_INICIAL  FROM C000406 WHERE ID_PRODUTO = TB0.ID_' +
        'PRODUTO ) AS QTDE_INICIAL,'
      
        '   (SELECT QTDE_ATUAL    FROM C000406 WHERE ID_PRODUTO = TB0.ID_' +
        'PRODUTO ) AS QTDE_ATUAL'
      'FROM'
      '   (SELECT'
      '      T1.ID_PRODUTO,'
      '      T1.ITM_QTDE AS PRD_QTDE,'
      '      T1.ITM_VLR_TOTAL AS PRD_VLR,'
      '      CAST('#39'PED'#39' AS VARCHAR(3)) AS ORIGEM'
      '   FROM'
      '      C000309 AS T1'
      '   JOIN  '
      '      C000308 AS T2'
      '   ON'
      '      T2.ID           = T1.ID_PEDIDO'
      '   WHERE'
      '      T2.ID_EMPRESA   = :ID_EMP'
      '   AND'
      '      T2.PED_ENTREGUE = 2'
      '   AND'
      '      T2.PED_DATA_ENTREGA BETWEEN :DT_A AND :DT_B'
      '   '
      'UNION ALL'
      '   '
      '   SELECT'
      '      T1.ID_PRODUTO,'
      '      T1.PRD_QTDE AS PRD_QTDE,'
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
      '      T2.NFE_TIPO_OPERACAO = 0'
      '   )AS TB0'
      'GROUP BY'
      '   TB0.ID_PRODUTO,'
      '   TB0.PRD_QTDE')
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
    object QueryID_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPRD_QTDE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000'
      Precision = 18
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
    object QueryPRD_VLR: TFMTBCDField
      FieldName = 'PRD_VLR'
      Origin = 'PRD_VLR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryQTDE_SAIDA: TBCDField
      FieldName = 'QTDE_SAIDA'
      Origin = 'QTDE_SAIDA'
      DisplayFormat = ',0.0000'
      Precision = 18
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'Movimento de Estoque(Saidas)'
    DisplayName = 'Movimento de Estoque(Entradas)'
    Left = 8
    Top = 88
  end
end
