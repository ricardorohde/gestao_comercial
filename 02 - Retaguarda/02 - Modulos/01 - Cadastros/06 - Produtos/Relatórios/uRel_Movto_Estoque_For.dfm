object FrRel_Movto_Estoque_For: TFrRel_Movto_Estoque_For
  Left = 0
  Top = 0
  Caption = 'FrRel_Movto_Estoque_For'
  ClientHeight = 709
  ClientWidth = 873
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
      Height = 97
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object lb_empresa: TRLLabel
        Left = 0
        Top = 38
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
        Top = 79
        Width = 33
        Height = 18
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
        Top = 79
        Width = 41
        Height = 18
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
        Left = 581
        Top = 79
        Width = 137
        Height = 18
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
        Width = 718
        Height = 22
        Align = faTop
        Alignment = taCenter
        Caption = 'MOVIMENTA'#199#195'O DO ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 0
        Top = 54
        Width = 718
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
      object RLLabel8: TRLLabel
        Left = 0
        Top = 22
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'Entradas no estoque agrupado por fornecedores.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 135
      Width = 718
      Height = 100
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      DataFields = 'FORNECEDOR'
      object RLBand2: TRLBand
        Left = 0
        Top = 21
        Width = 718
        Height = 16
        BandType = btTitle
        object RLLabel5: TRLLabel
          Left = 442
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
        object RLLabel10: TRLLabel
          Left = 519
          Top = 0
          Width = 33
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Qtde.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 651
          Top = 0
          Width = 64
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Valor Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 2
          Top = 0
          Width = 42
          Height = 16
          Margins.Left = 10
          Alignment = taJustify
          Caption = 'C'#243'digo'
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
        Width = 718
        Height = 18
        object RLDBText4: TRLDBText
          Left = 442
          Top = 1
          Width = 36
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
          Left = 481
          Top = 1
          Width = 71
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
        object RLDBText1: TRLDBText
          Left = 627
          Top = 1
          Width = 88
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRD_VLR_TOTAL'
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
          Left = 3
          Top = 3
          Width = 41
          Height = 16
          Alignment = taRightJustify
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
        BeforePrint = RLBand4BeforePrint
        object RLDBText3: TRLDBText
          Left = 3
          Top = 3
          Width = 165
          Height = 15
          DataField = 'FORNECEDOR'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'FORNECEDOR: '
          Transparent = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 55
        Width = 718
        Height = 29
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
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
        object RLDBResult2: TRLDBResult
          Left = 566
          Top = 2
          Width = 149
          Height = 16
          Alignment = taRightJustify
          DataField = 'PRD_VLR_TOTAL'
          DataSource = dsDados
          Info = riSum
          Text = ''
        end
        object RLLabel6: TRLLabel
          Left = 362
          Top = 2
          Width = 124
          Height = 16
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Total por Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 2
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 257
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
      Top = 235
      Width = 718
      Height = 22
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult3: TRLDBResult
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
      object RLDBResult4: TRLDBResult
        Left = 566
        Top = 2
        Width = 149
        Height = 16
        Alignment = taRightJustify
        DataField = 'PRD_VLR_TOTAL'
        DataSource = dsDados
        Info = riSum
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 388
        Top = 2
        Width = 98
        Height = 16
        Margins.Left = 10
        Alignment = taRightJustify
        Caption = 'Total no Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 2
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 8
    Top = 50
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'C:\Users\Winston M. de Jesus\Desktop\Teste.pdf'
    DisplayName = 'Movimento de Estoque(Entradas)'
    Left = 8
    Top = 88
  end
  object Query: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'Select'
      '    t3.for_razao_social as fornecedor,'
      '    t4.prd_codigo,'
      '    t4.prd_descricao,'
      '    t4.prd_unidade,'
      '    sum(t2.itm_qtde) as prd_qtde,'
      '    sum(t2.itm_vlr_total) as prd_vlr_total'
      'from'
      '    c000308 as t1'
      'join'
      '    c000309 as t2'
      'on'
      '    t2.id_pedido = t1.id'
      'join'
      '    c000305 as t3'
      'on'
      '    t3.id = t1.id_fornecedor'
      'join'
      '    c000405 as t4'
      'on'
      '    t4.id = t2.id_produto'
      'where'
      '    t1.id_empresa = :id_emp'
      'and'
      '    t1.ped_data_pedido between :dt_a and :dt_b'
      'and'
      '    t1.id_fornecedor = :id_for'
      'group by'
      
        '    t3.for_razao_social, t4.prd_codigo, t4.prd_descricao, t4.prd' +
        '_unidade')
    Left = 8
    Top = 16
    ParamData = <
      item
        Name = 'ID_EMP'
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
      end
      item
        Name = 'ID_FOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = 21
      end>
    object QueryFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Required = True
      Size = 120
    end
    object QueryPRD_CODIGO: TIntegerField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      DisplayFormat = '000000'
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
    object QueryPRD_QTDE: TFMTBCDField
      FieldName = 'PRD_QTDE'
      Origin = 'PRD_QTDE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object QueryPRD_VLR_TOTAL: TFMTBCDField
      FieldName = 'PRD_VLR_TOTAL'
      Origin = 'PRD_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
end
