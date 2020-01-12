object FrVendasConfirmar: TFrVendasConfirmar
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'FrVendasConfirmar'
  ClientHeight = 106
  ClientWidth = 338
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 33023
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pn_top: TPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    Enabled = False
    ParentBackground = False
    TabOrder = 1
    object lbTitulo: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 3
      Width = 168
      Height = 36
      Margins.Left = 6
      Align = alLeft
      Caption = 'Cancelar a venda?'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 30
    end
    object JvImage1: TJvImage
      AlignWithMargins = True
      Left = 300
      Top = 3
      Width = 32
      Height = 36
      Cursor = crHandPoint
      Margins.Right = 6
      Align = alRight
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
        434944415478DA63641860C038EA805107A00BFCFFFF1F24F68F0676FD636464
        6426C6014C40EA2F0D1CF01FE80026521CF01F88998930981060849947B203B0
        6920D9DB04CC1B5A0E00CA6503A91540F1B7382C1303525640F90D54770050BC
        0048F503F1792076457704D4F27D40AC01C4A140F9F5D476802090DA0DC4C640
        7C03889D80F2CFA172D2406A3F10AB02F129207603CA7DA44514603802889970
        594E75076071C41D06485655C466394D1C80E4880340AC071502A50B4774CB69
        E900509C1F046265A8D02D207680A5099A3A002DC19D6380A4010306B4844913
        07604BED500760CD1D54750081AC862F8B52CD01CD40AA06882F01B13350EE0D
        9A3E09064841A409C42940F9B9D4760028BBD502F11474CBD11CE107949F4593
        34400E187500250EA03618220E803A82EACD75A0E5FFB18AD3C0A7A4396CD401
        03ED0000EB463330F5B4EB970000000049454E44AE426082}
      ExplicitLeft = 864
      ExplicitTop = 12
      ExplicitHeight = 32
    end
  end
  object btnNao: TButton
    Left = 0
    Top = 74
    Width = 338
    Height = 32
    Caption = 'N'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnNaoClick
  end
  object Button1: TButton
    Left = 0
    Top = 42
    Width = 338
    Height = 32
    Align = alTop
    Caption = 'Sim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
    OnKeyUp = Button1KeyUp
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 8
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
    end
  end
end
