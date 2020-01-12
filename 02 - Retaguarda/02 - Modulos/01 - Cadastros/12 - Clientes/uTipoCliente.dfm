object FrTipoCliente: TFrTipoCliente
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tipo de Cliente'
  ClientHeight = 98
  ClientWidth = 302
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
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 59
    Width = 296
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object RzDBRadioGroup1: TRzDBRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 296
    Height = 50
    DataField = 'CLI_TIPO_PESSOA'
    DataSource = FrClientes.dsDados
    Items.Strings = (
      'Pessoa Jur'#237'dica'
      'Pessoa F'#237'sica')
    Values.Strings = (
      '1'
      '2')
    Align = alClient
    Caption = 'Tipo de Cliente'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -12
    CaptionFont.Name = 'Calibri'
    CaptionFont.Style = [fsBold]
    Columns = 2
    SpaceEvenly = True
    StartYPos = 8
    TabOrder = 1
  end
end
