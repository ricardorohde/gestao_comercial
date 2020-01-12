object FrSenhaOperador: TFrSenhaOperador
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 185
  BorderStyle = bsNone
  Caption = 'FrSenhaOperador'
  ClientHeight = 79
  ClientWidth = 309
  Color = 14086904
  TransparentColor = True
  TransparentColorValue = 14086904
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poDefault
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape3: TShape
    Left = 0
    Top = 0
    Width = 309
    Height = 79
    Align = alClient
    Brush.Color = 4276545
    Pen.Color = clWhite
    Pen.Width = 4
    ExplicitLeft = -4
    ExplicitWidth = 300
  end
  object Image1: TImage
    Left = 24
    Top = 15
    Width = 48
    Height = 48
    AutoSize = True
    Center = True
  end
  object ed_senha: TRzEdit
    Left = 80
    Top = 21
    Width = 205
    Height = 37
    Text = ''
    Alignment = taCenter
    Color = 4276545
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    FrameStyle = fsNone
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ParentFont = False
    TabOrder = 0
    TextHint = 'Informe o Usu'#225'rio'
    TextHintVisibleOnFocus = True
  end
  object Pop00: TPopupMenu
    Left = 88
    Top = 8
    object C1: TMenuItem
      Caption = 'Confirmar'
      ShortCut = 13
      OnClick = C1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object E1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = E1Click
    end
  end
end
