object FremissorNfeFrete: TFremissorNfeFrete
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Frete e Transporte'
  ClientHeight = 343
  ClientWidth = 544
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop01
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 304
    Width = 538
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = clSilver
    TabOrder = 4
  end
  object RzGroupBox1: TRzGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 538
    Height = 50
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Tipo de Frete'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -13
    CaptionFont.Name = 'Calibri'
    CaptionFont.Style = [fsBold]
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    VisualStyle = vsClassic
    object eTipoFrete: TRzDBComboBox
      AlignWithMargins = True
      Left = 4
      Top = 19
      Width = 530
      Height = 23
      DataField = 'NFE_TIPO_FRETE'
      DataSource = dsDados
      Style = csDropDownList
      Align = alTop
      FocusColor = clBtnFace
      TabOrder = 0
      Items.Strings = (
        '0 - Contrata'#231#227'o do Frete por conta do Remetente (CIF)'
        '1 - Contrata'#231#227'o do Frete por conta do Destinat'#225'rio (FOB)'
        '2 - Contrata'#231#227'o do Frete por conta de Terceiros'
        '3 - Transporte Pr'#243'prio por conta do Remetente'
        '4 - Transporte Pr'#243'prio por conta do Destinat'#225'rio'
        '9 - Sem Ocorr'#234'ncia de Transporte')
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5')
    end
  end
  object eGrupoTransportadora: TRzGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 538
    Height = 50
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Selecione a Transportadora'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -13
    CaptionFont.Name = 'Calibri'
    CaptionFont.Style = [fsBold]
    TabOrder = 1
    VisualStyle = vsClassic
    object eTransportadora: TRzDBButtonEdit
      AlignWithMargins = True
      Left = 4
      Top = 19
      Width = 368
      Height = 23
      Margins.Bottom = 7
      DataSource = dsDados
      DataField = 'TRA_RAZAO_SOCIAL'
      Align = alLeft
      BiDiMode = bdLeftToRight
      FocusColor = 11974326
      ParentBiDiMode = False
      TabOrder = 0
      TextHint = 'F2 - Transportadora'
      TextHintVisibleOnFocus = True
      AllowKeyEdit = False
      ButtonShortCut = 113
      AltBtnWidth = 15
      ButtonWidth = 18
      OnButtonClick = eTransportadoraButtonClick
    end
    object eCnpj: TRzDBEdit
      AlignWithMargins = True
      Left = 378
      Top = 19
      Width = 125
      Height = 23
      Margins.Bottom = 7
      DataSource = dsDados
      DataField = 'TRA_CNPJ'
      Align = alClient
      DisabledColor = clSilver
      Enabled = False
      FocusColor = 11974326
      TabOrder = 1
    end
    object eUF: TRzDBEdit
      AlignWithMargins = True
      Left = 509
      Top = 19
      Width = 25
      Height = 23
      Margins.Bottom = 7
      DataSource = dsDados
      DataField = 'TRA_UF'
      Align = alRight
      DisabledColor = clSilver
      Enabled = False
      FocusColor = 11974326
      TabOrder = 2
    end
  end
  object eGrupoVeigulo: TRzGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 109
    Width = 538
    Height = 50
    Align = alTop
    Caption = 'Dados do Ve'#237'culo'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -13
    CaptionFont.Name = 'Calibri'
    CaptionFont.Style = [fsBold]
    Checked = False
    TabOrder = 2
    VisualStyle = vsClassic
    object Label7: TLabel
      Left = 314
      Top = 23
      Width = 58
      Height = 15
      Caption = 'Placa - UF:'
    end
    object ePlacaVeiculo: TRzDBEdit
      AlignWithMargins = True
      Left = 378
      Top = 19
      Width = 125
      Height = 23
      Margins.Left = 377
      Margins.Bottom = 7
      DataSource = dsDados
      DataField = 'NFE_VEICULO_PLACA'
      Align = alClient
      CharCase = ecUpperCase
      DisabledColor = clSilver
      FocusColor = 11974326
      TabOrder = 0
    end
    object eUFVeiculo: TRzDBEdit
      AlignWithMargins = True
      Left = 509
      Top = 19
      Width = 25
      Height = 23
      Margins.Bottom = 7
      DataSource = dsDados
      DataField = 'NFE_VEICULO_UF'
      Align = alRight
      CharCase = ecUpperCase
      DisabledColor = clSilver
      FocusColor = 11974326
      TabOrder = 1
    end
  end
  object RzGroupBox2: TRzGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 162
    Width = 538
    Height = 139
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Dados dos Volumes'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -13
    CaptionFont.Name = 'Calibri'
    CaptionFont.Style = [fsBold]
    TabOrder = 3
    VisualStyle = vsClassic
    object Label1: TLabel
      Left = 4
      Top = 18
      Width = 26
      Height = 15
      Caption = 'Qtde'
    end
    object Label2: TLabel
      Left = 67
      Top = 18
      Width = 41
      Height = 15
      Caption = 'Esp'#233'cie'
    end
    object Label3: TLabel
      Left = 211
      Top = 18
      Width = 36
      Height = 15
      Caption = 'Marca'
    end
    object Label4: TLabel
      Left = 360
      Top = 18
      Width = 43
      Height = 15
      Caption = 'N'#250'mero'
    end
    object Label5: TLabel
      Left = 360
      Top = 56
      Width = 69
      Height = 15
      Caption = 'Peso L'#237'quido'
    end
    object Label6: TLabel
      Left = 360
      Top = 94
      Width = 59
      Height = 15
      Caption = 'Peso Bruto'
    end
    object JvDBSpinEdit1: TJvDBSpinEdit
      Left = 4
      Top = 33
      Width = 57
      Height = 23
      TabOrder = 0
      DataField = 'NFE_VOLUME_QTDE'
      DataSource = dsDados
    end
    object RzDBEdit1: TRzDBEdit
      Left = 67
      Top = 33
      Width = 138
      Height = 23
      DataSource = dsDados
      DataField = 'NFE_VOLUME_ESPECIE'
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object RzDBEdit2: TRzDBEdit
      Left = 211
      Top = 33
      Width = 143
      Height = 23
      DataSource = dsDados
      DataField = 'NFE_VOLUME_MARCA'
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object RzDBEdit3: TRzDBEdit
      Left = 360
      Top = 33
      Width = 174
      Height = 23
      DataSource = dsDados
      DataField = 'NFE_VOLUME_NUMERO'
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object RzDBEdit4: TRzDBEdit
      Left = 360
      Top = 71
      Width = 174
      Height = 23
      DataSource = dsDados
      DataField = 'NFE_VOLUME_PESO_B'
      TabOrder = 4
    end
    object RzDBEdit5: TRzDBEdit
      Left = 360
      Top = 109
      Width = 174
      Height = 23
      DataSource = dsDados
      DataField = 'NFE_VOLUME_PESO_L'
      TabOrder = 5
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = FrEmissorNfe.tbDados
    Left = 6
    Top = 114
  end
  object Pop01: TPopupMenu
    AutoPopup = False
    Left = 42
    Top = 114
    object ransportadora1: TMenuItem
      Caption = 'Transportadora'
      ShortCut = 113
      OnClick = eTransportadoraButtonClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
end
