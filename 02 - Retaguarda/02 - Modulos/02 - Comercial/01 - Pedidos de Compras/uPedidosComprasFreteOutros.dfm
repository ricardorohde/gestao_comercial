object FrPedidosComprasFreteOutros: TFrPedidosComprasFreteOutros
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Valores Adicionais'
  ClientHeight = 89
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 76
    Height = 15
    Caption = 'Valor do Frete'
  end
  object Label2: TLabel
    Left = 116
    Top = 6
    Width = 86
    Height = 15
    Caption = 'Valor do Seguro'
  end
  object Label3: TLabel
    Left = 224
    Top = 6
    Width = 52
    Height = 15
    Caption = 'Despesas'
  end
  object Label4: TLabel
    Left = 332
    Top = 6
    Width = 57
    Height = 15
    Caption = 'Descontos'
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 53
    Width = 443
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    TabOrder = 4
    ExplicitLeft = 176
    ExplicitTop = 120
    ExplicitWidth = 185
  end
  object JvDBCalcEdit1: TJvDBCalcEdit
    Left = 8
    Top = 21
    Width = 102
    Height = 23
    DisplayFormat = ',0.00'
    TabOrder = 0
    DecimalPlacesAlwaysShown = False
    DataField = 'PED_VLR_FRETE'
    DataSource = dsDados
  end
  object JvDBCalcEdit2: TJvDBCalcEdit
    Left = 116
    Top = 21
    Width = 102
    Height = 23
    DisplayFormat = ',0.00'
    TabOrder = 1
    DecimalPlacesAlwaysShown = False
    DataField = 'PED_VLR_SEGURO'
    DataSource = dsDados
  end
  object JvDBCalcEdit3: TJvDBCalcEdit
    Left = 224
    Top = 21
    Width = 102
    Height = 23
    DisplayFormat = ',0.00'
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
    DataField = 'PED_VLR_OUTROS'
    DataSource = dsDados
  end
  object JvDBCalcEdit4: TJvDBCalcEdit
    Left = 332
    Top = 21
    Width = 102
    Height = 23
    DisplayFormat = ',0.00'
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
    DataField = 'PED_VLR_DESCONTOS'
    DataSource = dsDados
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = FrPedidosCompras.tbDados
    Left = 12
    Top = 60
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 48
    Top = 59
  end
end
