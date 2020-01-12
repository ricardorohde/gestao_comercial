object FrPedidosComprasProdutos: TFrPedidosComprasProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecionar Produto'
  ClientHeight = 161
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
  object pnProduto: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 571
    Height = 52
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
    Left = 232
    Top = 61
    Width = 342
    Height = 52
    Margins.Bottom = 6
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
      Left = 220
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
      Left = 206
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
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = True
      OnExit = eQtdeExit
      DataField = 'ITM_VLR_UNITARIO'
      DataSource = dsDados
    end
    object eQtde: TJvDBCalcEdit
      Left = 111
      Top = 21
      Width = 90
      Height = 23
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = True
      OnExit = eQtdeExit
      DataField = 'ITM_QTDE'
      DataSource = dsDados
    end
    object eValorTotal: TJvDBCalcEdit
      Left = 220
      Top = 21
      Width = 115
      Height = 23
      DisplayFormat = ',0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 2
      DisabledColor = clBtnFace
      DecimalPlacesAlwaysShown = True
      DataField = 'ITM_VLR_TOTAL'
      DataSource = dsDados
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 122
    Width = 571
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    ShowGlyphs = True
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    TabOrder = 2
  end
  object dsDados: TJvDataSource
    DataSet = FrPedidosCompras.tbItens
    Left = 6
    Top = 60
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 42
    Top = 60
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 78
    Top = 60
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
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 136
    Top = 128
  end
end
