object FrCabecalhoMDFe: TFrCabecalhoMDFe
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cabe'#231'alho.'
  ClientHeight = 426
  ClientWidth = 519
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
  object Label17: TLabel
    Left = 6
    Top = 6
    Width = 51
    Height = 13
    Caption = 'Tipo Modal'
  end
  object Label14: TLabel
    Left = 348
    Top = 6
    Width = 86
    Height = 13
    Caption = 'Un. Medida Carga'
  end
  object Label8: TLabel
    Left = 162
    Top = 86
    Width = 103
    Height = 13
    Caption = 'Data In'#237'cio da Viagem'
  end
  object Label4: TLabel
    Left = 6
    Top = 86
    Width = 90
    Height = 13
    Caption = 'Data Hora Emiss'#227'o'
  end
  object Label9: TLabel
    Left = 6
    Top = 46
    Width = 111
    Height = 13
    Caption = 'Local de Carregamento'
  end
  object Label11: TLabel
    Left = 442
    Top = 46
    Width = 71
    Height = 13
    Caption = 'UF Descarrega'
  end
  object Label12: TLabel
    Left = 6
    Top = 126
    Width = 172
    Height = 13
    Caption = 'Informa'#231#245'es Complementares'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 6
    Top = 274
    Width = 103
    Height = 13
    Caption = 'Informa'#231#245'es Fisco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 177
    Top = 6
    Width = 92
    Height = 13
    Caption = 'Tipo Transportador'
  end
  object Label16: TLabel
    Left = 416
    Top = 86
    Width = 52
    Height = 13
    Caption = 'Peso Bruto'
  end
  object Label13: TLabel
    Left = 318
    Top = 86
    Width = 83
    Height = 13
    Caption = 'Valor Total Carga'
  end
  object cbTipoModal: TRzDBComboBox
    Left = 6
    Top = 21
    Width = 165
    Height = 21
    DataField = 'MD_TIP_MODAL'
    DataSource = dsQuery
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'Rodovi'#225'rio'
      'Aereo'
      'Aquavi'#225'rio'
      'Ferrovi'#225'rio')
    Values.Strings = (
      '0'
      '1'
      '2'
      '3')
  end
  object cbUnidade: TRzDBComboBox
    Left = 348
    Top = 21
    Width = 165
    Height = 21
    DataField = 'MD_COD_UNIDADE'
    DataSource = dsQuery
    Style = csDropDownList
    TabOrder = 2
    Items.Strings = (
      'Metros C'#250'bicos'
      'Kilos'
      'Tonelada'
      'Unidade'
      'Litros')
    Values.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4')
  end
  object txtDhSaida: TRzDBEdit
    Left = 162
    Top = 101
    Width = 150
    Height = 21
    DataSource = dsQuery
    DataField = 'MD_DH_INICIO_VIAGEM'
    MaxLength = 19
    TabOrder = 7
  end
  object txtDhEmissao: TRzDBEdit
    Left = 6
    Top = 101
    Width = 150
    Height = 21
    DataSource = dsQuery
    DataField = 'MD_DH_EMISSAO'
    MaxLength = 19
    TabOrder = 6
  end
  object txtUfCarregamento: TRzDBButtonEdit
    Left = 6
    Top = 61
    Width = 53
    Height = 21
    DataSource = dsQuery
    DataField = 'MD_UF_INICIAL'
    TabOrder = 3
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 15
    OnButtonClick = txtUfCarregamentoButtonClick
  end
  object txtMunicipio: TRzDBEdit
    Left = 65
    Top = 61
    Width = 371
    Height = 21
    DataSource = dsQuery
    DataField = 'MD_NOM_MUNICIPIO'
    Enabled = False
    TabOrder = 4
  end
  object cbUfFinal: TRzDBComboBox
    Left = 442
    Top = 61
    Width = 71
    Height = 21
    DataField = 'MD_UF_FINAL'
    DataSource = dsQuery
    Style = csDropDownList
    TabOrder = 5
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    Values.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object RzDBMemo1: TRzDBMemo
    Left = 6
    Top = 141
    Width = 507
    Height = 129
    DataField = 'MD_INF_COMPLEMENTARES'
    DataSource = dsQuery
    TabOrder = 10
  end
  object RzDBMemo2: TRzDBMemo
    Left = 6
    Top = 288
    Width = 507
    Height = 95
    DataField = 'MD_INF_FISCO'
    DataSource = dsQuery
    TabOrder = 11
  end
  object cbTipoTransportadorar: TRzDBComboBox
    Left = 177
    Top = 21
    Width = 165
    Height = 21
    DataField = 'MD_TIP_TRANSPORTADOR'
    DataSource = dsQuery
    Style = csDropDownList
    TabOrder = 1
    Items.Strings = (
      'ETC - Transportadora'
      'TAC - Transportador Pr'#243'pria'
      'CTC '#8211' Cooperativa de Transporte')
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  object cbPeso: TJvDBCalcEdit
    Left = 416
    Top = 101
    Width = 97
    Height = 21
    DecimalPlaceRound = True
    DisplayFormat = ',0.0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    DecimalPlacesAlwaysShown = False
    DataField = 'MD_QTD_CARGA'
    DataSource = dsQuery
  end
  object txtValor: TJvDBCalcEdit
    Left = 318
    Top = 101
    Width = 95
    Height = 21
    DecimalPlaceRound = True
    DisplayFormat = ',0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    DecimalPlacesAlwaysShown = False
    DataField = 'MD_VLR_CARGA'
    DataSource = dsQuery
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 390
    Width = 519
    CaptionCancel = 'Cancelar'
    HotTrack = True
    OKDefault = False
    OnClickOk = RzDialogButtons1ClickOk
    TabOrder = 12
    ExplicitTop = 385
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = FrEmissorMDFe.Query
    Left = 132
    Top = 236
  end
end
