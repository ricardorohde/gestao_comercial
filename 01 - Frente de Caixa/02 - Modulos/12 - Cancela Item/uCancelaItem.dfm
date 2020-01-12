object FrCancelaItem: TFrCancelaItem
  Left = 183
  Top = 225
  AlphaBlend = True
  AlphaBlendValue = 185
  BorderStyle = bsNone
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
  object lb_cancelar_item: TRzLabel
    Left = 71
    Top = 25
    Width = 106
    Height = 29
    Caption = 'ITEM N.'#186':'
    Color = 14086904
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    BlinkIntervalOff = 2000
    ShadowColor = clBlack
  end
  object Image1: TImage
    Left = 12
    Top = 15
    Width = 48
    Height = 48
    AutoSize = True
    Center = True
  end
  object ed_cancelar_item: TRzNumericEdit
    Left = 235
    Top = 19
    Width = 54
    Height = 43
    Color = 4276545
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    FrameHotStyle = fsNone
    FrameStyle = fsNone
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ParentFont = False
    ReadOnlyColor = clBlack
    TabOrder = 0
    DisplayFormat = '000'
  end
  object Pop00: TPopupMenu
    Left = 184
    Top = 24
    object C1: TMenuItem
      Caption = 'Confirma Cancelamento'
      ShortCut = 13
      OnClick = C1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object C2: TMenuItem
      Caption = 'Cancela o Cancelamento'
      ShortCut = 27
      OnClick = C2Click
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = FrVendas.QueryProdutos
    Left = 60
    Top = 24
  end
end
