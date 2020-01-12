object FrTabelaPrecos: TFrTabelaPrecos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Tabelas de Pre'#231'os'
  ClientHeight = 586
  ClientWidth = 1109
  Color = clGray
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 1105
    Height = 44
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
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
      Width = 85
      Height = 40
      DisabledIndex = 35
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      Left = 97
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 37
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      Left = 190
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 39
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actExcluir
    end
    object btnOK: TRzToolButton
      Left = 283
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 41
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actGravar
    end
    object btnError: TRzToolButton
      Left = 376
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 43
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      Left = 469
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 45
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actSair
    end
    object RzSpacer1: TRzSpacer
      Left = 89
      Top = 10
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 182
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 275
      Top = 10
    end
    object RzSpacer4: TRzSpacer
      Left = 461
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 368
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
    object Label20: TLabel
      Left = 41
      Top = 3
      Width = 152
      Height = 26
      Caption = 'Tabelas de Pre'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      AlignWithMargins = True
      Left = 254
      Top = 1
      Width = 799
      Height = 30
      Caption = 
        'Formul'#225'rio respons'#225'vel por gerenciar as tabelas de pre'#231'os do sis' +
        'tema. Permite manipular individualmente os produtos, podendo exc' +
        'luir, incluir e alterar os valores dos produtos ou mesmo refazer' +
        ' a tabela.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 220
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
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 84
    Width = 1105
    Height = 502
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
      Height = 502
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ActivePage = tabDetalhes
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      TabWidth = 120
      OnChanging = pgControlChanging
      ParentColor = False
      Color = clGray
      object tabPrincipal: TTabSheet
        Caption = 'Principal'
        object JvDBGrid1: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1097
          Height = 473
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          DrawingStyle = gdsClassic
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnDblClick = JvDBGrid1DblClick
          AlternateRowColor = 15658734
          ScrollBars = ssVertical
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 18
          Columns = <
            item
              Expanded = False
              FieldName = 'PRC_CODIGO'
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRC_DATA_REG'
              Title.Caption = 'Modifica'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 202
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRC_DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 596
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRC_TIPO'
              Title.Caption = 'Tipo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 182
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRC_STATUS'
              PickList.Strings = (
                'S'
                'N')
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Ativo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 36
              Visible = True
            end>
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1097
          Height = 46
          Align = alTop
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 6
            Top = 5
            Width = 37
            Height = 14
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 103
            Top = 5
            Width = 65
            Height = 14
            Caption = 'Modifica'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 234
            Top = 5
            Width = 53
            Height = 14
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 499
            Top = 5
            Width = 24
            Height = 14
            Caption = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 690
            Top = 5
            Width = 34
            Height = 14
            Caption = 'Status'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
          end
          object eTipo: TJvDBComboBox
            Left = 499
            Top = 19
            Width = 185
            Height = 22
            DataField = 'PRC_TIPO'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Tabela PDV'
              'Tabela Retaguarda')
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              '1'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnEnter = eDescricaoEnter
            OnExit = eDescricaoExit
          end
          object eStatus: TJvDBComboBox
            Left = 690
            Top = 19
            Width = 97
            Height = 22
            DataField = 'PRC_STATUS'
            DataSource = dsDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Items.Strings = (
              'Ativo'
              'Inativo')
            ParentFont = False
            TabOrder = 4
            Values.Strings = (
              '1'
              '2')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnEnter = eDescricaoEnter
            OnExit = eDescricaoExit
          end
          object eCodigo: TRzDBEdit
            Left = 6
            Top = 19
            Width = 91
            Height = 22
            DataSource = dsDados
            DataField = 'PRC_CODIGO'
            Enabled = False
            TabOrder = 0
            OnEnter = eDescricaoEnter
            OnExit = eDescricaoExit
          end
          object eModificacao: TRzDBEdit
            Left = 103
            Top = 19
            Width = 125
            Height = 22
            DataSource = dsDados
            DataField = 'PRC_DATA_REG'
            Enabled = False
            TabOrder = 1
            OnEnter = eDescricaoEnter
            OnExit = eDescricaoExit
          end
          object eDescricao: TRzDBEdit
            Left = 234
            Top = 19
            Width = 259
            Height = 22
            DataSource = dsDados
            DataField = 'PRC_DESCRICAO'
            CharCase = ecUpperCase
            TabOrder = 2
            OnEnter = eDescricaoEnter
            OnExit = eDescricaoExit
          end
        end
        object RzGroupBox1: TRzGroupBox
          Left = 0
          Top = 46
          Width = 150
          Height = 427
          Align = alLeft
          Caption = 'Op'#231#245'es [ Produtos ]'
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -12
          CaptionFont.Name = 'Calibri'
          CaptionFont.Style = [fsBold]
          TabOrder = 1
          object PngBitBtn1: TPngBitBtn
            AlignWithMargins = True
            Left = 4
            Top = 18
            Width = 142
            Height = 27
            Action = actGerarTabela
            Align = alTop
            Caption = 'Gerar Tabela'
            Layout = blGlyphRight
            Spacing = 8
            TabOrder = 0
            PngImage.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA793000001DC4944415478DA636440
              020D0D0D4C7765BE45B3323327FF6760D0FDFFFF1F272323D3772606864BBFFF
              FC9BABF494731950CD3F643D8C3046FCCC52652656E62D5CECEC32D262423C7C
              5C5C0C8C40D9FF40933E7DFDC6F0E4F5DB2FDF7FFE7A0414F29D97D4710FC580
              84F9A5AA8CFF994E2B4A88F3880B0B3033E0002FDE7EF873FFC5CB2FFF7FFF33
              5998DE7D176C40E8AA5066DE2FCA371424C514C5855035A7992532CC3A351FDD
              90BF0F9FBFBA2BF7984313E41DC6F8B965D1DC1C1C33F4551478D06DC4660008
              5CB87DFFCB971FBF5217A774AE604C9E5F7948495AC256849F97815803DE7CF8
              C470F7D98B83F3123B1C1813E6557C345653E663636526DA805F7F7E339CBD79
              EFC382A44E41C6F839657F2C74D4999918198936E0FFBFFF0CC7AEDDFAB328B9
              9395721724CDAF38A82C2D69871C06768AD60C1AA26A70FE8DD7B7180EDD3F8A
              1A06CF5FEE9F97D0EE843516981899183CD55D19A4F9A4181E7D78C2B0F3F61E
              6082FA0F713E105EBCF3F00B3055416201960EE4244415258505E1FE60676163
              B057B4613870EF30C3AFBFBFE1B63F7FF3FEEFA317AF11E980E294089344CE0B
              9222823CBCDC9C0C1C2CAC0C3F8001F6F9EB7786676FDEE1CE0B3080921BFFFF
              33F8FBEF3F3F307E3F02C3E43CC1DC482E000020100320CD708D780000000049
              454E44AE426082}
            PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
          end
          object PngBitBtn2: TPngBitBtn
            AlignWithMargins = True
            Left = 4
            Top = 336
            Width = 142
            Height = 27
            Margins.Top = 0
            Action = actIncluirProdutos
            Align = alBottom
            Caption = 'Incluir Produtos'
            Layout = blGlyphRight
            ParentShowHint = False
            ShowHint = False
            Spacing = 8
            TabOrder = 1
            PngImage.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA793000001364944415478DA636480
              828AEE39FF19F000365696D34D050966E8E28CC806B4972463D55CD93397414C
              4880E1F3B76F27EB73E32CC832A03E379661C6B22D0C1F3E7DBED45890A04FB2
              0120B91F3F7F314C5FB6F9FF87CF5F4E36E527589264003AE8284D6124DA006C
              06E235E0848B0B83C59E3D1836C3E4976C3BC410EB6D4F9C0B7EFDF9CDB0EDF2
              41866377CE317CF9F98D81879D9B41964F81E1F0A7E35CABC3FABFE3754145EF
              6C86373C4F187EB3FCC0E211C6931C7F399DF0BA60DDB95D0C1BCFEF85F31726
              7732C4CF2D87F3FF33FCAFC7EB82A4D9350C7F997EE3340008EEE07541F2FC2A
              863FFFFE8235A203A8413FF11A50B2AA93E1F5E777E4BB80E43040D6CCC5C9C9
              606D6DC4B0FDE65686575F5E118E055C206D6603D70F966FA540EB62805C2520
              BE0BB479C90FBE3FDDA074000070F9C8F9A20E12370000000049454E44AE4260
              82}
            PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
          end
          object PngBitBtn3: TPngBitBtn
            AlignWithMargins = True
            Left = 4
            Top = 366
            Width = 142
            Height = 27
            Margins.Top = 0
            Action = actExcluirProduto
            Align = alBottom
            Caption = 'Excluir Produto'
            Layout = blGlyphRight
            Spacing = 8
            TabOrder = 2
            PngImage.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA793000001A64944415478DA636440
              02FF1B1A984E1E3A14CDC4CE9ECCF0EF9FEEFF7FFF38199998BE3330315DFEF7
              EBD71C735BDB658C0D0DFF90F530C218479D9C94595959B7B0F3F0C8882B2BF3
              F0080BC3157D79FB96E1E5DDBB5F7E7EFDFA88F1CF1F5FD33D7BEEA11870C2D5
              55959191F1B4B496168FB0BC3C33030EF0F6E1C33F4FAE5DFBFAF7CF1F63EB7D
              FBEE820D58151ACA2CFFE9D30DA06625613939260602E0CD83077F9FDDB871D7
              CCD25213E41DC6E3CECED15CFCFC33D46C6D79086986819B870F7FF9F1F163AA
              C5DEBD2B184F79781C92D5D3B315909424563FC3FBA74F199E5CBD7AD06CFB76
              07C6136E6E1FB59D9CF858D8D98936E0F78F1F0C37F6EFFF60B66B9720E37117
              973FFA5E5ECCC0406460B1B000635CE0CF891360FCEFDF3F86CBDBB7FFB1D8B3
              879572179C74773F28A7AF6F476A183CBD7265BFE98E1D4EA4C7C2FFFF0CB780
              B1F0FDD327482CC0D281A4BABA92A8A222E17470EFDEDF67B76E21D2014890A2
              94089344CE0BA24A4A3CDC82820C6C9C9C0CBFBE7F67F8FAEE1DC3EBFBF771E7
              05B8F79072E3FFBF7F0DFEFDFDCBCFC4CCFC919199F902C1DC482E00004A31E3
              11F3C7A4B00000000049454E44AE426082}
          end
          object PngBitBtn4: TPngBitBtn
            AlignWithMargins = True
            Left = 4
            Top = 396
            Width = 142
            Height = 27
            Margins.Top = 0
            Action = actLimparProdutos
            Align = alBottom
            Caption = 'Limpar Tabela'
            Layout = blGlyphRight
            Spacing = 8
            TabOrder = 3
            PngImage.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000006624B474400FF00FF00FFA0BDA7930000020D4944415478DA6364A0
              103022733ACB16AB3333FE8F6161660DF8CFF04FE2FFDF7FDC6045CC4C5F81E4
              8B3F7F7EAFFFC7C0B4B4BC2BF62686017D95CB2A1818FED5C9ABC83349CA49B2
              F3F0F230B0B0B382E5FEFCFCCDF0E5F31786E70F9FFD7C78F7D13F2646C6C682
              B6E84E14037A2A16FFB6F7B463111411C4EBE4F7AFDF331CDA7EF84F71670C2B
              8A01BDE58BFE33B3B030C82ACB3148CA4A30F009F032B073B083E57EFEF8C9F0
              E9C36786E78F9E333CBEF798E1EF9FBF0CC59DB18C280674972EFCEF11EACEF0
              F8FE13B0C26F5FBE31FCFCFE132CC7CEC9CEC0C5CDC520292FC920AB28C3B063
              F54E86D2EE784C039CFD9D19F804F9F07AE1D3FB8F0C7B37EEC36E00071707D0
              F9920C1240CC2FC4C7C001F4C2FFDFBF183EEF5CC3F0EBEC61867F5F3F33FC62
              62637829A8C02077F73897D5F1E3DF510CF00CF3647874EF11C38B272F19BE7E
              FACAF0E7EB17069D5B3B1978BEBEC19200184FB272723AE1F5C2D7ADCB19BEED
              5C85D33BFF1918EAF17AE15B7721C3BFB72FF12443C63B78BD6074743603D3FF
              7F0C167BF660E83DE1E2028E61B801FD958B5F19DB9A884AC94BC315BD6DCC20
              DE053DE58B6C181918378B4B8BB3C8ABCAF3080A0B30FCD9BF9EE1FBAED5C485
              01D81B258B8099E77F203B275BDADF7FFFD4197EFD14D2B9B99319180B8C586C
              478D055CE08CAF2FD7EFAF5F4B1998986218FEFF57020ADD05DABC84E1DBB76E
              503A00000920DF1E6FC429D10000000049454E44AE426082}
          end
        end
        object RzGroupBox2: TRzGroupBox
          AlignWithMargins = True
          Left = 153
          Top = 46
          Width = 941
          Height = 427
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'Produtos'
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -12
          CaptionFont.Name = 'Calibri'
          CaptionFont.Style = [fsBold]
          Checked = False
          TabOrder = 2
          object gGrid: TJvDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 18
            Width = 933
            Height = 405
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = True
            DataSource = dsPrecos
            DrawingStyle = gdsGradient
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection]
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Calibri'
            TitleFont.Style = []
            AutoAppend = False
            ShowGlyphs = False
            AlternateRowColor = 14737632
            PostOnEnterKey = True
            AutoSizeColumns = True
            AutoSizeColumnIndex = 2
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            ColumnResize = gcrNone
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 18
            ShowMemos = False
            Columns = <
              item
                Expanded = False
                FieldName = 'PRC_DATA_REG'
                ReadOnly = True
                Title.Caption = 'Modifica'#231#227'o'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 137
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRD_CODIGO'
                ReadOnly = True
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRD_DESCRICAO'
                ReadOnly = True
                Title.Caption = 'Produto'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 544
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRD_VLR_CUSTO'
                ReadOnly = True
                Title.Caption = 'Valor de Custo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRC_VLR_VENDA'
                Title.Caption = 'Valor de Venda'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Calibri'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end>
            Delphi2010OptionsMigrated = True
          end
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.sysIcones16
    Left = 431
    Top = 263
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
      ImageIndex = 7
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
      OnUpdate = actCadastrarUpdate
    end
    object actGerarTabela: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Gerar Tabela'
      OnExecute = actGerarTabelaExecute
      OnUpdate = actGerarTabelaUpdate
    end
    object actIncluirProdutos: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Incluir Produtos'
      OnExecute = actIncluirProdutosExecute
      OnUpdate = actIncluirProdutosUpdate
    end
    object actExcluirProduto: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Excluir Produto'
      OnExecute = actExcluirProdutoExecute
      OnUpdate = actExcluirProdutoUpdate
    end
    object actLimparProdutos: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Limpar Tabela'
      OnExecute = actLimparProdutosExecute
      OnUpdate = actExcluirProdutoUpdate
    end
  end
  object tbDados: TFDQuery
    BeforePost = tbDadosBeforePost
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime]
    FormatOptions.FmtDisplayDateTime = 'dd/mm/yyyy hh:mm:ss'
    SQL.Strings = (
      'SELECT'
      '   *'
      'FROM'
      '   C000303'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   PRC_DESCRICAO ASC')
    Left = 464
    Top = 263
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object tbDadosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDadosID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tbDadosPRC_DATA_REG: TSQLTimeStampField
      FieldName = 'PRC_DATA_REG'
      Origin = 'PRC_DATA_REG'
    end
    object tbDadosPRC_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PRC_CODIGO'
      Origin = 'PRC_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosPRC_DESCRICAO: TStringField
      FieldName = 'PRC_DESCRICAO'
      Origin = 'PRC_DESCRICAO'
      Size = 60
    end
    object tbDadosPRC_TIPO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'PRC_TIPO'
      Origin = 'PRC_TIPO'
      OnGetText = tbDadosPRC_TIPOGetText
    end
    object tbDadosPRC_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'PRC_STATUS'
      Origin = 'PRC_STATUS'
      OnGetText = tbDadosPRC_STATUSGetText
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 464
    Top = 296
  end
  object tbPrecos: TFDQuery
    BeforeDelete = tbPrecosBeforeDelete
    IndexFieldNames = 'ID_TABELA'
    MasterSource = dsDados
    MasterFields = 'ID'
    DetailFields = 'ID_TABELA'
    Connection = FrModuloRet.DBConexao
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime]
    FormatOptions.FmtDisplayDateTime = 'dd/mm/yyyy hh:mm:ss'
    SQL.Strings = (
      'SELECT'
      '   T2.PRD_CODIGO,'
      '   T2.PRD_DESCRICAO,'
      '   T2.PRD_VLR_CUSTO,'
      '   T1.*'
      'FROM'
      '   C000304 AS T1'
      'JOIN'
      '   C000405 AS T2 ON T1.ID_PRODUTO = T2.ID'
      'WHERE'
      '   T1.ID_TABELA = :ID'
      'ORDER BY'
      '   T2.PRD_DESCRICAO ASC')
    Left = 494
    Top = 263
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object tbPrecosPRD_CODIGO: TIntegerField
      DisplayWidth = 45
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      DisplayFormat = '000000'
    end
    object tbPrecosPRD_DESCRICAO: TStringField
      DisplayWidth = 300
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      Size = 120
    end
    object tbPrecosPRD_VLR_CUSTO: TBCDField
      FieldName = 'PRD_VLR_CUSTO'
      Origin = 'PRD_VLR_CUSTO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object tbPrecosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbPrecosID_TABELA: TIntegerField
      FieldName = 'ID_TABELA'
      Origin = 'ID_TABELA'
    end
    object tbPrecosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object tbPrecosPRC_DATA_REG: TSQLTimeStampField
      DisplayWidth = 250
      FieldName = 'PRC_DATA_REG'
      Origin = 'PRC_DATA_REG'
    end
    object tbPrecosPRC_VLR_VENDA: TBCDField
      FieldName = 'PRC_VLR_VENDA'
      Origin = 'PRC_VLR_VENDA'
      DisplayFormat = ',0.00'
      Precision = 18
    end
  end
  object dsPrecos: TJvDataSource
    DataSet = tbPrecos
    Left = 494
    Top = 296
  end
  object tbPesq: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 462
    Top = 350
  end
  object spIncluirProdutos: TFDStoredProc
    AfterExecute = spIncluirProdutosAfterExecute
    Connection = FrModuloRet.DBConexao
    StoredProcName = 'SP_INC_PROD_TABELA_PRECO'
    Left = 462
    Top = 382
    ParamData = <
      item
        Position = 1
        Name = 'ID_TABELA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
