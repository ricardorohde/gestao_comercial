object FrTabela_Precos_II: TFrTabela_Precos_II
  Left = 0
  Top = 0
  Caption = 'FrTabela_Precos_II'
  ClientHeight = 685
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
    Left = 26
    Top = 20
    Width = 794
    Height = 1123
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = PrintBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 83
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
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 54
        Width = 33
        Height = 29
        Align = faLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 33
        Top = 54
        Width = 41
        Height = 29
        Align = faLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        Layout = tlCenter
        ParentFont = False
        Text = '- '
      end
      object RLSystemInfo4: TRLSystemInfo
        AlignWithMargins = True
        Left = 581
        Top = 54
        Width = 137
        Height = 29
        Align = faRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        HoldStyle = hsCopyWidth
        Info = itLastPageNumber
        Layout = tlCenter
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
        Caption = 'TABELA DE PRE'#199'OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 0
        Top = 38
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        DataField = 'PRC_DESCRICAO'
        DataSource = ds2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'TABELA DE PRE'#199'OS: '
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 137
      Width = 718
      Height = 52
      AllowedBands = [btDetail]
      DataFields = 'PRD_GRUPO'
      ForceMinBands = True
      object RLBand2: TRLBand
        Left = 0
        Top = 18
        Width = 718
        Height = 15
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText1: TRLDBText
          Left = 48
          Top = 0
          Width = 88
          Height = 14
          AutoSize = False
          DataField = 'PRD_CODIGO_BRR'
          DataSource = dsDados
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
          Top = 0
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
          Left = 142
          Top = 0
          Width = 279
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
          Left = 457
          Top = 0
          Width = 53
          Height = 14
          Alignment = taCenter
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
          Left = 427
          Top = 0
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
        object RLDBText10: TRLDBText
          Left = 660
          Top = 0
          Width = 55
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRC_VLR_VENDA'
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
          Left = 591
          Top = 0
          Width = 55
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
          BeforePrint = RLDBText7BeforePrint
        end
        object RLDBText8: TRLDBText
          Left = 528
          Top = 1
          Width = 55
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE_ATUAL'
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
          Top = 2
          Width = 110
          Height = 14
          DataField = 'PRD_GRUPO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Text = 'GRUPO: '
          Transparent = False
          BeforePrint = RLDBText2BeforePrint
        end
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 16
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel3: TRLLabel
        Left = 2
        Top = 1
        Width = 42
        Height = 14
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 48
        Top = 1
        Width = 88
        Height = 14
        Caption = 'C'#243'd. de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 142
        Top = 1
        Width = 279
        Height = 14
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 457
        Top = 2
        Width = 53
        Height = 13
        AutoSize = False
        Caption = 'Ncm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 427
        Top = 2
        Width = 28
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Un.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 654
        Top = 1
        Width = 61
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ - Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 587
        Top = 1
        Width = 59
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ - Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLLabel9BeforePrint
      end
      object RLLabel10: TRLLabel
        Left = 535
        Top = 1
        Width = 48
        Height = 14
        Alignment = taRightJustify
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 189
      Width = 718
      Height = 18
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel8: TRLLabel
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
        Left = 646
        Top = 1
        Width = 72
        Height = 17
        Align = faRightMost
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        Layout = tlBottom
        ParentFont = False
        Text = ''
        BeforePrint = RLSystemInfo5BeforePrint
      end
    end
  end
  object tbTabela: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT PRC_DESCRICAO FROM C000303 WHERE ID = :ID_TABELA'
      '')
    Top = 66
    ParamData = <
      item
        Name = 'ID_TABELA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = FrFiltro_Tabela_Precos.tbDados
    Top = 12
  end
  object ds2: TDataSource
    AutoEdit = False
    DataSet = tbTabela
    Top = 96
  end
end
