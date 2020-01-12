object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 606
  ClientWidth = 841
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
  object RLReport1: TRLReport
    Left = 26
    Top = 20
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 77
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
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
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 60
        Width = 39
        Height = 16
        Align = faLeftBottom
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 39
        Top = 60
        Width = 43
        Height = 16
        Align = faLeftBottom
        Info = itHour
        Text = '-'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 613
        Top = 60
        Width = 105
        Height = 16
        Align = faRightBottom
        Info = itPageNumber
        Layout = tlBottom
        Text = 'de '
      end
      object RLSystemInfo4: TRLSystemInfo
        AlignWithMargins = True
        Left = 478
        Top = 60
        Width = 135
        Height = 16
        Align = faRightBottom
        HoldStyle = hsCopyWidth
        Info = itPageNumber
        Layout = tlBottom
        Text = 'P'#225'gina: '
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        Align = faTop
        Alignment = taCenter
        Caption = 'POSI'#199#195'O FINANCEIRA DO ESTOQUE (CUSTO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 145
      Width = 718
      Height = 66
      AllowedBands = [btDetail]
      DataFields = 'PRD_GRUPO'
      ForceMinBands = True
      object RLBand2: TRLBand
        Left = 0
        Top = 18
        Width = 718
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText1: TRLDBText
          Left = 52
          Top = 1
          Width = 101
          Height = 14
          AutoSize = False
          DataField = 'PRD_CODIGO_BRR'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 3
          Top = 2
          Width = 41
          Height = 14
          AutoSize = False
          DataField = 'PRD_CODIGO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 162
          Top = 1
          Width = 250
          Height = 14
          AutoSize = False
          DataField = 'PRD_DESCRICAO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 418
          Top = 1
          Width = 51
          Height = 14
          AutoSize = False
          DataField = 'PRD_NCM'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 480
          Top = 1
          Width = 25
          Height = 14
          AutoSize = False
          DataField = 'PRD_UNIDADE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 521
          Top = 1
          Width = 49
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_QTDE_ATUAL'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 648
          Top = 1
          Width = 67
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_TOTAL_CUSTO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 576
          Top = 1
          Width = 60
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_CUSTO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Color = 15000804
        ParentColor = False
        Transparent = False
        object RLDBText2: TRLDBText
          Left = 3
          Top = 1
          Width = 107
          Height = 14
          DataField = 'PRD_GRUPO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Grupo: '
          Transparent = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 34
        Width = 718
        Height = 27
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 5
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBResult1: TRLDBResult
          Left = 521
          Top = 3
          Width = 49
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'PRD_QTDE_ATUAL'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 2
          Top = 6
          Width = 43
          Height = 16
          Caption = 'Totais:'
        end
        object RLDBResult2: TRLDBResult
          Left = 587
          Top = 3
          Width = 49
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'PRD_VLR_CUSTO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBResult3: TRLDBResult
          Left = 648
          Top = 3
          Width = 67
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'PRD_VLR_TOTAL_CUSTO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 115
      Width = 718
      Height = 30
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel3: TRLLabel
        Left = 2
        Top = 14
        Width = 41
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 52
        Top = 14
        Width = 98
        Height = 13
        Caption = 'C'#243'digo de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 162
        Top = 14
        Width = 58
        Height = 13
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 418
        Top = 14
        Width = 27
        Height = 13
        Caption = 'Ncm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 480
        Top = 14
        Width = 26
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'Un.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 537
        Top = 14
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtde.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 662
        Top = 14
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tt. Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 588
        Top = 14
        Width = 48
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 211
      Width = 718
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
        Left = 608
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
  object FDQuery1: TFDQuery
    Active = True
    Connection = FrModulo.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   PRD_CODIGO,'
      '   PRD_CODIGO_BRR,'
      
        '   (SELECT GRP_DESCRICAO   FROM C000402 WHERE ID = C000405.ID_GR' +
        'UPO) AS PRD_GRUPO,'
      
        '   (SELECT QTDE_ATUAL      FROM C000406 WHERE ID_PRODUTO = C0004' +
        '05.ID) AS PRD_QTDE_ATUAL,'
      
        '   (SELECT QTDE_SAIDA      FROM C000406 WHERE ID_PRODUTO = C0004' +
        '05.ID) AS PRD_QTDE_SAIDA,'
      
        '   CAST((SELECT SUM(QTDE_ATUAL) FROM C000406 WHERE ID_PRODUTO = ' +
        'C000405.ID) * PRD_VLR_CUSTO AS NUMERIC(18,2)) AS PRD_VLR_TOTAL_C' +
        'USTO,'
      
        '   (SELECT PRC_DESCRICAO   FROM C000303 WHERE ID = 1) AS TABELA_' +
        'PRECO,'
      
        '   (SELECT PRC_VLR_VENDA   FROM C000304 WHERE ID_PRODUTO = C0004' +
        '05.ID AND ID_TABELA = 1) AS PRD_VLR_VENDA,'
      
        '   (SELECT SUM(QTDE_ATUAL) FROM C000406 WHERE ID_PRODUTO = C0004' +
        '05.ID) *'
      
        '   (SELECT COALESCE(PRC_VLR_VENDA,0)   FROM C000304 WHERE ID_PRO' +
        'DUTO = C000405.ID AND ID_TABELA = 1) AS PRD_VLR_TOTAL_VENDA,'
      '   PRD_DESCRICAO,'
      '   PRD_UNIDADE,'
      '   PRD_NCM,'
      '   PRD_VLR_CUSTO'
      'FROM'
      '   C000405'
      'ORDER BY'
      '   PRD_GRUPO, PRD_CODIGO ASC')
    Left = 6
    Top = 12
    object FDQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object FDQuery1PRD_GRUPO: TStringField
      FieldName = 'PRD_GRUPO'
      Origin = 'PRD_GRUPO'
      Size = 60
    end
    object FDQuery1PRD_CODIGO: TIntegerField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      DisplayFormat = '000000'
    end
    object FDQuery1PRD_CODIGO_BRR: TStringField
      FieldName = 'PRD_CODIGO_BRR'
      Origin = 'PRD_CODIGO_BRR'
      Size = 15
    end
    object FDQuery1PRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      Size = 120
    end
    object FDQuery1PRD_UNIDADE: TStringField
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      Size = 3
    end
    object FDQuery1PRD_NCM: TStringField
      FieldName = 'PRD_NCM'
      Origin = 'PRD_NCM'
      Size = 8
    end
    object FDQuery1PRD_QTDE_ATUAL: TBCDField
      FieldName = 'PRD_QTDE_ATUAL'
      Origin = 'PRD_QTDE_ATUAL'
      DisplayFormat = ',0.000'
      Precision = 18
      Size = 3
    end
    object FDQuery1PRD_VLR_CUSTO: TBCDField
      FieldName = 'PRD_VLR_CUSTO'
      Origin = 'PRD_VLR_CUSTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FDQuery1PRD_VLR_TOTAL_CUSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_VLR_TOTAL_CUSTO'
      Origin = 'PRD_VLR_TOTAL_CUSTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 6
    Top = 48
  end
end
