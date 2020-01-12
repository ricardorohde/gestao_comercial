object FrFiltro_Movto_Estoque: TFrFiltro_Movto_Estoque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Per'#237'odo'
  ClientHeight = 150
  ClientWidth = 206
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label2: TLabel
    Left = 100
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
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 112
    Width = 202
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    CaptionCancel = 'Cancelar'
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    GradientColorStyle = gcsCustom
    TabOrder = 3
    VisualStyle = vsGradient
  end
  object grp_tipo: TRadioGroup
    Left = 3
    Top = 46
    Width = 198
    Height = 39
    Caption = 'Tipo de Movimento'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Entrada '
      'Saida')
    ParentFont = False
    TabOrder = 2
  end
  object eDataIni: TJvDateEdit
    Left = 3
    Top = 21
    Width = 91
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
    OnExit = eDatafimExit
  end
  object eDatafim: TJvDateEdit
    Left = 110
    Top = 21
    Width = 91
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
    OnExit = eDatafimExit
  end
  object RzCheckBox1: TRzCheckBox
    Left = 5
    Top = 91
    Width = 122
    Height = 17
    Caption = 'Agrupar Resultados'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object Pop00: TPopupMenu
    AutoPopup = False
    Left = 156
    Top = 51
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
end
