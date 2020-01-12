object FrDescontoUnitario: TFrDescontoUnitario
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 79
  ClientWidth = 308
  Color = 4276545
  TransparentColor = True
  TransparentColorValue = 4276545
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
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 0
    Width = 302
    Height = 19
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Desconto sobre o Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 184
  end
  object Panel6: TPanel
    Left = 0
    Top = 19
    Width = 308
    Height = 60
    Margins.Top = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label22: TLabel
      Left = 6
      Top = 6
      Width = 26
      Height = 16
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 74
      Top = 6
      Width = 99
      Height = 16
      Caption = 'Tipo de Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lb_valor_desconto: TLabel
      Left = 232
      Top = 6
      Width = 75
      Height = 16
      Caption = 'R$ - Margem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 51
      Top = 6
      Width = 24
      Height = 16
      Caption = 'F3 -'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ed_valor_desconto: TJvCalcEdit
      Left = 232
      Top = 24
      Width = 71
      Height = 27
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = True
    end
    object ed_item_cupom: TRzNumericEdit
      Left = 6
      Top = 24
      Width = 39
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = '000'
      TextHintVisibleOnFocus = True
      DisplayFormat = '000'
    end
    object ed_tipo_desconto: TJvComboBox
      Left = 51
      Top = 24
      Width = 175
      Height = 27
      AutoComplete = False
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFlat = False
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Text = 'R$ - Por Valor'
      Items.Strings = (
        'R$ - Por Valor'
        '%  - Por Percentual')
      ItemIndex = 0
    end
  end
  object Pop00: TPopupMenu
    Left = 156
    Top = 15
    object T1: TMenuItem
      Caption = 'Tipo de Desconto'
      ShortCut = 114
      OnClick = T1Click
    end
    object A1: TMenuItem
      Caption = 'Aplicar o Desconto'
      ShortCut = 13
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
end
