object FrPedidosVendasProdutos: TFrPedidosVendasProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecionar Produto'
  ClientHeight = 249
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label9: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 166
    Width = 571
    Height = 15
    Margins.Bottom = 0
    Align = alBottom
    Caption = 'Informa'#231#245'es Adicionais'
    ExplicitWidth = 131
  end
  object pnProduto: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 571
    Height = 52
    Margins.Bottom = 0
    Align = alTop
    BevelInner = bvLowered
    Color = 13948116
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 24
      Height = 13
      Caption = 'F2 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 30
      Top = 5
      Width = 105
      Height = 15
      Caption = 'Selecionar Produto'
    end
    object Label8: TLabel
      Left = 529
      Top = 6
      Width = 18
      Height = 15
      Caption = 'Un.'
    end
    object eCodigo: TRzDBButtonEdit
      Left = 6
      Top = 21
      Width = 72
      Height = 23
      TabStop = False
      DataSource = dsDados
      DataField = 'PRD_CODIGO'
      TabOrder = 0
      AllowKeyEdit = False
      ButtonShortCut = 113
      AltBtnWidth = 15
      ButtonWidth = 18
      OnButtonClick = SelecionarProduto1Click
    end
    object eProduto: TRzDBEdit
      Left = 84
      Top = 21
      Width = 439
      Height = 23
      DataSource = dsDados
      DataField = 'PRD_DESCRICAO'
      Enabled = False
      TabOrder = 1
    end
    object RzDBEdit1: TRzDBEdit
      Left = 529
      Top = 21
      Width = 35
      Height = 23
      DataSource = dsDados
      DataField = 'PRD_UNIDADE'
      Enabled = False
      TabOrder = 2
    end
  end
  object pnValores: TPanel
    AlignWithMargins = True
    Left = 240
    Top = 111
    Width = 334
    Height = 52
    Margins.Bottom = 0
    Align = alRight
    BevelInner = bvLowered
    Color = 13948116
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 78
      Height = 15
      Caption = 'Valor Unit'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 111
      Top = 6
      Width = 29
      Height = 15
      Caption = 'Qtde.'
    end
    object Label5: TLabel
      Left = 213
      Top = 6
      Width = 59
      Height = 15
      Caption = 'Valor Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Calibri'
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
      Left = 199
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
    object eValorUnit: TJvDBCalcEdit
      Left = 8
      Top = 21
      Width = 83
      Height = 23
      DisplayFormat = ',0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = True
      OnExit = eQtdeExit
      DataField = 'PRD_VLR_UNITARIO'
      DataSource = dsDados
    end
    object eQtde: TJvDBCalcEdit
      Left = 111
      Top = 21
      Width = 82
      Height = 23
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = True
      OnExit = eQtdeExit
      DataField = 'PRD_QTDE'
      DataSource = dsDados
    end
    object eValorTotal: TJvDBCalcEdit
      Left = 213
      Top = 21
      Width = 114
      Height = 23
      DisplayFormat = ',0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 2
      DisabledColor = clBtnFace
      DecimalPlacesAlwaysShown = True
      DataField = 'PRD_VLR_SUBTOTAL'
      DataSource = dsDados
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 210
    Width = 571
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    ShowGlyphs = True
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    TabOrder = 2
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 58
    Width = 571
    Height = 50
    Margins.Bottom = 0
    Align = alTop
    BevelInner = bvLowered
    Color = 13948116
    ParentBackground = False
    TabOrder = 4
    object Label10: TLabel
      Left = 6
      Top = 5
      Width = 106
      Height = 15
      Caption = 'Selecionar Tributos'
    end
    object eTributo: TRzDBLookupComboBox
      Left = 6
      Top = 20
      Width = 558
      Height = 22
      DataField = 'ID_TRIBUTOS'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dsTribs
      ParentFont = False
      TabOrder = 0
    end
  end
  object eInfos: TRzDBEdit
    AlignWithMargins = True
    Left = 3
    Top = 184
    Width = 571
    Height = 23
    Margins.Bottom = 0
    DataSource = dsDados
    DataField = 'PRD_INFORMACOES'
    Align = alBottom
    TabOrder = 3
    TextHint = 'Informa'#231#245'es adicionais do produto.'
    TextHintVisibleOnFocus = True
  end
  object dsDados: TJvDataSource
    DataSet = FrPedidosVendas.tbItens
    Left = 107
    Top = 214
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 140
    Top = 214
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 173
    Top = 214
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
    Left = 8
    Top = 214
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
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
      end>
  end
  object dsTribs: TJvDataSource
    AutoEdit = False
    DataSet = tbTribs
    Left = 41
    Top = 214
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = FrPedidosVendas.tbDados
    Left = 74
    Top = 214
  end
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000405_KIT WHERE ID_C000405 = :ID_C405')
    Left = 24
    Top = 120
    ParamData = <
      item
        Name = 'ID_C405'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
