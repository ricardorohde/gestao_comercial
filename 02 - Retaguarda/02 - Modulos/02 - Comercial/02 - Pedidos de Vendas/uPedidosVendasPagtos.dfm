object FrPedidosVendasPagtos: TFrPedidosVendasPagtos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Formas de Pagamentos'
  ClientHeight = 415
  ClientWidth = 782
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopPagtos
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 776
    Height = 34
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    BorderHighlight = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    GradientColorStart = clSilver
    GradientColorStop = 3815994
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 201
      Height = 26
      Caption = 'Formas de Pagamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 257
      Top = 1
      Width = 459
      Height = 30
      Caption = 
        'Neste formul'#225'rio voc'#234' podera gerenciar as formas de pagamentos e' +
        ' prazos para as respectivas formas.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 249
      Top = 2
      Width = 2
      Height = 30
    end
    object Image2: TImage
      Left = 6
      Top = 5
      Width = 24
      Height = 24
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        48597300000B1300000B1301009A9C180000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A000002114944415478DA63
        6440032935931519FEFC13622007B030BD9BD3927B1F5988119993DB34AD8E8D
        85B5908F8F8F891CF33F7FFEF4F7E7EFDF7D93EBB25AB05A90D330F59EA3AD8D
        E2CD3B77187EFEF84992E1EC1CEC0C6AAACA0C870E1DBD37A9215B19BB0F1AA6
        3E30353694BF77FF2183BAAA0A4916DCBC7D874149519EE1F4D9F30F2737642B
        E0B4C0C4C848FED193270CBADA9A28067CFFFE83E1D7AFDF60361B1B2B032727
        078AFCE5ABD719E4646418CE9C3B479E054F9FBD6078FFEE1D982D2824C4202D
        25415D0B0801922C3879FA0C032B30184801BF81C1676E6A42D802073B5BF92F
        5FBE9264380CF0F070331C387498B00F2E5EBACC2024284092E1EFDE7F60D0D7
        D3252E881E3F7ECCA0A3A345920557AE5C6390959525DF823B77EF33BC7CF90A
        CC16171763505156A4AE0554F5C1F51B3731D2392100CA279A1AEA842DB0B5B6
        94870505A9001474878F1EC76F81B9A9B1FCE97317C8B2C0D4C880E1E4E9B383
        202763B3E0DDFBF70C5FA119901B98A1840405879805540B223B1B6BF9F3172E
        31FCFEF38B240B5859D8188C0C748165D1B187539A7059D0387589B8A858103F
        1F2F2749A643C1C7CF9FBF0193F81AA00FE2B15AD0D0D0C0F2EC27BFCFF38777
        3D3F7F7C9F061253D3350DC367E8ADCBA75781685E7EC15992F2CADBA5D83F6E
        019AF307AB0530606CEC20F28B85511E1CB627F79FC56781AEB9A3318866FBF3
        FFE1D9B307DEA0CB0300583F5E285B7440780000000049454E44AE426082}
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 376
    Width = 776
    Margins.Top = 0
    HotTrack = True
    OKDefault = False
    ShowCancelButton = False
    Color = clSilver
    TabOrder = 1
  end
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 256
    Height = 333
    Margins.Right = 0
    Align = alLeft
    BorderOuter = fsNone
    TabOrder = 2
    object RzBitBtn1: TRzBitBtn
      Left = 129
      Top = 97
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F6 - Vale Alimenta'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = ValeAlimentao1Click
      ImageIndex = 70
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn2: TRzBitBtn
      Left = 2
      Top = 3
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F1 - Dinheiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Dinheiro1Click
      ImageIndex = 72
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn3: TRzBitBtn
      Left = 129
      Top = 3
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F2 - Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Cheque1Click
      ImageIndex = 67
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn4: TRzBitBtn
      Left = 2
      Top = 50
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F3 - Cart'#227'o de Cr'#233'dito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = CartodeCrdito1Click
      ImageIndex = 68
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn5: TRzBitBtn
      Left = 129
      Top = 50
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F4 - Cart'#227'o de D'#233'bito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = CartodeDbito1Click
      ImageIndex = 68
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn6: TRzBitBtn
      Left = 2
      Top = 144
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F7 - Vale Refei'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = ValeRefeio1Click
      ImageIndex = 70
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn7: TRzBitBtn
      Left = 129
      Top = 144
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F8 - Vale Presente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = ValePresente1Click
      ImageIndex = 28
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn8: TRzBitBtn
      Left = 2
      Top = 191
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F9 - Vale Combust'#237'vel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = ValeCombustvel1Click
      ImageIndex = 69
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn9: TRzBitBtn
      Left = 2
      Top = 238
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F12 - Sem Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = SemPagamento1Click
      ImageIndex = 24
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn10: TRzBitBtn
      Left = 129
      Top = 191
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F11 - Boleto Banc'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BoletoBancrio1Click
      ImageIndex = 73
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn12: TRzBitBtn
      Left = 2
      Top = 97
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'F5 - Cr'#233'dito de Loja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = CrditoLoja1Click
      ImageIndex = 51
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
    object RzBitBtn13: TRzBitBtn
      Left = 129
      Top = 238
      Width = 125
      Height = 45
      Alignment = taLeftJustify
      Caption = 'Outros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = Outros1Click
      ImageIndex = 24
      Images = FrPrincipal.sysIcones
      Spacing = 6
    end
  end
  object RzPanel4: TRzPanel
    AlignWithMargins = True
    Left = 262
    Top = 40
    Width = 517
    Height = 333
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 3
    object RzPanel1: TRzPanel
      AlignWithMargins = True
      Left = 3
      Top = 269
      Width = 511
      Height = 61
      Align = alBottom
      BorderOuter = fsNone
      Color = clMaroon
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 1
        Width = 505
        Height = 23
        Margins.Top = 1
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total dos Pagamentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 167
      end
      object DBText1: TDBText
        AlignWithMargins = True
        Left = 200
        Top = 24
        Width = 308
        Height = 36
        Margins.Left = 200
        Margins.Top = 0
        Align = alTop
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'SUM_PAG_VLR_TOTAL'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -29
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 412
        ExplicitWidth = 96
      end
    end
    object JvDBGrid1: TJvDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 511
      Height = 198
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      DataSource = dsDados
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      AutoAppend = False
      ShowGlyphs = False
      BevelInner = bvNone
      BevelOuter = bvNone
      AlternateRowColor = 15463915
      PostOnEnterKey = True
      ScrollBars = ssNone
      AutoSizeColumns = True
      AutoSizeColumnIndex = 0
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      ColumnResize = gcrDataSet
      EditControls = <>
      RowsHeight = 18
      TitleRowHeight = 20
      ShowMemos = False
      UseThemedHighlighting = False
      Columns = <
        item
          Expanded = False
          FieldName = 'FRM_DESCRICAO'
          Title.Caption = 'Forma de Pagamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 276
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_VENCIMENTO'
          Title.Caption = 'Vencimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_VLR_TOTAL'
          ReadOnly = True
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Courier New'
          Title.Font.Style = [fsBold]
          Width = 125
          Visible = True
        end>
      Delphi2010OptionsMigrated = True
    end
    object eMemo: TRzDBMemo
      AlignWithMargins = True
      Left = 3
      Top = 204
      Width = 511
      Height = 62
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      DataField = 'PAG_OBSERVACAO'
      DataSource = dsDados
      TabOrder = 2
    end
  end
  object PopPagtos: TPopupMenu
    AutoPopup = False
    Left = 340
    Top = 130
    object Dinheiro1: TMenuItem
      Caption = 'Dinheiro'
      ShortCut = 112
      OnClick = Dinheiro1Click
    end
    object Cheque1: TMenuItem
      Caption = 'Cheque'
      ShortCut = 113
      OnClick = Cheque1Click
    end
    object CartodeCrdito1: TMenuItem
      Caption = 'Cart'#227'o de Cr'#233'dito'
      ShortCut = 114
      OnClick = CartodeCrdito1Click
    end
    object CartodeDbito1: TMenuItem
      Caption = 'Cart'#227'o de D'#233'bito'
      ShortCut = 115
      OnClick = CartodeDbito1Click
    end
    object CrditoLoja1: TMenuItem
      Caption = 'Cr'#233'dito Loja'
      ShortCut = 116
      OnClick = CrditoLoja1Click
    end
    object ValeAlimentao1: TMenuItem
      Caption = 'Vale Alimenta'#231#227'o'
      ShortCut = 117
      OnClick = ValeAlimentao1Click
    end
    object ValeRefeio1: TMenuItem
      Caption = 'Vale Refei'#231#227'o'
      ShortCut = 118
      OnClick = ValeRefeio1Click
    end
    object ValePresente1: TMenuItem
      Caption = 'Vale Presente'
      ShortCut = 119
      OnClick = ValePresente1Click
    end
    object ValeCombustvel1: TMenuItem
      Caption = 'Vale Combust'#237'vel'
      ShortCut = 120
      OnClick = ValeCombustvel1Click
    end
    object DuplicataMercantil1: TMenuItem
      Caption = 'Duplicata Mercantil'
      ShortCut = 121
    end
    object BoletoBancrio1: TMenuItem
      Caption = 'Boleto Banc'#225'rio'
      ShortCut = 122
      OnClick = BoletoBancrio1Click
    end
    object SemPagamento1: TMenuItem
      Caption = 'Sem Pagamento'
      ShortCut = 123
      OnClick = SemPagamento1Click
    end
    object Outros1: TMenuItem
      Caption = 'Outros'
      OnClick = Outros1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExcluirParcela1: TMenuItem
      Caption = 'Excluir Parcela'
      ShortCut = 46
      OnClick = ExcluirParcela1Click
    end
  end
  object tbDados: TFDQuery
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    AfterDelete = tbDadosAfterDelete
    IndexFieldNames = 'ID_PEDIDO'
    MasterSource = dsPedido
    MasterFields = 'ID'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      
        '   (SELECT (LPAD(FRM_CODIGO,2,0) || '#39' - '#39' || FRM_DESCRICAO) AS F' +
        'RM_DESCRICAO FROM C000010 WHERE FRM_CODIGO = T1.ID_FORMA_PAGTO),'
      
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
    Left = 277
    Top = 130
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 27
      end>
    object tbDadosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDadosID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object tbDadosID_FORMA_PAGTO: TIntegerField
      FieldName = 'ID_FORMA_PAGTO'
      Origin = 'ID_FORMA_PAGTO'
    end
    object tbDadosPAG_VENCIMENTO: TDateField
      FieldName = 'PAG_VENCIMENTO'
      Origin = 'PAG_VENCIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object tbDadosFRM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FRM_DESCRICAO'
      Origin = 'FRM_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object tbDadosPAG_JUROS: TFMTBCDField
      FieldName = 'PAG_JUROS'
      Origin = 'PAG_JUROS'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosPAG_VLR_SUBTOTAL: TFMTBCDField
      FieldName = 'PAG_VLR_SUBTOTAL'
      Origin = 'PAG_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosPAG_VLR_TOTAL: TFMTBCDField
      FieldName = 'PAG_VLR_TOTAL'
      Origin = 'PAG_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosSUM_PAG_VLR_SUBTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_PAG_VLR_SUBTOTAL'
      Origin = 'SUM_PAG_VLR_SUBTOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosSUM_PAG_VLR_TOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_PAG_VLR_TOTAL'
      Origin = 'SUM_PAG_VLR_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosPAG_OBSERVACAO: TStringField
      FieldName = 'PAG_OBSERVACAO'
      Origin = 'PAG_OBSERVACAO'
      Size = 80
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    Left = 307
    Top = 130
  end
  object dsPedido: TDataSource
    AutoEdit = False
    DataSet = FrPedidosVendas.tbDados
    Left = 277
    Top = 160
  end
  object dsItens: TDataSource
    AutoEdit = False
    DataSet = FrPedidosVendas.tbItens
    Left = 307
    Top = 160
  end
end
