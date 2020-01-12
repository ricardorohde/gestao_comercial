object FrConfigCaixa: TFrConfigCaixa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  ClientHeight = 321
  ClientWidth = 599
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 283
    Width = 595
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = clSilver
    TabOrder = 0
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 54
    Width = 595
    Height = 227
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    object pgControl: TPageControl
      Left = 0
      Top = 0
      Width = 595
      Height = 227
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ActivePage = tabSat
      Align = alClient
      TabOrder = 0
      object tabSat: TTabSheet
        Caption = 'SAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        object Label3: TLabel
          Left = 3
          Top = 41
          Width = 67
          Height = 13
          Caption = 'Cnpj Emitente'
        end
        object Label4: TLabel
          Left = 3
          Top = 79
          Width = 78
          Height = 13
          Caption = 'Cnpj Soft House'
        end
        object Label5: TLabel
          Left = 123
          Top = 3
          Width = 73
          Height = 13
          Caption = 'Assinatura SAT'
        end
        object Label6: TLabel
          Left = 3
          Top = 117
          Width = 53
          Height = 13
          Caption = 'Sat Modelo'
        end
        object Label7: TLabel
          Left = 123
          Top = 79
          Width = 72
          Height = 13
          Caption = 'Arquivo dll SAT'
        end
        object Label12: TLabel
          Left = 384
          Top = 79
          Width = 93
          Height = 13
          Caption = 'C'#243'digo de Ativa'#231#227'o'
        end
        object Label11: TLabel
          Left = 123
          Top = 117
          Width = 105
          Height = 13
          Caption = 'Ambiente de Trabalho'
        end
        object Label14: TLabel
          Left = 3
          Top = 3
          Width = 27
          Height = 13
          Caption = 'Caixa'
        end
        object ed_sat_dll: TRzDBButtonEdit
          Left = 123
          Top = 94
          Width = 255
          Height = 21
          DataSource = dsConfig
          DataField = 'F_SAT_DLL'
          TabOrder = 4
          OnEnter = ed_cnpj_emitenteEnter
          OnExit = ed_cnpj_emitenteExit
          AltBtnWidth = 15
          ButtonWidth = 18
          OnButtonClick = ed_sat_dllButtonClick
        end
        object ed_cnpj_softhouse: TRzDBEdit
          Left = 3
          Top = 94
          Width = 114
          Height = 21
          DataSource = dsConfig
          DataField = 'F_CNPJ_SOFTHOUSE'
          TabOrder = 2
          OnEnter = ed_cnpj_emitenteEnter
          OnExit = ed_cnpj_emitenteExit
        end
        object ed_sat_assinatura: TRzDBMemo
          Left = 123
          Top = 18
          Width = 461
          Height = 59
          DataField = 'F_SAT_ASSINATURA'
          DataSource = dsConfig
          TabOrder = 3
          OnEnter = ed_cnpj_emitenteEnter
          OnExit = ed_cnpj_emitenteExit
          TabOnEnter = True
        end
        object ed_sat_modelo: TRzDBComboBox
          Left = 3
          Top = 132
          Width = 114
          Height = 21
          DataField = 'F_SAT_MODELO'
          DataSource = dsConfig
          Style = csDropDownList
          TabOrder = 6
          OnEnter = ed_cnpj_emitenteEnter
          OnExit = ed_cnpj_emitenteExit
          Items.Strings = (
            'Nenhum'
            'Cd_Ecl'
            'Std_Call'
            'MF-e')
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
        end
        object ed_codigo_ativacao: TRzDBEdit
          Left = 384
          Top = 94
          Width = 200
          Height = 21
          DataSource = dsConfig
          DataField = 'F_SAT_CODIGO_ATIVACAO'
          TabOrder = 5
          OnEnter = ed_cnpj_emitenteEnter
          OnExit = ed_cnpj_emitenteExit
        end
        object RzDBComboBox1: TRzDBComboBox
          Left = 123
          Top = 132
          Width = 114
          Height = 21
          DataField = 'F_SAT_AMBIENTE'
          DataSource = dsConfig
          Style = csDropDownList
          TabOrder = 7
          Items.Strings = (
            'Produ'#231#227'o'
            'Homologa'#231#227'o')
          Values.Strings = (
            '0'
            '1')
        end
        object ed_cnpj_emitente: TRzDBEdit
          Left = 3
          Top = 56
          Width = 114
          Height = 21
          Enabled = False
          TabOrder = 1
          OnEnter = ed_cnpj_emitenteEnter
          OnExit = ed_cnpj_emitenteExit
        end
        object ed_caixa: TRzDBButtonEdit
          Left = 3
          Top = 18
          Width = 114
          Height = 21
          DataSource = dsConfig
          DataField = 'F_DESCRICAO'
          TabOrder = 0
          TextHint = 'F2 - Buscar'
          TextHintVisibleOnFocus = True
          AllowKeyEdit = False
          ButtonShortCut = 113
          AltBtnWidth = 15
          ButtonWidth = 15
          OnButtonClick = ed_caixaButtonClick
        end
      end
      object tabDiversos: TTabSheet
        Caption = 'Diversos'
        ImageIndex = 2
        object Label1: TLabel
          Left = 3
          Top = 5
          Width = 66
          Height = 13
          Caption = 'Limite Sangria'
        end
        object Label2: TLabel
          Left = 123
          Top = 5
          Width = 71
          Height = 13
          Caption = 'Limite Retirada'
        end
        object Label15: TLabel
          Left = 3
          Top = 61
          Width = 97
          Height = 13
          Hint = 'Tempo entre cargas para o servidor, informe o temp em segundos.'
          Caption = 'Carga para Servidor'
          ParentShowHint = False
          ShowHint = True
        end
        object Label16: TLabel
          Left = 147
          Top = 99
          Width = 126
          Height = 13
          Hint = 'Tempo entre cargas para o servidor, informe o temp em segundos.'
          Caption = 'QrCode largura do modulo'
          ParentShowHint = False
          ShowHint = True
        end
        object ed_limite_sangria: TJvDBCalcEdit
          Left = 3
          Top = 20
          Width = 114
          Height = 21
          DisplayFormat = ',0.00'
          TabOrder = 0
          DecimalPlacesAlwaysShown = True
          OnEnter = ed_cnpj_emitenteEnter
          OnExit = ed_cnpj_emitenteExit
          DataField = 'F_LIMITE_SANGRIA'
          DataSource = dsConfig
        end
        object ed_limite_retirada: TJvDBCalcEdit
          Left = 123
          Top = 20
          Width = 104
          Height = 21
          DisplayFormat = ',0.00'
          TabOrder = 1
          DecimalPlacesAlwaysShown = True
          OnEnter = ed_cnpj_emitenteEnter
          OnExit = ed_cnpj_emitenteExit
          DataField = 'F_LIMITE_RETIRADA'
          DataSource = dsConfig
        end
        object chk_cat52: TRzDBCheckBox
          Left = 3
          Top = 105
          Width = 117
          Height = 15
          DataField = 'F_SOLICITA_CPF'
          DataSource = dsConfig
          ValueChecked = '1'
          ValueUnchecked = '2'
          Caption = 'Solicita CPF (CAT52)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object chk_vendedor: TRzDBCheckBox
          Left = 3
          Top = 125
          Width = 101
          Height = 15
          DataField = 'F_SOLICITA_VENDEDOR'
          DataSource = dsConfig
          ValueChecked = '1'
          ValueUnchecked = '2'
          Caption = 'Solicita Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Panel1: TPanel
          Left = 3
          Top = 53
          Width = 581
          Height = 2
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 4
        end
        object JvDBSpinEdit1: TJvDBSpinEdit
          Left = 3
          Top = 76
          Width = 74
          Height = 21
          Hint = 'Tempo entre cargas para o servidor, informe o temp em segundos.'
          MaxValue = 60.000000000000000000
          MinValue = 10.000000000000000000
          Value = 10.000000000000000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          DataField = 'F_TEMPO_CARGA_AO_SERVIDOR'
          DataSource = dsConfig
        end
        object RzDBCheckBox1: TRzDBCheckBox
          Left = 147
          Top = 57
          Width = 134
          Height = 15
          DataField = 'F_LOGO_LATERAL'
          DataSource = dsConfig
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption = 'Exibir logotipo na lateral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object RzDBCheckBox2: TRzDBCheckBox
          Left = 147
          Top = 78
          Width = 136
          Height = 15
          DataField = 'F_QRCODE_LATERAL'
          DataSource = dsConfig
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption = 'Exibir QrCode na lateral '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object RzDBSpinEdit3: TRzDBSpinEdit
          Left = 147
          Top = 114
          Width = 129
          Height = 21
          DataSource = dsConfig
          DataField = 'F_QRCODE_LARG_MODULO'
          Alignment = taRightJustify
          MaxLength = 1
          TabOrder = 8
          Max = 100.000000000000000000
          Min = 1.000000000000000000
          Value = 3.000000000000000000
        end
      end
      object tabImpressao: TTabSheet
        Caption = 'Impress'#227'o'
        ImageIndex = 3
        object Label9: TLabel
          Left = 3
          Top = 110
          Width = 106
          Height = 13
          Caption = 'Qtde. Vias (Sang/Ret)'
        end
        object RzGroupBox2: TRzGroupBox
          Left = 3
          Top = 5
          Width = 244
          Height = 100
          Caption = 'Impressora Cupons.'
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -11
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = [fsBold]
          TabOrder = 0
          object Label18: TLabel
            Left = 6
            Top = 16
            Width = 45
            Height = 13
            Caption = 'Emula'#231#227'o'
          end
          object Label8: TLabel
            Left = 6
            Top = 54
            Width = 26
            Height = 13
            Caption = 'Porta'
          end
          object Label10: TLabel
            Left = 163
            Top = 54
            Width = 50
            Height = 13
            Caption = 'Qtde. Vias'
          end
          object JvDBComboBox2: TJvDBComboBox
            Left = 6
            Top = 31
            Width = 231
            Height = 21
            DataField = 'F_PRINTER_MODELO_F'
            DataSource = dsConfig
            Items.Strings = (
              'ppEscTexto'
              'ppEscEpson'
              'ppEscBematech'
              'ppEscDaruma'
              'ppEscVox'
              'ppEscDiebold'
              'ppEscEpsonP2')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object ed_vias_cupom: TRzDBSpinEdit
            Left = 163
            Top = 69
            Width = 74
            Height = 21
            DataSource = dsConfig
            DataField = 'F_PRINTER_VIAS_F'
            Alignment = taRightJustify
            TabOrder = 1
            OnEnter = ed_cnpj_emitenteEnter
            OnExit = ed_cnpj_emitenteExit
            AllowKeyEdit = True
            Max = 100.000000000000000000
          end
          object ed_porta_serial_a: TDBComboBox
            Left = 6
            Top = 69
            Width = 151
            Height = 21
            Style = csDropDownList
            DataField = 'F_PRINTER_PORTA_F'
            DataSource = dsConfig
            TabOrder = 2
          end
        end
        object RzGroupBox3: TRzGroupBox
          Left = 253
          Top = 5
          Width = 244
          Height = 100
          Caption = 'Impressora Relat'#243'rios.'
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -11
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = [fsBold]
          TabOrder = 1
          object Label17: TLabel
            Left = 6
            Top = 16
            Width = 45
            Height = 13
            Caption = 'Emula'#231#227'o'
          end
          object Label19: TLabel
            Left = 6
            Top = 54
            Width = 26
            Height = 13
            Caption = 'Porta'
          end
          object Label20: TLabel
            Left = 163
            Top = 54
            Width = 50
            Height = 13
            Caption = 'Qtde. Vias'
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 6
            Top = 31
            Width = 231
            Height = 21
            DataField = 'F_PRINTER_MODELO_G'
            DataSource = dsConfig
            Items.Strings = (
              'ppEscTexto'
              'ppEscEpson'
              'ppEscBematech'
              'ppEscDaruma'
              'ppEscVox'
              'ppEscDiebold'
              'ppEscEpsonP2')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object RzDBSpinEdit1: TRzDBSpinEdit
            Left = 163
            Top = 69
            Width = 74
            Height = 21
            DataSource = dsConfig
            DataField = 'F_PRINTER_VIAS_G'
            Alignment = taRightJustify
            TabOrder = 1
            OnEnter = ed_cnpj_emitenteEnter
            OnExit = ed_cnpj_emitenteExit
            AllowKeyEdit = True
            Max = 100.000000000000000000
            Value = 1.000000000000000000
          end
          object ed_porta_serial_b: TDBComboBox
            Left = 6
            Top = 69
            Width = 151
            Height = 21
            Style = csDropDownList
            DataField = 'F_PRINTER_PORTA_G'
            DataSource = dsConfig
            TabOrder = 2
          end
        end
        object RzDBSpinEdit2: TRzDBSpinEdit
          Left = 3
          Top = 125
          Width = 106
          Height = 21
          DataSource = dsConfig
          DataField = 'F_PRINTER_VIAS_S'
          Alignment = taRightJustify
          TabOrder = 2
          OnEnter = ed_cnpj_emitenteEnter
          OnExit = ed_cnpj_emitenteExit
          AllowKeyEdit = True
          Max = 100.000000000000000000
          Value = 2.000000000000000000
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 52
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
    object JvImage3: TJvImage
      AlignWithMargins = True
      Left = 6
      Top = 3
      Width = 40
      Height = 46
      Margins.Left = 6
      Align = alLeft
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
        002808060000008CFEB86D000000097048597300000EC300000EC301C76FA864
        00000B114944415478DAB5987B8C5C551DC7BFE73EE6B5F3D8DDD9ED6E699BA5
        40A1A5AD4A2C1841B18D20890914DA5248794BAB40483022C182A01581124DF4
        1F1E11D046C0621389311AA134DDAD0A31888AB1DD22ADEDBEDAEE635E3BB3F3
        BA4FBFE7CC6C77BBBBA5DB16CF6466EFBD7BEF399FFBFD3DCEEF1CF1BD4E1F93
        9BC16F151EF6228520747E048A7010411865D83079EEF0E3C15BC2C355025821
        203A3CF88BF86863AD177F4C8776D003FA7CF81F081FBB00F101EF850B0D2135
        0AD88703A1C673B10449C479DDC2894DCC16304AC412AC6608F71B1CF4767E17
        8F3F237B10533A2630AF89E3D779748877BEEEF9FA8B61983D50B0F6D9018688
        67F08D0B704C53684FD870EFF1E125C4349CD9378EE6B0CF9735DF7C54C04D0B
        5EA99CB9820674816BF3B07EC28ECED714D899C34D40CA0FB2B4D0B7345F6CFB
        58C02D53004D7EE54DFFC6086CE16D21CEE37EDD5C9F64ABF5A9109EE5E1FD4B
        D14A408DE24C017CEC240AEE17A957E91BB748137FB268273697741AB0EB423F
        797582F24C53F0B63AA0FCD5D55F1BA322F51AA06DF83F72CD84FAA7B8DFFC25
        839E6F63C291C443754009C7B4808322BBA584D2E3C17A2A98DC343E55727C54
        3D9FBE2910A2839AA2F672B36D7EDD8D8577E2758B99C24470FB057ECB8620CF
        9D71C03B3BF36A8000857685B332856227547299DEC885B610EFE3F198EDE358
        D9459917E78575194CEAFF1FD7BC0007746B709E491F74843A1F1FCC63CF4984
        EF327D739B5D7F6D9AB8ACB42AC2D37322371882D622BD6EEA58F23C55F5B07E
        7E180F5C1C47B1EA62EFA88D3706CAD83D5C456B50538ACE0849009770C11C55
        1FD21494DDE8A1D256EF9856A941FA9C0C5CC4FD444B0C465AAA28EEED741460
        5A14B6E6507CD89CC1B4E3CDF17DA42D1F0F2E8A62DDC228C68DFBFC8779BCD4
        53C682B08E6906E7C04ED04724A3A3E1B0065FBE016FD32D0DF9B936AA0B1898
        54D2ABBF999CA51288FC3AE9C76F5680D7778E4ADF0BFBA29CD7E11BFE14E3CA
        E73431C9075D1F0325170F5D14C31D1734D4DEDED0B0F9FD3476A61C7444743E
        E34F838B1ED6E148E90235A7D53DA614CFC6F0FC1262CD0D5455427A6A743991
        6A7E78A906BD5BDCDC9965BE7336DBB09F1232E0273583770FD1ACF26F32A029
        160959E4413F211F5D12C386851108CDC0FB4772D8F4B70C3A5AE2F4314E7484
        74C23E1AD206627D0606D36904A30134372550B52C046C1D15D3C1C1C40822E1
        109A1271F58C84E42FED68BC405FBC57ACED1C617078FD4C9CF3A72A27755833
        2F8CBFA4AAD89BB7950925648094EF652CDCDE11C10F3E93502ADA2EFD73572F
        06389175B4C650355C44D23AE27D3A063359F89C019A123194CA154403610485
        89BEA62C4643650866E7703888C6C61AA4EBB97262C8EBBED642138F9CE70BF7
        BFD3FD0DC8591E7EFF85A4AA39D6BD9B02E302F3231A0E8DB968A6A2DB2E6BC2
        5C9A54DEACE91AEEEAEAC79EA305742C88A2CD8A23D623E132F0E838ED739218
        1EC94026B9F6E6248E36E6908A1411746A3EEF380E21432742FAC66A717DD7E0
        0364F9E94C29459AF799E571AC3CA7010772156C7C3F87C34507CB1326B6F2FA
        F26400459ABA21A4E348DEC2DADD7DC8FB163A9C18168C36112E0D57AFC10D11
        4EA3D79FD3D28281780EC3E102E1CC133C7E2AA4EF792F891BBA865EE57473CB
        4C79AF97836F5AD880FB16C7547476A72DBCCBEF3AA69A462A572CBBCA0DC2A6
        CE14E4E08E3DBDE81B30B0CA6845FFF00813978FB6E37002E72409D798C57068
        4C2937D398932185EFEF116BBA86F6D8F0AE9C69C6AD50C62AA3F6A5CF36E1FC
        262632FA99CAC8B6A712B59A11243ADF361A319023F0C33BC6F0D77D699CDBAE
        A325D97C5CB9792D844E50B950E1A470932143844C36C60F88D55D8303BC366F
        A61B25CBD1B2A7668F2797C5B03419AEE50E3529D686A8546CC9AB527B3412C0
        58D1C6C66D43181C0B206196408B4F31AB31ABE2C3715C193869095892563AD9
        8D06E7DCA3159753A18F1BDA0CACA0DF35874CA4CA8E9A93AFEA88C32561C9F6
        EA900655D771E70B03D8DF5BC1E58BE7A02F96AB99D525DC694CDC4C39C55302
        8E2B59F2048E8D59B0C60A087314792E219FB9AC0D5F5B3647A958A95455DD18
        A57FE64B1E1EDA51C09FAD2C12F3AA302D63965827B4A2B8AE6BF018C76F9FCD
        DDBAAEC3A2F4C3E951667E47A59F1EAE559E591CC0DD9F9A0BC766F160D71642
        D2DC39CBC1DAB70EA33B53C59244484D95A7D9B2625DD7F03B2C4C2F9F6D592A
        213DE6A84C3A07A7A90D76EF01E45EFE21BE7FDB75D8B0E96ED884ACD8EE719F
        1C6574DFF8660FF6E6AA589C089E06A40C42FD908CE2D739F7DD34EB929E03E8
        4CCA4EF31C14BAF722FADA9328F71FC44757DC82EF7EF31E6C3A8F4A51B9B233
        EE93418C32906E7CAB0679516390C96036900AF01DE9830FF36CEBAC45F739F0
        9CB9C0911E78CF3D020CF6A2B2FA3E0CADF82A8E1E1BC2D64B92F4C956068EC3
        C071EBE60E224FC8B53B7BB02F3B7B25199FAF70AA4B5DEC0B67DFACE064B5D1
        3E177EDF6138CF7E07DA483FCAD7DF8FD2E7AF83594833C594D0CB9966EB65ED
        B87B692BCDEDD0DC134A4AC8757525175349E7144A0A213688359DC3B25848F1
        3C793293AA168941241BE07F7410CEF38F420CF7A372430D4ECFF371AB025DE3
        1A9A40BD63369E26E446423A964D73FB279A9B4AEECD9E12D2169A6814377566
        78E4FEC881FDEDA9E5D6719312CE2F17E11F3904F78D1720060E4CC08D12CEAE
        F0756BCFCA942421FB09F9D4A55492E6B6E9931567BA92DDA3555C98980152B9
        1FB60B53DF20AE252053588B10D511636AA92F4D9A6C833FD807FB174FC1CF0C
        A97AB0BA723D4A97AF86463831096EBC49C83C2BA181928D275750C965ADB5C0
        A14FCA008B30D1E72D176BFF7848DDD3163626960A42AE0F98AA74F139A169EF
        898D9D5555E4E7C4D88B0594371A934B7E9DC8F126D8AFFC18DE3FF7400F86E0
        25DB317AEBE32A0F8A72611ADC04A4409E4052C9AD5452050E7368BE54452A93
        C3A28E56ECCF3858F7760F62A6A66ACC9A28ACE9CCC8DB5A28FA15A5E4A64E5B
        218DC289654436158008A894C30144D31CB83BB7C3FEC32F61C41210F4B3F217
        D7A0B2E21A88527EC23F4FD2949234779F84AC074E363B8A77FEDE8D959FBE00
        D1D6565CFDBB0348712A9590AA3916B486D87908860E4B59C57A96FCE3CB4E4F
        D8378FA1BA5DC865A7046C6C81FBF60EB8BF790EFE8597A0FCA5F5B0175C04AD
        38AACCA0CC718A36EE933270A4B9BFBEBC952AB182D002D8F151069BDF1B64D1
        6BD4D63D2ED35230FE8808079E56FD4B8B3FD869AB03C9CFA50A0E8BECCF2AA8
        6E32E5D28B51A9990158FBFF816CA405685DC0881D51BE391BB8A9905996E4B7
        2E6AC2950B1AF161BA889FEF4F2B211AB8E8F1A56975D1A535CD5B255D0BF585
        BDB87DD2DE8C3435E1E4D6C72EFAE297559098A652B2383282C2F03074D3509D
        9E6E9390164D76B4585346AEFCDA2226A234AD8A62D7FB508B079621C2A59F33
        B1ED20364F0294C3EA6ABFCE915B20BB2DB8AB74AAAA1148CEC1636345140A45
        0AAB9D11E478933C428CAFD5556DD9AD45E75F816020A76E98E4DBE289498035
        5FAC6DBFFD0B23A80AEF559A5E2D07C424C87CBEA8D2C5D9408E83B08B37F9B3
        5A24CEB760E850FB2A93DA493730F72105536D60FA1B0BB09FA397983A538A4E
        FF386BC8BA424237370B035B7DDB86889E4B7582C77DEF9480B52D60991599CF
        E02C348578CC867B97E4319492A5338394709AF65B26E22DECE903683CB758E8
        C6169E3EA0DA02E67949EDF2AB4DF44B05DCDBE896EB355DB42948FAA43EA34F
        4ED95A97EF09EC6031FE2B18814E05A6DC8F7F6DEBEC00E52E7F989F2A6CA5A8
        2337358477956118D7107071A9589EC7895D161BA17A371C5170950E56EBFE7F
        E08BDD04DAC99132426E10EA666D0F4E1E9F02F07F71099D47E1D4FA94000000
        0049454E44AE426082}
      ExplicitLeft = 42
      ExplicitTop = -26
      ExplicitWidth = 84
      ExplicitHeight = 135
    end
    object Label13: TLabel
      AlignWithMargins = True
      Left = 55
      Top = 3
      Width = 500
      Height = 46
      Margins.Left = 6
      Align = alClient
      Caption = 'Configura'#231#227'o do Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 187
      ExplicitHeight = 23
    end
    object JvImage1: TJvImage
      AlignWithMargins = True
      Left = 561
      Top = 3
      Width = 32
      Height = 46
      Cursor = crHandPoint
      Margins.Right = 6
      Align = alRight
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
        434944415478DA63641860C038EA805107A00BFCFFFF1F24F68F0676FD636464
        6426C6014C40EA2F0D1CF01FE80026521CF01F88998930981060849947B203B0
        6920D9DB04CC1B5A0E00CA6503A91540F1B7382C1303525640F90D54770050BC
        0048F503F1792076457704D4F27D40AC01C4A140F9F5D476802090DA0DC4C640
        7C03889D80F2CFA172D2406A3F10AB02F129207603CA7DA44514603802889970
        594E75076071C41D06485655C466394D1C80E4880340AC071502A50B4774CB69
        E900509C1F046265A8D02D207680A5099A3A002DC19D6380A4010306B4844913
        07604BED500760CD1D54750081AC862F8B52CD01CD40AA06882F01B13350EE0D
        9A3E09064841A409C42940F9B9D4760028BBD502F11474CBD11CE107949F4593
        34400E187500250EA03618220E803A82EACD75A0E5FFB18AD3C0A7A4396CD401
        03ED0000EB463330F5B4EB970000000049454E44AE426082}
      OnClick = JvImage1Click
      ExplicitLeft = 864
      ExplicitTop = 12
      ExplicitHeight = 32
    end
  end
  object QueryConfig: TFDQuery
    BeforePost = QueryConfigBeforePost
    Connection = FrModulo.DBCon_Local
    SQL.Strings = (
      'SELECT * FROM C000016 ')
    Left = 278
    Top = 14
    object QueryConfigID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryConfigF_DESCRICAO: TStringField
      FieldName = 'F_DESCRICAO'
      Origin = 'F_DESCRICAO'
      ProviderFlags = []
      Size = 35
    end
    object QueryConfigF_LIMITE_SANGRIA: TFMTBCDField
      FieldName = 'F_LIMITE_SANGRIA'
      Origin = 'F_LIMITE_SANGRIA'
      Precision = 18
      Size = 2
    end
    object QueryConfigF_LIMITE_RETIRADA: TFMTBCDField
      FieldName = 'F_LIMITE_RETIRADA'
      Origin = 'F_LIMITE_RETIRADA'
      Precision = 18
      Size = 2
    end
    object QueryConfigF_SOLICITA_CPF: TIntegerField
      FieldName = 'F_SOLICITA_CPF'
      Origin = 'F_SOLICITA_CPF'
    end
    object QueryConfigF_SOLICITA_VENDEDOR: TIntegerField
      FieldName = 'F_SOLICITA_VENDEDOR'
      Origin = 'F_SOLICITA_VENDEDOR'
    end
    object QueryConfigF_SAT_MODELO: TIntegerField
      FieldName = 'F_SAT_MODELO'
      Origin = 'F_SAT_MODELO'
    end
    object QueryConfigF_SAT_CODIGO_ATIVACAO: TStringField
      FieldName = 'F_SAT_CODIGO_ATIVACAO'
      Origin = 'F_SAT_CODIGO_ATIVACAO'
      Size = 18
    end
    object QueryConfigF_SAT_ASSINATURA: TStringField
      FieldName = 'F_SAT_ASSINATURA'
      Origin = 'F_SAT_ASSINATURA'
      Size = 420
    end
    object QueryConfigF_SAT_DLL: TStringField
      FieldName = 'F_SAT_DLL'
      Origin = 'F_SAT_DLL'
      Size = 250
    end
    object QueryConfigF_SAT_AMBIENTE: TIntegerField
      FieldName = 'F_SAT_AMBIENTE'
      Origin = 'F_SAT_AMBIENTE'
    end
    object QueryConfigF_CNPJ_SOFTHOUSE: TStringField
      FieldName = 'F_CNPJ_SOFTHOUSE'
      Origin = 'F_CNPJ_SOFTHOUSE'
      EditMask = '!99\.999\.999\/9999\-99;0'
      Size = 18
    end
    object QueryConfigF_PRINTER_MODELO_F: TIntegerField
      FieldName = 'F_PRINTER_MODELO_F'
      Origin = 'F_PRINTER_MODELO_F'
    end
    object QueryConfigF_PRINTER_MODELO_G: TIntegerField
      FieldName = 'F_PRINTER_MODELO_G'
      Origin = 'F_PRINTER_MODELO_G'
    end
    object QueryConfigF_PRINTER_VIAS_F: TIntegerField
      FieldName = 'F_PRINTER_VIAS_F'
      Origin = 'F_PRINTER_VIAS_F'
    end
    object QueryConfigF_PRINTER_VIAS_G: TIntegerField
      FieldName = 'F_PRINTER_VIAS_G'
      Origin = 'F_PRINTER_VIAS_G'
    end
    object QueryConfigF_PRINTER_VIAS_S: TIntegerField
      FieldName = 'F_PRINTER_VIAS_S'
      Origin = 'F_PRINTER_VIAS_S'
    end
    object QueryConfigF_PRINTER_PORTA_F: TStringField
      FieldName = 'F_PRINTER_PORTA_F'
      Origin = 'F_PRINTER_PORTA_F'
      Size = 65
    end
    object QueryConfigF_PRINTER_PORTA_G: TStringField
      FieldName = 'F_PRINTER_PORTA_G'
      Origin = 'F_PRINTER_PORTA_G'
      Size = 65
    end
    object QueryConfigF_ESPACO_ENTRE_CUPONS: TIntegerField
      FieldName = 'F_ESPACO_ENTRE_CUPONS'
      Origin = 'F_ESPACO_ENTRE_CUPONS'
    end
    object QueryConfigF_ESPACO_ENTRE_LINHAS: TIntegerField
      FieldName = 'F_ESPACO_ENTRE_LINHAS'
      Origin = 'F_ESPACO_ENTRE_LINHAS'
    end
    object QueryConfigF_TEMPO_CARGA_AO_SERVIDOR: TIntegerField
      DefaultExpression = '10000'
      FieldName = 'F_TEMPO_CARGA_AO_SERVIDOR'
      Origin = 'F_TEMPO_CARGA_AO_SERVIDOR'
    end
    object QueryConfigF_QRCODE_LATERAL: TIntegerField
      FieldName = 'F_QRCODE_LATERAL'
      Origin = 'F_QRCODE_LATERAL'
    end
    object QueryConfigF_LOGO_LATERAL: TIntegerField
      FieldName = 'F_LOGO_LATERAL'
      Origin = 'F_LOGO_LATERAL'
    end
    object QueryConfigF_QRCODE_LARG_MODULO: TIntegerField
      FieldName = 'F_QRCODE_LARG_MODULO'
      Origin = 'F_QRCODE_LARG_MODULO'
    end
  end
  object dsConfig: TDataSource
    DataSet = QueryConfig
    OnStateChange = dsConfigStateChange
    Left = 310
    Top = 14
  end
  object OpenDlg: TOpenDialog
    Left = 342
    Top = 14
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 374
    Top = 14
  end
  object aQuery: TFDQuery
    Connection = FrModulo.DBCon_Local
    Left = 524
    Top = 14
  end
end
