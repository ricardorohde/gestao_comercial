object FrDesconto: TFrDesconto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 62
  ClientWidth = 300
  Color = clBtnFace
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
  object Shape2: TShape
    Left = 0
    Top = 0
    Width = 300
    Height = 62
    Align = alClient
    Pen.Color = 8404992
    Pen.Width = 4
    ExplicitLeft = -288
    ExplicitTop = -71
    ExplicitWidth = 571
    ExplicitHeight = 256
  end
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 28
    Height = 16
    Caption = 'F3 - '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 36
    Top = 6
    Width = 28
    Height = 16
    Caption = 'TIPO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lb_valor_desconto: TLabel
    Left = 159
    Top = 6
    Width = 47
    Height = 16
    Caption = 'Margem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ed_tipo_desconto: TJvComboBox
    Left = 8
    Top = 24
    Width = 145
    Height = 28
    Style = csDropDownList
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'VALOR'
    Items.Strings = (
      'VALOR'
      'PERCENTUAL')
    ItemIndex = 0
  end
  object ed_valor_desconto: TJvCalcEdit
    Left = 159
    Top = 24
    Width = 133
    Height = 28
    DisplayFormat = ',0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    FormatOnEditing = True
    ParentFont = False
    ShowButton = False
    TabOrder = 1
    DecimalPlacesAlwaysShown = True
  end
  object Pop00: TPopupMenu
    Left = 112
    Top = 4
    object T1: TMenuItem
      Caption = 'Tipo de Desconto'
      ShortCut = 114
      OnClick = T1Click
    end
    object V1: TMenuItem
      Caption = 'Confirmar'
      ShortCut = 13
      OnClick = V1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object S1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = S1Click
    end
  end
  object dsCupom: TDataSource
    AutoEdit = False
    DataSet = FrVendas.QueryCupom
    Left = 28
    Top = 24
  end
end
