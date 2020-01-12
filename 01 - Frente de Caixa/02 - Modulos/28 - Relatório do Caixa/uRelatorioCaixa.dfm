object FrRelatorioCaixa: TFrRelatorioCaixa
  Left = 0
  Top = 0
  Caption = 'FrRelatorioCaixa'
  ClientHeight = 659
  ClientWidth = 672
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
    Left = 116
    Top = 0
    Width = 302
    Height = 809
    Margins.LeftMargin = 4.000000000000000000
    Margins.TopMargin = 2.000000000000000000
    Margins.RightMargin = 4.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = dsQueryMovtos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterMeasuring = fmAfterHeader
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 80.000000000000000000
    PageSetup.PaperHeight = 214.000000000000000000
    RecordRange = rrUntilEof
    object RLBand14: TRLBand
      Left = 15
      Top = 8
      Width = 272
      Height = 58
      AutoSize = True
      BandType = btTitle
      Completion = ctFullPage
      object RLLabel32: TRLLabel
        Left = 0
        Top = 0
        Width = 272
        Height = 13
        Align = faTop
        Alignment = taCenter
        Caption = 'FLAMES COM'#201'RCIO PIROT'#201'CNICO E EVENTO LTDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel32BeforePrint
      end
      object RLLabel33: TRLLabel
        Left = 0
        Top = 13
        Width = 272
        Height = 13
        Align = faTop
        Alignment = taCenter
        Caption = 'FLAMES COM'#201'RCIO E EVENTOS LTDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel33BeforePrint
      end
      object RLLabel34: TRLLabel
        Left = 0
        Top = 26
        Width = 272
        Height = 13
        Align = faTop
        Alignment = taCenter
        Caption = 'AVENIDA ATL'#194'NTICA, 226'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel34BeforePrint
      end
      object RLDraw8: TRLDraw
        Left = 0
        Top = 52
        Width = 272
        Height = 6
        Align = faBottom
        DrawKind = dkLine
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Pen.Style = psDot
      end
      object RLMemo2: TRLMemo
        Left = 0
        Top = 39
        Width = 272
        Height = 13
        Align = faTop
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'JARDIM T'#202'S MARIAS - S'#195'O PAULO - CEP: 04856-443')
        ParentFont = False
        BeforePrint = RLMemo2BeforePrint
      end
    end
    object RLBand15: TRLBand
      Left = 15
      Top = 66
      Width = 272
      Height = 78
      AutoSize = True
      BandType = btTitle
      object RLLabel35: TRLLabel
        Left = 0
        Top = 32
        Width = 272
        Height = 15
        Align = faTop
        Alignment = taCenter
        Caption = 'ABERTURA: 01/07/2019  10:53:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLLabel35BeforePrint
      end
      object RLLabel36: TRLLabel
        Left = 0
        Top = 16
        Width = 272
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO GERENCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 272
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'N'#195'O '#201' DOCUMENTO FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 0
        Top = 47
        Width = 272
        Height = 15
        Align = faTop
        Alignment = taCenter
        Caption = 'IMPRESS'#195'O: 05/07/2019  15:23:23'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLLabel38BeforePrint
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 62
        Width = 272
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'CAIXA 00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel1BeforePrint
      end
    end
    object B_FormasPagtos: TRLSubDetail
      Left = 15
      Top = 291
      Width = 272
      Height = 46
      AllowedBands = [btTitle, btDetail]
      DataSource = dsFormaPagto
      object RLBand16: TRLBand
        Left = 0
        Top = 0
        Width = 272
        Height = 25
        BandType = btTitle
        object RLLabel39: TRLLabel
          AlignWithMargins = True
          Left = 0
          Top = 9
          Width = 272
          Height = 16
          Align = faBottom
          Alignment = taCenter
          Caption = '****  FORMAS DE PAGAMENTOS  ****'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLDraw10: TRLDraw
          Left = 0
          Top = 0
          Width = 272
          Height = 8
          Align = faTop
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Pen.Style = psDot
        end
      end
      object RLBand17: TRLBand
        Left = 0
        Top = 25
        Width = 272
        Height = 15
        object RLDBText23: TRLDBText
          Left = 0
          Top = -1
          Width = 92
          Height = 16
          DataField = 'FRM_DESCRICAO'
          DataSource = dsFormaPagto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText1BeforePrint
        end
        object RLDBText24: TRLDBText
          Left = 224
          Top = -1
          Width = 48
          Height = 16
          Alignment = taRightJustify
          DataField = 'F_VALOR'
          DataSource = dsFormaPagto
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText4BeforePrint
        end
      end
    end
    object A_MovtoCaixa: TRLSubDetail
      Left = 15
      Top = 144
      Width = 272
      Height = 147
      DataSource = dsQueryMovtos
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 272
        Height = 24
        AutoSize = True
        BandType = btTitle
        object RLLabel10: TRLLabel
          AlignWithMargins = True
          Left = 0
          Top = 8
          Width = 272
          Height = 16
          Align = faTop
          Alignment = taCenter
          Caption = '****  MOVIMENTO DO CAIXA  ***'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLDraw11: TRLDraw
          Left = 0
          Top = 0
          Width = 272
          Height = 8
          Align = faTop
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Pen.Style = psDot
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 24
        Width = 272
        Height = 100
        AutoSize = True
        object RLDBText10: TRLDBText
          Left = 184
          Top = 28
          Width = 88
          Height = 16
          Alignment = taRightJustify
          DataField = 'F_VLR_RETIRADA'
          DataSource = dsQueryMovtos
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText10BeforePrint
        end
        object RLDBText12: TRLDBText
          Left = 187
          Top = 42
          Width = 85
          Height = 16
          Alignment = taRightJustify
          DataField = 'F_VLR_SANGRIA'
          DataSource = dsQueryMovtos
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText12BeforePrint
        end
        object RLDBText14: TRLDBText
          Left = 158
          Top = 56
          Width = 114
          Height = 16
          Alignment = taRightJustify
          DataField = 'F_VLR_SUPRIMENTOS'
          DataSource = dsQueryMovtos
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText14BeforePrint
        end
        object RLDBText16: TRLDBText
          Left = 191
          Top = 70
          Width = 81
          Height = 16
          Alignment = taRightJustify
          DataField = 'F_ABER_VALOR'
          DataSource = dsQueryMovtos
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText16BeforePrint
        end
        object RLDBText18: TRLDBText
          Left = 191
          Top = 84
          Width = 81
          Height = 16
          Alignment = taRightJustify
          DataField = 'F_VLR_LIQUIDO'
          DataSource = dsQueryMovtos
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText18BeforePrint
        end
        object RLDBText4: TRLDBText
          Left = 177
          Top = 0
          Width = 95
          Height = 16
          Alignment = taRightJustify
          DataField = 'F_VLR_SUBTOTAL'
          DataSource = dsQueryMovtos
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText4BeforePrint
        end
        object RLDBText8: TRLDBText
          Left = 176
          Top = 14
          Width = 96
          Height = 16
          Alignment = taRightJustify
          DataField = 'F_VLR_DESCONTO'
          DataSource = dsQueryMovtos
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText8BeforePrint
        end
        object RLLabel11: TRLLabel
          Left = 0
          Top = 0
          Width = 59
          Height = 16
          Caption = 'Total Bruto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 0
          Top = 26
          Width = 85
          Height = 16
          Caption = 'Total das Retiradas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 0
          Top = 14
          Width = 90
          Height = 16
          Caption = 'Total dos Descontos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 0
          Top = 82
          Width = 69
          Height = 16
          Caption = 'Total L'#237'quido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 0
          Top = 68
          Width = 79
          Height = 16
          Caption = 'Valor da Abertura:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 0
          Top = 54
          Width = 98
          Height = 16
          Caption = 'Total dos Suprimentos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 0
          Top = 40
          Width = 83
          Height = 16
          Caption = 'Total das Sangrias:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLSubDetail3: TRLSubDetail
      Left = 15
      Top = 337
      Width = 272
      Height = 88
      DataSource = DataSource3
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 272
        Height = 24
        AutoSize = True
        BandType = btTitle
        object RLLabel19: TRLLabel
          AlignWithMargins = True
          Left = 0
          Top = 8
          Width = 272
          Height = 16
          Align = faBottom
          Alignment = taCenter
          Caption = '****  RESUMO POR VENDEDOR  ****'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 0
          Width = 272
          Height = 8
          Align = faTop
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Pen.Style = psDot
        end
      end
      object RLGroup1: TRLGroup
        Left = 0
        Top = 24
        Width = 272
        Height = 65
        DataFields = 'VENDEDOR_APELIDO'
        object RLBand9: TRLBand
          Left = 0
          Top = 18
          Width = 272
          Height = 47
          object RLDBText5: TRLDBText
            Left = 245
            Top = 0
            Width = 27
            Height = 16
            Alignment = taRightJustify
            DataField = 'SUM'
            DataSource = DataSource3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
          object RLLabel20: TRLLabel
            Left = 0
            Top = 0
            Width = 50
            Height = 16
            Caption = 'Total Bruto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 0
            Top = 14
            Width = 90
            Height = 16
            Caption = 'Total dos Descontos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 235
            Top = 13
            Width = 37
            Height = 16
            Alignment = taRightJustify
            DataField = 'SUM_1'
            DataSource = DataSource3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText12BeforePrint
          end
          object RLLabel22: TRLLabel
            Left = 0
            Top = 28
            Width = 57
            Height = 16
            Caption = 'Total L'#237'quido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 237
            Top = 27
            Width = 35
            Height = 16
            Alignment = taRightJustify
            DataField = 'SUM_2'
            DataSource = DataSource3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText18BeforePrint
          end
        end
        object RLBand8: TRLBand
          Left = 0
          Top = 0
          Width = 272
          Height = 18
          BandType = btTitle
          object RLDBText3: TRLDBText
            Left = 0
            Top = 1
            Width = 63
            Height = 16
            DataField = 'VENDEDOR_APELIDO'
            DataSource = DataSource3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
        end
      end
    end
    object RLSubDetail4: TRLSubDetail
      Left = 15
      Top = 425
      Width = 272
      Height = 144
      DataSource = DataSource4
      IntegralHeight = True
      object RLBand10: TRLBand
        Left = 0
        Top = 0
        Width = 272
        Height = 24
        AutoSize = True
        BandType = btTitle
        object RLLabel23: TRLLabel
          AlignWithMargins = True
          Left = 0
          Top = 8
          Width = 272
          Height = 16
          Align = faBottom
          Alignment = taCenter
          Caption = '****  DINHEIRO EM CAIXA  ****'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 0
          Width = 272
          Height = 8
          Align = faTop
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Pen.Style = psDot
        end
      end
      object RLGroup2: TRLGroup
        Left = 0
        Top = 24
        Width = 272
        Height = 121
        DataFields = 'F_OPERADOR'
        object RLBand11: TRLBand
          Left = 0
          Top = 18
          Width = 272
          Height = 100
          AutoSize = True
          object RLDBText11: TRLDBText
            Left = 178
            Top = 0
            Width = 93
            Height = 16
            Alignment = taRightJustify
            DataField = 'F_VLR_ABERTURA'
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
          object RLLabel24: TRLLabel
            Left = 0
            Top = 0
            Width = 41
            Height = 16
            Caption = 'Abertura:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 0
            Top = 14
            Width = 78
            Height = 16
            Caption = 'Total em Dinheiro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 224
            Top = 13
            Width = 48
            Height = 16
            Alignment = taRightJustify
            DataField = 'F_VALOR'
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText14BeforePrint
          end
          object RLLabel26: TRLLabel
            Left = 0
            Top = 28
            Width = 29
            Height = 16
            Caption = 'Troco:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 198
            Top = 27
            Width = 74
            Height = 16
            Alignment = taRightJustify
            DataField = 'F_VLR_TROCO'
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText12BeforePrint
          end
          object RLLabel27: TRLLabel
            Left = 0
            Top = 70
            Width = 53
            Height = 16
            Caption = 'Suprimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 0
            Top = 56
            Width = 40
            Height = 16
            Caption = 'Retirada:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel29: TRLLabel
            Left = 0
            Top = 42
            Width = 38
            Height = 16
            Caption = 'Sangria:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 207
            Top = 41
            Width = 65
            Height = 16
            Alignment = taRightJustify
            DataField = 'SNG_VALOR'
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText12BeforePrint
          end
          object RLDBText20: TRLDBText
            Left = 211
            Top = 56
            Width = 61
            Height = 16
            Alignment = taRightJustify
            DataField = 'RET_VALOR'
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText12BeforePrint
          end
          object RLDBText21: TRLDBText
            Left = 208
            Top = 70
            Width = 64
            Height = 16
            Alignment = taRightJustify
            DataField = 'SUP_VALOR'
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText14BeforePrint
          end
          object RLLabel30: TRLLabel
            Left = 0
            Top = 84
            Width = 33
            Height = 16
            Caption = 'Saldo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 191
            Top = 84
            Width = 81
            Height = 16
            Alignment = taRightJustify
            DataField = 'F_VLR_LIQUIDO'
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
        end
        object RLBand12: TRLBand
          Left = 0
          Top = 0
          Width = 272
          Height = 18
          BandType = btTitle
          object RLDBText17: TRLDBText
            Left = 0
            Top = 1
            Width = 77
            Height = 16
            DataField = 'F_OPERADOR'
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
        end
      end
    end
    object RLBand13: TRLBand
      Left = 15
      Top = 569
      Width = 272
      Height = 64
      BandType = btFooter
      BeforePrint = RLBand13BeforePrint
      object RLDraw6: TRLDraw
        Left = 0
        Top = 0
        Width = 272
        Height = 8
        Align = faTop
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 8
        Width = 272
        Height = 12
        Align = faTop
        Caption = 'Resumo do Caixa.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLLabel4BeforePrint
      end
      object RLDraw7: TRLDraw
        Left = 0
        Top = 20
        Width = 272
        Height = 8
        Align = faTop
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel31: TRLLabel
        Left = 0
        Top = 28
        Width = 272
        Height = 12
        Align = faTop
        Caption = 'TechCore-PDV - http://techcore.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object FDQuery1: TFDQuery
    Connection = FrModulo.DBCon_Local
    SQL.Strings = (
      'SELECT'
      '   SUM(TB1.FRM_PARCELA_VALOR) AS F_VALOR,'
      '   TB1.FRM_DESCRICAO'
      'FROM'
      '   (SELECT'
      '      T1.ID_FORMA_PAGTO,'
      '      T1.FRM_DATA,'
      '      T1.FRM_CODIGO,'
      '      T1.FRM_DESCRICAO,'
      '      T1.FRM_PARCELA_VALOR'
      '   FROM'
      '      C000052 AS T1'
      '   INNER JOIN'
      '      C000050 AS T2'
      '   ON'
      '      T2.ID = T1.ID_C000050'
      '   WHERE'
      '      T1.ID_ABERTURA = :ID_ABER'
      '   AND'
      '      T2.F_CUPOM_STATUS = 1'
      '   ) AS TB1'
      'GROUP BY'
      '   TB1.FRM_DESCRICAO'
      'ORDER BY'
      '   TB1.FRM_DESCRICAO ASC')
    Left = 8
    Top = 88
    ParamData = <
      item
        Name = 'ID_ABER'
        DataType = ftString
        ParamType = ptInput
        Value = '20190705213438023'
      end>
    object FDQuery1FRM_DESCRICAO: TStringField
      FieldName = 'FRM_DESCRICAO'
      Origin = 'FRM_DESCRICAO'
      Size = 35
    end
    object FDQuery1F_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'F_VALOR'
      Origin = 'F_VALOR'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = FDQuery1
    Left = 8
    Top = 120
  end
  object QueryMovtos: TFDQuery
    Connection = FrModulo.DBCon_Local
    SQL.Strings = (
      'SELECT'
      '   COALESCE(SUM(F_VLR_TOTAL),0) AS F_VLR_SUBTOTAL,'
      '   COALESCE(SUM(F_VLR_TROCO),0) AS F_VLR_TROCO,'
      '   COALESCE(SUM(F_VLR_DESCONTO),0) AS F_VLR_DESCONTO,'
      
        '   COALESCE((SELECT SUM(SNG_VALOR) FROM C000053 WHERE ID_ABERTUR' +
        'A = :ID_ABER),0) AS F_VLR_SANGRIA,'
      
        '   COALESCE((SELECT SUM(RET_VALOR) FROM C000054 WHERE ID_ABERTUR' +
        'A = :ID_ABER),0) AS F_VLR_RETIRADA,'
      
        '   COALESCE((SELECT SUM(SUP_VALOR) FROM C000055 WHERE ID_ABERTUR' +
        'A = :ID_ABER),0) AS F_VLR_SUPRIMENTOS,'
      
        '   (SELECT          F_ABER_VALOR   FROM C000002 WHERE ID_ABERTUR' +
        'A = :ID_ABER),'
      ''
      '   /* EXIBE O VALOR L'#205'QUIDO */'
      '   COALESCE(SUM(F_VLR_TOTAL),0)'
      
        '   + (SELECT F_ABER_VALOR FROM C000002 WHERE ID_ABERTURA = :ID_A' +
        'BER) AS F_VLR_LIQUIDO'
      'FROM'
      '   C000050'
      'WHERE'
      '   ID_ABERTURA = :ID_ABER'
      'AND'
      '   F_CUPOM_STATUS = 1')
    Left = 8
    Top = 24
    ParamData = <
      item
        Name = 'ID_ABER'
        DataType = ftString
        ParamType = ptInput
        Value = '20190705213438023'
      end>
    object QueryMovtosF_VLR_SUBTOTAL: TFMTBCDField
      FieldName = 'F_VLR_SUBTOTAL'
      Origin = 'F_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryMovtosF_VLR_TROCO: TFMTBCDField
      FieldName = 'F_VLR_TROCO'
      Origin = 'F_VLR_TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryMovtosF_VLR_DESCONTO: TFMTBCDField
      FieldName = 'F_VLR_DESCONTO'
      Origin = 'F_VLR_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryMovtosF_VLR_SANGRIA: TFMTBCDField
      FieldName = 'F_VLR_SANGRIA'
      Origin = 'F_VLR_SANGRIA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryMovtosF_VLR_RETIRADA: TFMTBCDField
      FieldName = 'F_VLR_RETIRADA'
      Origin = 'F_VLR_RETIRADA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryMovtosF_VLR_SUPRIMENTOS: TFMTBCDField
      FieldName = 'F_VLR_SUPRIMENTOS'
      Origin = 'F_VLR_SUPRIMENTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryMovtosF_ABER_VALOR: TFMTBCDField
      FieldName = 'F_ABER_VALOR'
      Origin = 'F_ABER_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryMovtosF_VLR_LIQUIDO: TFMTBCDField
      FieldName = 'F_VLR_LIQUIDO'
      Origin = 'F_VLR_LIQUIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsQueryMovtos: TDataSource
    AutoEdit = False
    DataSet = QueryMovtos
    Left = 8
    Top = 56
  end
  object QueryResVendedor: TFDQuery
    Connection = FrModulo.DBCon_Local
    SQL.Strings = (
      'SELECT'
      '   SUM(F_VLR_CUPOM),'
      '   SUM(F_VLR_DESCONTO),'
      '   SUM(F_VLR_TOTAL),'
      '   VENDEDOR_APELIDO'
      'FROM'
      '   C000050'
      'WHERE'
      '   ID_ABERTURA = :ID_ABER'
      'AND'
      '   F_CUPOM_STATUS = 1'
      'GROUP BY'
      '   VENDEDOR_APELIDO'
      ''
      '   ')
    Left = 8
    Top = 152
    ParamData = <
      item
        Name = 'ID_ABER'
        DataType = ftString
        ParamType = ptInput
        Size = 35
        Value = '20190705213438023'
      end>
    object QueryResVendedorSUM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryResVendedorSUM_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_1'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryResVendedorSUM_2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_2'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryResVendedorVENDEDOR_APELIDO: TStringField
      FieldName = 'VENDEDOR_APELIDO'
      Origin = 'VENDEDOR_APELIDO'
      Size = 85
    end
  end
  object DataSource3: TDataSource
    AutoEdit = False
    DataSet = QueryResVendedor
    Left = 8
    Top = 184
  end
  object QueryDinheiro: TFDQuery
    Connection = FrModulo.DBCon_Local
    SQL.Strings = (
      'SELECT'
      '   TB0.F_OPERADOR,'
      '   SUM(TB0.FRM_PARCELA_VALOR) AS F_VALOR,'
      '   SUM(TB0.F_VLR_TROCO) AS F_VLR_TROCO,'
      
        '   COALESCE((SELECT F_ABER_VALOR   FROM C000002 WHERE ID_ABERTUR' +
        'A = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0) AS F_VLR_ABER' +
        'TURA,'
      
        '   COALESCE((SELECT SUM(SNG_VALOR) FROM C000053 WHERE ID_ABERTUR' +
        'A = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0) AS SNG_VALOR,'
      
        '   COALESCE((SELECT SUM(RET_VALOR) FROM C000054 WHERE ID_ABERTUR' +
        'A = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0) AS RET_VALOR,'
      
        '   COALESCE((SELECT SUM(SUP_VALOR) FROM C000055 WHERE ID_ABERTUR' +
        'A = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0) AS SUP_VALOR,'
      ''
      '   /* EXIBE O VALOR L'#205'QUIDO POR OPERADOR */'
      '   SUM(TB0.FRM_PARCELA_VALOR)'
      '   - SUM(TB0.F_VLR_TROCO)'
      
        '   + COALESCE((SELECT F_ABER_VALOR   FROM C000002 WHERE ID_ABERT' +
        'URA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0)'
      
        '   - COALESCE((SELECT SUM(SNG_VALOR) FROM C000053 WHERE ID_ABERT' +
        'URA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0)'
      
        '   - COALESCE((SELECT SUM(RET_VALOR) FROM C000054 WHERE ID_ABERT' +
        'URA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0)'
      
        '   + COALESCE((SELECT SUM(SUP_VALOR) FROM C000055 WHERE ID_ABERT' +
        'URA = :ID_ABER AND ID_OPERADOR = TB0.ID_OPERADOR),0)'
      '   AS F_VLR_LIQUIDO'
      'FROM'
      '   (SELECT'
      '      T2.ID_OPERADOR,'
      '      T2.F_OPERADOR,'
      '      T2.F_VLR_TROCO,'
      '      T1.FRM_PARCELA_VALOR'
      '   FROM'
      '      C000052 AS T1'
      '   INNER JOIN'
      '      C000050 AS T2'
      '   ON'
      '      T1.ID_C000050     = T2.ID'
      '   WHERE                '
      '      T2.ID_ABERTURA    = :ID_ABER'
      '   AND'
      '      T2.F_CUPOM_STATUS = 1'
      '   AND'
      '      T1.ID_FORMA_PAGTO = 1'
      '   ) AS TB0'
      'GROUP BY'
      '   TB0.ID_OPERADOR,'
      '   TB0.F_OPERADOR')
    Left = 8
    Top = 216
    ParamData = <
      item
        Name = 'ID_ABER'
        DataType = ftString
        ParamType = ptInput
        Size = 35
        Value = '20190705213438023'
      end>
    object QueryDinheiroF_OPERADOR: TStringField
      FieldName = 'F_OPERADOR'
      Origin = 'F_OPERADOR'
      Size = 40
    end
    object QueryDinheiroF_VALOR: TFMTBCDField
      FieldName = 'F_VALOR'
      Origin = 'F_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryDinheiroF_VLR_TROCO: TFMTBCDField
      FieldName = 'F_VLR_TROCO'
      Origin = 'F_VLR_TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryDinheiroF_VLR_ABERTURA: TFMTBCDField
      FieldName = 'F_VLR_ABERTURA'
      Origin = 'F_VLR_ABERTURA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryDinheiroSNG_VALOR: TFMTBCDField
      FieldName = 'SNG_VALOR'
      Origin = 'SNG_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryDinheiroRET_VALOR: TFMTBCDField
      FieldName = 'RET_VALOR'
      Origin = 'RET_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryDinheiroSUP_VALOR: TFMTBCDField
      FieldName = 'SUP_VALOR'
      Origin = 'SUP_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryDinheiroF_VLR_LIQUIDO: TFMTBCDField
      FieldName = 'F_VLR_LIQUIDO'
      Origin = 'F_VLR_LIQUIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object DataSource4: TDataSource
    AutoEdit = False
    DataSet = QueryDinheiro
    Left = 8
    Top = 248
  end
  object QueryFormaPagto: TFDQuery
    Connection = FrModulo.DBCon_Local
    SQL.Strings = (
      'SELECT'
      '   T1.FRM_DESCRICAO,'
      '   IIF(T1.ID_FORMA_PAGTO = 1'
      '      ,SUM(T1.FRM_PARCELA_VALOR - T2.F_VLR_TROCO)'
      '      ,SUM(T1.FRM_PARCELA_VALOR)'
      '   ) AS F_VALOR'
      'FROM'
      '   C000052 AS T1'
      'INNER JOIN'
      '   C000050 AS T2'
      'ON'
      '   T2.ID = T1.ID_C000050'
      'WHERE'
      '   T2.F_CUPOM_STATUS = 1'
      'AND'
      '   T2.ID_ABERTURA = :ID_ABER'
      'GROUP BY'
      '   T1.FRM_DESCRICAO,'
      '   T1.ID_FORMA_PAGTO'
      'ORDER BY'
      '   T1.FRM_DESCRICAO')
    Left = 8
    Top = 288
    ParamData = <
      item
        Name = 'ID_ABER'
        DataType = ftString
        ParamType = ptInput
        Value = '20190705213438023'
      end>
    object QueryFormaPagtoFRM_DESCRICAO: TStringField
      FieldName = 'FRM_DESCRICAO'
      Origin = 'FRM_DESCRICAO'
      Size = 35
    end
    object QueryFormaPagtoF_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'F_VALOR'
      Origin = 'F_VALOR'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsFormaPagto: TDataSource
    AutoEdit = False
    DataSet = QueryFormaPagto
    Left = 8
    Top = 320
  end
  object aQuery: TFDQuery
    Connection = FrModulo.DBCon_Local
    Left = 56
    Top = 424
  end
end
