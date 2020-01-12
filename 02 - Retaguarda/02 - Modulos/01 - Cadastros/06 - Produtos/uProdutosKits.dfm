object FrProdutosKit: TFrProdutosKit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Montar Kit.'
  ClientHeight = 163
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel
    Left = 3
    Top = 3
    Width = 56
    Height = 19
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RzDBEdit2: TRzDBEdit
    Left = 3
    Top = 24
    Width = 518
    Height = 28
    DataSource = FrProdutos.dsDados
    DataField = 'PRD_DESCRICAO'
    DisabledColor = 33023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    FocusColor = 14680063
    ParentFont = False
    TabOrder = 1
  end
  object RzDBEdit3: TRzDBEdit
    Left = 527
    Top = 24
    Width = 38
    Height = 28
    DataSource = FrProdutos.dsDados
    DataField = 'PRD_UNIDADE'
    DisabledColor = 33023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    FocusColor = 14680063
    ParentFont = False
    TabOrder = 2
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 127
    Width = 571
    CaptionCancel = 'Cancelar'
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    TabOrder = 3
    VisualStyle = vsGradient
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 64
    Width = 562
    Height = 57
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 353
      Top = 8
      Width = 18
      Height = 13
      Caption = 'UN.'
    end
    object Label3: TLabel
      Left = 393
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Qtde.'
    end
    object Label4: TLabel
      Left = 464
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object ed_produto: TRzDBButtonEdit
      Left = 4
      Top = 23
      Width = 343
      Height = 21
      DataSource = dsQueryKit
      DataField = 'PRD_DESCRICAO'
      TabOrder = 0
      TextHint = 'F2 - Buscar'
      TextHintVisibleOnFocus = True
      OnEnter = ed_produtoEnter
      OnExit = ed_produtoExit
      AllowKeyEdit = False
      AltBtnWidth = 15
      ButtonWidth = 18
      OnButtonClick = ed_produtoButtonClick
    end
    object ed_qtde: TJvDBCalcEdit
      Left = 393
      Top = 23
      Width = 65
      Height = 21
      DisplayFormat = ',0.00'
      TabOrder = 1
      Value = 1.000000000000000000
      DecimalPlacesAlwaysShown = True
      OnEnter = ed_produtoEnter
      OnExit = ed_produtoExit
      DataField = 'PRD_QTDE'
      DataSource = dsQueryKit
    end
    object ed_valor: TJvDBCalcEdit
      Left = 464
      Top = 23
      Width = 95
      Height = 21
      DisplayFormat = ',0.00'
      TabOrder = 2
      Value = 3.000000000000000000
      DecimalPlacesAlwaysShown = True
      OnEnter = ed_produtoEnter
      OnExit = ed_produtoExit
      DataField = 'PRD_VALOR'
      DataSource = dsQueryKit
    end
    object RzDBEdit1: TRzDBEdit
      Left = 353
      Top = 23
      Width = 34
      Height = 21
      DataSource = dsQueryKit
      DataField = 'PRD_UNIDADE'
      Enabled = False
      TabOrder = 3
    end
  end
  object dsQueryKit: TDataSource
    AutoEdit = False
    DataSet = FrProdutos.QueryKit
    Left = 224
    Top = 24
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 192
    Top = 24
  end
end
