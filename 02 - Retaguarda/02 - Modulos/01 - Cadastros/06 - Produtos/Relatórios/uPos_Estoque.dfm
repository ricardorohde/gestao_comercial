object FrPos_Estoque: TFrPos_Estoque
  Left = 0
  Top = 0
  Caption = 'FrPos_Estoque'
  ClientHeight = 606
  ClientWidth = 841
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
    Left = 39
    Top = -6
    Width = 794
    Height = 1123
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 79
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
        Top = 64
        Width = 33
        Height = 14
        Align = faLeftBottom
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
        Top = 64
        Width = 41
        Height = 14
        Align = faLeftBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = '- '
      end
      object RLSystemInfo4: TRLSystemInfo
        AlignWithMargins = True
        Left = 581
        Top = 64
        Width = 137
        Height = 14
        Align = faRightBottom
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
        Text = 'P'#225'ginas: '
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        Align = faTop
        Alignment = taCenter
        Caption = 'POSI'#199#195'O DO ESTOQUE'
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
      Top = 147
      Width = 718
      Height = 78
      AllowedBands = [btDetail]
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
        object RLDBText3: TRLDBText
          Left = 3
          Top = 2
          Width = 41
          Height = 14
          AutoSize = False
          DataField = 'PRD_CODIGO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 46
          Top = 1
          Width = 213
          Height = 14
          AutoSize = False
          DataField = 'PRD_DESCRICAO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 291
          Top = 1
          Width = 51
          Height = 14
          AutoSize = False
          DataField = 'PRD_NCM'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 262
          Top = 1
          Width = 28
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'PRD_UNIDADE'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 348
          Top = 1
          Width = 57
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_QTDE_INICIAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 406
          Top = 1
          Width = 60
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_QTDE_ENTRADA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 467
          Top = 1
          Width = 60
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_QTDE_SAIDA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 528
          Top = 1
          Width = 60
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_QTDE_ATUAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 589
          Top = 1
          Width = 60
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_CUSTO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 653
          Top = 1
          Width = 65
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_CUSTO_TOTAL'
          DataSource = dsDados
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
        BeforePrint = RLBand4BeforePrint
        object RLDBText2: TRLDBText
          Left = 3
          Top = 1
          Width = 107
          Height = 14
          DataField = 'PRD_GRUPO'
          DataSource = dsDados
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
        BeforePrint = RLBand4BeforePrint
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
          Left = 348
          Top = 5
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'PRD_QTDE_INICIAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
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
          Width = 103
          Height = 16
          Caption = 'Total do Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 409
          Top = 5
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'PRD_QTDE_ENTRADA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Info = riSum
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBResult3: TRLDBResult
          Left = 470
          Top = 5
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'PRD_QTDE_SAIDA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Info = riSum
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBResult4: TRLDBResult
          Left = 590
          Top = 5
          Width = 59
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'PRD_VLR_CUSTO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Info = riSum
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBResult5: TRLDBResult
          Left = 653
          Top = 5
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          DataField = 'PRD_CUSTO_TOTAL'
          DataSource = dsDados
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
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
      Top = 117
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
      object RLLabel5: TRLLabel
        Left = 45
        Top = 14
        Width = 93
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
        Left = 315
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
        Left = 262
        Top = 14
        Width = 28
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
        Left = 368
        Top = 15
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 419
        Top = 15
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 493
        Top = 15
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 555
        Top = 15
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 590
        Top = 15
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Custo Uni.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 653
        Top = 14
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Custo total'
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
      Top = 252
      Width = 718
      Height = 18
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel13: TRLLabel
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
    object RLBand7: TRLBand
      Left = 38
      Top = 225
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
      object RLDraw2: TRLDraw
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
      object RLDBResult6: TRLDBResult
        Left = 348
        Top = 5
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'PRD_QTDE_INICIAL'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Info = riSum
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 2
        Top = 6
        Width = 83
        Height = 16
        Caption = 'Total Geral: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 409
        Top = 5
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'PRD_QTDE_ENTRADA'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Info = riSum
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult8: TRLDBResult
        Left = 470
        Top = 5
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'PRD_QTDE_SAIDA'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Info = riSum
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult9: TRLDBResult
        Left = 590
        Top = 5
        Width = 59
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'PRD_VLR_CUSTO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Info = riSum
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBResult10: TRLDBResult
        Left = 653
        Top = 5
        Width = 65
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Color = clWhite
        DataField = 'PRD_CUSTO_TOTAL'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Info = riSum
        ParentColor = False
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = FrFiltro_Pos_Estoque.Query
    Top = 18
  end
end
