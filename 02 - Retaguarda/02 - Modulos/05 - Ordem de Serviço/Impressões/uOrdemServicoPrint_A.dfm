object FrOrdemServicoPrint_A: TFrOrdemServicoPrint_A
  Left = 0
  Top = 0
  Caption = 'FrOrdemServicoPrint_A'
  ClientHeight = 661
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Print: TRLReport
    Left = 56
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dsQueryProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    BeforePrint = PrintBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 70
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      Borders.FixedBottom = True
      object RLLabel1: TRLLabel
        Left = -2
        Top = 0
        Width = 403
        Height = 23
        Caption = 'RET MEC IND'#218'STRIA E COMERCIO SERVI'#199'OS - LTDA.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel1BeforePrint
      end
      object RLDraw1: TRLDraw
        Left = 569
        Top = 12
        Width = 149
        Height = 29
      end
      object RLLabel2: TRLLabel
        Left = 574
        Top = 12
        Width = 58
        Height = 13
        Caption = 'DATA EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 569
        Top = 40
        Width = 149
        Height = 29
      end
      object RLLabel6: TRLLabel
        Left = 0
        Top = 23
        Width = 301
        Height = 15
        Caption = 'RUA QUINTA DE SANTA LUZIA, 141 - VILA BABY - S'#195'O PAULO - SP '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLLabel6BeforePrint
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = 53
        Width = 94
        Height = 15
        Caption = 'FONE: (00)0000-0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLLabel7BeforePrint
      end
      object RLLabel4: TRLLabel
        Left = 574
        Top = 40
        Width = 76
        Height = 13
        Caption = 'ORDEM DE SERVI'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object ed_OsNumero: TRLDBText
        Left = 601
        Top = 49
        Width = 84
        Height = 20
        Alignment = taCenter
        DataField = 'OS_NUMERO'
        DataSource = dsQuery
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object ed_DataEmissao: TRLDBText
        Left = 608
        Top = 24
        Width = 70
        Height = 15
        Alignment = taCenter
        DataField = 'OS_DATA_REG'
        DataSource = dsQuery
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 38
        Width = 135
        Height = 15
        Caption = 'VILA BABY - S'#195'O PAULO - SP '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLLabel3BeforePrint
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 124
      Width = 718
      Height = 277
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLDraw4: TRLDraw
        Left = 3
        Top = 55
        Width = 453
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '2'
        Font.Style = []
      end
      object RLDraw9: TRLDraw
        Left = 458
        Top = 55
        Width = 257
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '2'
        Font.Style = []
      end
      object RLDraw7: TRLDraw
        Left = 325
        Top = 87
        Width = 280
        Height = 29
      end
      object RLDraw6: TRLDraw
        Left = 607
        Top = 87
        Width = 30
        Height = 29
      end
      object RLDraw8: TRLDraw
        Left = 639
        Top = 87
        Width = 76
        Height = 29
      end
      object RLDraw5: TRLDraw
        Left = 3
        Top = 87
        Width = 320
        Height = 29
      end
      object RLDraw11: TRLDraw
        Left = 165
        Top = 119
        Width = 158
        Height = 29
      end
      object RLDraw10: TRLDraw
        Left = 3
        Top = 119
        Width = 160
        Height = 29
      end
      object RLDraw12: TRLDraw
        Left = 325
        Top = 119
        Width = 390
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '2'
        Font.Style = []
      end
      object RLDraw14: TRLDraw
        Left = 595
        Top = 23
        Width = 120
        Height = 29
      end
      object RLDraw13: TRLDraw
        Left = 458
        Top = 23
        Width = 135
        Height = 29
      end
      object RLDraw3: TRLDraw
        Left = 3
        Top = 23
        Width = 453
        Height = 29
      end
      object RLDBText10: TRLDBText
        Left = 7
        Top = 35
        Width = 92
        Height = 15
        DataField = 'CLI_RAZAO_SOCIAL'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 462
        Top = 35
        Width = 47
        Height = 15
        DataField = 'CLI_CNPJ'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 599
        Top = 35
        Width = 72
        Height = 15
        DataField = 'CLI_IESTADUAL'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 7
        Top = 67
        Width = 74
        Height = 15
        DataField = 'CLI_ENDERECO'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 462
        Top = 67
        Width = 100
        Height = 13
        DataField = 'CLI_COMPLEMENTO'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 7
        Top = 99
        Width = 55
        Height = 15
        DataField = 'CLI_CIDADE'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText16: TRLDBText
        Left = 329
        Top = 99
        Width = 57
        Height = 15
        DataField = 'CLI_BAIRRO'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText17: TRLDBText
        Left = 611
        Top = 99
        Width = 22
        Height = 15
        Alignment = taCenter
        DataField = 'CLI_UF'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText18: TRLDBText
        Left = 643
        Top = 99
        Width = 41
        Height = 15
        DataField = 'CLI_CEP'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText19: TRLDBText
        Left = 7
        Top = 131
        Width = 74
        Height = 15
        DataField = 'CLI_FONE_FIXO'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText20: TRLDBText
        Left = 169
        Top = 131
        Width = 85
        Height = 15
        DataField = 'CLI_FONE_MOVEL'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLDBText21: TRLDBText
        Left = 329
        Top = 131
        Width = 49
        Height = 15
        DataField = 'CLI_EMAIL'
        DataSource = dsQueryCli
        Text = ''
      end
      object RLLabel10: TRLLabel
        Left = 310
        Top = 4
        Width = 97
        Height = 15
        Caption = 'DADOS DO CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 5
        Top = 23
        Width = 103
        Height = 13
        Caption = 'RAZ'#195'O / NOME COMPLETO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 5
        Top = 55
        Width = 45
        Height = 13
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 5
        Top = 87
        Width = 31
        Height = 13
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 611
        Top = 87
        Width = 14
        Height = 13
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 327
        Top = 87
        Width = 32
        Height = 13
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 641
        Top = 87
        Width = 19
        Height = 13
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 460
        Top = 55
        Width = 63
        Height = 13
        Caption = 'COMPLEMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 5
        Top = 119
        Width = 45
        Height = 13
        Caption = 'FONE FIXO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 167
        Top = 119
        Width = 54
        Height = 13
        Caption = 'FONE M'#211'VEL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 327
        Top = 119
        Width = 29
        Height = 13
        Caption = 'E-MAIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 460
        Top = 23
        Width = 44
        Height = 13
        Caption = 'CNPJ / CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 597
        Top = 23
        Width = 29
        Height = 13
        Caption = 'I.E / RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel35: TRLLabel
        Left = 290
        Top = 154
        Width = 135
        Height = 15
        Caption = 'OBSERVA'#199#213'ES DO CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel36: TRLLabel
        Left = 245
        Top = 241
        Width = 217
        Height = 15
        Caption = 'DISCRIMINA'#199#195'O DOS PRODUTOS / SERVI'#199'OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        Left = 3
        Top = 258
        Width = 78
        Height = 15
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 84
        Top = 258
        Width = 329
        Height = 15
        Caption = 'PRODUTO / SERVI'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 418
        Top = 258
        Width = 22
        Height = 15
        Alignment = taCenter
        Caption = 'UN.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 444
        Top = 258
        Width = 67
        Height = 15
        Alignment = taRightJustify
        Caption = 'VL. UNIT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel41: TRLLabel
        Left = 534
        Top = 258
        Width = 31
        Height = 15
        Alignment = taRightJustify
        Caption = 'QTDE.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 571
        Top = 258
        Width = 72
        Height = 15
        Alignment = taRightJustify
        Caption = 'VL. SUBTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel44: TRLLabel
        Left = 651
        Top = 258
        Width = 64
        Height = 15
        Alignment = taRightJustify
        Caption = 'VL. TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBMemo1: TRLDBMemo
        Left = 5
        Top = 175
        Width = 710
        Height = 60
        AutoSize = False
        Behavior = [beSiteExpander]
        Color = 16250871
        DataField = 'OS_ANOTACOES_ENT'
        DataSource = dsQuery
        ParentColor = False
        Transparent = False
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 569
      Width = 718
      Height = 16
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel19: TRLLabel
        Left = 0
        Top = 2
        Width = 212
        Height = 9
        Caption = 'TechCore Solu'#231#245'es em Gest'#227'o - http://techcore.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 627
        Top = 0
        Width = 88
        Height = 15
        Alignment = taRightJustify
        Info = itPageNumber
        Text = 'PAG: '
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 401
      Width = 718
      Height = 15
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 15
        object RLDBText2: TRLDBText
          Left = 3
          Top = 0
          Width = 78
          Height = 13
          AutoSize = False
          DataField = 'PRD_CODIGO'
          DataSource = dsQueryProdutos
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 84
          Top = 0
          Width = 329
          Height = 13
          AutoSize = False
          DataField = 'PRD_DESCRICAO'
          DataSource = dsQueryProdutos
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 418
          Top = 0
          Width = 22
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'PRD_UNIDADE'
          DataSource = dsQueryProdutos
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 444
          Top = 0
          Width = 67
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_UNITARIO'
          DataSource = dsQueryProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText5BeforePrint
        end
        object RLDBText6: TRLDBText
          Left = 515
          Top = 0
          Width = 50
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_QTDE'
          DataSource = dsQueryProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 571
          Top = 0
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_SUBTOTAL'
          DataSource = dsQueryProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText5BeforePrint
        end
        object RLDBText8: TRLDBText
          Left = 651
          Top = 0
          Width = 64
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_TOTAL'
          DataSource = dsQueryProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText5BeforePrint
        end
      end
    end
    object RLGroup3: TRLGroup
      Left = 38
      Top = 416
      Width = 718
      Height = 81
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 81
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        object RLDraw17: TRLDraw
          Left = 3
          Top = 119
          Width = 712
          Height = 8
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Style = bsClear
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel5: TRLLabel
          Left = 197
          Top = 5
          Width = 61
          Height = 13
          Caption = 'OBSERVA'#199#213'ES:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo2: TRLDBMemo
          Left = 5
          Top = 17
          Width = 444
          Height = 60
          AutoSize = False
          Behavior = [beSiteExpander]
          Color = 16250871
          DataField = 'OS_ANOTACOES_SAI'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 499
          Top = 17
          Width = 83
          Height = 16
          Caption = 'SUBTOTAL - R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 455
          Top = 35
          Width = 127
          Height = 16
          Caption = 'OUTRAS DESPESAS - R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 461
          Top = 53
          Width = 121
          Height = 16
          Caption = 'TOTAL DO PEDIDO - R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ed_SubTotal: TRLDBText
          Left = 637
          Top = 19
          Width = 78
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'OS_VLR_PRODUTOS'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText5BeforePrint
        end
        object ed_Despesas: TRLDBText
          Left = 637
          Top = 37
          Width = 78
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'OS_VLR_OUTROS'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText5BeforePrint
        end
        object ed_Total: TRLDBText
          Left = 637
          Top = 55
          Width = 78
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'OS_VLR_TOTAL'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText5BeforePrint
        end
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 513
      Width = 718
      Height = 56
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      DataSource = dsQueryPagtos
      BeforePrint = RLSubDetail1BeforePrint
      object RLBand5: TRLBand
        Left = 0
        Top = 38
        Width = 718
        Height = 12
        object RLDBText24: TRLDBText
          Left = 52
          Top = 0
          Width = 96
          Height = 11
          AutoSize = False
          DataField = 'PAG_FORMA_DESCRICAO'
          DataSource = dsQueryPagtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText25: TRLDBText
          Left = 158
          Top = 0
          Width = 64
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PAG_VLR_SUBTOTAL'
          DataSource = dsQueryPagtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText26: TRLDBText
          Left = 224
          Top = 0
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PAG_JUROS'
          DataSource = dsQueryPagtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText27: TRLDBText
          Left = 276
          Top = 0
          Width = 64
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PAG_VLR_TOTAL'
          DataSource = dsQueryPagtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText28: TRLDBText
          Left = 346
          Top = 0
          Width = 355
          Height = 11
          AutoSize = False
          DataField = 'PAG_ANOTACOES'
          DataSource = dsQueryPagtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText29: TRLDBText
          Left = 3
          Top = 0
          Width = 45
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'PAG_VENCTO'
          DataSource = dsQueryPagtos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 1
        Width = 718
        Height = 37
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel32: TRLLabel
          Left = 346
          Top = 23
          Width = 49
          Height = 13
          Caption = 'OBSERVA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 276
          Top = 23
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'VALOR TOTAL - R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 231
          Top = 23
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'JUROS - %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 169
          Top = 23
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'SUBTOTAL - R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 52
          Top = 24
          Width = 96
          Height = 10
          AutoSize = False
          Caption = 'FORMA DE PAGAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 3
          Top = 23
          Width = 45
          Height = 13
          Caption = 'VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 290
          Top = 2
          Width = 145
          Height = 15
          Caption = 'CONDI'#199#213'ES DE PAGAMENTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 108
      Width = 718
      Height = 16
      AutoSize = True
      BandType = btHeader
      BeforePrint = RLBand8BeforePrint
      object RLMemo1: TRLMemo
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 497
      Width = 718
      Height = 16
    end
  end
  object dsQueryProdutos: TDataSource
    DataSet = FrOrdemServico.QueryProdutos
    Left = 8
    Top = 12
  end
  object QueryCli: TFDQuery
    IndexFieldNames = 'ID'
    MasterSource = dsQuery
    Connection = FrModuloRet.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '   C000307.ID,'
      '   C000307.CLI_CODIGO,'
      '   C000307.CLI_RAZAO_SOCIAL,'
      '   C000307.CLI_NOME_FANTASIA,'
      '   C000307.CLI_CNPJ,'
      '   C000307.CLI_IESTADUAL,'
      
        '   C000307.CLI_ENDERECO || '#39', '#39' || C000307.CLI_NUMERO AS CLI_END' +
        'ERECO,'
      '   C000307.CLI_CEP,'
      '   C000307.CLI_CIDADE,'
      '   C000307.CLI_BAIRRO,'
      '   C000307.CLI_COMPLEMENTO,'
      '   C000307.CLI_UF,'
      '   C000307.CLI_FONE_FIXO,'
      '   C000307.CLI_FONE_MOVEL,'
      '   C000307.CLI_EMAIL,'
      '   C000307.CLI_TIPO_PESSOA'
      'FROM'
      '   C000307'
      'WHERE'
      '   ID = :ID_CLIENTE')
    Left = 8
    Top = 64
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QueryCliID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCliCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
    end
    object QueryCliCLI_RAZAO_SOCIAL: TStringField
      FieldName = 'CLI_RAZAO_SOCIAL'
      Origin = 'CLI_RAZAO_SOCIAL'
      Required = True
      Size = 120
    end
    object QueryCliCLI_NOME_FANTASIA: TStringField
      FieldName = 'CLI_NOME_FANTASIA'
      Origin = 'CLI_NOME_FANTASIA'
      Size = 120
    end
    object QueryCliCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
      Required = True
      OnGetText = QueryCliCLI_CNPJGetText
      Size = 15
    end
    object QueryCliCLI_IESTADUAL: TStringField
      FieldName = 'CLI_IESTADUAL'
      Origin = 'CLI_IESTADUAL'
      Size = 15
    end
    object QueryCliCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      Required = True
      Size = 120
    end
    object QueryCliCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      Required = True
      EditMask = '!99999-999;0;'
      Size = 10
    end
    object QueryCliCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Required = True
      Size = 60
    end
    object QueryCliCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Required = True
      Size = 60
    end
    object QueryCliCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      Size = 60
    end
    object QueryCliCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Origin = 'CLI_UF'
      FixedChar = True
      Size = 2
    end
    object QueryCliCLI_FONE_FIXO: TStringField
      FieldName = 'CLI_FONE_FIXO'
      Origin = 'CLI_FONE_FIXO'
      EditMask = '!(99)9999-9999;0;'
      Size = 12
    end
    object QueryCliCLI_FONE_MOVEL: TStringField
      FieldName = 'CLI_FONE_MOVEL'
      Origin = 'CLI_FONE_MOVEL'
      EditMask = '!(99)99999-9999;0;'
      Size = 13
    end
    object QueryCliCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 60
    end
    object QueryCliCLI_TIPO_PESSOA: TIntegerField
      FieldName = 'CLI_TIPO_PESSOA'
      Origin = 'CLI_TIPO_PESSOA'
    end
  end
  object dsQueryCli: TDataSource
    AutoEdit = False
    DataSet = QueryCli
    Left = 8
    Top = 96
  end
  object QueryPagtos: TFDQuery
    IndexFieldNames = 'ID_C000070'
    MasterSource = dsQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   *'
      'FROM'
      '   C000072'
      'WHERE'
      '   ID_C000070 = :ID'
      'ORDER BY'
      '   ID ASC'
      ''
      '')
    Left = 8
    Top = 134
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 15
      end>
    object QueryPagtosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPagtosID_C000070: TIntegerField
      FieldName = 'ID_C000070'
      Origin = 'ID_C000070'
    end
    object QueryPagtosID_FORMA_PAGTO: TIntegerField
      FieldName = 'ID_FORMA_PAGTO'
      Origin = 'ID_FORMA_PAGTO'
    end
    object QueryPagtosPAG_VENCTO: TDateField
      FieldName = 'PAG_VENCTO'
      Origin = 'PAG_VENCTO'
    end
    object QueryPagtosPAG_VLR_SUBTOTAL: TFMTBCDField
      FieldName = 'PAG_VLR_SUBTOTAL'
      Origin = 'PAG_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_JUROS: TFMTBCDField
      FieldName = 'PAG_JUROS'
      Origin = 'PAG_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_VLR_TOTAL: TFMTBCDField
      FieldName = 'PAG_VLR_TOTAL'
      Origin = 'PAG_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_VLR_JUROS: TFMTBCDField
      FieldName = 'PAG_VLR_JUROS'
      Origin = 'PAG_VLR_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_ANOTACOES: TStringField
      FieldName = 'PAG_ANOTACOES'
      Origin = 'PAG_ANOTACOES'
      Size = 65
    end
    object QueryPagtosPAG_FORMA_DESCRICAO: TStringField
      FieldName = 'PAG_FORMA_DESCRICAO'
      Origin = 'PAG_FORMA_DESCRICAO'
      Size = 65
    end
  end
  object dsQueryPagtos: TDataSource
    AutoEdit = False
    DataSet = QueryPagtos
    Left = 8
    Top = 164
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 8
    Top = 200
  end
  object dsQuery: TDataSource
    AutoEdit = False
    Left = 48
    Top = 12
  end
end
