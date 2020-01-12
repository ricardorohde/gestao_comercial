object FrFiltro_Tabela_Precos: TFrFiltro_Tabela_Precos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  ClientHeight = 291
  ClientWidth = 265
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pnTitulo: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 261
    Height = 35
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    TabStop = True
    object Image1: TImage
      Left = 6
      Top = 6
      Width = 24
      Height = 24
      Hint = 'Sair'
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        48597300000B1300000B1301009A9C180000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A0000030A4944415478DAB5
        D55B4853611C00F0FF3973379B67EEAA68983AE725B169D3EAC50C150A1343C2
        30909E14A1F4414992F2610F1676C1611821F52828F9208966104AE24BA5A666
        306B4E6DE5659B9BEEA2BB79CEE96C45E61CEA31FBBFFCCF77BECBEF7CDFF9F8
        3E04684471436F8A2F7737166AF6DB07A10314DDE91BF5E59EBB17330F0CDC6A
        6A8B0106A3215863AD4D5AECCB72CCD81D74341C6FBC5F5FA9DF15A87FF44C29
        C4C29E9414E4F003EB9A3A35B1FE36A529F381755DAF86AC169BFD46D3CD8AB1
        3D81E80889BAAAEC52B6AFECDD24406FB0FBEB9ABB26FDB9B644E1CF311161C0
        0C41FDCFADED2F87170CA61ADA802F3A06B4D039A8DDD6EEDAF924B87C56F6A7
        FC4F40201238382DA04AD56A8C899684D7955F6106D6F91084EA519A2BDFF17F
        1F3E7FE1D52F98D65A5555D21D404D4D33D7C965C8A8E566F378EC0189348A7F
        263D05E8C4BB090D988C8B5687C39D47FD1637D789EBD4EA5A27525DFD984D0A
        508D402010863043102FC9E66A5779CC703E460B58B3DA402E70789988DB896F
        7A09CBEA9A05B110C7918ADBEAF44889F48DF2A442EC6B68B67A60F41B0EF109
        725AC0EC8C16328F3140C467F9CB631F27568CCB867CA4BCBE45191D257D9DA1
        483B14203F7509966CE1D03FAC5F5958345EF80FC032056014F03D3860B17BE0
        BDCE030989C9B48019ED349C8E638110FBB544E39353C1019C20A1EF83095026
        87DA92FB3B0B499204DCEB82C2531260A0C8EE801FC149D870E3B46610CA6650
        67E4D607ED0A1C460405DC1E0F984C2B4012C48106455014A46231B0D8ACE0C0
        C8E838982D66100AB06DD3DD4FF896D5B26A03B1480499CA8CE0806E760E7473
        B3909B9D0569C949B480A9E92F30383C02B2B87890C5C76D01D7EB1E443231EC
        73C689341182A0E07239218C8BC0D5C273B4808EDEB7607792C0E170A95D4550
        C027F3BACB9DEA5F87CA869602268A9691D4BE64305061962231A7AC288F4D07
        68EF19708F4C7E1DC271C2421DA104E1F1B63FBD57D31FF43EC08EF006638F46
        78E800F33F0C2CDBBA2377CFFB40A56A0B75F1507A67F5EFE038088D4A55B9F1
        F7BB9F2B18965A0C28B6060000000049454E44AE426082}
      ShowHint = True
    end
    object RzLabel1: TRzLabel
      Left = 36
      Top = 7
      Width = 121
      Height = 21
      Caption = 'Tabelas de Pre'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 2000
    end
    object imgSair: TImage
      AlignWithMargins = True
      Left = 226
      Top = 2
      Width = 32
      Height = 30
      Cursor = crHandPoint
      Margins.Top = 2
      Align = alRight
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF40000000473424954080808087C0864880000000970
        485973000001FA000001FA01178A446F0000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A0000019C4944415478DAED
        97B94AC4501486934A10ED14112B1B8BF1112C7C16C768212E338AE0D6A928E2
        2EE2129DF1512C7C05AD2CAC04C5CE05ACE27799736188934C9C9C108B09FC1C
        26E7DCFCDFDCE46EAE93F3E5FE3B8020080609A3A84FD9EB05DDBAAEFB140980
        F934611F3DA33765801ED48F4A409CFD02C07C88708F2628B85136B71E63840B
        54C0E3310C5024AC9318C8C2BCCEC7F4EE2A3ED5304059FE7D21638007828FCF
        411BE04F00E4BBC9BD273489AC6D09805C97531B213BE44F9B989BA1BC8886A9
        FDD0EC01334A7CB446CD5644CD32610379F62B570308419861B41D616E9E5189
        7946BA8FB01104F796089BCDCC5500A4769C708956E419C67C92B6D709DAEA0C
        43EA4B843DF9394FBBA384EDD4008AD20B8EFCFB4AC2762AAF60D6A9AD9A9EDC
        BA4265DA9E640E40DD9C74BD67574D59E57C7915C79901C87BDF95BA6A286721
        16E2BE87341351924926729E4805D0E2546C361D9F9A3D90DF62A479B501E200
        72DF94DA6DF90CC9F38CCCA708874EA36DB914D883C92BFA56F6EF40BD4ED4C1
        A40EC21CCD4650A732C017BA8B3D9AE571E50EF003EDFA6A30E870E142000000
        0049454E44AE426082}
      OnClick = imgSairClick
      ExplicitLeft = 572
      ExplicitTop = 3
      ExplicitHeight = 32
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 253
    Width = 261
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    CaptionCancel = 'Cancelar'
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = 8404992
    TabOrder = 1
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 39
    Width = 261
    Height = 212
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 339
      Top = 213
      Width = 4
      Height = 15
      Caption = '-'
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 2
      Width = 82
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      Caption = 'Tabela de Pre'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 86
      Width = 42
      Height = 13
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 0
      Caption = 'Listagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object eChkProduto: TRzCheckBox
      AlignWithMargins = True
      Left = 3
      Top = 127
      Width = 108
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      Caption = 'Todos os Produtos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
      OnClick = eChkProdutoClick
    end
    object eCodigoIni: TRzSpinEdit
      Left = 3
      Top = 146
      Width = 124
      Height = 21
      AllowKeyEdit = True
      Max = 999999.000000000000000000
      Min = 1.000000000000000000
      Value = 1.000000000000000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object eCodigoFim: TRzSpinEdit
      Left = 131
      Top = 146
      Width = 127
      Height = 21
      AllowKeyEdit = True
      Max = 999999.000000000000000000
      Min = 1.000000000000000000
      Value = 1.000000000000000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object eTabela: TJvDBSearchComboBox
      AlignWithMargins = True
      Left = 3
      Top = 17
      Width = 255
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      DataField = 'PRC_DESCRICAO'
      DataSource = dsTabela
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = ''
    end
    object eExibirCusto: TRadioGroup
      Left = 2
      Top = 171
      Width = 256
      Height = 36
      Caption = 'Exibir valor de custo.'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentFont = False
      TabOrder = 5
    end
    object cb_listagem: TComboBox
      AlignWithMargins = True
      Left = 3
      Top = 101
      Width = 255
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'Por Grupos'
      OnChange = cb_listagemChange
      Items.Strings = (
        'Por Grupos'
        'Por Descri'#231#227'o'
        'Por C'#243'digo Interno')
    end
    object pn_grupos: TRzPanel
      AlignWithMargins = True
      Left = 3
      Top = 40
      Width = 257
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      BorderOuter = fsNone
      Color = clWindow
      TabOrder = 1
      object eGrupo: TRzButtonEdit
        AlignWithMargins = True
        Left = 0
        Top = 21
        Width = 255
        Height = 21
        Margins.Left = 0
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 0
        Text = ''
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'F2 - Selecione o Grupo'
        TextHintVisibleOnFocus = True
        OnEnter = eGrupoEnter
        OnExit = eGrupoExit
        AllowKeyEdit = False
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = SelecioanrGrupo1Click
      end
      object eChkGrupos: TRzCheckBox
        AlignWithMargins = True
        Left = 0
        Top = 2
        Width = 99
        Height = 15
        Margins.Left = 0
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Caption = 'Todos os Grupos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 1
        OnClick = eChkGruposClick
      end
    end
  end
  object tbDados: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.ID,'
      '   T1.PRD_CODIGO,'
      '   T1.PRD_CODIGO_BRR,'
      '   T1.PRD_VLR_CUSTO,'
      '   T1.PRD_DESCRICAO,'
      '   T1.PRD_UNIDADE,'
      '   T1.PRD_NCM,'
      '   COALESCE(T2.PRC_VLR_VENDA,0) AS PRC_VLR_VENDA,'
      '   T3.GRP_DESCRICAO AS PRD_GRUPO,'
      '   T4.QTDE_ATUAL'
      'FROM'
      '   C000405 AS T1'
      'INNER JOIN'
      '   C000304 AS T2'
      'ON'
      '   T1.ID = T2.ID_PRODUTO'
      'AND'
      '   T2.ID_TABELA = :ID_TABELA'
      'JOIN'
      '   C000402 AS T3'
      'ON'
      '   T1.ID_GRUPO = T3.ID'
      'JOIN'
      '   C000406 AS T4'
      'ON'
      '   T4.ID_PRODUTO = T1.ID'
      'WHERE'
      '   T1.ID_EMPRESA = :ID_EMPRESA'
      ''
      '')
    Left = 4
    Top = 257
    ParamData = <
      item
        Name = 'ID_TABELA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object tbDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDadosPRD_CODIGO: TIntegerField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosPRD_CODIGO_BRR: TStringField
      FieldName = 'PRD_CODIGO_BRR'
      Origin = 'PRD_CODIGO_BRR'
      Size = 15
    end
    object tbDadosPRD_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_GRUPO'
      Origin = 'GRP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object tbDadosPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      Size = 120
    end
    object tbDadosPRD_UNIDADE: TStringField
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      Size = 3
    end
    object tbDadosPRD_NCM: TStringField
      FieldName = 'PRD_NCM'
      Origin = 'PRD_NCM'
      Size = 8
    end
    object tbDadosPRD_VLR_CUSTO: TBCDField
      FieldName = 'PRD_VLR_CUSTO'
      Origin = 'PRD_VLR_CUSTO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object tbDadosPRC_VLR_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRC_VLR_VENDA'
      Origin = 'PRC_VLR_VENDA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object tbDadosQTDE_ATUAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE_ATUAL'
      Origin = 'QTDE_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0,00'
      Precision = 18
    end
  end
  object Pop00: TPopupMenu
    AutoPopup = False
    Left = 36
    Top = 257
    object SelecioanrGrupo1: TMenuItem
      Caption = 'Selecioanr Grupo'
      ShortCut = 113
      OnClick = SelecioanrGrupo1Click
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
  object tbTabela: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT '
      '   ID,'
      '   PRC_DESCRICAO'
      'FROM'
      '   C000303'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   PRC_DESCRICAO ASC')
    Left = 66
    Top = 257
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsTabela: TJvDataSource
    AutoEdit = False
    DataSet = tbTabela
    Left = 96
    Top = 257
  end
end
