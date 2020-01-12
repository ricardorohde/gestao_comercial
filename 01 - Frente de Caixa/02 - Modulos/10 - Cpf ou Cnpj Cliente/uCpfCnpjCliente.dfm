object FrCpfCnpjCliente: TFrCpfCnpjCliente
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrCpfCnpjCliente'
  ClientHeight = 120
  ClientWidth = 349
  Color = 14678491
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object JvImage3: TJvImage
      AlignWithMargins = True
      Left = 6
      Top = 3
      Width = 45
      Height = 46
      Margins.Left = 6
      Align = alLeft
      AutoSize = True
      Center = True
      ExplicitLeft = 42
      ExplicitTop = -26
      ExplicitWidth = 84
      ExplicitHeight = 135
    end
    object Label7: TLabel
      AlignWithMargins = True
      Left = 60
      Top = 3
      Width = 195
      Height = 23
      Margins.Left = 6
      Align = alClient
      Caption = 'Informe o CPF ou CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object JvImage1: TJvImage
      AlignWithMargins = True
      Left = 311
      Top = 3
      Width = 32
      Height = 46
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
      OnClick = JvImage1Click
      ExplicitLeft = 864
      ExplicitTop = 12
      ExplicitHeight = 32
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 99
    Width = 349
    Height = 21
    Align = alBottom
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
  end
  object eCpfCnpj: TRzNumericEdit
    Left = 0
    Top = 52
    Width = 349
    Height = 47
    Margins.Left = 0
    Margins.Right = 0
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnEnter = eCpfCnpjEnter
    OnExit = eCpfCnpjExit
    DisplayFormat = ',0;(,0)'
    ExplicitHeight = 53
  end
  object Pop00: TPopupMenu
    AutoPopup = False
    Left = 8
    Top = 64
    object S2: TMenuItem
      Caption = 'Seleciona'
      ShortCut = 13
      OnClick = S2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object s1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = s1Click
    end
  end
  object ChecaDoc: TACBrValidador
    IgnorarChar = './-'
    Left = 48
    Top = 64
  end
end
