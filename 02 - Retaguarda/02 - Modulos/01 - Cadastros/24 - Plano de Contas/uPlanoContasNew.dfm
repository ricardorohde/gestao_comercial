object FrPlanoContasNew: TFrPlanoContasNew
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastrar Contas:'
  ClientHeight = 170
  ClientWidth = 454
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 112
    Height = 13
    Caption = 'CONTA SELECIONADA:'
  end
  object dspConta: TLabel
    Left = 8
    Top = 33
    Width = 219
    Height = 23
    Caption = '0.0 - SELECIONAR CONTA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 68
    Width = 144
    Height = 13
    Caption = 'NOVA CONTA A SER CRIADA:'
  end
  object Label4: TLabel
    Left = 8
    Top = 87
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label5: TLabel
    Left = 116
    Top = 87
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label6: TLabel
    Left = 199
    Top = 87
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 134
    Width = 454
    HotTrack = True
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    TabOrder = 3
  end
  object RLDraw1: TRLDraw
    Left = 8
    Top = 23
    Width = 437
    Height = 4
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = False
    Borders.Style = bsClear
    Brush.Style = bsClear
    DrawKind = dkLine
    Pen.Style = psDot
    Transparent = False
  end
  object RLDraw2: TRLDraw
    Left = 8
    Top = 83
    Width = 437
    Height = 4
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = False
    Borders.Style = bsClear
    Brush.Style = bsClear
    DrawKind = dkLine
    Pen.Style = psDot
    Transparent = False
  end
  object ed_tipo: TJvDBComboBox
    Left = 8
    Top = 103
    Width = 102
    Height = 21
    DataField = 'PLN_TIPO'
    DataSource = dsQuery
    Items.Strings = (
      'Anal'#237'tico'
      'Sint'#233'tico')
    TabOrder = 0
    Values.Strings = (
      'A'
      'S')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object ed_descricao: TRzDBEdit
    Left = 199
    Top = 103
    Width = 246
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_DESCRICAO'
    CharCase = ecUpperCase
    FocusColor = clSilver
    TabOrder = 2
  end
  object ed_codigo: TRzDBEdit
    Left = 116
    Top = 103
    Width = 77
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_CONTA_CODIGO'
    Enabled = False
    TabOrder = 1
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = FrPlanoContas.Query
    Left = 306
    Top = 48
  end
end
