object FrcontasReceberAlteraLancto: TFrcontasReceberAlteraLancto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrcontasReceberAlteraLancto'
  ClientHeight = 121
  ClientWidth = 586
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn_bottom: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 83
    Width = 582
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = pn_bottomClickOk
    Color = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GradientColorStart = 12615680
    GradientColorStop = 8404992
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
  end
  object pn_meio: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 582
    Height = 43
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 202
      Top = 1
      Width = 51
      Height = 13
      Caption = 'Anota'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 1
      Width = 88
      Height = 13
      Caption = 'Dt. do Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 98
      Top = 1
      Width = 77
      Height = 13
      Caption = 'Valor da Parcela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object eHistorico: TDBEdit
      Left = 202
      Top = 16
      Width = 373
      Height = 21
      DataField = 'REC_ANOTACOES'
      DataSource = dsDados
      TabOrder = 2
    end
    object eDataVencto: TJvDBDateEdit
      Left = 4
      Top = 16
      Width = 88
      Height = 21
      MinDate = 36526.000000000000000000
      DataField = 'REC_VENCIMENTO'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ButtonWidth = 18
      ParentFont = False
      ShowNullDate = False
      TabOrder = 0
      OnEnter = eDataVenctoEnter
      OnExit = eDataVenctoExit
    end
    object eValor: TJvDBCalcEdit
      Left = 98
      Top = 16
      Width = 98
      Height = 21
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ButtonWidth = 18
      ParentFont = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = True
      OnEnter = eDataVenctoEnter
      OnExit = eDataVenctoExit
      DataField = 'REC_VALOR'
      DataSource = dsDados
    end
  end
  object pn_top: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 582
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
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStart = clSilver
    GradientColorStop = 3815994
    ParentFont = False
    TabOrder = 2
    VisualStyle = vsGradient
    object Label1: TLabel
      AlignWithMargins = True
      Left = 41
      Top = 1
      Width = 123
      Height = 32
      Margins.Left = 5
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Alterar Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 24
    end
    object Image2: TImage
      AlignWithMargins = True
      Left = 3
      Top = 1
      Width = 32
      Height = 32
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
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
      ExplicitLeft = 0
    end
    object Bevel1: TBevel
      AlignWithMargins = True
      Left = 175
      Top = 3
      Width = 2
      Height = 30
      Margins.Left = 10
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      ExplicitLeft = 200
      ExplicitTop = 2
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 188
      Top = 3
      Width = 367
      Height = 30
      Margins.Left = 10
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 
        'Formul'#225'rio respons'#225'vel por efetuar altera'#231#245'es na parcela selecio' +
        'nada antes ou ap'#243's a sua inclus'#227'o no sistema.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitHeight = 26
    end
  end
  object dsDados: TJvDataSource
    DataSet = Query
    Left = 56
    Top = 86
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 89
    Top = 86
  end
  object Query: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000111 WHERE ID = :ID')
    Left = 26
    Top = 86
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryREC_VALOR: TFMTBCDField
      FieldName = 'REC_VALOR'
      Origin = 'REC_VALOR'
      Precision = 18
      Size = 2
    end
    object QueryREC_VENCIMENTO: TDateField
      FieldName = 'REC_VENCIMENTO'
      Origin = 'REC_VENCIMENTO'
    end
    object QueryREC_ANOTACOES: TStringField
      FieldName = 'REC_ANOTACOES'
      Origin = 'REC_ANOTACOES'
      Size = 120
    end
  end
end
