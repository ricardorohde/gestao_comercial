object FrFiltro_Movto_Estoque_For: TFrFiltro_Movto_Estoque_For
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Entradas por fornecedores.'
  ClientHeight = 218
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 3
    Width = 43
    Height = 16
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 164
    Top = 25
    Width = 4
    Height = 13
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 3
    Top = 132
    Width = 65
    Height = 16
    Caption = 'Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 3
    Top = 46
    Width = 80
    Height = 16
    Caption = 'Ordernar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 3
    Top = 89
    Width = 114
    Height = 16
    Caption = 'Tipo de Orderna'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 182
    Width = 330
    HotTrack = True
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    TabOrder = 5
    VisualStyle = vsGradient
    ExplicitTop = 50
    ExplicitWidth = 534
  end
  object eDataIni: TJvDateEdit
    Left = 3
    Top = 22
    Width = 155
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 24
    ParentFont = False
    ShowNullDate = False
    TabOrder = 0
    OnExit = eDataIniExit
  end
  object eDatafim: TJvDateEdit
    Left = 174
    Top = 22
    Width = 151
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 24
    ParentFont = False
    ShowNullDate = False
    TabOrder = 1
  end
  object txtFornecedor: TRzButtonEdit
    Left = 3
    Top = 151
    Width = 322
    Height = 21
    Text = ''
    TabOrder = 4
    TextHint = 'Todos os fornecedores'
    AltBtnKind = bkReject
    AltBtnVisible = True
    AltBtnWidth = 18
    ButtonWidth = 18
    OnAltBtnClick = txtFornecedorAltBtnClick
    OnButtonClick = txtFornecedorButtonClick
  end
  object txtOrdernar: TJvComboBox
    Left = 3
    Top = 65
    Width = 322
    Height = 21
    TabOrder = 2
    Text = 'Fornecedores'
    Items.Strings = (
      'C'#243'digo'
      'Fornecedores')
    ItemIndex = 1
  end
  object txtTipoOrdem: TJvComboBox
    Left = 3
    Top = 108
    Width = 322
    Height = 21
    TabOrder = 3
    Text = 'Crescente'
    Items.Strings = (
      'Crescente'
      'Decrescente')
    ItemIndex = 0
  end
end
