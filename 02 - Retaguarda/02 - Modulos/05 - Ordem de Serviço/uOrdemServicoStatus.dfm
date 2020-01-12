object FrOrdemServicoStatus: TFrOrdemServicoStatus
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Alterar o Status.'
  ClientHeight = 95
  ClientWidth = 185
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
    Caption = 'Alterar o Status da O.S'
  end
  object ed_status: TJvDBComboBox
    Left = 8
    Top = 27
    Width = 169
    Height = 21
    DataField = 'OS_STATUS'
    DataSource = dsQuery
    Items.Strings = (
      'O.S em Or'#231'amento'
      'O.S.em Execu'#231#227'o'
      'O.S Finalizada'
      'O.S Cancelada')
    TabOrder = 0
    Values.Strings = (
      '1'
      '2'
      '3'
      '99')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 59
    Width = 185
    HotTrack = True
    TabOrder = 1
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = FrOrdemServicoGerenciar.Query
    Left = 132
  end
end
