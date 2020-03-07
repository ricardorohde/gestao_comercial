object FrChaveNFe: TFrChaveNFe
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Chave de acesso da NFe'
  ClientHeight = 84
  ClientWidth = 344
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
  object Label2: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 338
    Height = 13
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Chave da NF-e'
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 72
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 48
    Width = 344
    CaptionCancel = 'Cancelar'
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    TabOrder = 0
    ExplicitWidth = 372
  end
  object txtChave: TRzDBButtonEdit
    AlignWithMargins = True
    Left = 3
    Top = 18
    Width = 338
    Height = 23
    Margins.Top = 2
    DataSource = dsQuery
    DataField = 'MD_CHAVE_NFE'
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'Informe a chave ccorrespondente a nota fiscal.'
    TextHintVisibleOnFocus = True
    AltBtnWidth = 15
    ButtonWidth = 15
    OnButtonClick = txtChaveButtonClick
  end
  object dsQuery: TDataSource
    DataSet = FrChavesNFe.Query
    Left = 56
    Top = 56
  end
end
