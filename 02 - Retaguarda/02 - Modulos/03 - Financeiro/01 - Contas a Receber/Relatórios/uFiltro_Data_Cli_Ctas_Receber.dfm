object FrFiltro_Data_Cli_Ctas_Receber: TFrFiltro_Data_Cli_Ctas_Receber
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrFiltro_Data_Cli_Ctas_Receber'
  ClientHeight = 162
  ClientWidth = 367
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 363
    Height = 84
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 43
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 6
      Top = 1
      Width = 47
      Height = 13
      Caption = 'Agrupado'
    end
    object Label1: TLabel
      Left = 178
      Top = 1
      Width = 36
      Height = 13
      Caption = 'Per'#237'odo'
    end
    object Label4: TLabel
      Left = 265
      Top = 20
      Width = 4
      Height = 13
      Caption = '-'
    end
    object eCliente: TRzButtonEdit
      AlignWithMargins = True
      Left = 6
      Top = 58
      Width = 350
      Height = 21
      Margins.Left = 6
      Margins.Top = 2
      Margins.Right = 6
      Margins.Bottom = 2
      Text = ''
      DisabledColor = clWindow
      Enabled = False
      TabOrder = 3
      TextHint = 'F2 - Selecione o Cliente'
      TextHintVisibleOnFocus = True
      AllowKeyEdit = False
      ButtonShortCut = 113
      AltBtnWidth = 15
      ButtonWidth = 18
      OnButtonClick = SelecionarCliente1Click
    end
    object eAgrupado: TJvComboBox
      Left = 6
      Top = 16
      Width = 166
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Text = 'Por Data de Vencto'
      OnChange = eAgrupadoChange
      Items.Strings = (
        'Por Data de Vencto'
        'Por Cliente'
        'Filtrar Por Cliente')
      ItemIndex = 0
    end
    object eDataIni: TJvDateEdit
      Left = 178
      Top = 16
      Width = 85
      Height = 21
      ShowNullDate = False
      TabOrder = 1
      OnExit = eDataIniExit
    end
    object eDataFim: TJvDateEdit
      Left = 271
      Top = 16
      Width = 85
      Height = 21
      ShowNullDate = False
      TabOrder = 2
      OnExit = eDataIniExit
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 124
    Width = 363
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
    GradientColorStyle = gcsCustom
    GradientColorStart = 12615680
    GradientColorStop = 8404992
    TabOrder = 1
    VisualStyle = vsGradient
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 363
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
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    GradientColorStart = clSilver
    GradientColorStop = 3815994
    ParentFont = False
    TabOrder = 2
    VisualStyle = vsGradient
    object Label9: TLabel
      Left = 46
      Top = 4
      Width = 164
      Height = 25
      Caption = 'Contas a Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image2: TImage
      Left = 6
      Top = 1
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000007
        E94944415478DAC5576B4C5BF7153FF77D7DFD041BDB24C6104248789492264D
        615B926E21134154D5A6F5C3A4565534B50D68DFA676DD34694A17B22F9BF6A1
        D3AA286937EDD39469EBB62813C4240B4B9646691642020D28BCC1806D6C1E7E
        5C5FDF8777FED7C096AA291AA9B62324907DEFFDFFCEEF71CE8582FF73515FC4
        43DEFB51CB2E5DCFB7F31CDB42015593CF1B0EC3C85B28864A33341D37F2F901
        35A786289EB9D0793214FDC200FCEA0747EB398E7E4FD3F5669FA7482B0F9408
        2E871504810396A141CD69202B39482CA76062262A2FAFA43986A5CFE732D9EF
        7DF7677D0B4F04E0976F1F696559FA4F0D7BCAB9DAEA204DD314288A0AAAA601
        760FC802D0140DF805203326A84C3607FD43E3EAE4742C6980DED471AAF7E196
        009C7FE9256669F74AFCF9E67A67A0D40D195981544A063CF6B1F7D014054EA7
        15C1700484F1E061F8FA6BEF741FDE128077DF3E52CDD2D4F0CBDF3C4C910E17
        975640D78C4DEF13451E9C762B2C2656A1A7AF5F79FD2797C42D0138F3FD9620
        25309395411FD5B4B71A74C38064320339A4FFB348C0E641E079B0DB24F3DADE
        EB03104FA4B4374EF5705B066070F4A8DB65E3D0E1505B1580B2520FB02CF36F
        0FE041C41784210E3D40649A0CC76068641A4A8A1D30BB10974F9C0A495B0270
        F6AD961A95A5865EFEC6216A7C7A0146C6E760099D5EE27682135320A2E13804
        9353310559C54C012600FCBE22132C61A4F7DA3DBDE3742FBB650674869AACDF
        13A4F6D5579A9F910E63A8ED0A91C24C830E3CCF8105C138ED12783D4E9309C2
        0E916021BAAC759C0E3D99047649E048EE1B6A2AC05D64FFDC7B885491E812DC
        199A0086A120165F7D520960F0DB2F1EA20747A660642C8CDDB210F0BBA108A3
        268A0230A87F16734FB24F58999D8F23030CD45507C1EDB4C15FAFF66B9D9B31
        103AD3E2A4F3AC47630C974151A93C4525DABED31D2B480093070FD4529804D3
        D90BD85D7471C53C2C9B5341231220E5440297C3067EAF0B3C683E0A0DF08FDB
        C3303A39AF777EDA03B7CFECE3E254C98B9CC0BD62E8FA4143375C34C32A2CC3
        E2A8D7194355398AA6148A66EFCF4794FD8A4233B5556550B3ABCC34DD669545
        6FFCF3FE18CC2358F44CB6A32B64D900D073AEF5EB78D06F7941B497062BA492
        D200D81C4540E34CCFA37E04398956269D84C58530CC4D4F4136B58A14F33037
        9782ED487F00A3684A805D330CB3268162B2328D1144DD610732B66B871FBAAF
        DECD2100C104D073B6F5058666CFD71F68167DDB8338D572A0AA32FE56D03C38
        E1F285E942510C302C468CB300CB89B0925884FBB7AE83C3E2C28E983509D26B
        3B41377D6111782046F57B8B20B8CD03924580BB9F4CC0C0271346E7E9CB8C09
        E0CA072F8CD6EE7F6EA72F508E114A81924D6E4A278B202C121E9C4AC247A18B
        F05C6393B97C3EAF481F23E361E81F9C4080AAD2D1D55B18C5977FDDAE3DDD7C
        88717B4B41919390CBA53605C0B00248D662049C85BE8B7F049BE887E076BF99
        7932FDD64B4143AEACA204F38B303D1B030E5969AC2987AB1F0D2927BA420500
        A1F78F291C2FF28DCD87C059ECC13D2EA30419D0757583FE8D8319CEA49F17AC
        90CD6460E0E6DF21955C05252341649180D74CEAF145C44C83AE1B6093443305
        15012F6CF715C330B270ABFFA18193905903D096A9AA6BB44C8E0C9A00BCE803
        2F9A90E305DC2D069A4F4703D0F84303A603E20B73109D9B85D8DC0C9455ED81
        99D111ECAA11178E6876AC2008552D00B1F00430BBD1402CBE02576E0C129FE4
        7012164C78E96CABB6EFE011C6EE2C82F0D41844C333B0BA14C72E2D2058447C
        008F8654916E05BB4E83647340C9B600047654E1F7125CF9F077D85925946DF3
        3F42FF7A6908662692302520116CACAD808F0746332881B500E0DC31D5E32B65
        1BBFF4BC193752A4D334529BCB65F1012A52CF9A8C58ED7613D07A8D3F1884B1
        07F72016A531721A3870E592BD6F4E424C038921D9134EFCBCA2CC0BBB776E37
        41DCB83D3CFCDA3B3D356B00DA64BBD325B22C0BBB9E7A06652886CDDED63208
        6E62640812B10868C84C63ED5E20AF03C4700A0256D5B5652472660C05FC9B14
        D98ADD7D776445D55FEDEC0AFDBE00E0FD63B903878F724BB1284C8D0E238D8C
        49B10325112409F73C67D2AF646590D3297310C9A9146CABD80995350D70EDE2
        1FA0AEEA2970381C8F059C4A6761786C567B303AAB439E7AF344D7A57761BD4D
        E281B2CA6A66CFDE67917A0396E21148442328C10AC612D380438561D724C043
        5CEE1270FB4A4D6091F034DCBB790DA6C2BA260992EC29B6F1560BCE42341E31
        64322567169792862C2B1CBEA07C98D7E0E41B3FBD34BC0E6C3D05328F33D81B
        0842556DC3231A3F76A8E0589E1D7F68EA8F26D35653EADEC8825191A7A93A7C
        012D41337A744D5BC013E6D056F74456BB79FC645FF6D3CF290CA20FDA230D4D
        5FF18627C7CD88B97D7E94A00CECAE2210D1E564FCAA684645460930054482D8
        5C18D36087DD8DFBE1D6951E836379F7578FFF797953E49F09E05CFB2F1CEEE2
        13CF1C3C229298115A13D1853509E48D8B0B292848406685B3D80DC3773FD6E6
        A7266E7DEDF8852FFFB7876F00F8CB9976C9CAE57B2D36FBD375FB9A244791FB
        D11CA3BD4942FEB3E4741A46066E6711685CD1B4A6B6D7BB67B70C80D4DF7E7C
        98D5CAA537D1A13F94AC76F0058292DD554C8B168BD9399905642624979790FE
        D9140E2A7C9BA17EA3F0FA5B6DAF74AF6EE5F04700ACD78D9F7FCB92B4A75A59
        8669A318FA59FC17CB8F1BD98657CAB8ED12792A7F47CBA93DB4A05D38FAEAE5
        F8560F7E2C80FF75FD0BE297D24EC17928FD0000000049454E44AE426082}
    end
  end
  object tbDados: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      
        '   CASE T1.REC_STATUS -- EXIBE A QUANTIDADE DE DIAS A VENCER OU ' +
        'VENCIDO'
      '      WHEN 90 THEN IIF(CURRENT_DATE > T1.REC_VENCIMENTO'
      
        '                      ,DATEDIFF(DAY, T1.REC_VENCIMENTO, CURRENT_' +
        'DATE)'
      '                      ,0'
      '                   )'
      '      WHEN 91 THEN 0'
      '      WHEN 92 THEN 0'
      '   END AS REC_DIAS_VENCIDOS,'
      ''
      
        '   CASE T1.REC_STATUS -- EXIBE O STATUS EM QUE SE ENCONTRA A PAR' +
        'CELA'
      '      WHEN 90 THEN IIF(CURRENT_DATE > T1.REC_VENCIMENTO'
      '                      ,'#39'Em Atraso'#39
      '                      ,'#39'A Vencer'#39
      '                   )'
      '      WHEN 91 THEN '#39'Quitada'#39
      '   END AS REC_STATUS_TEXTO,'
      '   T2.ID AS ID_C10,'
      '   T1.ID AS ID_C11,'
      '   T1.ID_C000110,'
      '   T1.REC_PARCELA,'
      '   CAST(T2.REC_DATA_REGISTRO AS DATE) AS REC_DATA_REGISTRO,'
      '   T1.REC_VENCIMENTO,'
      '   T1.REC_DOCUMENTO,'
      '   CAST(T1.REC_VALOR AS FLOAT) AS REC_VALOR,'
      '   CAST(T1.REC_VLR_ATUALIZADO AS FLOAT) AS REC_VLR_ATUALIZADO,'
      '   CAST(T1.REC_VLR_RECEBIDO AS FLOAT) AS REC_VLR_RECEBIDO,'
      '   CAST(T1.REC_VLR_SALDO AS FLOAT) AS REC_VLR_SALDO,'
      '   T1.REC_ANOTACOES,'
      
        '   CASE T1.REC_STATUS -- EXIBE A QUANTIDADE DE DIAS A VENCER OU ' +
        'VENCIDO'
      '      WHEN 90 THEN IIF(CURRENT_DATE > T1.REC_VENCIMENTO'
      '                      ,92'
      '                      ,90'
      '                   )'
      '      WHEN 91 THEN 91'
      '   END AS REC_STATUS,'
      '   T2.REC_ORIGEM,'
      '   T2.REC_CLIENTE'
      ''
      'FROM'
      '   C000111 AS T1'
      'INNER JOIN'
      '   C000110 AS T2'
      'ON'
      '   T2.ID = T1.ID_C000110'
      'WHERE'
      '   T2.ID_EMPRESA = :ID_EMPRESA'
      'AND '
      '   T1.REC_VENCIMENTO BETWEEN :A_DATA AND :B_DATA')
    Left = 6
    Top = 128
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'A_DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = 43101d
      end
      item
        Name = 'B_DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end>
    object tbDadosID_C10: TIntegerField
      FieldName = 'ID_C10'
      Origin = 'ID_C10'
      Required = True
    end
    object tbDadosID_C11: TIntegerField
      FieldName = 'ID_C11'
      Origin = 'ID_C11'
      Required = True
    end
    object tbDadosID_C000110: TIntegerField
      FieldName = 'ID_C000110'
      Origin = 'ID_C000110'
    end
    object tbDadosREC_PARCELA: TIntegerField
      FieldName = 'REC_PARCELA'
      Origin = 'REC_PARCELA'
      DisplayFormat = '00'
    end
    object tbDadosREC_VENCIMENTO: TDateField
      FieldName = 'REC_VENCIMENTO'
      Origin = 'REC_VENCIMENTO'
    end
    object tbDadosREC_DOCUMENTO: TStringField
      FieldName = 'REC_DOCUMENTO'
      Origin = 'REC_DOCUMENTO'
      Size = 25
    end
    object tbDadosREC_ANOTACOES: TStringField
      FieldName = 'REC_ANOTACOES'
      Origin = 'REC_ANOTACOES'
      Size = 120
    end
    object tbDadosREC_STATUS: TIntegerField
      FieldName = 'REC_STATUS'
      Origin = 'REC_STATUS'
    end
    object tbDadosREC_ORIGEM: TIntegerField
      FieldName = 'REC_ORIGEM'
      Origin = 'REC_ORIGEM'
    end
    object tbDadosREC_CLIENTE: TStringField
      FieldName = 'REC_CLIENTE'
      Origin = 'REC_CLIENTE'
      Size = 120
    end
    object tbDadosREC_DIAS_VENCIDOS: TLargeintField
      FieldName = 'REC_DIAS_VENCIDOS'
      Origin = 'REC_DIAS_VENCIDOS'
      DisplayFormat = '00'
    end
    object tbDadosREC_STATUS_TEXTO: TStringField
      FieldName = 'REC_STATUS_TEXTO'
      Origin = 'REC_STATUS_TEXTO'
      FixedChar = True
      Size = 9
    end
    object tbDadosREC_DATA_REGISTRO: TDateField
      FieldName = 'REC_DATA_REGISTRO'
      Origin = 'REC_DATA_REGISTRO'
    end
    object tbDadosREC_VALOR: TSingleField
      FieldName = 'REC_VALOR'
      Origin = 'REC_VALOR'
      DisplayFormat = ',0.00'
    end
    object tbDadosREC_VLR_ATUALIZADO: TSingleField
      FieldName = 'REC_VLR_ATUALIZADO'
      Origin = 'REC_VLR_ATUALIZADO'
      DisplayFormat = ',0.00'
    end
    object tbDadosREC_VLR_RECEBIDO: TSingleField
      FieldName = 'REC_VLR_RECEBIDO'
      Origin = 'REC_VLR_RECEBIDO'
      DisplayFormat = ',0.00'
    end
    object tbDadosREC_VLR_SALDO: TSingleField
      FieldName = 'REC_VLR_SALDO'
      Origin = 'REC_VLR_SALDO'
      DisplayFormat = ',0.00'
    end
  end
  object Pop00: TPopupMenu
    AutoPopup = False
    Left = 38
    Top = 128
    object SelecionarCliente1: TMenuItem
      Caption = 'Selecionar Cliente'
      ShortCut = 113
      OnClick = SelecionarCliente1Click
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
