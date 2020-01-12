object FrEmissorNfeProdutos: TFrEmissorNfeProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecionar Produto'
  ClientHeight = 309
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label9: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 228
    Width = 479
    Height = 14
    Margins.Bottom = 0
    Align = alBottom
    Caption = 'INFORMA'#199#213'ES ADICIONAIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 134
  end
  object pnProduto: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 479
    Height = 120
    Margins.Bottom = 0
    Align = alTop
    BevelInner = bvLowered
    Color = 13948116
    ParentBackground = False
    TabOrder = 0
    object Label8: TLabel
      Left = 439
      Top = 43
      Width = 14
      Height = 14
      Caption = 'UN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 132
      Top = 5
      Width = 22
      Height = 14
      Caption = 'NCM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 226
      Top = 5
      Width = 26
      Height = 14
      Caption = 'CEST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 6
      Top = 80
      Width = 39
      Height = 14
      Caption = 'ORIGEM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 43
      Width = 59
      Height = 13
      Caption = 'DESCRI'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 6
      Top = 5
      Width = 40
      Height = 14
      Caption = 'C'#211'DIGO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 311
      Top = 5
      Width = 103
      Height = 14
      Caption = 'C'#211'DIGO DE BARRAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object ed_descricao: TJvEdit
      Left = 6
      Top = 56
      Width = 427
      Height = 21
      CharCase = ecUpperCase
      Color = 14548991
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = ''
      OnEnter = ed_codigoEnter
      OnExit = ed_descricaoExit
      OnKeyPress = ed_codigoKeyPress
      DataConnector.DataSource = dsDados
      DataConnector.DataField = 'PRD_DESCRICAO'
    end
    object ed_unidade: TJvEdit
      Left = 439
      Top = 56
      Width = 34
      Height = 21
      Alignment = taCenter
      CharCase = ecUpperCase
      Color = 14548991
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = ''
      OnEnter = ed_codigoEnter
      OnExit = ed_descricaoExit
      OnKeyPress = ed_codigoKeyPress
      DataConnector.DataSource = dsDados
      DataConnector.DataField = 'PRD_UNIDADE'
    end
    object cb_origem: TRzDBComboBox
      Left = 6
      Top = 94
      Width = 467
      Height = 21
      DataField = 'PRD_ORIGEM'
      DataSource = dsDados
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnEnter = ed_codigoEnter
      OnExit = ed_codigoExit
      Items.Strings = (
        '0 - Nacional, exceto as indicadas nos c'#243'digos 3, 4, 5 e 8;'
        
          '1 - Estrangeira - Importa'#231#227'o direta, exceto a indicada no c'#243'digo' +
          ' 6;'
        
          '2 - Estrangeira - Adquirida no mercado interno, exceto a indicad' +
          'a no c'#243'digo 7;'
        
          '3 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
          'ior a 40% e inferior ou igual a 70%;'
        
          '4 - Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
          ' os processos produtivos b'#225'sicos de que tratam as legisla'#231#245'es ci' +
          'tadas nos Ajustes;'
        
          '5 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
          'ior ou igual a 40%;'
        
          '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional, const' +
          'ante em lista da CAMEX e g'#225's natural;'
        
          '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
          'onal, constante em lista da CAMEX e g'#225's natural.'
        
          '8 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
          'ior a 70%;')
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
    object ed_ncm: TRzDBButtonEdit
      Left = 132
      Top = 19
      Width = 88
      Height = 21
      DataSource = dsDados
      DataField = 'PRD_NCM'
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'F3 - Buscar'
      TextHintVisibleOnFocus = True
      OnEnter = ed_codigoEnter
      OnExit = ed_codigoExit
      AllowKeyEdit = False
      ButtonShortCut = 114
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = ed_ncmButtonClick
    end
    object ed_codigo: TRzDBButtonEdit
      Left = 6
      Top = 19
      Width = 120
      Height = 21
      DataSource = dsDados
      DataField = 'PRD_CODIGO'
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'F2 - Buscar'
      TextHintVisibleOnFocus = True
      OnEnter = ed_codigoEnter
      OnExit = ed_codigoExit
      OnKeyPress = ed_codigoKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = SelecionarProduto1Click
    end
    object DBEdit1: TDBEdit
      Left = 311
      Top = 19
      Width = 162
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PRD_CODIGO_BARRAS'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = ed_codigoEnter
      OnExit = ed_codigoExit
      OnKeyPress = ed_codigoKeyPress
    end
    object ed_cest: TDBEdit
      Left = 226
      Top = 19
      Width = 79
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PRD_CEST'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = ed_codigoEnter
      OnExit = ed_codigoExit
      OnKeyPress = ed_codigoKeyPress
    end
  end
  object pnValores: TPanel
    AlignWithMargins = True
    Left = 148
    Top = 176
    Width = 334
    Height = 49
    Margins.Bottom = 0
    Align = alRight
    BevelInner = bvLowered
    Color = 13948116
    ParentBackground = False
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 73
      Height = 15
      Caption = 'Valor Unit'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 111
      Top = 6
      Width = 29
      Height = 15
      Caption = 'Qtde.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 205
      Top = 6
      Width = 56
      Height = 15
      Caption = 'Valor Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 97
      Top = 23
      Width = 8
      Height = 18
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 191
      Top = 23
      Width = 8
      Height = 19
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object ed_vlr_unitario: TJvDBCalcEdit
      Left = 8
      Top = 21
      Width = 83
      Height = 22
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = True
      OnEnter = ed_codigoEnter
      OnExit = ed_qtdeExit
      DataField = 'PRD_VLR_UNITARIO'
      DataSource = dsDados
    end
    object ed_qtde: TJvDBCalcEdit
      Left = 111
      Top = 21
      Width = 74
      Height = 22
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = True
      OnEnter = ed_codigoEnter
      OnExit = ed_qtdeExit
      DataField = 'PRD_QTDE'
      DataSource = dsDados
    end
    object ed_vlr_total: TJvDBCalcEdit
      Left = 205
      Top = 21
      Width = 123
      Height = 22
      Margins.Right = 2
      DisplayFormat = ',0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 2
      DisabledColor = clBtnFace
      DecimalPlacesAlwaysShown = True
      OnEnter = ed_codigoEnter
      OnExit = ed_qtdeExit
      DataField = 'PRD_VLR_SUBTOTAL'
      DataSource = dsDados
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 270
    Width = 479
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    ShowGlyphs = True
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    TabOrder = 4
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 126
    Width = 479
    Height = 47
    Margins.Bottom = 0
    Align = alTop
    BevelInner = bvLowered
    Color = 13948116
    ParentBackground = False
    TabOrder = 1
    object Label10: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 4
      Width = 466
      Height = 14
      Margins.Left = 4
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alTop
      Caption = 'SELECIONAR TRIBUTOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 117
    end
    object eTributo: TRzDBLookupComboBox
      AlignWithMargins = True
      Left = 6
      Top = 20
      Width = 467
      Height = 22
      Margins.Left = 4
      Margins.Top = 2
      Margins.Right = 4
      Margins.Bottom = 2
      Align = alTop
      DataField = 'ID_TRIBUTOS'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dsTribs
      ParentFont = False
      TabOrder = 0
      OnEnter = ed_codigoEnter
      OnExit = ed_codigoExit
    end
  end
  object eInfos: TRzDBEdit
    AlignWithMargins = True
    Left = 3
    Top = 245
    Width = 479
    Height = 22
    Margins.Bottom = 0
    DataSource = dsDados
    DataField = 'PRD_INFORMACOES'
    Align = alBottom
    TabOrder = 3
    TextHint = 'Informa'#231#245'es adicionais do produto.'
    TextHintVisibleOnFocus = True
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = FrEmissorNfe.tbItens
    Left = 111
    Top = 275
  end
  object EnterTab: TACBrEnterTab
    EnterAsTab = True
    Left = 144
    Top = 275
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 177
    Top = 275
    object SelecionarProduto1: TMenuItem
      Caption = 'Selecionar Produto'
      ShortCut = 113
      OnClick = SelecionarProduto1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object tbTribs: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   ('
      '      TRB_DESCRICAO || '#39' - '#39' ||'
      
        '      '#39'CST: '#39' || TRB_ICMS_CST || '#39' / '#39' || '#39'CFOP: '#39' || TRB_ICMS_C' +
        'FOP || '#39' / '#39' || '#39'FINALIDADE: '#39' ||'
      '      IIF(TRB_FINALIDADE = 1'
      '         ,'#39'1 - NORMAL'#39
      '         ,IIF(TRB_FINALIDADE = 2'
      '            , '#39'2 - AJUSTE'#39
      '            ,IIF(TRB_FINALIDADE = 3'
      '               ,'#39'3 - COMPLEMENTAR'#39
      '               ,IIF(TRB_FINALIDADE = 4'
      '                  ,'#39'4 - DEVOLU'#199#195'O/RETORNO'#39
      '                  ,'#39'N/D'#39
      '                )'
      '             )'
      '          )'
      '      )'
      '   ) AS DESCRICAO'
      'FROM'
      '   C000015'
      'WHERE'
      '   ID_EMPRESA   = :ID_EMPRESA'
      'AND'
      '   TRB_CRT      = :TRB_CRT'
      'AND'
      '   TRB_OPERACAO = :TRB_OPERACAO'
      '')
    Left = 9
    Top = 275
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'TRB_CRT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TRB_OPERACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsTribs: TJvDataSource
    AutoEdit = False
    DataSet = tbTribs
    Left = 42
    Top = 275
  end
  object dsNfes: TJvDataSource
    AutoEdit = False
    DataSet = FrEmissorNfe.tbDados
    Left = 75
    Top = 275
  end
  object QueryProdutos: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 252
    Top = 275
  end
end
