object FrPedidosVendasPrint: TFrPedidosVendasPrint
  Left = 0
  Top = 0
  Caption = 'FrPedidosVendasPrint'
  ClientHeight = 627
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ePrint: TRLReport
    Left = 78
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dsItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 63
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      Borders.FixedBottom = True
      object RLDraw1: TRLDraw
        Left = 614
        Top = 32
        Width = 104
        Height = 30
        Brush.Style = bsClear
      end
      object RLDraw2: TRLDraw
        Left = 614
        Top = 3
        Width = 104
        Height = 30
        Brush.Style = bsClear
      end
      object RLLabel1: TRLLabel
        Left = 617
        Top = 4
        Width = 60
        Height = 10
        Caption = 'DATA EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlTituloOrc: TRLLabel
        Left = 617
        Top = 33
        Width = 67
        Height = 10
        Caption = 'OR'#199'AMENTO N.'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = rlTituloOrcBeforePrint
      end
      object RLDBText13: TRLDBText
        Left = 630
        Top = 44
        Width = 83
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PED_NUMERO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 630
        Top = 15
        Width = 83
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PED_DATA_PEDIDO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object lbRazao: TRLLabel
        Left = -1
        Top = 4
        Width = 597
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = lbRazaoBeforePrint
      end
      object lbEndereco: TRLLabel
        Left = 3
        Top = 24
        Width = 593
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = lbEnderecoBeforePrint
      end
      object lbFone: TRLLabel
        Left = 3
        Top = 42
        Width = 593
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = lbFoneBeforePrint
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 101
      Width = 718
      Height = 197
      BandType = btTitle
      object RLDraw8: TRLDraw
        Left = 488
        Top = 107
        Width = 227
        Height = 30
        Brush.Style = bsClear
      end
      object RLDraw7: TRLDraw
        Left = 488
        Top = 139
        Width = 89
        Height = 30
        Brush.Style = bsClear
      end
      object RLDraw6: TRLDraw
        Left = 441
        Top = 139
        Width = 45
        Height = 30
        Brush.Style = bsClear
      end
      object RLDraw5: TRLDraw
        Left = 3
        Top = 139
        Width = 238
        Height = 30
        Brush.Style = bsClear
      end
      object RLDraw3: TRLDraw
        Left = 3
        Top = 75
        Width = 435
        Height = 30
        Brush.Style = bsClear
      end
      object RLDraw4: TRLDraw
        Left = 3
        Top = 107
        Width = 435
        Height = 30
        Brush.Style = bsClear
      end
      object RLLabel7: TRLLabel
        Left = 81
        Top = 13
        Width = 556
        Height = 16
        Caption = 
          'N'#195'O '#201' UM DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO RECIBO E COMO GARA' +
          'NTIA DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 208
        Top = 29
        Width = 302
        Height = 16
        Alignment = taCenter
        Caption = 'MERCADORIA - N'#195'O COMPROVA PAGAMENTO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 276
        Top = 55
        Width = 132
        Height = 14
        Alignment = taCenter
        Caption = 'DADOS DO FORNECEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 6
        Top = 109
        Width = 50
        Height = 10
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 6
        Top = 77
        Width = 94
        Height = 10
        Caption = 'NOME / RAZ'#195'O SOCIAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 6
        Top = 141
        Width = 36
        Height = 10
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 444
        Top = 141
        Width = 16
        Height = 10
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 492
        Top = 141
        Width = 21
        Height = 10
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 492
        Top = 109
        Width = 68
        Height = 10
        Caption = 'COMPLEMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw9: TRLDraw
        Left = 243
        Top = 139
        Width = 195
        Height = 30
        Brush.Style = bsClear
      end
      object RLLabel23: TRLLabel
        Left = 246
        Top = 141
        Width = 35
        Height = 10
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw10: TRLDraw
        Left = 579
        Top = 139
        Width = 136
        Height = 30
        Brush.Style = bsClear
      end
      object RLLabel25: TRLLabel
        Left = 582
        Top = 141
        Width = 47
        Height = 10
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw11: TRLDraw
        Left = 441
        Top = 75
        Width = 136
        Height = 30
        Brush.Style = bsClear
      end
      object RLLabel27: TRLLabel
        Left = 444
        Top = 77
        Width = 48
        Height = 10
        Caption = 'CPF / CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw12: TRLDraw
        Left = 579
        Top = 75
        Width = 136
        Height = 30
        Brush.Style = bsClear
      end
      object RLLabel29: TRLLabel
        Left = 582
        Top = 77
        Width = 32
        Height = 10
        Caption = 'RG / I.E:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw13: TRLDraw
        Left = 441
        Top = 107
        Width = 45
        Height = 30
        Brush.Style = bsClear
      end
      object RLLabel30: TRLLabel
        Left = 444
        Top = 109
        Width = 13
        Height = 10
        Caption = 'N.'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 254
        Top = 181
        Width = 176
        Height = 14
        Alignment = taCenter
        Caption = 'DISCRIMINA'#199#195'O DOS PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 10
        Top = 87
        Width = 425
        Height = 14
        AutoSize = False
        DataField = 'CLI_RAZAO_SOCIAL'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText19: TRLDBText
        Left = 13
        Top = 151
        Width = 224
        Height = 14
        AutoSize = False
        DataField = 'CLI_BAIRRO'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText20: TRLDBText
        Left = 588
        Top = 87
        Width = 121
        Height = 14
        AutoSize = False
        DataField = 'CLI_IESTADUAL'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText21: TRLDBText
        Left = 10
        Top = 119
        Width = 425
        Height = 14
        AutoSize = False
        DataField = 'CLI_ENDERECO'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText22: TRLDBText
        Left = 444
        Top = 119
        Width = 38
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'CLI_NUMERO'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText23: TRLDBText
        Left = 444
        Top = 151
        Width = 38
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'CLI_UF'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText24: TRLDBText
        Left = 498
        Top = 119
        Width = 211
        Height = 14
        AutoSize = False
        DataField = 'CLI_COMPLEMENTO'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText25: TRLDBText
        Left = 450
        Top = 87
        Width = 123
        Height = 14
        AutoSize = False
        DataField = 'CLI_CNPJ'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText26: TRLDBText
        Left = 252
        Top = 151
        Width = 183
        Height = 14
        AutoSize = False
        DataField = 'CLI_CIDADE'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText27: TRLDBText
        Left = 498
        Top = 151
        Width = 75
        Height = 14
        AutoSize = False
        DataField = 'CLI_CEP'
        DataSource = dsCliente
        Text = ''
      end
      object RLDBText28: TRLDBText
        Left = 588
        Top = 151
        Width = 123
        Height = 14
        AutoSize = False
        DataField = 'CLI_FONE_FIXO'
        DataSource = dsCliente
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 298
      Width = 718
      Height = 15
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel33: TRLLabel
        Left = 6
        Top = 2
        Width = 41
        Height = 11
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel34: TRLLabel
        Left = 171
        Top = 2
        Width = 49
        Height = 11
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel35: TRLLabel
        Left = 448
        Top = 2
        Width = 23
        Height = 11
        Caption = 'UN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel36: TRLLabel
        Left = 499
        Top = 2
        Width = 66
        Height = 11
        Alignment = taRightJustify
        Caption = 'VL. UNIT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        Left = 591
        Top = 2
        Width = 28
        Height = 11
        Alignment = taRightJustify
        Caption = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 651
        Top = 2
        Width = 58
        Height = 11
        Alignment = taRightJustify
        Caption = 'VL. TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 69
        Top = 2
        Width = 67
        Height = 11
        Caption = 'C'#211'D. BARRAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 655
      Width = 718
      Height = 14
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel49: TRLLabel
        Left = 6
        Top = 2
        Width = 167
        Height = 10
        Caption = 'http://techcore.com.br - Solu'#231#245'es em Gest'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlGrupoMaster: TRLGroup
      Left = 38
      Top = 313
      Width = 718
      Height = 342
      object rlGrupoDetail: TRLGroup
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText1: TRLDBText
            Left = 6
            Top = 2
            Width = 66
            Height = 12
            DataField = 'PRD_CODIGO'
            DataSource = dsItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText2: TRLDBText
            Left = 69
            Top = 2
            Width = 91
            Height = 12
            DataField = 'PRD_CODIGO_BRR'
            DataSource = dsItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText3: TRLDBText
            Left = 171
            Top = 2
            Width = 84
            Height = 12
            DataField = 'PRD_DESCRICAO'
            DataSource = dsItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText4: TRLDBText
            Left = 448
            Top = 2
            Width = 23
            Height = 12
            DataField = 'PRD_UNIDADE'
            DataSource = dsItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText5: TRLDBText
            Left = 499
            Top = 2
            Width = 66
            Height = 12
            Alignment = taRightJustify
            DataField = 'PRD_VLR_UNITARIO'
            DataSource = dsItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
          object RLDBText6: TRLDBText
            Left = 571
            Top = 2
            Width = 48
            Height = 12
            Alignment = taRightJustify
            DataField = 'PRD_QTDE'
            DataSource = dsItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText7: TRLDBText
            Left = 651
            Top = 2
            Width = 58
            Height = 12
            Alignment = taRightJustify
            DataField = 'PRD_VLR_SUBTOTAL'
            DataSource = dsItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
        end
      end
      object RLGroup1: TRLGroup
        Left = 0
        Top = 18
        Width = 718
        Height = 153
        object RLBand6: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 145
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel40: TRLLabel
            Left = 6
            Top = 5
            Width = 75
            Height = 11
            Caption = 'OBSERVA'#199#213'ES:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 12
            Top = 19
            Width = 428
            Height = 14
            Behavior = [beSiteExpander]
            DataField = 'PED_OBSERVACAO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel41: TRLLabel
            Left = 495
            Top = 16
            Width = 124
            Height = 14
            Alignment = taRightJustify
            Caption = 'TOTAL DOS ITENS - R$:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 622
            Top = 16
            Width = 87
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PED_VLR_SUBTOTAL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
          object RLDBText9: TRLDBText
            Left = 622
            Top = 33
            Width = 87
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PED_VLR_FRETE'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
          object RLLabel42: TRLLabel
            Left = 558
            Top = 33
            Width = 61
            Height = 14
            Alignment = taRightJustify
            Caption = 'FRETE - R$:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel43: TRLLabel
            Left = 547
            Top = 50
            Width = 72
            Height = 14
            Alignment = taRightJustify
            Caption = 'SEGURO - R$:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 488
            Top = 67
            Width = 131
            Height = 14
            Alignment = taRightJustify
            Caption = 'OUTRAS DESPESAS - R$:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 622
            Top = 67
            Width = 87
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PED_VLR_OUTROS'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
          object RLDBText10: TRLDBText
            Left = 622
            Top = 50
            Width = 87
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PED_VLR_SEGURO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
          object RLDBText11: TRLDBText
            Left = 622
            Top = 84
            Width = 87
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PED_VLR_DESCONTOS'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
          object RLLabel44: TRLLabel
            Left = 525
            Top = 84
            Width = 94
            Height = 14
            Alignment = taRightJustify
            Caption = 'DESCONTOS - R$:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel45: TRLLabel
            Left = 494
            Top = 101
            Width = 125
            Height = 14
            Alignment = taRightJustify
            Caption = 'TOTAL DO PEDIDO - R$:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 622
            Top = 101
            Width = 87
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PED_VLR_TOTAL'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText5BeforePrint
          end
          object RLLabel47: TRLLabel
            AlignWithMargins = True
            Left = 0
            Top = 128
            Width = 718
            Height = 14
            Align = faWidth
            Alignment = taCenter
            Caption = 
              '----------------------------------------------------------------' +
              '---------------------------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 206
        Width = 718
        Height = 25
        DataSource = dsPagtos
        object RLBand8: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 15
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand8BeforePrint
          object RLDBText29: TRLDBText
            Left = 12
            Top = 2
            Width = 84
            Height = 12
            DataField = 'FRM_DESCRICAO'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText31: TRLDBText
            Left = 149
            Top = 2
            Width = 56
            Height = 12
            Alignment = taCenter
            DataField = 'PAG_VENCIMENTO'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText32: TRLDBText
            Left = 333
            Top = 2
            Width = 78
            Height = 12
            Alignment = taRightJustify
            DataField = 'PAG_VLR_TOTAL'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText33: TRLDBText
            Left = 418
            Top = 2
            Width = 91
            Height = 12
            Alignment = taJustify
            DataField = 'PAG_OBSERVACAO'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            BeforePrint = RLDBText33BeforePrint
          end
          object RLDBText35: TRLDBText
            Left = 208
            Top = 2
            Width = 57
            Height = 12
            Alignment = taRightJustify
            DataField = 'PAG_VLR_SUBTOTAL'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText36: TRLDBText
            Left = 283
            Top = 3
            Width = 44
            Height = 12
            Alignment = taRightJustify
            DataField = 'PAG_VLR_JUROS'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 171
        Width = 718
        Height = 35
        object RLLabel3: TRLLabel
          Left = 12
          Top = 22
          Width = 99
          Height = 11
          Caption = 'Forma de Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 149
          Top = 22
          Width = 56
          Height = 11
          Alignment = taRightJustify
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 334
          Top = 22
          Width = 77
          Height = 11
          Alignment = taRightJustify
          Caption = 'Valor da Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 418
          Top = 22
          Width = 56
          Height = 11
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 6
          Top = 6
          Width = 142
          Height = 11
          Caption = 'CONDI'#199#213'ES DE PAGAMENTOS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 208
          Top = 22
          Width = 57
          Height = 11
          Alignment = taRightJustify
          Caption = 'SubTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 271
          Top = 22
          Width = 56
          Height = 11
          Alignment = taRightJustify
          Caption = 'Valor Juros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object lbCancelado: TRLLabel
      Left = 50
      Top = 406
      Width = 204
      Height = 27
      Caption = 'Pedido Cancelado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = lbCanceladoBeforePrint
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = FrPedidosVendas.tbDados
    Left = 12
    Top = 88
  end
  object dsItens: TJvDataSource
    AutoEdit = False
    DataSet = FrPedidosVendas.tbItens
    Left = 12
    Top = 118
  end
  object tbCliente: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000307 WHERE ID = :ID')
    Left = 12
    Top = 6
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
    object tbClienteCLI_RAZAO_SOCIAL: TStringField
      FieldName = 'CLI_RAZAO_SOCIAL'
      Origin = 'CLI_RAZAO_SOCIAL'
      Required = True
      Size = 120
    end
    object tbClienteCLI_NOME_FANTASIA: TStringField
      FieldName = 'CLI_NOME_FANTASIA'
      Origin = 'CLI_NOME_FANTASIA'
      Size = 120
    end
    object tbClienteCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
      Required = True
      OnGetText = tbClienteCLI_CNPJGetText
      EditMask = '!\99.\999\.999\/9999\-99;0;'
      Size = 15
    end
    object tbClienteCLI_IESTADUAL: TStringField
      FieldName = 'CLI_IESTADUAL'
      Origin = 'CLI_IESTADUAL'
      Size = 15
    end
    object tbClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      Required = True
      EditMask = '!99999\-999;0;'
      Size = 10
    end
    object tbClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      Required = True
      Size = 120
    end
    object tbClienteCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
      DisplayFormat = '000000'
    end
    object tbClienteCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      Size = 60
    end
    object tbClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Required = True
      Size = 60
    end
    object tbClienteCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Required = True
      Size = 60
    end
    object tbClienteCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Origin = 'CLI_UF'
      FixedChar = True
      Size = 2
    end
    object tbClienteCLI_FONE_FIXO: TStringField
      FieldName = 'CLI_FONE_FIXO'
      Origin = 'CLI_FONE_FIXO'
      EditMask = '!\(99\)9999\-9999;0;'
      Size = 12
    end
  end
  object dsCliente: TJvDataSource
    AutoEdit = False
    DataSet = tbCliente
    Left = 12
    Top = 36
  end
  object tbPagtos: TFDQuery
    IndexFieldNames = 'ID_PEDIDO'
    MasterSource = FrPedidosVendas.dsDados
    MasterFields = 'ID'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      
        '   (SELECT FRM_DESCRICAO         FROM C000010 WHERE FRM_CODIGO =' +
        ' T1.ID_FORMA_PAGTO),'
      
        '   (SELECT SUM(PAG_VLR_SUBTOTAL) FROM C000102 WHERE ID_PEDIDO  =' +
        ' :ID) AS SUM_PAG_VLR_SUBTOTAL,'
      
        '   (SELECT SUM(PAG_VLR_TOTAL)    FROM C000102 WHERE ID_PEDIDO  =' +
        ' :ID) AS SUM_PAG_VLR_TOTAL'
      'FROM'
      '   C000102 AS T1'
      'WHERE'
      '   ID_PEDIDO = :ID'
      'ORDER BY'
      '   ID ASC')
    Left = 12
    Top = 194
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 9
      end>
    object tbPagtosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbPagtosID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object tbPagtosID_FORMA_PAGTO: TIntegerField
      FieldName = 'ID_FORMA_PAGTO'
      Origin = 'ID_FORMA_PAGTO'
    end
    object tbPagtosPAG_VENCIMENTO: TDateField
      FieldName = 'PAG_VENCIMENTO'
      Origin = 'PAG_VENCIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbPagtosPAG_OBSERVACAO: TStringField
      FieldName = 'PAG_OBSERVACAO'
      Origin = 'PAG_OBSERVACAO'
      Size = 80
    end
    object tbPagtosFRM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FRM_DESCRICAO'
      Origin = 'FRM_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 65
    end
    object tbPagtosPAG_VLR_SUBTOTAL: TFMTBCDField
      FieldName = 'PAG_VLR_SUBTOTAL'
      Origin = 'PAG_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbPagtosPAG_JUROS: TFMTBCDField
      FieldName = 'PAG_JUROS'
      Origin = 'PAG_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbPagtosPAG_VLR_TOTAL: TFMTBCDField
      FieldName = 'PAG_VLR_TOTAL'
      Origin = 'PAG_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbPagtosPAG_VLR_JUROS: TFMTBCDField
      FieldName = 'PAG_VLR_JUROS'
      Origin = 'PAG_VLR_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbPagtosSUM_PAG_VLR_SUBTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_PAG_VLR_SUBTOTAL'
      Origin = 'SUM_PAG_VLR_SUBTOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbPagtosSUM_PAG_VLR_TOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_PAG_VLR_TOTAL'
      Origin = 'SUM_PAG_VLR_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsPagtos: TJvDataSource
    AutoEdit = False
    DataSet = tbPagtos
    Left = 12
    Top = 224
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Title = 'Pedido de Vendas'
    DocumentInfo.Subject = 'Pedido de Vendas'
    DocumentInfo.Author = 'Techcore Solu'#231#245'es em T.I'
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'Pedido de Vendas'
    DisplayName = 'Pedido de Vendas PDF'
    Left = 12
    Top = 156
  end
end
