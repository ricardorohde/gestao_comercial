object FrEmpresas: TFrEmpresas
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro e Manuten'#231#227'o das Empresas'
  ClientHeight = 578
  ClientWidth = 1109
  Color = clGray
  Constraints.MinHeight = 579
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 532
    Width = 1105
    Height = 44
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
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
      btnCancel
      RzSpacer3
      btnOK
      RzSpacer5
      btnError
      RzSpacer4
      btnExit)
    object btnNew: TRzToolButton
      Left = 4
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 35
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      Left = 112
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 37
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      Left = 220
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 39
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actExcluir
    end
    object btnOK: TRzToolButton
      Left = 328
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 41
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actGravar
    end
    object btnError: TRzToolButton
      Left = 436
      Top = 2
      Width = 100
      Height = 40
      DisabledIndex = 43
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      Left = 544
      Top = 2
      Width = 80
      Height = 40
      DisabledIndex = 45
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
      Left = 212
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 320
      Top = 10
    end
    object RzSpacer4: TRzSpacer
      Left = 536
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 428
      Top = 10
      Grooved = True
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
    object Label42: TLabel
      Left = 41
      Top = 3
      Width = 196
      Height = 26
      Caption = 'Cadastro das Empresas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label43: TLabel
      AlignWithMargins = True
      Left = 260
      Top = 1
      Width = 795
      Height = 30
      Caption = 
        'Por ser um sistema multi empresas, neste formul'#225'rio '#233' poss'#237'vel e' +
        'fetuar a manuten'#231#227'o dos cadastros das empresas e configurar indi' +
        'vidualmente todos os par'#226'metros para a emiss'#227'o de notas fiscais.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 249
      Top = 2
      Width = 2
      Height = 30
    end
    object Image2: TImage
      Left = 6
      Top = 5
      Width = 24
      Height = 24
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        48597300000B1300000B1301009A9C180000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A000002114944415478DA63
        6440032935931519FEFC13622007B030BD9BD3927B1F5988119993DB34AD8E8D
        85B5908F8F8F891CF33F7FFEF4F7E7EFDF7D93EBB25AB05A90D330F59EA3AD8D
        E2CD3B77187EFEF84992E1EC1CEC0C6AAACA0C870E1DBD37A9215B19BB0F1AA6
        3E30353694BF77FF2183BAAA0A4916DCBC7D874149519EE1F4D9F30F2737642B
        E0B4C0C4C848FED193270CBADA9A28067CFFFE83E1D7AFDF60361B1B2B032727
        078AFCE5ABD719E4646418CE9C3B479E054F9FBD6078FFEE1D982D2824C4202D
        25415D0B0801922C3879FA0C032B30184801BF81C1676E6A42D802073B5BF92F
        5FBE9264380CF0F070331C387498B00F2E5EBACC2024284092E1EFDE7F60D0D7
        D3252E881E3F7ECCA0A3A345920557AE5C6390959525DF823B77EF33BC7CF90A
        CC16171763505156A4AE0554F5C1F51B3731D2392100CA279A1AEA842DB0B5B6
        94870505A9001474878F1EC76F81B9A9B1FCE97317C8B2C0D4C880E1E4E9B383
        202763B3E0DDFBF70C5FA119901B98A1840405879805540B223B1B6BF9F3172E
        31FCFEF38B240B5859D8188C0C748165D1B187539A7059D0387589B8A858103F
        1F2F2749A643C1C7CF9FBF0193F81AA00FE2B15AD0D0D0C0F2EC27BFCFF38777
        3D3F7F7C9F061253D3350DC367E8ADCBA75781685E7EC15992F2CADBA5D83F6E
        019AF307AB0530606CEC20F28B85511E1CB627F79FC56781AEB9A3318866FBF3
        FFE1D9B307DEA0CB0300583F5E285B7440780000000049454E44AE426082}
    end
  end
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 1105
    Height = 492
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    object pgControl: TJvPageControl
      Left = 0
      Top = 0
      Width = 1105
      Height = 492
      Margins.Top = 1
      Margins.Bottom = 1
      ActivePage = tabParamNfe
      Align = alClient
      TabOrder = 0
      object tabPrincipal: TTabSheet
        Caption = 'Empresas'
        object JvDBGrid1: TJvDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1091
          Height = 456
          Align = alClient
          DataSource = dsDados
          DrawingStyle = gdsClassic
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnDblClick = actAlterarExecute
          AlternateRowColor = 15658734
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 19
          TitleRowHeight = 19
          Columns = <
            item
              Expanded = False
              FieldName = 'EMP_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_DATA_REG'
              Title.Caption = 'Modifica'#231#227'o'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_RAZAO'
              Title.Caption = 'Razao Social'
              Width = 382
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_CNPJ'
              Title.Caption = 'Cnpj'
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_IESTADUAL'
              Title.Caption = 'Insc. Estadual'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_FONEFIXO'
              Title.Caption = 'Telefone'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_EMAIL'
              Title.Caption = 'E-mail'
              Width = 230
              Visible = True
            end>
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        object pnDetalhes: TRzPanel
          Left = 0
          Top = 0
          Width = 1097
          Height = 462
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object Label29: TLabel
            Left = 693
            Top = 45
            Width = 49
            Height = 15
            Caption = 'LogoTipo'
            FocusControl = eMunicipal
          end
          object Label13: TLabel
            Left = 580
            Top = 45
            Width = 86
            Height = 15
            Caption = 'Insc. Municipal'
            FocusControl = eMunicipal
          end
          object Label1: TLabel
            Left = 467
            Top = 45
            Width = 77
            Height = 15
            Caption = 'Insc. Estadual'
            FocusControl = eInscEstadual
          end
          object Label9: TLabel
            Left = 6
            Top = 86
            Width = 90
            Height = 14
            Cursor = crHandPoint
            Caption = 'CEP (Autom'#225'tico)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 540
            Top = 86
            Width = 75
            Height = 15
            Caption = 'Complemento'
            FocusControl = eComplemento
          end
          object Label33: TLabel
            Left = 493
            Top = 86
            Width = 13
            Height = 15
            Caption = 'N'#186
            FocusControl = eNumero
          end
          object Label5: TLabel
            Left = 119
            Top = 86
            Width = 50
            Height = 15
            Caption = 'Endere'#231'o'
            FocusControl = eEndereco
          end
          object Label19: TLabel
            Left = 340
            Top = 45
            Width = 25
            Height = 15
            Caption = 'Cnpj'
            FocusControl = eCnpj
          end
          object Label2: TLabel
            Left = 226
            Top = 4
            Width = 70
            Height = 15
            Caption = 'Raz'#227'o Social'
            FocusControl = eRazao
          end
          object Label16: TLabel
            Left = 95
            Top = 4
            Width = 79
            Height = 15
            Caption = 'Data Cadastro'
            FocusControl = eDataCadastro
          end
          object Label15: TLabel
            Left = 6
            Top = 4
            Width = 38
            Height = 15
            Caption = 'C'#243'digo'
            FocusControl = eRazao
          end
          object Label30: TLabel
            Left = 580
            Top = 4
            Width = 77
            Height = 15
            Caption = 'Data Abertura'
          end
          object Label48: TLabel
            Left = 6
            Top = 45
            Width = 82
            Height = 15
            Caption = 'Nome Fantasia'
            FocusControl = eFantasia
          end
          object Label28: TLabel
            Left = 838
            Top = 4
            Width = 38
            Height = 15
            Caption = 'C'#243'digo'
            FocusControl = eCodigoPais
          end
          object Label7: TLabel
            Left = 693
            Top = 4
            Width = 24
            Height = 15
            Caption = 'Pais'
          end
          object Label8: TLabel
            Left = 6
            Top = 127
            Width = 35
            Height = 15
            Caption = 'Bairro'
            FocusControl = eBairro
          end
          object Label14: TLabel
            Left = 693
            Top = 330
            Width = 188
            Height = 15
            Caption = 'Insc. Estadual do Subst. Tribut'#225'rio'
            FocusControl = DBEdit1
          end
          object Label26: TLabel
            Left = 693
            Top = 290
            Width = 52
            Height = 15
            Caption = 'Segmento'
          end
          object Label27: TLabel
            Left = 693
            Top = 250
            Width = 101
            Height = 15
            Caption = 'Ramo de Atividade'
          end
          object Label41: TLabel
            Left = 540
            Top = 127
            Width = 38
            Height = 15
            Caption = 'C'#243'digo'
            FocusControl = eCidade
          end
          object Label10: TLabel
            Left = 618
            Top = 351
            Width = 58
            Height = 15
            Caption = 'Al'#237'quota %'
            FocusControl = eAliquota
          end
          object Label31: TLabel
            Left = 434
            Top = 351
            Width = 132
            Height = 15
            Caption = 'Permite Cr'#233'dito de ICMS'
            FocusControl = eAliquota
          end
          object Label45: TLabel
            Left = 297
            Top = 209
            Width = 102
            Height = 15
            Caption = 'E-mail da Empresa'
            FocusControl = eEmail
          end
          object Label12: TLabel
            Left = 6
            Top = 168
            Width = 52
            Height = 15
            Caption = 'Fone Fixo'
            FocusControl = eFoneFixo
          end
          object Label11: TLabel
            Left = 622
            Top = 127
            Width = 62
            Height = 15
            Caption = 'UF - C'#243'digo'
            FocusControl = eUf
          end
          object Label6: TLabel
            Left = 235
            Top = 127
            Width = 38
            Height = 15
            Caption = 'Cidade'
            FocusControl = eCidade
          end
          object Label3: TLabel
            Left = 110
            Top = 168
            Width = 57
            Height = 15
            Caption = 'WhatsApp'
            FocusControl = eWhatsApp
          end
          object Label44: TLabel
            Left = 6
            Top = 209
            Width = 87
            Height = 15
            Caption = 'Site da Empresa'
            FocusControl = eSite
          end
          object Label34: TLabel
            Left = 460
            Top = 168
            Width = 52
            Height = 15
            Caption = 'Facebook'
            FocusControl = eFacebook
          end
          object Label4: TLabel
            Left = 235
            Top = 168
            Width = 31
            Height = 15
            Caption = 'Skype'
            FocusControl = eSkype
          end
          object eNumero: TDBEdit
            Left = 493
            Top = 101
            Width = 41
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_NUMERO'
            DataSource = dsDados
            TabOrder = 12
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eEndereco: TDBEdit
            Left = 119
            Top = 101
            Width = 368
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_ENDERECO'
            DataSource = dsDados
            TabOrder = 11
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eCep: TRzDBButtonEdit
            Left = 6
            Top = 101
            Width = 107
            Height = 23
            Hint = 
              'Informe o CEP e clique no bot'#227'o para o preenchimento autom'#225'tico,' +
              ' necess'#225'rio conex'#227'o com a internet.'#13#10'Voc'#234' poder'#225' efetuar a busca' +
              'r na base de dados local, mantendo a tecla (Ctrl) pressionada en' +
              'quanto efetua o clique no bot'#227'o.'
            DataSource = dsDados
            DataField = 'EMP_CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
            ButtonGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000848484FF8484
              84FF848484FF00000000848484FF848484FF848484FF4F4F4F99000000000000
              0000000000000000000000000000000000000000000000000000000000008484
              84FF000000000000000000000000848484FF00000000848484FFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000008484
              84FF000000000000000000000000848484FF00000000848484FFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000848484FF8484
              84FF848484FF00000000848484FF848484FF848484FF4F4F4F99B8824DFF4A34
              1F66B8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000B8824DFF4A34
              1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
              1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
              1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
              4DFF4A341F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
              4DFFB8824DFFB8824DFF4A341F66B8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
              0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
              0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
              0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
              000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
              000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFF00000000000000000000000000000000}
            ButtonNumGlyphs = 1
            ButtonKind = bkCustom
            AltBtnWidth = 15
            ButtonWidth = 21
            OnButtonClick = eCepButtonClick
          end
          object eComplemento: TDBEdit
            Left = 540
            Top = 101
            Width = 147
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_COMPLEMENTO'
            DataSource = dsDados
            TabOrder = 13
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eUf: TDBEdit
            Left = 622
            Top = 142
            Width = 28
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_UF'
            DataSource = dsDados
            TabOrder = 17
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eCidade: TDBEdit
            Left = 235
            Top = 142
            Width = 299
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_CIDADE'
            DataSource = dsDados
            TabOrder = 15
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eBairro: TDBEdit
            Left = 6
            Top = 142
            Width = 223
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_BAIRRO'
            DataSource = dsDados
            TabOrder = 14
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eMunicipal: TDBEdit
            Left = 580
            Top = 60
            Width = 107
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_IMUNICIPAL'
            DataSource = dsDados
            TabOrder = 9
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object ePais: TDBEdit
            Left = 693
            Top = 19
            Width = 139
            Height = 23
            Hint = 'Se n'#227'o informado, ser'#225' utilizado (Brasil)'
            CharCase = ecUpperCase
            DataField = 'EMP_PAIS'
            DataSource = dsDados
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object JvDBDateEdit1: TJvDBDateEdit
            Left = 580
            Top = 19
            Width = 107
            Height = 23
            DataField = 'EMP_DATA_FUNDACAO'
            DataSource = dsDados
            ShowNullDate = False
            TabOrder = 3
          end
          object eRazao: TDBEdit
            Left = 226
            Top = 19
            Width = 348
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_RAZAO'
            DataSource = dsDados
            TabOrder = 2
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eCodigoPais: TDBEdit
            Left = 838
            Top = 19
            Width = 58
            Height = 23
            Hint = 'Se n'#227'o informado, ser'#225' utilizado (1058)'
            CharCase = ecUpperCase
            DataField = 'EMP_CODIGO_PAIS'
            DataSource = dsDados
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
          object eInscEstadual: TDBEdit
            Left = 467
            Top = 60
            Width = 107
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_IESTADUAL'
            DataSource = dsDados
            TabOrder = 8
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eCnpj: TDBEdit
            Left = 340
            Top = 60
            Width = 121
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_CNPJ'
            DataSource = dsDados
            TabOrder = 7
            OnEnter = eRazaoEnter
            OnExit = eCnpjExit
          end
          object eFantasia: TDBEdit
            Left = 6
            Top = 60
            Width = 328
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_FANTASIA'
            DataSource = dsDados
            TabOrder = 6
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eFoneFixo: TDBEdit
            Left = 6
            Top = 183
            Width = 98
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_FONEFIXO'
            DataSource = dsDados
            TabOrder = 19
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object DBEdit2: TDBEdit
            Left = 540
            Top = 142
            Width = 76
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_CODIGO_CIDADE'
            DataSource = dsDados
            TabOrder = 16
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object Panel1: TPanel
            Left = 693
            Top = 60
            Width = 203
            Height = 186
            ParentBackground = False
            TabOrder = 33
            object Panel2: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 141
              Width = 195
              Height = 41
              Align = alBottom
              TabOrder = 0
              object BtnLogomarca: TSpeedButton
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 37
                Height = 33
                Cursor = crHandPoint
                Align = alLeft
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFF4A34
                  1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
                  1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
                  1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
                  1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
                  4DFF4A341F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
                  4DFFB8824DFFB8824DFF4A341F66B8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
                  0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
                  0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
                  0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
                  000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
                  000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
                  4DFFB8824DFFB8824DFF00000000000000000000000000000000}
              end
              object SpeedButton1: TSpeedButton
                AlignWithMargins = True
                Left = 154
                Top = 4
                Width = 37
                Height = 33
                Cursor = crHandPoint
                Align = alRight
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  200000000000000400000000000000000000000000000000000000000000131C
                  3C471E2B5F700000000000000000000000000000000000000000000000000000
                  00000000000000000000000000001F2D6375131C3C4700000000131C3C474260
                  D0F64463D8FF1F2D617300000000000000000000000000000000000000000000
                  00000000000000000000202E65774463D8FF4260D1F7131C3C472130687B4463
                  D8FF4463D8FF4463D8FF1F2D6173000000000000000000000000000000000000
                  000000000000202E65774463D8FF4463D8FF4463D8FF212F677A000000002231
                  6C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000000000000000
                  0000202E65774463D8FF4463D8FF4463D8FF22316B7E00000000000000000000
                  000022316C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000202E
                  65774463D8FF4463D8FF4463D8FF22316B7E0000000000000000000000000000
                  00000000000022316C7F4463D8FF4463D8FF4463D8FF1F2D6173202E65774463
                  D8FF4463D8FF4463D8FF22316B7E000000000000000000000000000000000000
                  0000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF22316B7E00000000000000000000000000000000000000000000
                  000000000000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463
                  D8FF22316B7E0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000202E65774463D8FF4463D8FF4463D8FF4463
                  D8FF1F2D62740000000000000000000000000000000000000000000000000000
                  00000000000000000000202E65774463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF1F2D627400000000000000000000000000000000000000000000
                  000000000000202E65774463D8FF4463D8FF4463D8FF22316B7E22316C7F4463
                  D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000000000000000
                  0000202E65774463D8FF4463D8FF4463D8FF21316A7D00000000000000002231
                  6C7F4463D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000202E
                  65774463D8FF4463D8FF4463D8FF21316A7D0000000000000000000000000000
                  000022316C7F4463D8FF4463D8FF4463D8FF1F2D6274000000001F2D63754463
                  D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
                  00000000000022316C7F4463D8FF4463D8FF4463D8FF1E2C6172151E414D4261
                  D3F94463D8FF21316A7D00000000000000000000000000000000000000000000
                  0000000000000000000022316C7F4463D8FF4261D3F9151E424E00000000151E
                  414D212F677A0000000000000000000000000000000000000000000000000000
                  00000000000000000000000000002130687B151E414D00000000}
                ExplicitLeft = 12
                ExplicitTop = 8
              end
            end
            object eLogo: TJvDBImage
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 195
              Height = 131
              Align = alClient
              BorderStyle = bsNone
              DataField = 'EMP_LOGOTIPO'
              DataSource = dsDados
              Stretch = True
              TabOrder = 1
              ShowNameIfEmpty = False
            end
          end
          object DBEdit1: TDBEdit
            Left = 693
            Top = 346
            Width = 203
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_IESTADUAL_SUST'
            DataSource = dsDados
            TabOrder = 31
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object DBEdit3: TDBEdit
            Left = 656
            Top = 142
            Width = 31
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_CODIGO_UF'
            DataSource = dsDados
            TabOrder = 18
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eAliquota: TDBEdit
            Left = 618
            Top = 366
            Width = 69
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_ICMS_ALIQUOTA'
            DataSource = dsDados
            TabOrder = 28
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eCreditoICMS: TJvDBComboBox
            Left = 434
            Top = 366
            Width = 178
            Height = 23
            DataField = 'EMP_ICMS_CREDITO'
            DataSource = dsDados
            Items.Strings = (
              '1 - Transfere Cr'#233'dito'
              '2 - N'#227'o Transfere Cr'#233'dito')
            TabOrder = 27
            Values.Strings = (
              '1'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eRegimeTrib: TRzDBRadioGroup
            Left = 434
            Top = 252
            Width = 253
            Height = 93
            DataField = 'EMP_CRT'
            DataSource = dsDados
            Items.Strings = (
              '1 - Simples Nacional'
              '2 - Simples Nacional Excesso da Receita'
              '3 - Regime Normal')
            Values.Strings = (
              '1'
              '2'
              '3')
            Caption = 'Regime Tribut'#225'rio'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            Enabled = False
            GroupStyle = gsUnderline
            SpaceEvenly = True
            StartYPos = 6
            TabOrder = 26
          end
          object eSegmento: TJvDBComboBox
            Left = 693
            Top = 306
            Width = 203
            Height = 23
            DataField = 'EMP_SEGMENTO'
            DataSource = dsDados
            Items.Strings = (
              'Alimenta'#231#227'o'
              'Combust'#237'veis'
              'Farmac'#234'utico'
              'Outros')
            TabOrder = 30
            Values.Strings = (
              '1'
              '2'
              '3'
              '4')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eFacebook: TDBEdit
            Left = 460
            Top = 183
            Width = 227
            Height = 23
            CharCase = ecLowerCase
            DataField = 'EMP_FACEBOOK'
            DataSource = dsDados
            TabOrder = 22
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eSkype: TDBEdit
            Left = 235
            Top = 183
            Width = 219
            Height = 23
            CharCase = ecLowerCase
            DataField = 'EMP_SKYPE'
            DataSource = dsDados
            TabOrder = 21
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eWhatsApp: TDBEdit
            Left = 110
            Top = 183
            Width = 119
            Height = 23
            CharCase = ecUpperCase
            DataField = 'EMP_FONEMOVEL'
            DataSource = dsDados
            TabOrder = 20
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eSite: TDBEdit
            Left = 6
            Top = 224
            Width = 285
            Height = 23
            CharCase = ecLowerCase
            DataField = 'EMP_SITE'
            DataSource = dsDados
            TabOrder = 23
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eRamoAtividade: TJvDBComboBox
            Left = 693
            Top = 266
            Width = 203
            Height = 23
            DataField = 'EMP_RAMO_ATIVIDADE'
            DataSource = dsDados
            Items.Strings = (
              'Ind'#250'strial'
              'Comercial'
              'Presta'#231#227'o de Servi'#231'os')
            TabOrder = 29
            Values.Strings = (
              '1'
              '2'
              '3')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object RzGroupBox1: TRzGroupBox
            Left = 6
            Top = 252
            Width = 422
            Height = 141
            Caption = 'Dados do Respons'#225'vel'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 25
            object Label21: TLabel
              Left = 151
              Top = 60
              Width = 15
              Height = 15
              Caption = 'RG'
            end
            object Label20: TLabel
              Left = 8
              Top = 60
              Width = 20
              Height = 15
              Caption = 'CPF'
            end
            object Label17: TLabel
              Left = 8
              Top = 21
              Width = 69
              Height = 15
              Caption = 'Respons'#225'vel'
              FocusControl = eResNome
            end
            object Label18: TLabel
              Left = 282
              Top = 60
              Width = 59
              Height = 15
              Caption = 'Data Nasc.'
            end
            object Label23: TLabel
              Left = 8
              Top = 99
              Width = 63
              Height = 15
              Caption = 'Fone M'#243'vel'
            end
            object Label24: TLabel
              Left = 151
              Top = 99
              Width = 35
              Height = 15
              Caption = 'E-mail'
              FocusControl = eResEmail
            end
            object eResRg: TDBEdit
              Left = 151
              Top = 75
              Width = 125
              Height = 23
              CharCase = ecUpperCase
              DataField = 'EMP_RESP_RG'
              DataSource = dsDados
              TabOrder = 2
              OnEnter = eRazaoEnter
              OnExit = eRazaoExit
            end
            object eResNome: TDBEdit
              Left = 8
              Top = 36
              Width = 408
              Height = 23
              CharCase = ecUpperCase
              DataField = 'EMP_RESP_NOME'
              DataSource = dsDados
              TabOrder = 0
              OnEnter = eRazaoEnter
              OnExit = eRazaoExit
            end
            object eRespCpf: TDBEdit
              Left = 8
              Top = 75
              Width = 137
              Height = 23
              CharCase = ecUpperCase
              DataField = 'EMP_RESP_CPF'
              DataSource = dsDados
              TabOrder = 1
              OnEnter = eRazaoEnter
              OnExit = eRespCpfExit
            end
            object eResNasc: TJvDBDateEdit
              Left = 282
              Top = 75
              Width = 134
              Height = 23
              DataField = 'EMP_RESP_DATANASC'
              DataSource = dsDados
              ShowNullDate = False
              TabOrder = 3
              OnEnter = eRazaoEnter
              OnExit = eRazaoExit
            end
            object eResFoneMovel: TDBEdit
              Left = 8
              Top = 114
              Width = 137
              Height = 23
              CharCase = ecUpperCase
              DataField = 'EMP_RESP_FONEMOVEL'
              DataSource = dsDados
              TabOrder = 4
              OnEnter = eRazaoEnter
              OnExit = eRazaoExit
            end
            object eResEmail: TDBEdit
              Left = 151
              Top = 114
              Width = 265
              Height = 23
              CharCase = ecLowerCase
              DataField = 'EMP_RESP_EMAIL'
              DataSource = dsDados
              TabOrder = 5
              OnEnter = eRazaoEnter
              OnExit = eRazaoExit
            end
          end
          object eEmail: TDBEdit
            Left = 297
            Top = 224
            Width = 390
            Height = 23
            CharCase = ecLowerCase
            DataField = 'EMP_EMAIL'
            DataSource = dsDados
            TabOrder = 24
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
          end
          object eDataCadastro: TDBEdit
            Left = 95
            Top = 19
            Width = 125
            Height = 23
            Hint = 
              'significa que nenhum lan'#231'amento poder'#225' ser feito com data ou ven' +
              'cimento antes dessa Data Base.'
            CharCase = ecUpperCase
            DataField = 'EMP_DATA_REG'
            DataSource = dsDados
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object eCodigo: TDBEdit
            Left = 6
            Top = 19
            Width = 83
            Height = 23
            Hint = 
              'C'#243'digo da empresa ou filial (c'#243'digo 1 sempre ser'#225' empresa matriz' +
              ')'
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'EMP_CODIGO'
            DataSource = dsDados
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object JvDBCheckBox1: TJvDBCheckBox
            Left = 693
            Top = 370
            Width = 182
            Height = 17
            Caption = 'Habilita Usar Caixa'
            DataField = 'EMP_ATIVA_CAIXA'
            DataSource = dsDados
            TabOrder = 32
            ValueChecked = '1'
            ValueUnchecked = '2'
          end
          object RzGroupBox13: TRzGroupBox
            Left = 6
            Top = 395
            Width = 422
            Height = 57
            Hint = 'Ajusta a quantidade de casas decimais do sistema.'
            Caption = ' Valores e Quantidade (Casas decimais)'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            ParentShowHint = False
            ShowHint = True
            TabOrder = 34
            object Label64: TLabel
              Left = 122
              Top = 27
              Width = 36
              Height = 15
              Caption = 'Venda:'
            end
            object Label65: TLabel
              Left = 8
              Top = 27
              Width = 34
              Height = 15
              Caption = 'Custo:'
            end
            object Label66: TLabel
              Left = 239
              Top = 27
              Width = 29
              Height = 15
              Caption = 'Qtde:'
            end
            object RzDBSpinEdit1: TRzDBSpinEdit
              Left = 48
              Top = 23
              Width = 66
              Height = 23
              Hint = 'Casa decimais para os valores de custos dos produtos.'
              DataSource = dsDados
              DataField = 'EMP_DECIMAL_CUSTO'
              Alignment = taRightJustify
              MaxLength = 1
              TabOrder = 0
              Max = 4.000000000000000000
              Min = 2.000000000000000000
              Value = 1.000000000000000000
            end
            object RzDBSpinEdit2: TRzDBSpinEdit
              Left = 164
              Top = 23
              Width = 67
              Height = 23
              Hint = 'Casas decimais para os valores de custo dos produtos.'
              DataSource = dsDados
              DataField = 'EMP_DECIMAL_VENDA'
              Alignment = taRightJustify
              MaxLength = 1
              TabOrder = 1
              Max = 4.000000000000000000
              Min = 2.000000000000000000
              Value = 2.000000000000000000
            end
            object RzDBSpinEdit3: TRzDBSpinEdit
              Left = 274
              Top = 23
              Width = 67
              Height = 23
              Hint = 'Casas decimais para as quantidades nos pedidos e notas fiscais.'
              DataSource = dsDados
              DataField = 'EMP_DECIMAL_QTDE'
              Alignment = taRightJustify
              MaxLength = 1
              TabOrder = 2
              Max = 4.000000000000000000
              Min = 2.000000000000000000
              Value = 3.000000000000000000
            end
          end
          object RzGroupBox14: TRzGroupBox
            Left = 434
            Top = 395
            Width = 419
            Height = 57
            Hint = 'Ajusta a quantidade de casas decimais do sistema.'
            Caption = ' Servidor Rest (Host / Porta)'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            ParentShowHint = False
            ShowHint = True
            TabOrder = 35
            object RzDBEdit19: TRzDBEdit
              Left = 3
              Top = 24
              Width = 337
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_SERVER_REST_HOST'
              CharCase = ecLowerCase
              TabOrder = 0
              OnEnter = eRazaoEnter
              OnExit = eRazaoExit
            end
            object RzDBEdit20: TRzDBEdit
              Left = 346
              Top = 24
              Width = 66
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_SERVER_REST_PORT'
              CharCase = ecLowerCase
              TabOrder = 1
            end
          end
          object JvDBCheckBox2: TJvDBCheckBox
            Left = 693
            Top = 388
            Width = 182
            Height = 17
            Hint = 'Habilita o sistema para utilizar o sistema de logins de usu'#225'rios'
            Caption = 'Utilizar Login?'
            DataField = 'EMP_USAR_LOGIN'
            DataSource = dsDados
            ParentShowHint = False
            ShowHint = True
            TabOrder = 36
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object tabParamNfe: TTabSheet
        Caption = 'Par'#226'metro da NF-e.'
        ImageIndex = 2
        object pnNfe: TRzPanel
          Left = 0
          Top = 0
          Width = 1097
          Height = 462
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object Label61: TLabel
            Left = 753
            Top = 181
            Width = 86
            Height = 15
            Caption = 'Modelo da NF-e'
          end
          object Label62: TLabel
            Left = 753
            Top = 223
            Width = 81
            Height = 15
            Caption = 'Vers'#227'o da NF-e'
          end
          object Label63: TLabel
            Left = 753
            Top = 265
            Width = 112
            Height = 15
            Caption = 'Visualizar Lei 12741'
          end
          object RzGroupBox2: TRzGroupBox
            Left = 241
            Top = 3
            Width = 253
            Height = 80
            Caption = ' Ambiente de Produ'#231#227'o.'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 2
            object Label22: TLabel
              Left = 6
              Top = 32
              Width = 43
              Height = 15
              Caption = 'N'#250'mero'
            end
            object Label32: TLabel
              Left = 95
              Top = 32
              Width = 22
              Height = 15
              Caption = 'Lote'
            end
            object Label35: TLabel
              Left = 151
              Top = 32
              Width = 27
              Height = 15
              Caption = 'S'#233'rie'
            end
            object Label36: TLabel
              Left = 197
              Top = 32
              Width = 42
              Height = 15
              Caption = 'Modelo'
            end
            object RzDBEdit1: TRzDBEdit
              Left = 6
              Top = 47
              Width = 83
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_PNUMERO'
              TabOrder = 0
            end
            object RzDBEdit2: TRzDBEdit
              Left = 95
              Top = 47
              Width = 50
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_PLOTE'
              TabOrder = 1
            end
            object RzDBEdit3: TRzDBEdit
              Left = 151
              Top = 47
              Width = 40
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_PSERIE'
              TabOrder = 2
            end
            object RzDBEdit4: TRzDBEdit
              Left = 197
              Top = 47
              Width = 53
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_PMODELO'
              TabOrder = 3
            end
          end
          object RzGroupBox3: TRzGroupBox
            Left = 497
            Top = 3
            Width = 253
            Height = 80
            Caption = ' Ambiente de Homologa'#231#227'o.'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 3
            object Label37: TLabel
              Left = 6
              Top = 32
              Width = 43
              Height = 15
              Caption = 'N'#250'mero'
            end
            object Label38: TLabel
              Left = 95
              Top = 32
              Width = 22
              Height = 15
              Caption = 'Lote'
            end
            object Label39: TLabel
              Left = 151
              Top = 32
              Width = 27
              Height = 15
              Caption = 'S'#233'rie'
            end
            object Label40: TLabel
              Left = 197
              Top = 32
              Width = 42
              Height = 15
              Caption = 'Modelo'
            end
            object RzDBEdit5: TRzDBEdit
              Left = 6
              Top = 47
              Width = 83
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_HNUMERO'
              TabOrder = 0
            end
            object RzDBEdit6: TRzDBEdit
              Left = 95
              Top = 47
              Width = 50
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_HLOTE'
              TabOrder = 1
            end
            object RzDBEdit7: TRzDBEdit
              Left = 151
              Top = 47
              Width = 40
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_HSERIE'
              TabOrder = 2
            end
            object RzDBEdit8: TRzDBEdit
              Left = 197
              Top = 47
              Width = 53
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_HMODELO'
              TabOrder = 3
            end
          end
          object Panel3: TPanel
            AlignWithMargins = True
            Left = 753
            Top = 3
            Width = 140
            Height = 172
            ParentBackground = False
            TabOrder = 4
            object Panel4: TPanel
              Left = 1
              Top = 137
              Width = 138
              Height = 34
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object BtnLogoRelatorios: TSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 40
                Height = 28
                Cursor = crHandPoint
                Align = alLeft
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFF9C8B789C8B789C8B789C8B789C8B789C8B789C8B789C8B789C8B
                  789C8B789C8B789C8B78FFFFFFFFFFFFFFFFFFFFFFFF9C8B78DED4C5DED4C5DE
                  D4C5DED4C5DED4C5DED4C5DED4C5DED4C5DED4C5DED4C59C8B78FFFFFFFFFFFF
                  9C8B789C8B789C8B789C8B789C8B789C8B789C8B789C8B789C8B789C8B789C8B
                  789C8B78DED4C59C8B78FFFFFFFFFFFF9C8B78F2EBE1F2EBE1F2EBE1F2EBE1F2
                  EBE1F2EBE1F2EBE1F2EBE1F2EBE1F2EBE19C8B78DED4C59C8B789C8B789C8B78
                  9C8B789C8B789C8B789C8B789C8B789C8B789C8B789C8B789C8B789C8B78F2EB
                  E19C8B78DED4C59C8B789C8B78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFF9C8B78F2EBE19C8B78DED4C59C8B789C8B78FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78F2EB
                  E19C8B78DED4C59C8B789C8B78FFFFFF4A6AA14A6AA14A6AA14A6AA14A6AA14A
                  6AA14A6AA14A6AA1FFFFFF9C8B78F2EBE19C8B78DED4C59C8B789C8B78FFFFFF
                  4A6AA16793E06793E06793E06A96E1577AB55576AD4A6AA1FFFFFF9C8B78F2EB
                  E19C8B78DED4C59C8B789C8B78FFFFFF4A6AA16E9AE46793E06B96E25F83C055
                  76AD91B8F34A6AA1FFFFFF9C8B78F2EBE19C8B78DED4C59C8B789C8B78FFFFFF
                  4A6AA197C0FC77A1E992BBF991B8F391B8F39CC4FF4A6AA1FFFFFF9C8B78F2EB
                  E19C8B78DED4C59C8B789C8B78FFFFFF4A6AA19CC4FF9CC4FF9CC4FF9CC4FFE0
                  ECFF9CC4FF4A6AA1FFFFFF9C8B78F2EBE19C8B789C8B789C8B789C8B78FFFFFF
                  4A6AA19CC4FF9CC4FF9CC4FF9CC4FF9CC4FF9CC4FF4A6AA1FFFFFF9C8B78F2EB
                  E19C8B78FFFFFFFFFFFF9C8B78FFFFFF4A6AA14A6AA14A6AA14A6AA14A6AA14A
                  6AA14A6AA14A6AA1FFFFFF9C8B789C8B789C8B78FFFFFFFFFFFF9C8B78FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFF
                  FFFFFFFFFFFFFFFFFFFF9C8B789C8B789C8B789C8B789C8B789C8B789C8B789C
                  8B789C8B789C8B789C8B789C8B78FFFFFFFFFFFFFFFFFFFFFFFF}
                ParentFont = False
                OnClick = BtnLogoRelatoriosClick
                ExplicitHeight = 29
              end
              object SpeedButton2: TSpeedButton
                AlignWithMargins = True
                Left = 95
                Top = 3
                Width = 40
                Height = 28
                Cursor = crHandPoint
                Align = alRight
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  200000000000000400000000000000000000000000000000000000000000131C
                  3C471E2B5F700000000000000000000000000000000000000000000000000000
                  00000000000000000000000000001F2D6375131C3C4700000000131C3C474260
                  D0F64463D8FF1F2D617300000000000000000000000000000000000000000000
                  00000000000000000000202E65774463D8FF4260D1F7131C3C472130687B4463
                  D8FF4463D8FF4463D8FF1F2D6173000000000000000000000000000000000000
                  000000000000202E65774463D8FF4463D8FF4463D8FF212F677A000000002231
                  6C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000000000000000
                  0000202E65774463D8FF4463D8FF4463D8FF22316B7E00000000000000000000
                  000022316C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000202E
                  65774463D8FF4463D8FF4463D8FF22316B7E0000000000000000000000000000
                  00000000000022316C7F4463D8FF4463D8FF4463D8FF1F2D6173202E65774463
                  D8FF4463D8FF4463D8FF22316B7E000000000000000000000000000000000000
                  0000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF22316B7E00000000000000000000000000000000000000000000
                  000000000000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463
                  D8FF22316B7E0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000202E65774463D8FF4463D8FF4463D8FF4463
                  D8FF1F2D62740000000000000000000000000000000000000000000000000000
                  00000000000000000000202E65774463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF1F2D627400000000000000000000000000000000000000000000
                  000000000000202E65774463D8FF4463D8FF4463D8FF22316B7E22316C7F4463
                  D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000000000000000
                  0000202E65774463D8FF4463D8FF4463D8FF21316A7D00000000000000002231
                  6C7F4463D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000202E
                  65774463D8FF4463D8FF4463D8FF21316A7D0000000000000000000000000000
                  000022316C7F4463D8FF4463D8FF4463D8FF1F2D6274000000001F2D63754463
                  D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
                  00000000000022316C7F4463D8FF4463D8FF4463D8FF1E2C6172151E414D4261
                  D3F94463D8FF21316A7D00000000000000000000000000000000000000000000
                  0000000000000000000022316C7F4463D8FF4261D3F9151E424E00000000151E
                  414D212F677A0000000000000000000000000000000000000000000000000000
                  00000000000000000000000000002130687B151E414D00000000}
                ParentFont = False
                OnClick = SpeedButton2Click
                ExplicitLeft = 96
                ExplicitHeight = 29
              end
            end
            object eLogoNfe: TJvDBImage
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 134
              Height = 132
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alClient
              DataField = 'EMP_NFE_LOGOTIPO'
              DataSource = dsDados
              Stretch = True
              TabOrder = 1
            end
          end
          object RzDBRadioGroup1: TRzDBRadioGroup
            Left = 3
            Top = 3
            Width = 235
            Height = 40
            DataField = 'EMP_NFE_AMBIENTE'
            DataSource = dsDados
            Items.Strings = (
              '1 - Produ'#231#227'o'
              '2 - Homologa'#231#227'o')
            Values.Strings = (
              '0'
              '1')
            Caption = ' Ambiente da NF-e'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            Columns = 2
            Enabled = False
            GroupStyle = gsUnderline
            SpaceEvenly = True
            StartYPos = 0
            TabOrder = 0
          end
          object RzDBRadioGroup2: TRzDBRadioGroup
            Left = 3
            Top = 43
            Width = 235
            Height = 40
            DataField = 'EMP_NFE_TIPO_DANFE'
            DataSource = dsDados
            Items.Strings = (
              '1 - Retrato'
              '2 - Paisagem')
            Values.Strings = (
              '1'
              '2')
            Caption = ' Formato de Impress'#227'o (Danfe)'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            Columns = 2
            Enabled = False
            GroupStyle = gsUnderline
            SpaceEvenly = True
            StartYPos = 0
            TabOrder = 1
          end
          object RzGroupBox4: TRzGroupBox
            Left = 3
            Top = 83
            Width = 747
            Height = 48
            Caption = ' Tipo de Emiss'#227'o / Justificativa'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 5
            object eTipoEmissao: TRzDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 22
              Width = 229
              Height = 23
              DataField = 'EMP_NFE_TIPO_EMISSAO'
              DataSource = dsDados
              Style = csDropDownList
              Align = alLeft
              TabOrder = 0
              Items.Strings = (
                'Emiss'#227'o Normal'
                'Conting'#234'ncia FS-IA'
                'Conting'#234'ncia SCAN'
                'Conting'#234'ncia DPEC'
                'Conting'#234'ncia FS-DA'
                'Conting'#234'ncia SVC-AN'
                'Conting'#234'ncia SVC-RS'
                'Conting'#234'ncia SVC-SP')
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7')
            end
            object xJust: TRzDBEdit
              AlignWithMargins = True
              Left = 238
              Top = 22
              Width = 506
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_TIPO_XJUST'
              Align = alClient
              TabOrder = 1
            end
          end
          object RzGroupBox5: TRzGroupBox
            Left = 497
            Top = 131
            Width = 253
            Height = 48
            Caption = ' Certificado Digital'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 6
            object eCertificado: TRzDBButtonEdit
              AlignWithMargins = True
              Left = 3
              Top = 22
              Width = 247
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_CERTIFICADO'
              Align = alClient
              TabOrder = 0
              TextHint = 'N'#250'mero de s'#233'rie'
              TextHintVisibleOnFocus = True
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40352D40352DFFFFFFFF
                FFFFFFFFFFFFFFFF40352D40352DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                DED8D29885738F79668F79668F79668F79668F79668F79668F79668F79669A85
                73DED8D3FFFFFFFFFFFFFFFFFFFFFFFF998473C4B09FD4C1B0D4C1B0D4C1B0D4
                C1B0D4C1B0D4C1B0D4C1B0D4C1B0C3AF9E9A8674FFFFFFFFFFFFFFFFFFFFFFFF
                8F7966D4C1B0D4C1B0D4C1B08F79668F79668F79668F7966D4C1B0D4C1B0D4C1
                B08F7966FFFFFFFFFFFFFFFFFFFFFFFF8F7966D4C1B0D4C1B0D4C1B0D4C1B0D4
                C1B0D4C1B0D4C1B0D4C1B0D4C1B0D4C1B08F7966FFFFFFFFFFFFFFFFFFFFFFFF
                8F79668F79668F79668F79668F79668F79668F79668F79668F79668F79668F79
                668F7966FFFFFFFFFFFFFFFFFFFFFFFF8F7966D4C1B0D4C1B0D4C1B0D4C1B0D4
                C1B0D4C1B0D4C1B0D4C1B0D4C1B0D4C1B08F7966FFFFFFFFFFFFFFFFFFFFFFFF
                8F7966D4C1B0D4C1B0D4C1B08F79668F79668F79668F7966D4C1B0D4C1B0D4C1
                B08F7966FFFFFFFFFFFFFFFFFFFFFFFF8F7966D4C1B0D4C1B0D4C1B0D4C1B0D4
                C1B0D4C1B0D4C1B0D4C1B0D4C1B0D4C1B08F7966FFFFFFFFFFFFFFFFFFFFFFFF
                8F79668F79668F79668F79668F79668F79668F79668F79668F79668F79668F79
                668F7966FFFFFFFFFFFFFFFFFFFFFFFF8F7966D4C1B0D4C1B0D4C1B0D4C1B0D4
                C1B0D4C1B0D4C1B0D4C1B0D4C1B0D4C1B08F7966FFFFFFFFFFFFFFFFFFFFFFFF
                8F7966D4C1B0D4C1B0D4C1B08F79668F79668F79668F7966D4C1B0D4C1B0D4C1
                B08F7966FFFFFFFFFFFFFFFFFFFFFFFF9B8674C3AF9ED4C1B0D4C1B0D4C1B0D4
                C1B0D4C1B0D4C1B0D4C1B0D4C1B0C2AE9C9B8675FFFFFFFFFFFFFFFFFFFFFFFF
                DED8D29B88778F79668F79668F79668F79668F79668F79668F79668F79669C88
                76DED8D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              AltBtnWidth = 15
              ButtonWidth = 18
              OnButtonClick = eCertificadoButtonClick
            end
          end
          object RzGroupBox6: TRzGroupBox
            Left = 3
            Top = 131
            Width = 235
            Height = 48
            Caption = ' WebServer de Destino'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 7
            object RzDBComboBox1: TRzDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 22
              Width = 229
              Height = 23
              DataField = 'EMP_NFE_WEBSERVER'
              DataSource = dsDados
              Style = csDropDownList
              Align = alClient
              TabOrder = 0
              Items.Strings = (
                'AP - Amap'#225
                'AM - Amazonas'
                'BA - Bahia'
                'CE - Cear'#225
                'DF - Distrito Federal'
                'ES - Esp'#237'rito Santo'
                'GO - Goi'#225's'
                'MA - Maranh'#227'o'
                'MT - Mato Grosso'
                'MS - Mato Grosso do Sul'
                'MG - Minas Gerais'
                'PA - Par'#225
                'PB - Para'#237'ba'
                'PR - Paran'#225
                'PE - Pernambuco'
                'PI - Piau'#237
                'RJ - Rio de Janeiro'
                'RN - Rio Grande do Norte'
                'RS - Rio Grande do Sul'
                'RO - Rond'#244'nia'
                'RR - Roraima'
                'SC - Santa Catarina'
                'SP - S'#227'o Paulo'
                'SE - Sergipe'
                'TO - Tocantins')
              Values.Strings = (
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
                'PA '
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
          end
          object RzGroupBox7: TRzGroupBox
            Left = 241
            Top = 131
            Width = 253
            Height = 48
            Caption = ' Tipo de SSL (SSLType)'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 8
            object RzDBComboBox2: TRzDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 22
              Width = 247
              Height = 23
              DataField = 'EMP_NFE_SSL_TYPE'
              DataSource = dsDados
              Style = csDropDownList
              Align = alClient
              TabOrder = 0
              Items.Strings = (
                '0 - LT_all'
                '1 - LT_SSLv2'
                '2 - LT_SSLv3'
                '3 - LT_TLSv1'
                '4 - LT_TSLv1_1'
                '5 - LT_TLSv1_2'
                '6 - LT_SSHv2')
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6')
            end
          end
          object RzGroupBox8: TRzGroupBox
            Left = 3
            Top = 179
            Width = 747
            Height = 62
            Caption = ' Servidor Proxy'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 9
            object Label46: TLabel
              Left = 3
              Top = 18
              Width = 25
              Height = 15
              Caption = 'Host'
            end
            object Label47: TLabel
              Left = 323
              Top = 18
              Width = 30
              Height = 15
              Caption = 'Porta'
            end
            object Label49: TLabel
              Left = 400
              Top = 18
              Width = 44
              Height = 15
              Caption = 'Usuario'
            end
            object Label50: TLabel
              Left = 635
              Top = 18
              Width = 33
              Height = 15
              Caption = 'Senha'
            end
            object RzDBEdit9: TRzDBEdit
              Left = 3
              Top = 33
              Width = 314
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_PROXY_HOST'
              CharCase = ecLowerCase
              TabOrder = 0
            end
            object RzDBEdit10: TRzDBEdit
              Left = 323
              Top = 33
              Width = 71
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_PROXY_PORTA'
              TabOrder = 1
            end
            object RzDBEdit11: TRzDBEdit
              Left = 400
              Top = 33
              Width = 229
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_PROXY_USUARIO'
              TabOrder = 2
            end
            object RzDBEdit12: TRzDBEdit
              Left = 635
              Top = 33
              Width = 109
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_PROXY_SENHA'
              PasswordChar = '*'
              TabOrder = 3
            end
          end
          object RzGroupBox9: TRzGroupBox
            Left = 3
            Top = 241
            Width = 747
            Height = 62
            Caption = ' Diret'#243'rios diversos'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 10
            object Label51: TLabel
              Left = 3
              Top = 18
              Width = 132
              Height = 15
              Caption = 'Arquivos XSD (Schemas)'
            end
            object Label52: TLabel
              Left = 264
              Top = 18
              Width = 100
              Height = 15
              Caption = 'Arquivos de (Logs)'
            end
            object Label60: TLabel
              Left = 495
              Top = 18
              Width = 79
              Height = 15
              Caption = 'Arquivos PDFs'
            end
            object eFolderXSD: TRzDBButtonEdit
              Left = 3
              Top = 33
              Width = 255
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_FOLDER_XSD'
              CharCase = ecUpperCase
              TabOrder = 0
              TextHint = 'Diret'#243'rio dos arquivos de Schemas da NF-e'
              TextHintVisibleOnFocus = True
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF447A96447A96447A96447A96447A96447A96447A9644
                7A96447A96447A96447A96447A96447A96447A96447A96447A96447A9685CEF5
                85CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B789C8B789C
                8B789C8B789C8B789C8B7885CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF59C8B78FFFFFFFFFFFFFFFFFFFFFFFF9C8B7885CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B78FFFFFFFF
                FFFFFFFFFFFFFFFF9C8B7885CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF59C8B78FFFFFFFFFFFFFFFFFFFFFFFF9C8B7885CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B78FFFFFFFF
                FFFF9C8B789C8B789C8B7885CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF59C8B78FFFFFFFFFFFF9C8B78A999899BA19D85CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B789C8B789C
                8B789C8B789AA09D85CEF585CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CE
                F585CEF585CEF5447A96447A96447A96447A96447A96447A964B83A16AADCF84
                CCF385CEF585CEF585CEF585CEF585CEF585CEF585CEF5447A96447A9665B0DB
                65B0DB65B0DB65B0DB5BA0C64A829E447A96447A96447A96447A96447A96447A
                96447A96447A96447A96447A9665B0DB65B0DB65B0DB62AAD44F85A2A4BFCDFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF447A96447A96
                447A96447A96447A96A4BFCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              AltBtnWidth = 15
              ButtonWidth = 21
              OnButtonClick = eFolderXSDButtonClick
            end
            object eFolderLogs: TRzDBButtonEdit
              Left = 264
              Top = 33
              Width = 225
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_FOLDER_LOGS'
              CharCase = ecUpperCase
              TabOrder = 1
              TextHint = 'Diret'#243'rio dos arquivos de logs da NF-e'
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF447A96447A96447A96447A96447A96447A96447A9644
                7A96447A96447A96447A96447A96447A96447A96447A96447A96447A9685CEF5
                85CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B789C8B789C
                8B789C8B789C8B789C8B7885CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF59C8B78FFFFFFFFFFFFFFFFFFFFFFFF9C8B7885CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B78FFFFFFFF
                FFFFFFFFFFFFFFFF9C8B7885CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF59C8B78FFFFFFFFFFFFFFFFFFFFFFFF9C8B7885CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B78FFFFFFFF
                FFFF9C8B789C8B789C8B7885CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF59C8B78FFFFFFFFFFFF9C8B78A999899BA19D85CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B789C8B789C
                8B789C8B789AA09D85CEF585CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CE
                F585CEF585CEF5447A96447A96447A96447A96447A96447A964B83A16AADCF84
                CCF385CEF585CEF585CEF585CEF585CEF585CEF585CEF5447A96447A9665B0DB
                65B0DB65B0DB65B0DB5BA0C64A829E447A96447A96447A96447A96447A96447A
                96447A96447A96447A96447A9665B0DB65B0DB65B0DB62AAD44F85A2A4BFCDFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF447A96447A96
                447A96447A96447A96A4BFCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              AltBtnWidth = 15
              ButtonWidth = 21
              OnButtonClick = eFolderLogsButtonClick
            end
            object eFolderPDFs: TRzDBButtonEdit
              Left = 495
              Top = 33
              Width = 249
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_FOLDER_PDFS'
              CharCase = ecUpperCase
              TabOrder = 2
              TextHint = 'Diret'#243'rio dos arquivos de logs da NF-e'
              ButtonGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF447A96447A96447A96447A96447A96447A96447A9644
                7A96447A96447A96447A96447A96447A96447A96447A96447A96447A9685CEF5
                85CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B789C8B789C
                8B789C8B789C8B789C8B7885CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF59C8B78FFFFFFFFFFFFFFFFFFFFFFFF9C8B7885CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B78FFFFFFFF
                FFFFFFFFFFFFFFFF9C8B7885CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF59C8B78FFFFFFFFFFFFFFFFFFFFFFFF9C8B7885CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B78FFFFFFFF
                FFFF9C8B789C8B789C8B7885CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF59C8B78FFFFFFFFFFFF9C8B78A999899BA19D85CEF585CE
                F585CEF585CEF5447A96447A9685CEF585CEF585CEF585CEF59C8B789C8B789C
                8B789C8B789AA09D85CEF585CEF585CEF585CEF585CEF5447A96447A9685CEF5
                85CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CEF585CE
                F585CEF585CEF5447A96447A96447A96447A96447A96447A964B83A16AADCF84
                CCF385CEF585CEF585CEF585CEF585CEF585CEF585CEF5447A96447A9665B0DB
                65B0DB65B0DB65B0DB5BA0C64A829E447A96447A96447A96447A96447A96447A
                96447A96447A96447A96447A9665B0DB65B0DB65B0DB62AAD44F85A2A4BFCDFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF447A96447A96
                447A96447A96447A96A4BFCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonNumGlyphs = 1
              ButtonKind = bkCustom
              AltBtnWidth = 15
              ButtonWidth = 21
              OnButtonClick = eFolderPDFsButtonClick
            end
          end
          object RzGroupBox10: TRzGroupBox
            Left = 3
            Top = 303
            Width = 747
            Height = 94
            Caption = ' Servidor de envio de E-mail'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 11
            object Label53: TLabel
              Left = 3
              Top = 18
              Width = 27
              Height = 15
              Caption = 'Smtp'
            end
            object Label54: TLabel
              Left = 323
              Top = 18
              Width = 30
              Height = 15
              Caption = 'Porta'
            end
            object Label55: TLabel
              Left = 400
              Top = 18
              Width = 44
              Height = 15
              Caption = 'Usuario'
            end
            object Label56: TLabel
              Left = 546
              Top = 18
              Width = 33
              Height = 15
              Caption = 'Senha'
            end
            object Label57: TLabel
              Left = 3
              Top = 56
              Width = 44
              Height = 15
              Caption = 'Assunto'
            end
            object Label58: TLabel
              Left = 323
              Top = 56
              Width = 59
              Height = 15
              Caption = 'Mensagem'
            end
            object Label59: TLabel
              Left = 635
              Top = 18
              Width = 87
              Height = 15
              Caption = 'Conex'#227'o Segura'
            end
            object RzDBEdit13: TRzDBEdit
              Left = 3
              Top = 33
              Width = 314
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_EMAIL_HOST'
              CharCase = ecLowerCase
              TabOrder = 0
            end
            object RzDBEdit14: TRzDBEdit
              Left = 323
              Top = 33
              Width = 71
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_EMAIL_PORTA'
              TabOrder = 1
            end
            object RzDBEdit15: TRzDBEdit
              Left = 400
              Top = 33
              Width = 140
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_EMAIL_USUARIO'
              TabOrder = 2
            end
            object RzDBEdit16: TRzDBEdit
              Left = 546
              Top = 33
              Width = 83
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_EMAIL_SENHA'
              PasswordChar = '*'
              TabOrder = 3
            end
            object RzDBEdit17: TRzDBEdit
              Left = 3
              Top = 71
              Width = 314
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_EMAIL_ASSUNTO'
              TabOrder = 4
            end
            object RzDBEdit18: TRzDBEdit
              Left = 323
              Top = 71
              Width = 421
              Height = 23
              DataSource = dsDados
              DataField = 'EMP_NFE_EMAIL_MESSAGE'
              TabOrder = 5
            end
            object RzDBComboBox3: TRzDBComboBox
              Left = 635
              Top = 33
              Width = 109
              Height = 23
              DataField = 'EMP_NFE_EMAIL_SEGURO'
              DataSource = dsDados
              Style = csDropDownList
              TabOrder = 6
              Items.Strings = (
                'Sim'
                'N'#227'o')
              Values.Strings = (
                '1'
                '2')
            end
          end
          object RzDBComboBox4: TRzDBComboBox
            Left = 753
            Top = 196
            Width = 140
            Height = 23
            DataField = 'EMP_NFE_MODELO_DF'
            DataSource = dsDados
            Style = csDropDownList
            TabOrder = 12
            Items.Strings = (
              'moNFe'
              'moNFCe')
            Values.Strings = (
              '0'
              '1')
          end
          object RzDBComboBox5: TRzDBComboBox
            Left = 753
            Top = 238
            Width = 140
            Height = 23
            DataField = 'EMP_NFE_VERSAO_DF'
            DataSource = dsDados
            Style = csDropDownList
            TabOrder = 13
            Items.Strings = (
              've200'
              've300'
              've310'
              've400')
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object RzDBComboBox6: TRzDBComboBox
            Left = 753
            Top = 280
            Width = 140
            Height = 23
            Hint = 
              'Determina se ir'#225' visualizar o valor total dos tributos por itens' +
              '.'
            DataField = 'EMP_NFE_PRINT_LEI_12741'
            DataSource = dsDados
            Style = csDropDownList
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            Items.Strings = (
              'Sim'
              'N'#227'o')
            Values.Strings = (
              '1'
              '2')
          end
        end
      end
      object tabMsgICMsIPI: TTabSheet
        Caption = 'Avisos IPI/ICMs'
        ImageIndex = 3
        object pnAvisos: TRzPanel
          Left = 0
          Top = 0
          Width = 1097
          Height = 462
          Align = alClient
          BorderOuter = fsNone
          Enabled = False
          TabOrder = 0
          object RzGroupBox11: TRzGroupBox
            Left = 3
            Top = 3
            Width = 616
            Height = 115
            Caption = ' Aviso Cr'#233'dito de IPI.'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            Enabled = False
            GroupStyle = gsUnderline
            TabOrder = 0
            object JvSpeedButton1: TJvSpeedButton
              AlignWithMargins = True
              Left = 3
              Top = 87
              Width = 610
              Height = 25
              Align = alBottom
              Caption = 'Restaurar Original'
              OnClick = JvSpeedButton1Click
              ExplicitTop = 54
            end
            object eMsgIPI: TRzDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 22
              Width = 610
              Height = 59
              Align = alClient
              DataField = 'EMP_NFE_AVISO_IPI_I'
              DataSource = dsDados
              TabOrder = 0
              OnEnter = eMsgIPIEnter
              OnExit = eMsgIPIExit
            end
          end
          object RzGroupBox12: TRzGroupBox
            Left = 3
            Top = 118
            Width = 616
            Height = 139
            Caption = ' Aviso Cr'#233'dito de ICMS.'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            Enabled = False
            GroupStyle = gsUnderline
            TabOrder = 1
            object JvSpeedButton2: TJvSpeedButton
              AlignWithMargins = True
              Left = 3
              Top = 111
              Width = 610
              Height = 25
              Align = alBottom
              Caption = 'Restaurar Original'
              ExplicitTop = 54
            end
            object eMsgICMs: TRzDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 22
              Width = 610
              Height = 83
              Align = alClient
              DataField = 'EMP_NFE_AVISO_ICMS_A'
              DataSource = dsDados
              TabOrder = 0
              OnEnter = eMsgIPIEnter
              OnExit = eMsgIPIExit
            end
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Configura'#231#245'es do Caixa'
        ImageIndex = 4
        object pnCaixa: TRzPanel
          Left = 0
          Top = 0
          Width = 1097
          Height = 462
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object Label68: TLabel
            Left = 3
            Top = 47
            Width = 81
            Height = 15
            Caption = 'Cliente Padr'#227'o'
          end
          object Label67: TLabel
            Left = 3
            Top = 3
            Width = 140
            Height = 15
            Caption = 'Plano de Contas (Padr'#227'o)'
          end
          object RzDBButtonEdit2: TRzDBButtonEdit
            Left = 3
            Top = 64
            Width = 422
            Height = 23
            DataSource = dsDados
            DataField = 'EMP_CLI_PDV_DESC'
            TabOrder = 0
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
            AllowKeyEdit = False
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = RzDBButtonEdit2ButtonClick
          end
          object RzDBButtonEdit1: TRzDBButtonEdit
            Left = 3
            Top = 20
            Width = 422
            Height = 23
            DataSource = dsDados
            DataField = 'EMP_PLN_PDV_DESC'
            TabOrder = 1
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
            AllowKeyEdit = False
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = RzDBButtonEdit1ButtonClick
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Configura'#231#227'o Gerais'
        ImageIndex = 5
        object pnConfigGeral: TRzPanel
          Left = 0
          Top = 0
          Width = 1097
          Height = 462
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object Label69: TLabel
            Left = 6
            Top = 137
            Width = 186
            Height = 15
            Caption = 'Plano de Contas (NF-e de Entrada)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label72: TLabel
            Left = 6
            Top = 3
            Width = 206
            Height = 15
            Caption = 'Plano de Contas (Pedido de Compras)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label73: TLabel
            Left = 6
            Top = 49
            Width = 196
            Height = 15
            Caption = 'Plano de Contas (Pedido de Vendas)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label74: TLabel
            Left = 6
            Top = 93
            Width = 174
            Height = 15
            Caption = 'Plano de Contas (NF-e de Saida)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label75: TLabel
            Left = 6
            Top = 181
            Width = 205
            Height = 15
            Caption = 'Plano de Contas (Ordens de Servi'#231'os)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object RzDBButtonEdit3: TRzDBButtonEdit
            Left = 6
            Top = 154
            Width = 422
            Height = 23
            DataSource = dsDados
            DataField = 'EMP_PLN_NFE_EDESC'
            TabOrder = 0
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
            AllowKeyEdit = False
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = RzDBButtonEdit3ButtonClick
          end
          object RzDBButtonEdit6: TRzDBButtonEdit
            Left = 6
            Top = 22
            Width = 422
            Height = 23
            DataSource = dsDados
            DataField = 'EMP_PLN_PED_CDESC'
            TabOrder = 1
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
            AllowKeyEdit = False
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = RzDBButtonEdit6ButtonClick
          end
          object RzDBButtonEdit7: TRzDBButtonEdit
            Left = 6
            Top = 66
            Width = 422
            Height = 23
            DataSource = dsDados
            DataField = 'EMP_PLN_PED_VDESC'
            TabOrder = 2
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
            AllowKeyEdit = False
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = RzDBButtonEdit7ButtonClick
          end
          object RzDBButtonEdit8: TRzDBButtonEdit
            Left = 6
            Top = 110
            Width = 422
            Height = 23
            DataSource = dsDados
            DataField = 'EMP_PLN_NFE_SDESC'
            TabOrder = 3
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
            AllowKeyEdit = False
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = RzDBButtonEdit8ButtonClick
          end
          object RzDBButtonEdit9: TRzDBButtonEdit
            Left = 6
            Top = 198
            Width = 422
            Height = 23
            DataSource = dsDados
            DataField = 'EMP_PLN_OS_DESC'
            TabOrder = 4
            OnEnter = eRazaoEnter
            OnExit = eRazaoExit
            AllowKeyEdit = False
            AltBtnWidth = 15
            ButtonWidth = 18
            OnButtonClick = RzDBButtonEdit9ButtonClick
          end
        end
      end
    end
  end
  object SearchCep: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    TimeOut = 10000
    WebService = wsViaCep
    PesquisarIBGE = True
    Left = 836
    Top = 232
  end
  object ChecaDoc: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 870
    Top = 232
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 905
    Top = 232
  end
  object tbDados: TFDQuery
    BeforePost = tbDadosBeforePost
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000501 AS T1 ORDER BY EMP_RAZAO ASC')
    Left = 769
    Top = 232
    object tbDadosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDadosEMP_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Required = True
      DisplayFormat = '000000'
    end
    object tbDadosEMP_DATA_REG: TSQLTimeStampField
      FieldName = 'EMP_DATA_REG'
      Origin = 'EMP_DATA_REG'
    end
    object tbDadosEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Origin = 'EMP_RAZAO'
      Required = True
      Size = 120
    end
    object tbDadosEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Origin = 'EMP_FANTASIA'
      Required = True
      Size = 80
    end
    object tbDadosEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      Origin = 'EMP_CNPJ'
      Required = True
      EditMask = '!99\.999\.999\/9999\-99;0;'
      Size = 15
    end
    object tbDadosEMP_IESTADUAL: TStringField
      FieldName = 'EMP_IESTADUAL'
      Origin = 'EMP_IESTADUAL'
      Size = 15
    end
    object tbDadosEMP_IMUNICIPAL: TStringField
      FieldName = 'EMP_IMUNICIPAL'
      Origin = 'EMP_IMUNICIPAL'
      Size = 15
    end
    object tbDadosEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      Origin = 'EMP_CEP'
      Required = True
      EditMask = '!99999\-999;0;'
      Size = 10
    end
    object tbDadosEMP_ENDERECO: TStringField
      FieldName = 'EMP_ENDERECO'
      Origin = 'EMP_ENDERECO'
      Required = True
      Size = 120
    end
    object tbDadosEMP_NUMERO: TIntegerField
      FieldName = 'EMP_NUMERO'
      Origin = 'EMP_NUMERO'
      DisplayFormat = '00000'
    end
    object tbDadosEMP_COMPLEMENTO: TStringField
      FieldName = 'EMP_COMPLEMENTO'
      Origin = 'EMP_COMPLEMENTO'
      Size = 60
    end
    object tbDadosEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      Origin = 'EMP_BAIRRO'
      Required = True
      Size = 60
    end
    object tbDadosEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      Origin = 'EMP_CIDADE'
      Required = True
      Size = 60
    end
    object tbDadosEMP_CODIGO_CIDADE: TIntegerField
      FieldName = 'EMP_CODIGO_CIDADE'
      Origin = 'EMP_CODIGO_CIDADE'
    end
    object tbDadosEMP_UF: TStringField
      FieldName = 'EMP_UF'
      Origin = 'EMP_UF'
      FixedChar = True
      Size = 2
    end
    object tbDadosEMP_CODIGO_UF: TIntegerField
      FieldName = 'EMP_CODIGO_UF'
      Origin = 'EMP_CODIGO_UF'
    end
    object tbDadosEMP_PAIS: TStringField
      FieldName = 'EMP_PAIS'
      Origin = 'EMP_PAIS'
      Size = 10
    end
    object tbDadosEMP_CODIGO_PAIS: TIntegerField
      FieldName = 'EMP_CODIGO_PAIS'
      Origin = 'EMP_CODIGO_PAIS'
    end
    object tbDadosEMP_FONEFIXO: TStringField
      FieldName = 'EMP_FONEFIXO'
      Origin = 'EMP_FONEFIXO'
      EditMask = '!\(99\)9999\-9999;0;'
      Size = 12
    end
    object tbDadosEMP_FONEMOVEL: TStringField
      FieldName = 'EMP_FONEMOVEL'
      Origin = 'EMP_FONEMOVEL'
      EditMask = '!\(99\)99999\-9999;0;'
      Size = 13
    end
    object tbDadosEMP_SKYPE: TStringField
      FieldName = 'EMP_SKYPE'
      Origin = 'EMP_SKYPE'
      Size = 60
    end
    object tbDadosEMP_FACEBOOK: TStringField
      FieldName = 'EMP_FACEBOOK'
      Origin = 'EMP_FACEBOOK'
      Size = 60
    end
    object tbDadosEMP_EMAIL: TStringField
      FieldName = 'EMP_EMAIL'
      Origin = 'EMP_EMAIL'
      Size = 60
    end
    object tbDadosEMP_SITE: TStringField
      FieldName = 'EMP_SITE'
      Origin = 'EMP_SITE'
      Size = 60
    end
    object tbDadosEMP_RESP_NOME: TStringField
      FieldName = 'EMP_RESP_NOME'
      Origin = 'EMP_RESP_NOME'
      Size = 120
    end
    object tbDadosEMP_RESP_CPF: TStringField
      FieldName = 'EMP_RESP_CPF'
      Origin = 'EMP_RESP_CPF'
      EditMask = '!999\.999\.999\-99;0;'
      Size = 13
    end
    object tbDadosEMP_RESP_RG: TStringField
      FieldName = 'EMP_RESP_RG'
      Origin = 'EMP_RESP_RG'
      Size = 13
    end
    object tbDadosEMP_RESP_FONEMOVEL: TStringField
      FieldName = 'EMP_RESP_FONEMOVEL'
      Origin = 'EMP_RESP_FONEMOVEL'
      EditMask = '!\(99\)99999\-9999;0;'
      Size = 13
    end
    object tbDadosEMP_RESP_DATANASC: TDateField
      FieldName = 'EMP_RESP_DATANASC'
      Origin = 'EMP_RESP_DATANASC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbDadosEMP_RESP_EMAIL: TStringField
      FieldName = 'EMP_RESP_EMAIL'
      Origin = 'EMP_RESP_EMAIL'
      Size = 60
    end
    object tbDadosEMP_RAMO_ATIVIDADE: TIntegerField
      FieldName = 'EMP_RAMO_ATIVIDADE'
      Origin = 'EMP_RAMO_ATIVIDADE'
    end
    object tbDadosEMP_SEGMENTO: TIntegerField
      FieldName = 'EMP_SEGMENTO'
      Origin = 'EMP_SEGMENTO'
    end
    object tbDadosEMP_CRT: TIntegerField
      FieldName = 'EMP_CRT'
      Origin = 'EMP_CRT'
    end
    object tbDadosEMP_ICMS_CREDITO: TIntegerField
      FieldName = 'EMP_ICMS_CREDITO'
      Origin = 'EMP_ICMS_CREDITO'
    end
    object tbDadosEMP_IESTADUAL_SUST: TStringField
      FieldName = 'EMP_IESTADUAL_SUST'
      Origin = 'EMP_IESTADUAL_SUST'
      Size = 15
    end
    object tbDadosEMP_LOGOTIPO: TMemoField
      FieldName = 'EMP_LOGOTIPO'
      Origin = 'EMP_LOGOTIPO'
      BlobType = ftMemo
    end
    object tbDadosEMP_NFE_AMBIENTE: TIntegerField
      FieldName = 'EMP_NFE_AMBIENTE'
      Origin = 'EMP_NFE_AMBIENTE'
    end
    object tbDadosEMP_NFE_HNUMERO: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_HNUMERO'
      Origin = 'EMP_NFE_HNUMERO'
      DisplayFormat = '000,000,000'
    end
    object tbDadosEMP_NFE_HLOTE: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_HLOTE'
      Origin = 'EMP_NFE_HLOTE'
      DisplayFormat = '000000'
    end
    object tbDadosEMP_NFE_HSERIE: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_HSERIE'
      Origin = 'EMP_NFE_HSERIE'
      DisplayFormat = '000'
    end
    object tbDadosEMP_NFE_HMODELO: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_HMODELO'
      Origin = 'EMP_NFE_HMODELO'
    end
    object tbDadosEMP_NFE_PNUMERO: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_PNUMERO'
      Origin = 'EMP_NFE_PNUMERO'
      DisplayFormat = '000,000,000'
    end
    object tbDadosEMP_NFE_PLOTE: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_PLOTE'
      Origin = 'EMP_NFE_PLOTE'
      DisplayFormat = '000000'
    end
    object tbDadosEMP_NFE_PSERIE: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_PSERIE'
      Origin = 'EMP_NFE_PSERIE'
      DisplayFormat = '000'
    end
    object tbDadosEMP_NFE_PMODELO: TIntegerField
      Alignment = taCenter
      FieldName = 'EMP_NFE_PMODELO'
      Origin = 'EMP_NFE_PMODELO'
    end
    object tbDadosEMP_NFE_TIPO_EMISSAO: TIntegerField
      FieldName = 'EMP_NFE_TIPO_EMISSAO'
      Origin = 'EMP_NFE_TIPO_EMISSAO'
    end
    object tbDadosEMP_NFE_TIPO_XJUST: TStringField
      FieldName = 'EMP_NFE_TIPO_XJUST'
      Origin = 'EMP_NFE_TIPO_XJUST'
      Size = 256
    end
    object tbDadosEMP_NFE_TIPO_DANFE: TIntegerField
      FieldName = 'EMP_NFE_TIPO_DANFE'
      Origin = 'EMP_NFE_TIPO_DANFE'
    end
    object tbDadosEMP_NFE_LOGOTIPO: TBlobField
      FieldName = 'EMP_NFE_LOGOTIPO'
      Origin = 'EMP_NFE_LOGOTIPO'
    end
    object tbDadosEMP_NFE_WEBSERVER: TStringField
      FieldName = 'EMP_NFE_WEBSERVER'
      Origin = 'EMP_NFE_WEBSERVER'
      FixedChar = True
      Size = 2
    end
    object tbDadosEMP_NFE_SSL_TYPE: TIntegerField
      FieldName = 'EMP_NFE_SSL_TYPE'
      Origin = 'EMP_NFE_SSL_TYPE'
    end
    object tbDadosEMP_NFE_CERTIFICADO: TStringField
      FieldName = 'EMP_NFE_CERTIFICADO'
      Origin = 'EMP_NFE_CERTIFICADO'
      Size = 120
    end
    object tbDadosEMP_NFE_PROXY_HOST: TStringField
      FieldName = 'EMP_NFE_PROXY_HOST'
      Origin = 'EMP_NFE_PROXY_HOST'
      Size = 256
    end
    object tbDadosEMP_NFE_PROXY_PORTA: TIntegerField
      FieldName = 'EMP_NFE_PROXY_PORTA'
      Origin = 'EMP_NFE_PROXY_PORTA'
    end
    object tbDadosEMP_NFE_PROXY_USUARIO: TStringField
      FieldName = 'EMP_NFE_PROXY_USUARIO'
      Origin = 'EMP_NFE_PROXY_USUARIO'
      Size = 120
    end
    object tbDadosEMP_NFE_PROXY_SENHA: TStringField
      FieldName = 'EMP_NFE_PROXY_SENHA'
      Origin = 'EMP_NFE_PROXY_SENHA'
      Size = 25
    end
    object tbDadosEMP_NFE_EMAIL_HOST: TStringField
      FieldName = 'EMP_NFE_EMAIL_HOST'
      Origin = 'EMP_NFE_EMAIL_HOST'
      Size = 120
    end
    object tbDadosEMP_NFE_EMAIL_PORTA: TIntegerField
      FieldName = 'EMP_NFE_EMAIL_PORTA'
      Origin = 'EMP_NFE_EMAIL_PORTA'
    end
    object tbDadosEMP_NFE_EMAIL_USUARIO: TStringField
      FieldName = 'EMP_NFE_EMAIL_USUARIO'
      Origin = 'EMP_NFE_EMAIL_USUARIO'
      Size = 120
    end
    object tbDadosEMP_NFE_EMAIL_SENHA: TStringField
      FieldName = 'EMP_NFE_EMAIL_SENHA'
      Origin = 'EMP_NFE_EMAIL_SENHA'
      Size = 25
    end
    object tbDadosEMP_NFE_EMAIL_SEGURO: TIntegerField
      FieldName = 'EMP_NFE_EMAIL_SEGURO'
      Origin = 'EMP_NFE_EMAIL_SEGURO'
    end
    object tbDadosEMP_NFE_EMAIL_ASSUNTO: TStringField
      FieldName = 'EMP_NFE_EMAIL_ASSUNTO'
      Origin = 'EMP_NFE_EMAIL_ASSUNTO'
      Size = 60
    end
    object tbDadosEMP_NFE_EMAIL_MESSAGE: TStringField
      FieldName = 'EMP_NFE_EMAIL_MESSAGE'
      Origin = 'EMP_NFE_EMAIL_MESSAGE'
      Size = 256
    end
    object tbDadosEMP_NFE_FOLDER_XSD: TStringField
      FieldName = 'EMP_NFE_FOLDER_XSD'
      Origin = 'EMP_NFE_FOLDER_XSD'
      Size = 256
    end
    object tbDadosEMP_NFE_FOLDER_LOGS: TStringField
      FieldName = 'EMP_NFE_FOLDER_LOGS'
      Origin = 'EMP_NFE_FOLDER_LOGS'
      Size = 256
    end
    object tbDadosEMP_OBSERVACAO: TStringField
      FieldName = 'EMP_OBSERVACAO'
      Origin = 'EMP_OBSERVACAO'
      Size = 600
    end
    object tbDadosEMP_DATA_FUNDACAO: TDateField
      FieldName = 'EMP_DATA_FUNDACAO'
      Origin = 'EMP_DATA_FUNDACAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tbDadosEMP_ICMS_ALIQUOTA: TFMTBCDField
      FieldName = 'EMP_ICMS_ALIQUOTA'
      Origin = 'EMP_ICMS_ALIQUOTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object tbDadosEMP_STATUS: TIntegerField
      FieldName = 'EMP_STATUS'
      Origin = 'EMP_STATUS'
    end
    object tbDadosEMP_NFE_FOLDER_PDFS: TStringField
      FieldName = 'EMP_NFE_FOLDER_PDFS'
      Origin = 'EMP_NFE_FOLDER_PDFS'
      Size = 256
    end
    object tbDadosEMP_NFE_MODELO_DF: TIntegerField
      FieldName = 'EMP_NFE_MODELO_DF'
      Origin = 'EMP_NFE_MODELO_DF'
    end
    object tbDadosEMP_NFE_VERSAO_DF: TIntegerField
      FieldName = 'EMP_NFE_VERSAO_DF'
      Origin = 'EMP_NFE_VERSAO_DF'
    end
    object tbDadosEMP_NFE_AVISO_IPI_I: TStringField
      FieldName = 'EMP_NFE_AVISO_IPI_I'
      Origin = 'EMP_NFE_AVISO_IPI_I'
      Size = 256
    end
    object tbDadosEMP_NFE_AVISO_ICMS_A: TStringField
      FieldName = 'EMP_NFE_AVISO_ICMS_A'
      Origin = 'EMP_NFE_AVISO_ICMS_A'
      Size = 256
    end
    object tbDadosEMP_NFE_PRINT_LEI_12741: TIntegerField
      FieldName = 'EMP_NFE_PRINT_LEI_12741'
      Origin = 'EMP_NFE_PRINT_LEI_12741'
    end
    object tbDadosEMP_ATIVA_RETAGUARDA: TIntegerField
      FieldName = 'EMP_ATIVA_RETAGUARDA'
      Origin = 'EMP_ATIVA_RETAGUARDA'
    end
    object tbDadosEMP_ATIVA_CAIXA: TIntegerField
      DefaultExpression = '2'
      FieldName = 'EMP_ATIVA_CAIXA'
      Origin = 'EMP_ATIVA_CAIXA'
    end
    object tbDadosEMP_NCM_FONTE: TStringField
      FieldName = 'EMP_NCM_FONTE'
      Origin = 'EMP_NCM_FONTE'
      Size = 65
    end
    object tbDadosEMP_NCM_CHAVE: TStringField
      FieldName = 'EMP_NCM_CHAVE'
      Origin = 'EMP_NCM_CHAVE'
      Size = 15
    end
    object tbDadosEMP_DECIMAL_CUSTO: TIntegerField
      FieldName = 'EMP_DECIMAL_CUSTO'
      Origin = 'EMP_DECIMAL_CUSTO'
    end
    object tbDadosEMP_DECIMAL_VENDA: TIntegerField
      FieldName = 'EMP_DECIMAL_VENDA'
      Origin = 'EMP_DECIMAL_VENDA'
    end
    object tbDadosEMP_DECIMAL_QTDE: TIntegerField
      FieldName = 'EMP_DECIMAL_QTDE'
      Origin = 'EMP_DECIMAL_QTDE'
    end
    object tbDadosEMP_SERVER_REST_HOST: TStringField
      FieldName = 'EMP_SERVER_REST_HOST'
      Origin = 'EMP_SERVER_REST_HOST'
      Size = 255
    end
    object tbDadosEMP_SERVER_REST_PORT: TIntegerField
      FieldName = 'EMP_SERVER_REST_PORT'
      Origin = 'EMP_SERVER_REST_PORT'
    end
    object tbDadosEMP_PLN_PDV: TIntegerField
      FieldName = 'EMP_PLN_PDV'
      Origin = 'EMP_PLN_PDV'
    end
    object tbDadosEMP_PLN_PDV_DESC: TStringField
      FieldName = 'EMP_PLN_PDV_DESC'
      Origin = 'EMP_PLN_PDV_DESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_NFE_S: TIntegerField
      FieldName = 'EMP_PLN_NFE_S'
      Origin = 'EMP_PLN_NFE_S'
    end
    object tbDadosEMP_PLN_NFE_SDESC: TStringField
      FieldName = 'EMP_PLN_NFE_SDESC'
      Origin = 'EMP_PLN_NFE_SDESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_NFE_E: TIntegerField
      FieldName = 'EMP_PLN_NFE_E'
      Origin = 'EMP_PLN_NFE_E'
    end
    object tbDadosEMP_PLN_NFE_EDESC: TStringField
      FieldName = 'EMP_PLN_NFE_EDESC'
      Origin = 'EMP_PLN_NFE_EDESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_PED_V: TIntegerField
      FieldName = 'EMP_PLN_PED_V'
      Origin = 'EMP_PLN_PED_V'
    end
    object tbDadosEMP_PLN_PED_VDESC: TStringField
      FieldName = 'EMP_PLN_PED_VDESC'
      Origin = 'EMP_PLN_PED_VDESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_PED_C: TIntegerField
      FieldName = 'EMP_PLN_PED_C'
      Origin = 'EMP_PLN_PED_C'
    end
    object tbDadosEMP_PLN_PED_CDESC: TStringField
      FieldName = 'EMP_PLN_PED_CDESC'
      Origin = 'EMP_PLN_PED_CDESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_OS: TIntegerField
      FieldName = 'EMP_PLN_OS'
      Origin = 'EMP_PLN_OS'
    end
    object tbDadosEMP_PLN_OS_DESC: TStringField
      FieldName = 'EMP_PLN_OS_DESC'
      Origin = 'EMP_PLN_OS_DESC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_CLI_PDV: TIntegerField
      FieldName = 'EMP_CLI_PDV'
      Origin = 'EMP_CLI_PDV'
    end
    object tbDadosEMP_CLI_PDV_DESC: TStringField
      FieldName = 'EMP_CLI_PDV_DESC'
      Origin = 'EMP_CLI_PDV_DESC'
      ProviderFlags = []
      Size = 120
    end
    object tbDadosEMP_PLN_CTAS_PAG: TIntegerField
      FieldName = 'EMP_PLN_CTAS_PAG'
      Origin = 'EMP_PLN_CTAS_PAG'
    end
    object tbDadosEMP_PLN_CTAS_PAG_DSC: TStringField
      FieldName = 'EMP_PLN_CTAS_PAG_DSC'
      Origin = 'EMP_PLN_CTAS_PAG_DSC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_PLN_CTAS_REC: TIntegerField
      FieldName = 'EMP_PLN_CTAS_REC'
      Origin = 'EMP_PLN_CTAS_REC'
    end
    object tbDadosEMP_PLN_CTAS_REC_DSC: TStringField
      FieldName = 'EMP_PLN_CTAS_REC_DSC'
      Origin = 'EMP_PLN_CTAS_REC_DSC'
      ProviderFlags = []
      Size = 80
    end
    object tbDadosEMP_USAR_LOGIN: TStringField
      FieldName = 'EMP_USAR_LOGIN'
      Origin = 'EMP_USAR_LOGIN'
      FixedChar = True
      Size = 1
    end
  end
  object SqlAux: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 769
    Top = 264
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 801
    Top = 232
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.sysIcones16
    Left = 941
    Top = 232
    StyleName = 'Platform Default'
    object actCadastrar: TAction
      Caption = 'Cadastrar'
      ImageIndex = 13
      OnExecute = actCadastrarExecute
      OnUpdate = actCadastrarUpdate
    end
    object actAlterar: TAction
      Caption = 'Alterar'
      ImageIndex = 15
      OnExecute = actAlterarExecute
      OnUpdate = actAlterarUpdate
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 19
      OnExecute = actExcluirExecute
      OnUpdate = actAlterarUpdate
    end
    object actGravar: TAction
      Caption = 'Gravar'
      ImageIndex = 3
      OnExecute = actGravarExecute
      OnUpdate = actGravarUpdate
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
      OnExecute = actCancelarExecute
      OnUpdate = actGravarUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 25
      OnExecute = actSairExecute
      OnUpdate = actSairUpdate
    end
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 802
    Top = 264
  end
  object OpenImg: TOpenPictureDialog
    Filter = 'Bitmap|*.bmp'
    Title = 'Selecione o Logo.'
    Left = 874
    Top = 303
  end
  object OpenDialog: TOpenDialog
    Left = 847
    Top = 408
  end
end
