object FrContasReceber: TFrContasReceber
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Contas a Receber'
  ClientHeight = 541
  ClientWidth = 1099
  Color = clGray
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnBaixo: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 395
    Width = 1095
    Height = 144
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 933
      Top = 3
      Width = 162
      Height = 138
      Margins.Right = 0
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 47
        Width = 162
        Height = 44
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        Color = clGreen
        ParentBackground = False
        TabOrder = 0
        object Label3: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 156
          Height = 13
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Total Recebido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 71
        end
        object RzDBLabel2: TRzDBLabel
          AlignWithMargins = True
          Left = 3
          Top = 16
          Width = 156
          Height = 25
          Margins.Top = 0
          Align = alTop
          Alignment = taRightJustify
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          BlinkIntervalOff = 2000
          DataField = 'REC_TOTAL_RECEBIDO'
          DataSource = dsQueryContas
          ExplicitLeft = 61
          ExplicitWidth = 98
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 94
        Width = 162
        Height = 162
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Color = clMaroon
        ParentBackground = False
        TabOrder = 1
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 156
          Height = 13
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Total a Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 76
        end
        object RzDBLabel3: TRzDBLabel
          AlignWithMargins = True
          Left = 3
          Top = 16
          Width = 156
          Height = 25
          Margins.Top = 0
          Align = alTop
          Alignment = taRightJustify
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          BlinkIntervalOff = 2000
          DataField = 'REC_TOTAL_SALDO'
          DataSource = dsQueryContas
          ExplicitLeft = 61
          ExplicitWidth = 98
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 162
        Height = 44
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 8404992
        ParentBackground = False
        TabOrder = 2
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 156
          Height = 13
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Total das Contas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 81
        end
        object RzDBLabel1: TRzDBLabel
          AlignWithMargins = True
          Left = 3
          Top = 16
          Width = 156
          Height = 25
          Margins.Top = 0
          Align = alTop
          Alignment = taRightJustify
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          BlinkIntervalOff = 2000
          DataField = 'REC_TOTAL_CONTAS'
          DataSource = dsQueryContas
          ExplicitLeft = 61
          ExplicitWidth = 98
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 930
      Height = 144
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object JvDBGrid2: TJvDBGrid
        Left = 0
        Top = 0
        Width = 930
        Height = 144
        Margins.Right = 0
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsQueryRecebtos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        AutoAppend = False
        AlternateRowColor = 13487565
        AutoSizeColumns = True
        AutoSizeColumnIndex = 2
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'REC_DATA_RECEBTO'
            Title.Caption = 'Data Pagto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_FORMA_PAGTO'
            Title.Caption = 'Forma de Pagamento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_ANOTACOES'
            Title.Caption = 'Anota'#231#245'es'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_PLN_CTAS_DESC'
            Title.Caption = 'Plano de Contas'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 234
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_SALDO'
            Title.Caption = 'R$ - Receber'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_VLR_JUROS'
            Title.Caption = 'Juros - R$'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_VLR_MULTA'
            Title.Caption = 'Multa - R$'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_VLR_ACRESCIMOS'
            Title.Caption = 'Acr'#233'scimos - R$'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_VLR_DESCONTOS'
            Title.Caption = 'Descontos - R$'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_VLR_RECEBIDO'
            Title.Caption = 'Valor Pagto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end>
        Delphi2010OptionsMigrated = True
      end
    end
  end
  object pnMeio: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 133
    Width = 1095
    Height = 260
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnMeio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 131
    ExplicitHeight = 262
    object JvDBGrid1: TJvDBGrid
      Left = 0
      Top = 0
      Width = 1095
      Height = 260
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsQueryContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = JvDBGrid1DrawColumnCell
      AutoAppend = False
      AlternateRowColor = 14408667
      AutoSizeColumns = True
      AutoSizeColumnIndex = 0
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'REC_CLIENTE'
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_DATA_REGISTRO'
          Title.Caption = 'Dt. Lancto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_PARCELA'
          Title.Caption = 'Parc.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REC_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Dt. Vencto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_DOCUMENTO'
          Title.Caption = 'Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_ORIGEM'
          Title.Caption = 'Origem'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_ANOTACOES'
          Title.Caption = 'Anota'#231#245'es'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 273
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_DIAS_VENCIDOS'
          Title.Alignment = taCenter
          Title.Caption = 'Dias'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_STATUS_TEXTO'
          Title.Caption = 'Status'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_VALOR'
          Title.Caption = 'R$ - Inicial'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_VLR_ATUALIZADO'
          Title.Caption = 'R$ - Atualizado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_VLR_RECEBIDO'
          Title.Caption = 'R$ - Recebido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_VLR_SALDO'
          Title.Caption = 'R$ - Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
      Delphi2010OptionsMigrated = True
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 1095
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
    object Label8: TLabel
      AlignWithMargins = True
      Left = 41
      Top = 1
      Width = 164
      Height = 32
      Margins.Left = 5
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Contas a Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 25
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 229
      Top = 3
      Width = 678
      Height = 30
      Margins.Left = 10
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 
        #201' o tipo de conta onde s'#227'o registradas as entradas (aumentos) da' +
        's vendas de uma empresa. Relacionados com a venda de conceitos d' +
        'iferentes de produtos ou servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
      ExplicitHeight = 28
    end
    object Bevel3: TBevel
      AlignWithMargins = True
      Left = 216
      Top = 1
      Width = 2
      Height = 32
      Margins.Left = 10
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      ExplicitLeft = 224
      ExplicitTop = 2
      ExplicitHeight = 30
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
      ExplicitLeft = 6
    end
  end
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 1095
    Height = 46
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    AutoStyle = False
    Images = FrPrincipal.Icones20x20
    Margin = 1
    RowHeight = 40
    ButtonLayout = blGlyphTop
    ButtonWidth = 60
    ButtonHeight = 40
    ShowButtonCaptions = True
    TextOptions = ttoShowTextLabels
    AutoSize = True
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdTop]
    BorderWidth = 0
    Color = clWhite
    GradientColorStyle = gcsCustom
    GradientColorStop = 14869218
    TabOrder = 3
    VisualStyle = vsGradient
    ToolbarControls = (
      btnNew
      RzSpacer1
      btnEdit
      RzSpacer6
      RzToolButton1
      RzSpacer2
      btnCancel
      RzSpacer3
      btnOK
      RzSpacer5
      btnError
      RzSpacer4
      btnExit)
    object btnNew: TRzToolButton
      AlignWithMargins = True
      Left = 3
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      DisabledIndex = 9
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = ctCadastrar
    end
    object btnEdit: TRzToolButton
      AlignWithMargins = True
      Left = 115
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      DisabledIndex = 13
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = ctAlterarLancto
    end
    object btnCancel: TRzToolButton
      AlignWithMargins = True
      Left = 339
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      DisabledIndex = 7
      GradientColorStyle = gcsCustom
      DropDownMenu = PopupMenu1
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actExcluirConta
    end
    object btnOK: TRzToolButton
      AlignWithMargins = True
      Left = 451
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      DisabledIndex = 6
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = ctReceberParcela
    end
    object btnError: TRzToolButton
      AlignWithMargins = True
      Left = 563
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      DisabledIndex = 12
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = Action1
    end
    object btnExit: TRzToolButton
      AlignWithMargins = True
      Left = 675
      Top = 2
      Width = 80
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      DisabledIndex = 5
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = ctSair
    end
    object RzSpacer1: TRzSpacer
      Left = 105
      Top = 12
      Grooved = True
    end
    object RzSpacer4: TRzSpacer
      Left = 665
      Top = 12
    end
    object RzSpacer5: TRzSpacer
      Left = 553
      Top = 12
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 441
      Top = 12
      Grooved = True
    end
    object RzSpacer6: TRzSpacer
      Left = 217
      Top = 12
      Grooved = True
    end
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 227
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      DisabledIndex = 12
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actJurosMulta
    end
    object RzSpacer2: TRzSpacer
      Left = 329
      Top = 12
      Grooved = True
    end
  end
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 86
    Width = 1095
    Height = 45
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    TabOrder = 4
    VisualStyle = vsGradient
    object Label4: TLabel
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 85
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      Caption = 'Selecionar Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 431
      Top = 2
      Width = 109
      Height = 13
      Caption = 'Per'#237'odo do Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 524
      Top = 21
      Width = 4
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 643
      Top = 2
      Width = 88
      Height = 13
      Caption = 'Status das Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 419
      Top = 0
      Width = 2
      Height = 45
    end
    object Bevel2: TBevel
      Left = 631
      Top = 0
      Width = 2
      Height = 45
    end
    object Bevel4: TBevel
      Left = 766
      Top = 0
      Width = 2
      Height = 45
    end
    object Bevel5: TBevel
      Left = 1010
      Top = 0
      Width = 2
      Height = 45
    end
    object PngSpeedButton2: TPngSpeedButton
      Left = 904
      Top = 1
      Width = 102
      Height = 43
      Caption = 'Filtrar Contas'
      Spacing = 6
      OnClick = PngSpeedButton2Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000D744558745469746C650046696C7465723B851A65D10000036D4944
        415478DA6D936D4C5B6514C7FFB7A59432DAD256B8D0C13A36BA96508B1A8633
        62A2B82CBA6CA0891A135032E6A259B6A0D9E64248F6F6014C882E9A1897E807
        E2746F45BB65493503090A5BCB642FF23640060894362BBD7DA1EFBDBD77CF2D
        B8A9F1E4FC3FDC93FBFF9DE73EE75C0AAB213ABDCFA4346F52D6658AA997281E
        663EC529299E2BE1580E6C929B4D26532BF1383B128EB07DBF4EF8AF9CF9CDE5
        23BE142598AF9DDAD6A07942FD85F6E95795725D25A48A6250E20C882439E0F9
        24525117B8780851CF34BC93BF63E6467F70DEC91C7AEFDC4CA70090383AAA13
        5B9B6D700ED931D36B45606E142BB32390292458A79442A69221AFDC8C5C5D29
        147AD220773D6C47F6F0755F4FE50800E940FB734E73EDDB1A99B61262B9093C
        9700F83851F291D8481061E714C4092742F383B05F1DF3BED139BD510064FEDC
        5A79B6ECF967DFCA275D32F37790A3E783F5F520B67C1D51E61E42F71370DF5D
        80244B8242631EFCBE106EDADDD6A60B730D0240DCB9DFF49AC958DCA57FB106
        597405321446B0FE5B887BFB11F14CC03F1986FFCF65646B64C82D5262E2B60B
        F6315FFDF16E97450008CAB67DFC54AFA1EA992A754929B28B5F001F73229606
        4C83190B920B8C20B7408E502C41BA2FDD7EDFBA58437C416A6D8C192DBB7515
        35E59AEEF5865295BA640BA44A1A09BF03116609BEA900323811A26C0AE3A31E
        7FCFE4CACEEF870343C4974C03AE1D3263C7A7C392BDD505C69D4FAACFD205AA
        0A459E06D2752C62010FC2CB093C7085313B1F18E9BE1F69B44D87C7898DDC34
        F834C0B2478F12238DCAA303125A2E513557D38737AA328FBCF2E19BF08F0FA0
        FFEA02FE58087CD639B2D2C1443946E8FCF9760DDFDCE34D7F3FBA9AF4D8B059
        4D1E286C6D758848A9F05CFDA6C5DAD683F0DEB1A1CF3A89C6AE791DA92FDA5B
        4C1C380E8E21373EFA855905FCB0770B8A36C8D30021AB8E0DD1E71B36BBEBDA
        3E0133F82D7A2DC378F7D25F5A7B4B3959499E6C2787C15B0F1E037EDC6780B6
        206B752024B79DBA5B78B151BFB4ABFD1B308E2FD177E926DEB93057643F5AE6
        E40980103078C7F31870F98332D02A717A1C9400681BA52D4D06F7AE0E2B9881
        76F459AEA3FEBB19ED8DC306D7DAD4FE0DB872A01C7F9349E2F533F7E46DB5BA
        E34562763F4F0AB371D157277E5A3C79FA657510FF884780FF09E138D944396B
        8B16220A0BBFEF7F5F7C0880FF864B1C6D1A5D0000000049454E44AE426082}
    end
    object Label6: TLabel
      Left = 778
      Top = 3
      Width = 53
      Height = 13
      Caption = 'Ordena'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel6: TBevel
      Left = 898
      Top = -1
      Width = 2
      Height = 45
    end
    object eCliente: TRzButtonEdit
      AlignWithMargins = True
      Left = 2
      Top = 17
      Width = 407
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 0
      Margins.Bottom = 2
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TextHint = 'F2 - Selecionar'
      TextHintVisibleOnFocus = True
      AltBtnHint = 'Limpa o campo Cliente.'
      AltBtnKind = bkReject
      ButtonShortCut = 113
      AltBtnVisible = True
      AltBtnWidth = 18
      ButtonWidth = 18
      OnAltBtnClick = eClienteAltBtnClick
      OnButtonClick = eClienteButtonClick
    end
    object eDataIni: TJvDateEdit
      AlignWithMargins = True
      Left = 431
      Top = 17
      Width = 87
      Height = 21
      Margins.Top = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 1
    end
    object eDatafim: TJvDateEdit
      AlignWithMargins = True
      Left = 534
      Top = 17
      Width = 87
      Height = 21
      Margins.Top = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 2
    end
    object eTipo: TRzComboBox
      AlignWithMargins = True
      Left = 643
      Top = 17
      Width = 110
      Height = 21
      Margins.Top = 2
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'A Vencer'
        'Em Atraso'
        'Quitada')
      ItemIndex = 0
      Values.Strings = (
        '00'
        '90'
        '92'
        '91')
    end
    object cbOrdenar: TRzComboBox
      AlignWithMargins = True
      Left = 778
      Top = 17
      Width = 110
      Height = 21
      Margins.Top = 2
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'Por Cliente'
      Items.Strings = (
        'Por Cliente'
        'Vencimento'
        'Valor'
        'Parcela')
      ItemIndex = 0
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 225
    Top = 274
    StyleName = 'Platform Default'
    object ctCadastrar: TAction
      Category = 'Form Principal'
      Caption = '   Incluir Contas   '
      ImageIndex = 9
      OnExecute = ctCadastrarExecute
    end
    object ctAlterarLancto: TAction
      Category = 'Form Principal'
      Caption = 'Alterar Parcela'
      ImageIndex = 13
      OnExecute = ctAlterarLanctoExecute
      OnUpdate = ctAlterarLanctoUpdate
    end
    object actExcluirConta: TAction
      Category = 'Form Principal'
      Caption = 'Excluir Conta'
      ImageIndex = 7
      OnExecute = actExcluirContaExecute
    end
    object ctReceberParcela: TAction
      Category = 'Form Principal'
      Caption = 'Receber Pagto'
      ImageIndex = 6
      OnExecute = ctReceberParcelaExecute
      OnUpdate = ctReceberParcelaUpdate
    end
    object Action1: TAction
      Category = 'Form Principal'
      Caption = 'Extornar Recebto.'
      ImageIndex = 12
      OnExecute = Action1Execute
      OnUpdate = Action1Update
    end
    object ctBaixarParcela: TAction
      Category = 'Form Principal'
      Caption = 'Baixar Parcela'
      Enabled = False
      ImageIndex = 3
    end
    object ctSair: TAction
      Category = 'Form Principal'
      Caption = 'Sair'
      ImageIndex = 5
      OnExecute = ctSairExecute
    end
    object actJurosMulta: TAction
      Category = 'Form Principal'
      Caption = 'Juros e Multa'
      ImageIndex = 12
      OnExecute = actJurosMultaExecute
    end
  end
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 258
    Top = 274
  end
  object PopupMenu1: TPopupMenu
    Left = 194
    Top = 274
    object ExcluirParcela1: TMenuItem
      Caption = 'Excluir Parcela'
      ImageIndex = 7
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExcluirConta1: TMenuItem
      Action = actExcluirConta
    end
  end
  object QueryContas: TFDQuery
    AfterOpen = QueryContasAfterOpen
    BeforeInsert = QueryContasBeforeInsert
    AfterPost = QueryContasAfterPost
    AggregatesActive = True
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
      '   T2.ID_PLN_CTAS,'
      '   T1.ID_C000110,'
      '   T1.REC_PARCELA,'
      '   T1.REC_VENCIMENTO,'
      '   CAST(T2.REC_DATA_REGISTRO AS DATE) AS REC_DATA_REGISTRO,'
      '   T1.REC_DOCUMENTO,'
      '   T1.REC_VALOR,'
      '   T1.REC_VLR_ATUALIZADO,'
      '   T1.REC_VLR_RECEBIDO,'
      '   T1.REC_VLR_SALDO,'
      '   T1.REC_ANOTACOES,'
      
        '   CASE T1.REC_STATUS -- EXIBE A QUANTIDADE DE DIAS A VENCER OU ' +
        'VENCIDO'
      '      WHEN 90 THEN IIF(CURRENT_DATE > T1.REC_VENCIMENTO'
      '                      ,92'
      '                      ,90'
      '                   )'
      '      WHEN 91 THEN 91'
      '   END AS REC_STATUS,'
      ''
      
        '   --CASE (SELECT T2.REC_ORIGEM FROM C000110 WHERE ID = T1.ID_C0' +
        '00110)'
      '   --   WHEN 1 THEN '#39'Pedido de Vendas'#39
      '   --   WHEN 2 THEN '#39'Nota Fiscal'#39
      '   --   WHEN 3 THEN '#39'Avulso'#39
      '   --   WHEN 4 THEN '#39'Ordem de Servi'#231'o'#39
      '   --END AS T2.REC_ORIGEM,'
      '   T2.REC_ORIGEM,'
      '   T2.REC_CLIENTE,'
      '   T2.REC_JUROS,'
      '   T2.REC_JUROS_CAREN,'
      '   T2.REC_MULTA,'
      '   T2.REC_MULTA_CAREN'
      'FROM'
      '   C000111 AS T1'
      'INNER JOIN'
      '   C000110 AS T2'
      'ON'
      '   T2.ID = T1.ID_C000110')
    Left = 18
    Top = 266
    object QueryContasID_C10: TIntegerField
      FieldName = 'ID_C10'
      Origin = 'ID_C10'
      Required = True
    end
    object QueryContasID_C11: TIntegerField
      FieldName = 'ID_C11'
      Origin = 'ID_C11'
      Required = True
    end
    object QueryContasID_C000110: TIntegerField
      FieldName = 'ID_C000110'
      Origin = 'ID_C000110'
    end
    object QueryContasID_PLN_CTAS: TIntegerField
      FieldName = 'ID_PLN_CTAS'
      Origin = 'ID_PLN_CTAS'
    end
    object QueryContasREC_DATA_REGISTRO: TDateField
      Alignment = taCenter
      FieldName = 'REC_DATA_REGISTRO'
      Origin = 'REC_DATA_REGISTRO'
    end
    object QueryContasREC_PARCELA: TIntegerField
      Alignment = taCenter
      FieldName = 'REC_PARCELA'
      Origin = 'REC_PARCELA'
      DisplayFormat = '00'
    end
    object QueryContasREC_VENCIMENTO: TDateField
      FieldName = 'REC_VENCIMENTO'
      Origin = 'REC_VENCIMENTO'
    end
    object QueryContasREC_DIAS_VENCIDOS: TLargeintField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'REC_DIAS_VENCIDOS'
      Origin = 'REC_DIAS_VENCIDOS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '000'
    end
    object QueryContasREC_DOCUMENTO: TStringField
      FieldName = 'REC_DOCUMENTO'
      Origin = 'REC_DOCUMENTO'
      Size = 25
    end
    object QueryContasREC_ANOTACOES: TStringField
      FieldName = 'REC_ANOTACOES'
      Origin = 'REC_ANOTACOES'
      Size = 120
    end
    object QueryContasREC_STATUS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REC_STATUS'
      Origin = 'REC_STATUS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryContasREC_STATUS_TEXTO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'REC_STATUS_TEXTO'
      Origin = 'REC_STATUS_TEXTO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object QueryContasREC_CLIENTE: TStringField
      FieldName = 'REC_CLIENTE'
      Origin = 'REC_CLIENTE'
      Size = 120
    end
    object QueryContasREC_ORIGEM: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'REC_ORIGEM'
      Origin = 'REC_ORIGEM'
      OnGetText = QueryContasREC_ORIGEMGetText
    end
    object QueryContasREC_VALOR: TFMTBCDField
      FieldName = 'REC_VALOR'
      Origin = 'REC_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasREC_VLR_ATUALIZADO: TFMTBCDField
      FieldName = 'REC_VLR_ATUALIZADO'
      Origin = 'REC_VLR_ATUALIZADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasREC_VLR_RECEBIDO: TFMTBCDField
      FieldName = 'REC_VLR_RECEBIDO'
      Origin = 'REC_VLR_RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasREC_VLR_SALDO: TFMTBCDField
      FieldName = 'REC_VLR_SALDO'
      Origin = 'REC_VLR_SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasREC_JUROS: TFMTBCDField
      FieldName = 'REC_JUROS'
      Origin = 'REC_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasREC_MULTA: TFMTBCDField
      FieldName = 'REC_MULTA'
      Origin = 'REC_MULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasREC_JUROS_CAREN: TIntegerField
      FieldName = 'REC_JUROS_CAREN'
      Origin = 'REC_JUROS_CAREN'
      DisplayFormat = ',0.00'
    end
    object QueryContasREC_MULTA_CAREN: TIntegerField
      FieldName = 'REC_MULTA_CAREN'
      Origin = 'REC_MULTA_CAREN'
      DisplayFormat = ',0.00'
    end
    object QueryContasREC_TOTAL_CONTAS: TAggregateField
      Alignment = taRightJustify
      FieldName = 'REC_TOTAL_CONTAS'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(REC_VLR_ATUALIZADO)'
    end
    object QueryContasREC_TOTAL_RECEBIDO: TAggregateField
      Alignment = taRightJustify
      FieldName = 'REC_TOTAL_RECEBIDO'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(REC_VLR_RECEBIDO)'
    end
    object QueryContasREC_TOTAL_SALDO: TAggregateField
      Alignment = taRightJustify
      FieldName = 'REC_TOTAL_SALDO'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(REC_VLR_SALDO)'
    end
  end
  object dsQueryContas: TDataSource
    AutoEdit = False
    DataSet = QueryContas
    Left = 50
    Top = 266
  end
  object QueryRecebtos: TFDQuery
    AfterPost = QueryRecebtosAfterPost
    BeforeDelete = QueryRecebtosBeforeDelete
    AfterDelete = QueryRecebtosAfterDelete
    OnNewRecord = QueryRecebtosNewRecord
    IndexFieldNames = 'ID_C000111'
    AggregatesActive = True
    MasterSource = dsQueryContas
    MasterFields = 'ID_C11'
    DetailFields = 'ID_C000111'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT '
      '   T1.*,'
      '   CAST(0.00 AS NUMERIC(15,2)) AS REC_VLR_RECEBER'
      'FROM '
      '   C000112 AS T1 '
      'WHERE '
      '   ID_C000111 = :ID_C11'
      'ORDER BY'
      '   ID ASC')
    Left = 18
    Top = 298
    ParamData = <
      item
        Name = 'ID_C11'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 165
      end>
    object QueryRecebtosID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryRecebtosID_C000110: TIntegerField
      FieldName = 'ID_C000110'
      Origin = 'ID_C000110'
    end
    object QueryRecebtosID_C000111: TIntegerField
      FieldName = 'ID_C000111'
      Origin = 'ID_C000111'
    end
    object QueryRecebtosID_FORMA_PAGTO: TIntegerField
      FieldName = 'ID_FORMA_PAGTO'
      Origin = 'ID_FORMA_PAGTO'
    end
    object QueryRecebtosID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
    end
    object QueryRecebtosID_PLN_CTAS: TIntegerField
      FieldName = 'ID_PLN_CTAS'
      Origin = 'ID_PLN_CTAS'
    end
    object QueryRecebtosREC_DATA_RECEBTO: TDateField
      FieldName = 'REC_DATA_RECEBTO'
      Origin = 'REC_DATA_RECEBTO'
    end
    object QueryRecebtosREC_ANOTACOES: TStringField
      FieldName = 'REC_ANOTACOES'
      Origin = 'REC_ANOTACOES'
      Size = 120
    end
    object QueryRecebtosREC_FORMA_PAGTO: TStringField
      FieldName = 'REC_FORMA_PAGTO'
      Origin = 'REC_FORMA_PAGTO'
      Size = 60
    end
    object QueryRecebtosREC_PLN_CTAS_DESC: TStringField
      FieldName = 'REC_PLN_CTAS_DESC'
      Origin = 'REC_PLN_CTAS_DESC'
      ProviderFlags = []
      Size = 77
    end
    object QueryRecebtosREC_SALDO: TFMTBCDField
      FieldName = 'REC_SALDO'
      Origin = 'REC_SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryRecebtosREC_VLR_JUROS: TFMTBCDField
      FieldName = 'REC_VLR_JUROS'
      Origin = 'REC_VLR_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryRecebtosREC_VLR_MULTA: TFMTBCDField
      FieldName = 'REC_VLR_MULTA'
      Origin = 'REC_VLR_MULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryRecebtosREC_VLR_ACRESCIMOS: TFMTBCDField
      FieldName = 'REC_VLR_ACRESCIMOS'
      Origin = 'REC_VLR_ACRESCIMOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryRecebtosREC_VLR_DESCONTOS: TFMTBCDField
      FieldName = 'REC_VLR_DESCONTOS'
      Origin = 'REC_VLR_DESCONTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryRecebtosREC_VLR_CARTORIOS: TFMTBCDField
      FieldName = 'REC_VLR_CARTORIOS'
      Origin = 'REC_VLR_CARTORIOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryRecebtosREC_VLR_RECEBIDO: TFMTBCDField
      FieldName = 'REC_VLR_RECEBIDO'
      Origin = 'REC_VLR_RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryRecebtosREC_VLR_RECEBER: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REC_VLR_RECEBER'
      Origin = 'REC_VLR_RECEBER'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryRecebtosREC_TAX_JUROS: TFMTBCDField
      FieldName = 'REC_TAX_JUROS'
      Origin = 'REC_TAX_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsQueryRecebtos: TDataSource
    DataSet = QueryRecebtos
    Left = 50
    Top = 298
  end
end
