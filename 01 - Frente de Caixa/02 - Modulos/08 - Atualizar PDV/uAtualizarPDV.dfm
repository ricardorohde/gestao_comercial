object FrAtualizarPDV: TFrAtualizarPDV
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 216
  ClientWidth = 454
  Color = 14678491
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object lbMensagem: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 97
    Width = 448
    Height = 44
    Margins.Top = 40
    Margins.Bottom = 40
    Align = alClient
    Alignment = taCenter
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 18
    ExplicitHeight = 25
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 57
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
      Height = 51
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
      Width = 350
      Height = 51
      Margins.Left = 6
      Align = alClient
      Caption = 'Atualizando o PDV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 193
      ExplicitHeight = 29
    end
    object JvImage1: TJvImage
      AlignWithMargins = True
      Left = 416
      Top = 3
      Width = 32
      Height = 51
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
    Top = 181
    Width = 454
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object lbAguarde: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 3
      Width = 445
      Height = 29
      Margins.Left = 6
      Align = alClient
      Alignment = taCenter
      Caption = 'Aguarde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 79
      ExplicitHeight = 25
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 412
    Top = 160
  end
  object QueryR: TFDQuery
    Connection = FrModulo.DBCon_Remoto
    Left = 8
    Top = 68
  end
  object dsQueryR: TDataSource
    AutoEdit = False
    DataSet = QueryR
    Left = 40
    Top = 68
  end
  object QueryL: TFDQuery
    Connection = FrModulo.DBCon_Local
    Left = 8
    Top = 100
  end
  object dsQueryL: TDataSource
    AutoEdit = False
    DataSet = QueryL
    Left = 40
    Top = 100
  end
  object tCarga: TTimer
    Interval = 600
    OnTimer = tCargaTimer
    Left = 412
    Top = 92
  end
  object Pop00: TPopupMenu
    AutoPopup = False
    Left = 356
    Top = 12
    object s1: TMenuItem
      Caption = 'Sair'
      ShortCut = 122
      OnClick = s1Click
    end
  end
  object tClose: TTimer
    Enabled = False
    Interval = 600
    OnTimer = s1Click
    Left = 412
    Top = 124
  end
  object aQueryL: TFDQuery
    CachedUpdates = True
    Connection = FrModulo.DBCon_Local
    Left = 360
    Top = 64
  end
end
