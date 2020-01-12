object FrEmissorNfeStatusSefaz: TFrEmissorNfeStatusSefaz
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'NF-e (Nota Fiscal Eletr'#244'nica)'
  ClientHeight = 348
  ClientWidth = 611
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
  object Panel1: TPanel
    Left = 0
    Top = 307
    Width = 611
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object MemoDados: TMemo
    Left = 0
    Top = 39
    Width = 611
    Height = 268
    Align = alClient
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object eTitulo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 605
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 8404992
    ParentBackground = False
    TabOrder = 2
    object lTitulo: TLabel
      AlignWithMargins = True
      Left = 65
      Top = 3
      Width = 475
      Height = 27
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Situa'#231#227'o da NF-e na Sefaz.'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      GlowSize = 1
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitLeft = 56
      ExplicitTop = 1
      ExplicitWidth = 58
      ExplicitHeight = 33
    end
    object Image1: TImage
      Left = 550
      Top = 0
      Width = 55
      Height = 33
      Align = alRight
      Center = True
      Proportional = True
      ExplicitLeft = 874
      ExplicitTop = 1
      ExplicitHeight = 31
    end
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 55
      Height = 33
      Align = alLeft
      Center = True
      Proportional = True
      Visible = False
      ExplicitLeft = 568
      ExplicitTop = 1
      ExplicitHeight = 31
    end
  end
end
