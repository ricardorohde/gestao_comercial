object frDreFiltro: TfrDreFiltro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Per'#237'odo'
  ClientHeight = 87
  ClientWidth = 206
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 100
    Top = 21
    Width = 6
    Height = 19
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 3
    Top = 3
    Width = 103
    Height = 16
    Caption = 'Informe o Per'#237'odo'
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
    Top = 49
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
    Color = 8404992
    GradientColorStyle = gcsCustom
    TabOrder = 0
    VisualStyle = vsGradient
  end
  object eDataIni: TJvDateEdit
    Left = 3
    Top = 20
    Width = 91
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShowNullDate = False
    TabOrder = 1
  end
  object eDataFim: TJvDateEdit
    Left = 112
    Top = 20
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShowNullDate = False
    TabOrder = 2
    OnExit = eDataFimExit
  end
  object Pop00: TPopupMenu
    AutoPopup = False
    Left = 142
    Top = 8
    object SelecionarCliente1: TMenuItem
      Caption = 'Selecionar Cliente'
      ShortCut = 113
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
    end
  end
end
