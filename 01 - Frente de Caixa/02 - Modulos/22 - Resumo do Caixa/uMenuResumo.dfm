object FrMenuResumo: TFrMenuResumo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  ClientHeight = 144
  ClientWidth = 258
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
  object Label2: TLabel
    Left = 8
    Top = 53
    Width = 130
    Height = 19
    Caption = 'Informe o Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object aData: TJvDateEdit
    Left = 8
    Top = 74
    Width = 117
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShowNullDate = False
    TabOrder = 0
  end
  object bData: TJvDateEdit
    Left = 131
    Top = 74
    Width = 117
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShowNullDate = False
    TabOrder = 1
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 108
    Width = 258
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 258
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 3
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
      Width = 144
      Height = 23
      Margins.Left = 6
      Align = alClient
      Caption = 'Resumo do Caixa'
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
      Left = 220
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
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 56
    Top = 105
  end
end
