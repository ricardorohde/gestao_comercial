object FrPlanoContasPadroes: TFrPlanoContasPadroes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Planos de Contas'
  ClientHeight = 400
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 39
    Width = 77
    Height = 13
    Caption = 'Frente de Caixa'
  end
  object Label2: TLabel
    Left = 8
    Top = 79
    Width = 85
    Height = 13
    Caption = 'Pedido de Vendas'
  end
  object Label3: TLabel
    Left = 8
    Top = 159
    Width = 116
    Height = 13
    Caption = 'Notas Fiscais (Entradas)'
  end
  object Label4: TLabel
    Left = 8
    Top = 199
    Width = 104
    Height = 13
    Caption = 'Noats Fiscais (Saidas)'
  end
  object Label5: TLabel
    Left = 8
    Top = 119
    Width = 91
    Height = 13
    Caption = 'Pedidos e Compras'
  end
  object Label6: TLabel
    Left = 8
    Top = 239
    Width = 93
    Height = 13
    Caption = 'Ordens de Servi'#231'os'
  end
  object Label7: TLabel
    Left = 8
    Top = 279
    Width = 117
    Height = 13
    Caption = 'Contas a Pagar (Avulso)'
  end
  object Label8: TLabel
    Left = 8
    Top = 319
    Width = 129
    Height = 13
    Caption = 'Contas a Receber (Avulso)'
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 496
    Height = 34
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    BorderHighlight = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    GradientColorStart = clSilver
    GradientColorStop = 3815994
    ParentFont = False
    TabOrder = 8
    VisualStyle = vsGradient
    object Label43: TLabel
      AlignWithMargins = True
      Left = 204
      Top = 2
      Width = 244
      Height = 30
      Margins.Left = 10
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      Caption = 
        'Define os Planos de Contas padr'#245'es para as entradas e saidas do ' +
        'sistema.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label42: TLabel
      AlignWithMargins = True
      Left = 32
      Top = 2
      Width = 146
      Height = 30
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Planos de Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 26
    end
    object Bevel3: TBevel
      AlignWithMargins = True
      Left = 190
      Top = 2
      Width = 2
      Height = 30
      Margins.Left = 10
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      ExplicitLeft = 249
    end
    object Image2: TImage
      AlignWithMargins = True
      Left = 3
      Top = 2
      Width = 24
      Height = 30
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180803000000D7A9CDCA0000009C504C544547704CA6894FAE8F54967745A3
        B7CDA2844BB49358A2B8CCA5B9CDA5864DCBA968B393599F824AAC8B4FAC8D53
        9E8047A6864CA5864BB08E51A1834CA5874D9D8049A080479C8049A18449A3B7
        CCA1844BAD8F56A3BBCCA3B8CCAE8F55AB8C51A4874F9F824BAE8E529E8047BD
        99569C80469F814A9E82479E8048F5CE85E2BD78B8975ADBB065BA995BEBC57E
        B59355D3B06EC29C5AB29154CDA55FEE6B1B260000002974524E5300EDF65C66
        B5FB9A33BAFDFDFCE0FDCFC9CCE9B3EB5E76507AC2F7FA4BC2F8F8FD95FE9EF2
        2C5D769BCF551B680000009C4944415478DA6354FDCCC0778B011330AA73317D
        FCFF00C8FA8B26A1C1F597E1F30B0606B1076812ACAAFFC18CBBBF6827A1F8EF
        3183CCDFE70C12CFC07C7E464696D7600910C1F1E70F4C21AF3CC333A6B70C0C
        A2E8123CF20C4C8CBF19186FA34BB029436C8048C830BE8249B0C8214BE0D481
        24C1270391BF8A2E21FC0DAA005D02E14134099A799043F01D760F2201541D48
        00D5834800EE410027C947A50DC387960000000049454E44AE426082}
      ExplicitHeight = 24
    end
  end
  object edPDV: TRzDBButtonEdit
    Left = 8
    Top = 54
    Width = 482
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_PDV'
    TabOrder = 0
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
    OnButtonClick = edPDVButtonClick
  end
  object edPedVendas: TRzDBButtonEdit
    Left = 8
    Top = 94
    Width = 482
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_PED_V'
    TabOrder = 1
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
  end
  object edNFeEntrada: TRzDBButtonEdit
    Left = 8
    Top = 174
    Width = 482
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_NFE_E'
    TabOrder = 3
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
  end
  object edNFeSaida: TRzDBButtonEdit
    Left = 8
    Top = 214
    Width = 482
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_NFE_S'
    TabOrder = 4
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
  end
  object edPedCompras: TRzDBButtonEdit
    Left = 8
    Top = 134
    Width = 482
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_PED_C'
    TabOrder = 2
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 364
    Width = 500
    CaptionOk = 'Gravar'
    CaptionCancel = 'Cancelar'
    HotTrack = True
    OnClickOk = RzDialogButtons1ClickOk
    OnClickCancel = RzDialogButtons1ClickCancel
    GradientColorStyle = gcsCustom
    TabOrder = 9
    VisualStyle = vsGradient
    ExplicitTop = 283
  end
  object edOrdensServicos: TRzDBButtonEdit
    Left = 8
    Top = 254
    Width = 482
    Height = 21
    DataSource = dsQuery
    DataField = 'PLN_OS'
    TabOrder = 5
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
  end
  object edContaPagar: TRzDBButtonEdit
    Left = 8
    Top = 294
    Width = 482
    Height = 21
    DataSource = dsQuery
    DataField = 'EMP_PLN_CTAS_PG'
    TabOrder = 6
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
  end
  object edContasReceber: TRzDBButtonEdit
    Left = 8
    Top = 334
    Width = 482
    Height = 21
    DataSource = dsQuery
    DataField = 'EMP_PLN_CTAS_RB'
    TabOrder = 7
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
  end
  object Query: TFDQuery
    BeforePost = QueryBeforePost
    AfterPost = QueryAfterPost
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.EMP_PLN_PDV,'
      '   T1.EMP_PLN_PED_V,'
      '   T1.EMP_PLN_PED_C,'
      '   T1.EMP_PLN_NFE_E,'
      '   T1.EMP_PLN_NFE_S,'
      '   T1.EMP_PLN_OS,'
      '   T1.EMP_PLN_CTAS_PAGAR,'
      '   T1.EMP_PLN_CTAS_RECEB,'
      
        '   (SELECT PLN_CONTA_CODIGO || PLN_DESCRICAO FROM C000018 WHERE ' +
        'ID = T1.EMP_PLN_PDV) AS PLN_PDV,'
      
        '   (SELECT PLN_CONTA_CODIGO || PLN_DESCRICAO FROM C000018 WHERE ' +
        'ID = T1.EMP_PLN_PED_V) AS PLN_PED_V,'
      
        '   (SELECT PLN_CONTA_CODIGO || PLN_DESCRICAO FROM C000018 WHERE ' +
        'ID = T1.EMP_PLN_PED_C) AS PLN_PED_C,'
      
        '   (SELECT PLN_CONTA_CODIGO || PLN_DESCRICAO FROM C000018 WHERE ' +
        'ID = T1.EMP_PLN_NFE_E) AS PLN_NFE_S,'
      
        '   (SELECT PLN_CONTA_CODIGO || PLN_DESCRICAO FROM C000018 WHERE ' +
        'ID = T1.EMP_PLN_NFE_S) AS PLN_NFE_E,'
      
        '   (SELECT PLN_CONTA_CODIGO || PLN_DESCRICAO FROM C000018 WHERE ' +
        'ID = T1.EMP_PLN_OS) AS PLN_OS,'
      
        '   (SELECT PLN_CONTA_CODIGO || PLN_DESCRICAO FROM C000018 WHERE ' +
        'ID = T1.EMP_PLN_OS) AS EMP_PLN_CTAS_PG,'
      
        '   (SELECT PLN_CONTA_CODIGO || PLN_DESCRICAO FROM C000018 WHERE ' +
        'ID = T1.EMP_PLN_OS) AS EMP_PLN_CTAS_RB'
      'FROM'
      '   C000501 AS T1'
      'WHERE'
      '   T1.ID = :ID_EMP')
    Left = 354
    Top = 335
    ParamData = <
      item
        Name = 'ID_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QueryEMP_PLN_PDV: TIntegerField
      FieldName = 'EMP_PLN_PDV'
      Origin = 'EMP_PLN_PDV'
    end
    object QueryEMP_PLN_PED_V: TIntegerField
      FieldName = 'EMP_PLN_PED_V'
      Origin = 'EMP_PLN_PED_V'
    end
    object QueryEMP_PLN_PED_C: TIntegerField
      FieldName = 'EMP_PLN_PED_C'
      Origin = 'EMP_PLN_PED_C'
    end
    object QueryEMP_PLN_NFE_E: TIntegerField
      FieldName = 'EMP_PLN_NFE_E'
      Origin = 'EMP_PLN_NFE_E'
    end
    object QueryEMP_PLN_NFE_S: TIntegerField
      FieldName = 'EMP_PLN_NFE_S'
      Origin = 'EMP_PLN_NFE_S'
    end
    object QueryEMP_PLN_OS: TIntegerField
      FieldName = 'EMP_PLN_OS'
      Origin = 'EMP_PLN_OS'
    end
    object QueryEMP_PLN_CTAS_PAGAR: TIntegerField
      FieldName = 'EMP_PLN_CTAS_PAGAR'
      Origin = 'EMP_PLN_CTAS_PAGAR'
    end
    object QueryEMP_PLN_CTAS_RECEB: TIntegerField
      FieldName = 'EMP_PLN_CTAS_RECEB'
      Origin = 'EMP_PLN_CTAS_RECEB'
    end
    object QueryPLN_PDV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLN_PDV'
      Origin = 'PLN_PDV'
      ProviderFlags = []
      Size = 77
    end
    object QueryPLN_PED_V: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLN_PED_V'
      Origin = 'PLN_PED_V'
      ProviderFlags = []
      Size = 77
    end
    object QueryPLN_PED_C: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLN_PED_C'
      Origin = 'PLN_PED_C'
      ProviderFlags = []
      Size = 77
    end
    object QueryPLN_NFE_S: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLN_NFE_S'
      Origin = 'PLN_NFE_S'
      ProviderFlags = []
      Size = 77
    end
    object QueryPLN_NFE_E: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLN_NFE_E'
      Origin = 'PLN_NFE_E'
      ProviderFlags = []
      Size = 77
    end
    object QueryPLN_OS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLN_OS'
      Origin = 'PLN_OS'
      ProviderFlags = []
      Size = 77
    end
    object QueryEMP_PLN_CTAS_PG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_PLN_CTAS_PG'
      Origin = 'EMP_PLN_CTAS_PG'
      ProviderFlags = []
      Size = 77
    end
    object QueryEMP_PLN_CTAS_RB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_PLN_CTAS_RB'
      Origin = 'EMP_PLN_CTAS_RB'
      ProviderFlags = []
      Size = 77
    end
  end
  object dsQuery: TDataSource
    DataSet = Query
    Left = 384
    Top = 335
  end
end
