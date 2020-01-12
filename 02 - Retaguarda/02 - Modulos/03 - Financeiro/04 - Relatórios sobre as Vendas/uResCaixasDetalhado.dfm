object FrResCaixasDetalhado: TFrResCaixasDetalhado
  Left = 0
  Top = 0
  Caption = 'FrResCaixasDetalhado'
  ClientHeight = 611
  ClientWidth = 890
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
    Left = 56
    Top = -32
    Width = 794
    Height = 1123
    DataSource = dsQuery
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 100
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
        Top = 81
        Width = 37
        Height = 15
        Align = faLeftTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlJustify
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 37
        Top = 81
        Width = 45
        Height = 15
        Align = faLeftTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        Layout = tlJustify
        ParentFont = False
        Text = '- '
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 581
        Top = 81
        Width = 137
        Height = 15
        Align = faRightTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
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
        Caption = 'RESUMO DAS VENDAS (FRENTE DE CAIXA)'
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
        Height = 27
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
      object lbCaixa: TRLLabel
        Left = 0
        Top = 38
        Width = 718
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'Caixa Selecionado: Todos os Caixas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
        BeforePrint = lbCaixaBeforePrint
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 202
      Width = 718
      Height = 44
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult2: TRLDBResult
        Left = 417
        Top = 0
        Width = 301
        Height = 44
        Align = faRight
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataFormula = 'SUM(F_CUP_TOTAL)'
        DataSource = dsQuery
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Text = 'TOTAL GERAL:  '
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 138
      Width = 718
      Height = 64
      DataFields = 'FUN_APELIDO'
      object RLBand2: TRLBand
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
        object RLLabel7: TRLLabel
          Left = 3
          Top = 1
          Width = 150
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 159
          Top = 1
          Width = 66
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 616
          Top = 0
          Width = 102
          Height = 18
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Valor Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 227
          Top = 1
          Width = 62
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Cupom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 291
          Top = 1
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'SubTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 363
          Top = 1
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 435
          Top = 1
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Vlr. Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 507
          Top = 1
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Vlr. Troco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 18
        Width = 718
        Height = 16
        object RLDBText1: TRLDBText
          Left = 3
          Top = 0
          Width = 150
          Height = 15
          AutoSize = False
          DataField = 'FUN_APELIDO'
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
          Left = 159
          Top = 0
          Width = 66
          Height = 15
          AutoSize = False
          DataField = 'F_CUP_DATA'
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
          Left = 227
          Top = 0
          Width = 62
          Height = 15
          AutoSize = False
          DataField = 'F_CUP_NUMERO'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 291
          Top = 0
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_SUBTOTAL'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 363
          Top = 0
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_DESCONTO'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 616
          Top = 0
          Width = 102
          Height = 16
          Align = faRight
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_TOTAL'
          DataSource = dsQuery
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
          Left = 435
          Top = 0
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_PAGO'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 507
          Top = 0
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'F_CUP_TROCO'
          DataSource = dsQuery
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
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
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 4
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBResult1: TRLDBResult
          Left = 419
          Top = 4
          Width = 299
          Height = 23
          Align = faRight
          Alignment = taRightJustify
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataFormula = 'SUM(F_CUP_TOTAL)'
          DataSource = dsQuery
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          Text = 'Total do dia e Vendedor: '
        end
      end
    end
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 12
    Top = 52
  end
  object Query: TFDQuery
    Active = True
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      
        '   (SELECT LPAD(FUN_CODIGO,3,0) || '#39' - '#39' || FUN_APELIDO FROM C00' +
        '0301 WHERE ID = T1.ID_VENDEDOR) AS FUN_APELIDO'
      'FROM'
      '   C000030 AS T1'
      'WHERE '
      '   T1.ID_EMPRESA   = :ID_EMP'
      'AND'
      '   T1.F_CUP_STATUS = 1'
      'AND'
      '   T1.F_CUP_DATA BETWEEN :DT_A AND :DT_B'
      'ORDER BY'
      '   T1.F_CUP_DATA, T1.ID_VENDEDOR DESC')
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
        Value = 43466d
      end
      item
        Name = 'DT_B'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end>
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_50: TIntegerField
      FieldName = 'ID_50'
      Origin = 'ID_50'
    end
    object QueryID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object QueryID_ABERTURA: TStringField
      FieldName = 'ID_ABERTURA'
      Origin = 'ID_ABERTURA'
      Size = 25
    end
    object QueryID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object QueryID_OPERADOR: TIntegerField
      FieldName = 'ID_OPERADOR'
      Origin = 'ID_OPERADOR'
    end
    object QueryID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object QueryID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = 'ID_CAIXA'
    end
    object QueryF_CUP_DATA: TDateField
      FieldName = 'F_CUP_DATA'
      Origin = 'F_CUP_DATA'
    end
    object QueryF_CUP_NUMERO: TIntegerField
      FieldName = 'F_CUP_NUMERO'
      Origin = 'F_CUP_NUMERO'
      DisplayFormat = '000000'
    end
    object QueryF_CUP_SUBTOTAL: TFMTBCDField
      FieldName = 'F_CUP_SUBTOTAL'
      Origin = 'F_CUP_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryF_CUP_DESCONTO: TFMTBCDField
      FieldName = 'F_CUP_DESCONTO'
      Origin = 'F_CUP_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryF_CUP_TOTAL: TFMTBCDField
      FieldName = 'F_CUP_TOTAL'
      Origin = 'F_CUP_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryF_CUP_PAGO: TFMTBCDField
      FieldName = 'F_CUP_PAGO'
      Origin = 'F_CUP_PAGO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryF_CUP_TROCO: TFMTBCDField
      FieldName = 'F_CUP_TROCO'
      Origin = 'F_CUP_TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryF_CUP_STATUS: TIntegerField
      FieldName = 'F_CUP_STATUS'
      Origin = 'F_CUP_STATUS'
    end
    object QueryF_CUP_DIRETIVA: TIntegerField
      FieldName = 'F_CUP_DIRETIVA'
      Origin = 'F_CUP_DIRETIVA'
    end
    object QueryF_CUP_CHAVE_XML: TStringField
      FieldName = 'F_CUP_CHAVE_XML'
      Origin = 'F_CUP_CHAVE_XML'
      Size = 50
    end
    object QueryF_CUP_MG_DESCONTO: TBCDField
      FieldName = 'F_CUP_MG_DESCONTO'
      Origin = 'F_CUP_MG_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryF_CUP_COMISSAO: TFMTBCDField
      FieldName = 'F_CUP_COMISSAO'
      Origin = 'F_CUP_COMISSAO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryF_CUP_VLR_COMISSAO: TBCDField
      FieldName = 'F_CUP_VLR_COMISSAO'
      Origin = 'F_CUP_VLR_COMISSAO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryFUN_APELIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUN_APELIDO'
      Origin = 'FUN_APELIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 86
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 364
    Top = 216
  end
end
