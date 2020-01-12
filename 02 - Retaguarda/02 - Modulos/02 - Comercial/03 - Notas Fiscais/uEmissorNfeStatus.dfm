object FrEmissorNfeStatus: TFrEmissorNfeStatus
  Left = 231
  Top = 166
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Status da Nota Fiscal'
  ClientHeight = 105
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 739
    Height = 72
    Align = alClient
    TabOrder = 0
    object lblStatus: TPanel
      Left = 1
      Top = 1
      Width = 737
      Height = 70
      Align = alClient
      BevelOuter = bvLowered
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Bookman Old Style'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object eTitulo: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 8404992
    ParentBackground = False
    TabOrder = 1
    object lTitulo: TLabel
      AlignWithMargins = True
      Left = 65
      Top = 3
      Width = 609
      Height = 27
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Processando... Aguarde!'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      StyleElements = []
      ExplicitLeft = 56
      ExplicitTop = 1
      ExplicitWidth = 58
      ExplicitHeight = 33
    end
    object Image1: TImage
      Left = 684
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
