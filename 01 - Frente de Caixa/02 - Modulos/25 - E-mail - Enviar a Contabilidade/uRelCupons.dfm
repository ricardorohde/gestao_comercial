object FrRelCupons: TFrRelCupons
  Left = 0
  Top = 0
  Caption = 'FrRelCupons'
  ClientHeight = 881
  ClientWidth = 895
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
    Left = 53
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
        Top = 75
        Width = 37
        Height = 15
        Align = faLeftBottom
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 37
        Top = 75
        Width = 42
        Height = 15
        Align = faLeftBottom
        Info = itHour
        Text = '-'
      end
      object RLSystemInfo4: TRLSystemInfo
        AlignWithMargins = True
        Left = 540
        Top = 38
        Width = 178
        Height = 52
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        HoldStyle = hsCopyWidth
        Info = itLastPageNumber
        Layout = tlBottom
        ParentFont = False
        Text = 'Total de P'#225'ginas: '
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        Align = faTop
        Alignment = taCenter
        Caption = 'RELA'#199#195'O DE CUPONS FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 0
        Top = 57
        Width = 287
        Height = 15
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
      Top = 128
      Width = 718
      Height = 77
      AllowedBands = [btDetail]
      DataFields = 'F_CUPOM_DATA'
      object RLBand2: TRLBand
        Left = 0
        Top = 32
        Width = 718
        Height = 28
        object RLDBText1: TRLDBText
          Left = 0
          Top = 3
          Width = 41
          Height = 14
          AutoSize = False
          DataField = 'F_CUPOM_NUMERO'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 47
          Top = 3
          Width = 78
          Height = 14
          DataField = 'F_XML_CHAVE'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 312
          Top = 3
          Width = 81
          Height = 14
          Alignment = taRightJustify
          DataField = 'F_VLR_CUPOM'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBBarcode1: TRLDBBarcode
          Left = 429
          Top = 1
          Width = 288
          Height = 16
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
          DataField = 'F_XML_CHAVE'
          DataSource = dsQuery
        end
        object RLDBText6: TRLDBText
          Left = 431
          Top = 15
          Width = 61
          Height = 10
          DataField = 'F_CANCELADO'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 16
        Width = 718
        Height = 16
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLLabel6: TRLLabel
          Left = 429
          Top = 1
          Width = 29
          Height = 14
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 568
          Top = 1
          Width = 35
          Height = 14
          Caption = 'Caixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 464
          Top = 1
          Width = 89
          Height = 14
          Alignment = taJustify
          DataField = 'F_CUPOM_DATA'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10485760
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 611
          Top = 1
          Width = 112
          Height = 14
          Alignment = taJustify
          DataField = 'F_CAIXA_DESCRICAO'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10485760
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel4: TRLLabel
          Left = 0
          Top = 1
          Width = 43
          Height = 14
          Caption = 'Cupom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 47
          Top = 1
          Width = 37
          Height = 14
          Caption = 'Chave'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 361
          Top = 0
          Width = 32
          Height = 14
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 60
        Width = 718
        Height = 21
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 160
          Top = 3
          Width = 125
          Height = 14
          Alignment = taRightJustify
          DataField = 'F_VLR_CUPOM'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riCount
          Layout = tlCenter
          ParentFont = False
          Text = 'Qtde. Cupons: '
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 393
          Height = 3
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Style = bsClear
          Brush.Style = bsClear
          DrawHeight = 2
          DrawKind = dkLine
          DrawWidth = 0
          Pen.Style = psDot
        end
        object RLDBResult4: TRLDBResult
          Left = 241
          Top = 4
          Width = 152
          Height = 14
          Alignment = taRightJustify
          DataField = 'F_VLR_CUPOM'
          DataSource = dsQuery
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = 'Total: '
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        BandType = btTitle
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 205
      Width = 718
      Height = 44
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult2: TRLDBResult
        Left = 434
        Top = 0
        Width = 283
        Height = 20
        Alignment = taRightJustify
        DataField = 'F_VLR_CUPOM_A'
        DataSource = dsQuery
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Info = riSum
        Layout = tlCenter
        ParentFont = False
        Text = 'Cupons Autorizados: '
      end
      object RLDBResult3: TRLDBResult
        Left = 434
        Top = 21
        Width = 283
        Height = 20
        Alignment = taRightJustify
        DataField = 'F_VLR_CUPOM_C'
        DataSource = dsQuery
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Info = riSum
        Layout = tlCenter
        ParentFont = False
        Text = 'Cupons Cancelados: '
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 249
      Width = 718
      Height = 20
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 3
        Align = faTop
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 6
        Width = 235
        Height = 12
        Caption = 'TechCore Solu'#231#245'es em Gest'#227'o - http://techcore.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        AlignWithMargins = True
        Left = 608
        Top = 3
        Width = 110
        Height = 17
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        HoldStyle = hsCopyWidth
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'gina: '
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 12
    Top = 76
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = FrSendCuponsEmail.pQuery
    Left = 12
    Top = 40
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 405
    Top = 304
  end
end
