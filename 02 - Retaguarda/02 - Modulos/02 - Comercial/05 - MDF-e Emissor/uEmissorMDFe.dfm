object FrEmissorMDFe: TFrEmissorMDFe
  Left = 0
  Top = 0
  Margins.Left = 2
  Margins.Top = 2
  Margins.Right = 2
  Margins.Bottom = 0
  BorderStyle = bsSingle
  Caption = 'Emissor de MDF-e'
  ClientHeight = 551
  ClientWidth = 1109
  Color = clBtnFace
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 3
    Top = 104
    Width = 1103
    Height = 44
    Margins.Top = 1
    AutoStyle = False
    Images = FrPrincipal.sysIcones16
    RowHeight = 40
    ButtonLayout = blGlyphTop
    ButtonWidth = 60
    ButtonHeight = 40
    ShowButtonCaptions = True
    TextOptions = ttoShowTextLabels
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdTop]
    BorderWidth = 0
    GradientColorStyle = gcsCustom
    GradientColorStop = 13948116
    TabOrder = 0
    VisualStyle = vsGradient
    ToolbarControls = (
      btnNew
      RzSpacer1
      btnEdit
      RzSpacer2
      btnError
      RzSpacer3
      Btn
      RzSpacer5
      btnCancel
      RzSpacer4
      btnExit)
    object btnNew: TRzToolButton
      Left = 4
      Top = 2
      Width = 100
      Height = 40
      ImageIndex = 13
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      Left = 112
      Top = 2
      Width = 114
      Height = 40
      DropDownMenu = PopupMenu1
      ImageIndex = 12
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      ToolStyle = tsDropDown
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      Left = 480
      Top = 2
      Width = 100
      Height = 40
      ImageIndex = 8
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actConsultar
    end
    object btnError: TRzToolButton
      Left = 234
      Top = 2
      Width = 114
      Height = 40
      DropDownMenu = PopupMenu2
      ImageIndex = 2
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      ToolStyle = tsDropDown
      Action = actPreVisualizar
    end
    object btnExit: TRzToolButton
      Left = 588
      Top = 2
      Width = 80
      Height = 40
      ImageIndex = 25
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actSair
    end
    object RzSpacer1: TRzSpacer
      Left = 104
      Top = 10
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 226
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 348
      Top = 10
      Width = 16
    end
    object RzSpacer4: TRzSpacer
      Left = 580
      Top = 10
    end
    object Btn: TRzToolButton
      Left = 364
      Top = 2
      Width = 100
      Height = 40
      ImageIndex = 1
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actEnviar
    end
    object RzSpacer5: TRzSpacer
      Left = 464
      Top = 10
      Width = 16
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 1105
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
    TabOrder = 1
    VisualStyle = vsGradient
    object lbTitulo: TLabel
      AlignWithMargins = True
      Left = 42
      Top = 2
      Width = 159
      Height = 30
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Emiss'#227'o de MDF-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 26
    end
    object Label14: TLabel
      AlignWithMargins = True
      Left = 214
      Top = 3
      Width = 192
      Height = 28
      Align = alLeft
      Caption = 'Emissor de manifestos eletr'#244'nicos.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
      ExplicitHeight = 15
    end
    object Bevel3: TBevel
      AlignWithMargins = True
      Left = 206
      Top = 3
      Width = 2
      Height = 28
      Align = alLeft
      ExplicitLeft = 263
    end
    object Image2: TImage
      AlignWithMargins = True
      Left = 3
      Top = 2
      Width = 32
      Height = 30
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      AutoSize = True
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF4000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
        000390494441545847ED97ED4F526118C6A9B5FE89FA567F4D5F5B5F7AD1A4AD
        B55ED66AC6C07C6BD9ACB4B46C16A21C34582158E10A91D0D499569668135094
        97F26566A0C89BA9B4ABF39C1E1D07483C9C5A7DE8B75D833D87735FD7CEFD3C
        F73892FF64E2F2EDA6BAD21ACDBC5095D430ABA5B59AC943ADADBB69A9DC28BF
        DBF2CCD2378499F9AF8254DDD88AB23BCD28A96DF6890A41020CDA9D104A2DD3
        8661C7246EA98DE2428809E0F27C466CE59BB810620310364214E712E2770420
        2487282B2BDB45CB67474C0043472F7ADE8E6ECADCFB0E45D54D28AE560FD2F2
        D9C935806D60184F3AFBD3A47CF40225B735765A3E3BB906F815A416A949CB67
        E79F0B108DAD641C3C5B89DCB381E80076E7146E36E80589DCB381E80062F9EB
        01064627D0D6FDC643CB67273500F92EAF6ADC969207D1062480A96F789A96CF
        4E6A80F544027176AA6D4789EFDFE1989D84B2F73164869B38AD2DC779DD3514
        E9EFC68FA92E1DA0165B936B0BC22B51549A1B38D35BDD0DD08E186174B6B39F
        6DA879A5C2C9E6E2B854A3789FA7B9B0875A65263540FF0707AE2BF519F5BCF7
        03DE8E79D133E2C4396D05AE76D4C1ECB5C2EAEF4A93C567C3354BDDDA71B57C
        E148836C2FB54B2735C042308461A7274D769707815004C1E5282A9EDF4785E5
        1ECFD0117021B812C4787082B75E69AD5F9332451F2590ECA0967C84B680F49C
        3CF60ECF4B9E912FE4E7AE4F876778EB16AF0DA71E96C4F21B0B0F524B3EA901
        46C77D501BAD69B24FF8E1F2CDA1CACC703D4F3621FA5500A2BA3E35A4CC650B
        B5E4931AC0FD690E4F6D8369F2CE2CC03F17C0C5C795D0DA8D5CE1B18013BE65
        3FA7D0B765EEFEF06A78736D7CD1CDFDAE75EC190AD48A456AC947680BCE68AF
        C0E068E70A7F8D07E86A66226B11EE7726B719794DB2756AC94768804B861BD0
        B1478E1476B11B6E3A32CB29BC1AE1AE47D7A29B6B534BDE9F4FC06182542D5F
        A2967C8406A87FA5434D8F8A2B9CACADF6C0BD7E0627348A2E6AC947688091CF
        2E9CD55D6177F7F64E41273B0F4EEB4A63C754B2C3D4920F09B0DD1713EFEC17
        7866E651DC7607D7ADF53C23D28E657603BA97A678EB55DDCA4401A39860FFA8
        EEA4967C84BC9AE93B5FC76D438E44FBC050E2544B396EBCBCCF9DF364C34DF9
        BA50DDA55C3FCE28424755F2FDD4EEF741C6AB94518C902143CEB99E3D6A2677
        070C6326B6E71AF6B494C70A18F978DE83C27DF4963F003B5EC9843BC1282C05
        4D8AC57C952C41CE3BD970A4E7FCC72E91FC00D282002580A537120000000049
        454E44AE426082}
      ExplicitHeight = 32
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 39
    Width = 1103
    Height = 61
    Align = alTop
    Caption = 'Filtrar MDF-e'
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 16
      Width = 49
      Height = 14
      Caption = 'Emitente'
    end
    object cbEmitente: TJvDBSearchComboBox
      Left = 7
      Top = 31
      Width = 450
      Height = 22
      DataField = 'EMP_RAZAO'
      DataSource = dsEmitentes
      Style = csDropDownList
      TabOrder = 0
      Text = ''
    end
    object DataIni: TJvDateEdit
      Left = 463
      Top = 31
      Width = 95
      Height = 22
      ShowNullDate = False
      TabOrder = 1
    end
    object Datafim: TJvDateEdit
      Left = 564
      Top = 31
      Width = 95
      Height = 22
      ShowNullDate = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 665
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 154
    Width = 1103
    Height = 394
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = dsQuery
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = eGridDrawColumnCell
    AutoAppend = False
    ScrollBars = ssVertical
    ShowCellHint = True
    AutoSizeColumns = True
    AutoSizeColumnIndex = 5
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 18
    Columns = <
      item
        Expanded = False
        FieldName = 'MD_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MD_SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'S'#233'rie'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MD_DH_EMISSAO'
        Title.Caption = 'Data Emissao'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MD_DH_INICIO_VIAGEM'
        Title.Caption = 'Data Saida'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MD_STATUS'
        Title.Caption = 'Status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MD_SEF_CHAVE'
        Title.Caption = 'Chave'
        Width = 608
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object Query: TFDQuery
    AfterPost = QueryAfterPost
    BeforeDelete = QueryBeforeDelete
    OnNewRecord = QueryNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000700')
    Left = 168
    Top = 214
    object QueryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_EMP: TIntegerField
      FieldName = 'ID_EMP'
      Origin = 'ID_EMP'
    end
    object QueryMD_TIP_AMBIENTE: TIntegerField
      FieldName = 'MD_TIP_AMBIENTE'
      Origin = 'MD_TIP_AMBIENTE'
    end
    object QueryMD_TIP_EMITENTE: TIntegerField
      FieldName = 'MD_TIP_EMITENTE'
      Origin = 'MD_TIP_EMITENTE'
    end
    object QueryMD_TIP_TRANSPORTADOR: TIntegerField
      FieldName = 'MD_TIP_TRANSPORTADOR'
      Origin = 'MD_TIP_TRANSPORTADOR'
    end
    object QueryMD_TIP_MODAL: TIntegerField
      FieldName = 'MD_TIP_MODAL'
      Origin = 'MD_TIP_MODAL'
    end
    object QueryMD_TIP_EMISSAO: TIntegerField
      FieldName = 'MD_TIP_EMISSAO'
      Origin = 'MD_TIP_EMISSAO'
    end
    object QueryMD_TIP_APLICATIVO: TIntegerField
      FieldName = 'MD_TIP_APLICATIVO'
      Origin = 'MD_TIP_APLICATIVO'
    end
    object QueryMD_MODELO: TIntegerField
      FieldName = 'MD_MODELO'
      Origin = 'MD_MODELO'
    end
    object QueryMD_NUMERO: TIntegerField
      Alignment = taCenter
      FieldName = 'MD_NUMERO'
      Origin = 'MD_NUMERO'
      DisplayFormat = '000,000'
    end
    object QueryMD_SERIE: TIntegerField
      Alignment = taCenter
      FieldName = 'MD_SERIE'
      Origin = 'MD_SERIE'
      DisplayFormat = '000'
    end
    object QueryMD_LOTE: TIntegerField
      Alignment = taCenter
      FieldName = 'MD_LOTE'
      Origin = 'MD_LOTE'
    end
    object QueryMD_COD_SEGURANCA: TStringField
      FieldName = 'MD_COD_SEGURANCA'
      Origin = 'MD_COD_SEGURANCA'
      Size = 10
    end
    object QueryMD_COD_DIVISOR: TIntegerField
      FieldName = 'MD_COD_DIVISOR'
      Origin = 'MD_COD_DIVISOR'
    end
    object QueryMD_DH_EMISSAO: TSQLTimeStampField
      FieldName = 'MD_DH_EMISSAO'
      Origin = 'MD_DH_EMISSAO'
      EditMask = '!99/99/0000 !90:00:00;1;_'
    end
    object QueryMD_DH_INICIO_VIAGEM: TSQLTimeStampField
      FieldName = 'MD_DH_INICIO_VIAGEM'
      Origin = 'MD_DH_INICIO_VIAGEM'
      EditMask = '!99/99/0000 !90:00:00;1;_'
    end
    object QueryMD_VER_APLICATIVO: TStringField
      FieldName = 'MD_VER_APLICATIVO'
      Origin = 'MD_VER_APLICATIVO'
      Size = 25
    end
    object QueryMD_COD_MUNICIPIO: TStringField
      FieldName = 'MD_COD_MUNICIPIO'
      Origin = 'MD_COD_MUNICIPIO'
      Size = 10
    end
    object QueryMD_NOM_MUNICIPIO: TStringField
      FieldName = 'MD_NOM_MUNICIPIO'
      Origin = 'MD_NOM_MUNICIPIO'
      Size = 65
    end
    object QueryMD_UF_INICIAL: TStringField
      FieldName = 'MD_UF_INICIAL'
      Origin = 'MD_UF_INICIAL'
      FixedChar = True
      Size = 2
    end
    object QueryMD_UF_FINAL: TStringField
      FieldName = 'MD_UF_FINAL'
      Origin = 'MD_UF_FINAL'
      FixedChar = True
      Size = 2
    end
    object QueryMD_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'MD_STATUS'
      Origin = 'MD_STATUS'
      OnGetText = QueryMD_STATUSGetText
    end
    object QueryMD_VLR_CARGA: TFMTBCDField
      FieldName = 'MD_VLR_CARGA'
      Origin = 'MD_VLR_CARGA'
      Precision = 18
      Size = 2
    end
    object QueryMD_COD_UNIDADE: TIntegerField
      FieldName = 'MD_COD_UNIDADE'
      Origin = 'MD_COD_UNIDADE'
    end
    object QueryMD_QTD_CARGA: TFMTBCDField
      FieldName = 'MD_QTD_CARGA'
      Origin = 'MD_QTD_CARGA'
      Precision = 18
      Size = 2
    end
    object QueryMD_INF_COMPLEMENTARES: TStringField
      FieldName = 'MD_INF_COMPLEMENTARES'
      Origin = 'MD_INF_COMPLEMENTARES'
      Size = 1000
    end
    object QueryMD_SEF_CSTAT: TIntegerField
      FieldName = 'MD_SEF_CSTAT'
      Origin = 'MD_SEF_CSTAT'
    end
    object QueryMD_INF_FISCO: TStringField
      FieldName = 'MD_INF_FISCO'
      Origin = 'MD_INF_FISCO'
      Size = 1000
    end
    object QueryMD_SEF_RECIBO: TStringField
      FieldName = 'MD_SEF_RECIBO'
      Origin = 'MD_SEF_RECIBO'
      Size = 25
    end
    object QueryMD_SEF_PROTOCOLO: TStringField
      FieldName = 'MD_SEF_PROTOCOLO'
      Origin = 'MD_SEF_PROTOCOLO'
      Size = 25
    end
    object QueryMD_SEF_CHAVE: TStringField
      FieldName = 'MD_SEF_CHAVE'
      Origin = 'MD_SEF_CHAVE'
      Size = 50
    end
    object QueryMD_SEF_XML: TMemoField
      FieldName = 'MD_SEF_XML'
      Origin = 'MD_SEF_XML'
      BlobType = ftMemo
    end
    object QueryMD_SEF_CAN_CHAVE: TStringField
      FieldName = 'MD_SEF_CAN_CHAVE'
      Origin = 'MD_SEF_CAN_CHAVE'
      Size = 50
    end
    object QueryMD_SEF_CAN_RECIBO: TStringField
      FieldName = 'MD_SEF_CAN_RECIBO'
      Origin = 'MD_SEF_CAN_RECIBO'
      Size = 25
    end
    object QueryMD_SEF_CAN_PROTOCOLO: TStringField
      FieldName = 'MD_SEF_CAN_PROTOCOLO'
      Origin = 'MD_SEF_CAN_PROTOCOLO'
      Size = 25
    end
    object QueryMD_SEF_ENC_PROTOCOLO: TStringField
      FieldName = 'MD_SEF_ENC_PROTOCOLO'
      Origin = 'MD_SEF_ENC_PROTOCOLO'
      Size = 25
    end
    object QueryMD_SEF_ENC_DATA: TDateField
      FieldName = 'MD_SEF_ENC_DATA'
      Origin = 'MD_SEF_ENC_DATA'
    end
    object QueryMD_SEF_ENC_COD_UF: TIntegerField
      FieldName = 'MD_SEF_ENC_COD_UF'
      Origin = 'MD_SEF_ENC_COD_UF'
    end
    object QueryMD_SEF_ENC_COD_MUNICIPIO: TIntegerField
      FieldName = 'MD_SEF_ENC_COD_MUNICIPIO'
      Origin = 'MD_SEF_ENC_COD_MUNICIPIO'
    end
    object QueryMD_SEF_SQ_EVENTO: TIntegerField
      FieldName = 'MD_SEF_SQ_EVENTO'
      Origin = 'MD_SEF_SQ_EVENTO'
    end
    object QueryMD_SEF_CAN_DATA: TDateField
      FieldName = 'MD_SEF_CAN_DATA'
      Origin = 'MD_SEF_CAN_DATA'
    end
    object QueryMD_SEF_CAN_EVT_XML: TMemoField
      FieldName = 'MD_SEF_CAN_EVT_XML'
      Origin = 'MD_SEF_CAN_EVT_XML'
      BlobType = ftMemo
    end
    object QueryMD_SEF_ENC_EVT_XML: TMemoField
      FieldName = 'MD_SEF_ENC_EVT_XML'
      Origin = 'MD_SEF_ENC_EVT_XML'
      BlobType = ftMemo
    end
  end
  object dsQuery: TJvDataSource
    DataSet = Query
    Left = 168
    Top = 244
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.sysIcones16
    Left = 197
    Top = 214
    StyleName = 'Platform Default'
    object actCadastrar: TAction
      Caption = 'Nova Emiss'#227'o'
      ImageIndex = 34
      OnExecute = actCadastrarExecute
      OnUpdate = actCadastrarUpdate
    end
    object actAlterar: TAction
      Caption = 'Outras Infos'
      ImageIndex = 14
      OnUpdate = actAlterarUpdate
    end
    object actPreVisualizar: TAction
      Caption = 'Visualizar'
      ImageIndex = 16
      OnExecute = actPreVisualizarExecute
      OnUpdate = actGravarUpdate
    end
    object actEnviar: TAction
      Caption = 'Enviar'
      OnExecute = actEnviarExecute
      OnUpdate = actEnviarUpdate
    end
    object actConsultar: TAction
      Caption = 'Consultar MDF-e'
      ImageIndex = 18
      OnExecute = actConsultarExecute
      OnUpdate = actAlterarUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 24
      OnExecute = actSairExecute
      OnUpdate = actCadastrarUpdate
    end
    object actPercurso: TAction
      Caption = 'Percurso'
      OnExecute = actPercursoExecute
      OnUpdate = actPercursoUpdate
    end
    object actDocumentos: TAction
      Caption = 'Documentos'
      ShortCut = 16452
      OnExecute = actDocumentosExecute
      OnUpdate = actPercursoUpdate
    end
    object actVeiculos: TAction
      Caption = 'Dados do Veiculo'
      ShortCut = 16470
      OnExecute = actVeiculosExecute
      OnUpdate = actPercursoUpdate
    end
    object actCabecalho: TAction
      Caption = 'Alterar Cabecalho'
      ShortCut = 16451
      OnExecute = actCabecalhoExecute
      OnUpdate = actPercursoUpdate
    end
    object actEncerrar: TAction
      Caption = 'Encerrar MDF-e'
      ShortCut = 16453
      OnExecute = actEncerrarExecute
      OnUpdate = actEncerrarUpdate
    end
    object actCancelar: TAction
      Caption = 'Cancelar MDF-e'
      OnExecute = actCancelarExecute
      OnUpdate = actCancelarUpdate
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
    end
    object actPrintCancel: TAction
      Caption = 'Imprimir Cancelado'
      OnExecute = actPrintCancelExecute
      OnUpdate = actPrintCancelUpdate
    end
    object actPrintEnceramento: TAction
      Caption = 'Imprimir Encerramento'
      OnExecute = actPrintEnceramentoExecute
      OnUpdate = actPrintEnceramentoUpdate
    end
  end
  object QueryEmitente: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    EMP_RAZAO,'
      '    EMP_FANTASIA,'
      '    EMP_CNPJ,'
      '    EMP_IESTADUAL,'
      '    EMP_UF,'
      '    EMP_CODIGO_UF,'
      '    EMP_ENDERECO,'
      '    EMP_NUMERO,'
      '    EMP_COMPLEMENTO,'
      '    EMP_BAIRRO,'
      '    EMP_CODIGO_CIDADE,'
      '    EMP_CIDADE,'
      '    EMP_CEP,'
      '    EMP_FONEFIXO,'
      '    EMP_EMAIL'
      'FROM'
      '    C000501')
    Left = 16
    Top = 176
    object QueryEmitenteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryEmitenteEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Origin = 'EMP_RAZAO'
      Required = True
      Size = 120
    end
    object QueryEmitenteEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Origin = 'EMP_FANTASIA'
      Required = True
      Size = 80
    end
    object QueryEmitenteEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      Origin = 'EMP_CNPJ'
      Required = True
      Size = 15
    end
    object QueryEmitenteEMP_IESTADUAL: TStringField
      FieldName = 'EMP_IESTADUAL'
      Origin = 'EMP_IESTADUAL'
      Size = 15
    end
    object QueryEmitenteEMP_UF: TStringField
      FieldName = 'EMP_UF'
      Origin = 'EMP_UF'
      FixedChar = True
      Size = 2
    end
    object QueryEmitenteEMP_CODIGO_UF: TIntegerField
      FieldName = 'EMP_CODIGO_UF'
      Origin = 'EMP_CODIGO_UF'
    end
    object QueryEmitenteEMP_ENDERECO: TStringField
      FieldName = 'EMP_ENDERECO'
      Origin = 'EMP_ENDERECO'
      Required = True
      Size = 120
    end
    object QueryEmitenteEMP_NUMERO: TIntegerField
      FieldName = 'EMP_NUMERO'
      Origin = 'EMP_NUMERO'
    end
    object QueryEmitenteEMP_COMPLEMENTO: TStringField
      FieldName = 'EMP_COMPLEMENTO'
      Origin = 'EMP_COMPLEMENTO'
      Size = 60
    end
    object QueryEmitenteEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      Origin = 'EMP_BAIRRO'
      Required = True
      Size = 60
    end
    object QueryEmitenteEMP_CODIGO_CIDADE: TIntegerField
      FieldName = 'EMP_CODIGO_CIDADE'
      Origin = 'EMP_CODIGO_CIDADE'
    end
    object QueryEmitenteEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      Origin = 'EMP_CIDADE'
      Required = True
      Size = 60
    end
    object QueryEmitenteEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      Origin = 'EMP_CEP'
      Required = True
      Size = 10
    end
    object QueryEmitenteEMP_FONEFIXO: TStringField
      FieldName = 'EMP_FONEFIXO'
      Origin = 'EMP_FONEFIXO'
      Size = 12
    end
    object QueryEmitenteEMP_EMAIL: TStringField
      FieldName = 'EMP_EMAIL'
      Origin = 'EMP_EMAIL'
      Size = 60
    end
  end
  object dsEmitentes: TDataSource
    AutoEdit = False
    DataSet = QueryEmitente
    Left = 51
    Top = 176
  end
  object ACBrMDFe1: TACBrMDFe
    OnStatusChange = ACBrMDFe1StatusChange
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DAMDFE = ACBrMDFeDAMDFeRL1
    Left = 168
    Top = 184
  end
  object ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrMDFe = ACBrMDFe1
    ImprimeHoraSaida = False
    TipoDAMDFe = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    Encerrado = False
    ImprimeDadosExtras = [deValorTotal, deRelacaoDFe]
    PrintDialog = True
    Left = 197
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 226
    Top = 184
    object AlterarCabecalho1: TMenuItem
      Action = actCabecalho
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Percurso1: TMenuItem
      Action = actPercurso
      ShortCut = 16464
    end
    object Documentos1: TMenuItem
      Action = actDocumentos
    end
    object DadosdoVeiculo1: TMenuItem
      Action = actVeiculos
    end
    object EncerrarMDFe2: TMenuItem
      Action = actEncerrar
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CancelarMDFe1: TMenuItem
      Action = actCancelar
      ShortCut = 16462
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 255
    Top = 184
    object ImprimirCancelado1: TMenuItem
      Action = actPrintCancel
    end
    object ImprimirEncerramento1: TMenuItem
      Action = actPrintEnceramento
    end
  end
end
