object FrRel_Vendedor_Agrupado: TFrRel_Vendedor_Agrupado
  Left = 0
  Top = 0
  ClientHeight = 716
  ClientWidth = 861
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
    Left = 42
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
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
      object lb_empresa: TRLLabel
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
        BeforePrint = lb_empresaBeforePrint
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 76
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
        Top = 76
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
        Top = 54
        Width = 137
        Height = 36
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
        Text = 'P'#225'ginas: '
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        Align = faTop
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO DAS COMISS'#213'ES DOS VENDEDORES (PDV)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 38
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'AGRUPADO POR VENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 0
        Top = 54
        Width = 246
        Height = 14
        Align = faLeftTop
        Caption = 'PER'#205'ODO SELECIONADO: 00/00/0000 - 00/00/0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
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
      Height = 81
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      DataFields = 'FUN_APELIDO'
      object RLBand2: TRLBand
        Left = 0
        Top = 21
        Width = 718
        Height = 18
        BandType = btTitle
        object RLLabel3: TRLLabel
          Left = 3
          Top = 1
          Width = 70
          Height = 16
          AutoSize = False
          Caption = 'DT. VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 79
          Top = 1
          Width = 70
          Height = 16
          Margins.Left = 10
          AutoSize = False
          Caption = 'N.'#186' CUPOM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 155
          Top = 1
          Width = 87
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ - SUBTOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 348
          Top = 1
          Width = 85
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% - DESCONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 442
          Top = 1
          Width = 83
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ - TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 616
          Top = 1
          Width = 91
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ - COMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 253
          Top = 2
          Width = 84
          Height = 14
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'R$ - DESCONTO'
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
        Top = 39
        Width = 718
        Height = 18
        object RLDBText1: TRLDBText
          Left = 3
          Top = 1
          Width = 58
          Height = 16
          AutoSize = False
          DataField = 'F_CUP_DATA'
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
          Left = 79
          Top = 1
          Width = 70
          Height = 16
          AutoSize = False
          DataField = 'F_CUP_NUMERO'
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
          Left = 155
          Top = 1
          Width = 87
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_SUBTOTAL'
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
          Left = 256
          Top = 1
          Width = 81
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_DESCONTO'
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
          Left = 348
          Top = 1
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_MG_DESCONTO'
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
          Left = 442
          Top = 2
          Width = 83
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_TOTAL'
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
          Left = 584
          Top = 3
          Width = 123
          Height = 14
          Alignment = taRightJustify
          DataField = 'F_CUP_VLR_COMISSAO'
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
        Width = 718
        Height = 21
        BandType = btTitle
        Color = 14869218
        ParentColor = False
        Transparent = False
        object RLDBText3: TRLDBText
          Left = 3
          Top = 3
          Width = 151
          Height = 15
          DataField = 'FUN_APELIDO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'VENDEDOR: '
          Transparent = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 57
        Width = 718
        Height = 20
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        object RLDBResult1: TRLDBResult
          Left = 476
          Top = 3
          Width = 231
          Height = 14
          Alignment = taRightJustify
          DataField = 'F_CUP_VLR_COMISSAO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = 'Comiss'#227'o:  '
        end
        object RLDBResult2: TRLDBResult
          Left = 348
          Top = 3
          Width = 85
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_MG_DESCONTO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBResult3: TRLDBResult
          Left = 257
          Top = 3
          Width = 80
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_DESCONTO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBResult4: TRLDBResult
          Left = 155
          Top = 3
          Width = 87
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_SUBTOTAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBResult6: TRLDBResult
          Left = 442
          Top = 3
          Width = 83
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_TOTAL'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 245
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
    object RLBand5: TRLBand
      Left = 38
      Top = 209
      Width = 718
      Height = 36
      BandType = btSummary
      object RLDBResult5: TRLDBResult
        Left = 613
        Top = 0
        Width = 94
        Height = 36
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'F_CUP_VLR_COMISSAO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Info = riSum
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 544
        Top = 11
        Width = 61
        Height = 14
        Margins.Left = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = FrRel_Vendedor_Filtro.Query
    Left = 6
    Top = 19
  end
end
