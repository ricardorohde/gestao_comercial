object FrContasPagar: TFrContasPagar
  Left = 0
  Top = 0
  BorderStyle = bsNone
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
  object pnMeio: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 135
    Width = 1095
    Height = 257
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 131
    ExplicitHeight = 261
    object JvDBGrid1: TJvDBGrid
      Left = 0
      Top = 0
      Width = 1095
      Height = 257
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 0
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsDados
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
          FieldName = 'PAG_FORNECEDOR'
          Title.Caption = 'Fornecedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAG_DATA_INCLUSAO'
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
          FieldName = 'PAG_PARCELA'
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
          Expanded = False
          FieldName = 'PAG_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
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
          FieldName = 'PAG_DOCUMENTO'
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
          FieldName = 'PAG_ORIGEM'
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
          FieldName = 'PAG_ANOTACOES'
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
          FieldName = 'PAG_DIAS_VENCIDOS'
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
          FieldName = 'PAG_STATUS_TEXTO'
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
          FieldName = 'PAG_VALOR'
          Title.Caption = 'R$ - Inicial'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_VLR_ATUALIZADO'
          Title.Caption = 'R$ - Atualizado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_VLR_RECEBIDO'
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
          FieldName = 'PAG_VLR_SALDO'
          Title.Caption = 'R$ - Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
      Delphi2010OptionsMigrated = True
    end
  end
  object pnBaixo: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 394
    Width = 1095
    Height = 145
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 933
      Top = 3
      Width = 162
      Height = 139
      Margins.Right = 0
      Align = alRight
      BevelOuter = bvNone
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
          Caption = 'Total Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 51
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
          DataField = 'TOTAL_RECEBIDO'
          DataSource = dsDados
          ExplicitLeft = 61
          ExplicitWidth = 98
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 94
        Width = 162
        Height = 45
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alRight
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
          Caption = 'Total a Pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 64
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
          DataField = 'TOTAL_RECEBER'
          DataSource = dsDados
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
        object Label4: TLabel
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
          DataField = 'TOTAL_CONTAS'
          DataSource = dsDados
          ExplicitLeft = 61
          ExplicitWidth = 98
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 930
      Height = 145
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object JvDBGrid2: TJvDBGrid
        Left = 0
        Top = 0
        Width = 930
        Height = 145
        Margins.Right = 0
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsPagtos
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
            FieldName = 'PAG_DATA_PAGTO'
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
            FieldName = 'PAG_FORMA_PAGTO'
            Title.Caption = 'Forma de Pagamento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAG_ANOTACOES'
            Title.Caption = 'Anota'#231#245'es'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAG_PLN_CTAS_DESC'
            Title.Caption = 'Plano de Contas'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 231
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAG_SALDO'
            Title.Caption = 'Saldo a Pagar'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAG_VLR_JUROS'
            Title.Caption = 'Juros - R$'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAG_VLR_MULTA'
            Title.Caption = 'Multa - R$'
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
            FieldName = 'PAG_VLR_ACRESCIMOS'
            Title.Caption = 'Acr'#233'scimos - R$'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAG_VLR_DESCONTOS'
            Title.Caption = 'Descontos - R$'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAG_VLR_RECEBIDO'
            Title.Caption = 'Valor Pagto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end>
        Delphi2010OptionsMigrated = True
      end
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 88
    Width = 1095
    Height = 45
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 84
    object Label5: TLabel
      Left = 532
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
    object Label1: TLabel
      Left = 2
      Top = 2
      Width = 107
      Height = 13
      Caption = 'Selecionar Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 660
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
    object Label7: TLabel
      Left = 431
      Top = 2
      Width = 109
      Height = 13
      Caption = 'Per'#237'odo de Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object PngSpeedButton1: TPngSpeedButton
      Left = 792
      Top = 1
      Width = 102
      Height = 43
      Caption = 'Filtrar Contas'
      Spacing = 6
      OnClick = PngSpeedButton1Click
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
    object Bevel1: TBevel
      Left = 419
      Top = 1
      Width = 2
      Height = 45
    end
    object Bevel2: TBevel
      Left = 648
      Top = 1
      Width = 2
      Height = 45
    end
    object Bevel4: TBevel
      Left = 780
      Top = 1
      Width = 2
      Height = 45
    end
    object Bevel5: TBevel
      Left = 904
      Top = 1
      Width = 2
      Height = 45
    end
    object eDataFim: TJvDateEdit
      AlignWithMargins = True
      Left = 542
      Top = 17
      Width = 96
      Height = 21
      Margins.Top = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 3
    end
    object eDataIni: TJvDateEdit
      AlignWithMargins = True
      Left = 431
      Top = 17
      Width = 95
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
      Left = 660
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
      TabOrder = 1
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
    object eFornecedor: TRzButtonEdit
      AlignWithMargins = True
      Left = 2
      Top = 17
      Width = 407
      Height = 21
      Margins.Top = 2
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
      AltBtnKind = bkReject
      ButtonShortCut = 113
      AltBtnVisible = True
      AltBtnWidth = 18
      ButtonWidth = 18
      OnAltBtnClick = eFornecedorAltBtnClick
      OnButtonClick = eFornecedorButtonClick
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
    TabOrder = 3
    VisualStyle = vsGradient
    object Label8: TLabel
      AlignWithMargins = True
      Left = 41
      Top = 1
      Width = 142
      Height = 32
      Margins.Left = 5
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Contas a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 25
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 207
      Top = 1
      Width = 754
      Height = 32
      Margins.Left = 10
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 
        'Contas a pagar s'#227'o basicamente as obriga'#231#245'es financeiras que a e' +
        'mpresa assume com seus fornecedores, '#233' um tipo de conta onde fic' +
        'am registrados os compromissos financeiros a serem liquidados co' +
        'mo fornecedores ou impostos.'
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
      Left = 194
      Top = 1
      Width = 2
      Height = 32
      Margins.Left = 10
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      ExplicitLeft = 204
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
      ExplicitLeft = -10
      ExplicitTop = -1
      ExplicitHeight = 34
    end
  end
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 1095
    Height = 48
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
    TabOrder = 4
    VisualStyle = vsGradient
    ToolbarControls = (
      btnNew
      RzSpacer1
      btnEdit
      RzSpacer2
      RzToolButton1
      RzSpacer6
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
      Margins.Bottom = 2
      DisabledIndex = 9
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = Action1
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
      Margins.Bottom = 2
      DisabledIndex = 13
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = Action3
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
      Margins.Bottom = 2
      DisabledIndex = 7
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = Action2
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
      Margins.Bottom = 2
      DisabledIndex = 6
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = Action4
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
      Margins.Bottom = 2
      DisabledIndex = 12
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = Action7
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
      Margins.Bottom = 2
      DisabledIndex = 5
      GradientColorStyle = gcsCustom
      Images = FrPrincipal.Icones20x20
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = Action6
    end
    object RzSpacer1: TRzSpacer
      Left = 105
      Top = 12
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 217
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
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 227
      Top = 2
      Width = 100
      Height = 44
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      GradientColorStyle = gcsCustom
      Layout = blGlyphTop
      Spacing = 0
      UseToolbarButtonSize = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Action = actJurosMulta
    end
    object RzSpacer6: TRzSpacer
      Left = 329
      Top = 12
      Grooved = True
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.Icones20x20
    Left = 464
    Top = 204
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = '   Incluir Contas   '
      ImageIndex = 9
      OnExecute = Action1Execute
    end
    object Action3: TAction
      Caption = 'Alterar Parcela'
      ImageIndex = 13
      OnExecute = Action3Execute
      OnUpdate = Action3Update
    end
    object Action2: TAction
      Caption = 'Excluir Conta'
      ImageIndex = 7
      OnExecute = Action2Execute
    end
    object Action4: TAction
      Caption = 'Pagar Parcela'
      Hint = 'Efetuar pagamento integral o parcial da parcela.'
      ImageIndex = 6
      OnExecute = Action4Execute
      OnUpdate = Action4Update
    end
    object Action5: TAction
      Caption = 'Baixar Conta'
      Enabled = False
      ImageIndex = 4
    end
    object Action7: TAction
      Caption = 'Extornar Pagto.'
      ImageIndex = 12
      OnExecute = Action7Execute
      OnUpdate = Action7Update
    end
    object Action6: TAction
      Caption = 'Sair'
      ImageIndex = 5
      OnExecute = Action6Execute
    end
    object actJurosMulta: TAction
      Caption = 'Juros e Multa'
      ImageIndex = 12
      OnExecute = actJurosMultaExecute
    end
  end
  object QueryContas: TFDQuery
    BeforeInsert = QueryContasBeforeInsert
    AggregatesActive = True
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      
        '   CASE T1.PAG_STATUS -- EXIBE A QUANTIDADE DE DIAS A VENCER OU ' +
        'VENCIDO'
      '      WHEN 90 THEN IIF(CURRENT_DATE > T1.PAG_VENCIMENTO'
      
        '                      ,DATEDIFF(DAY, T1.PAG_VENCIMENTO, CURRENT_' +
        'DATE)'
      '                      ,0'
      '                   )'
      '      WHEN 91 THEN 0'
      '      WHEN 92 THEN 0'
      '   END AS PAG_DIAS_VENCIDOS,'
      ''
      
        '   CASE T1.PAG_STATUS -- EXIBE O STATUS EM QUE SE ENCONTRA A PAR' +
        'CELA'
      '      WHEN 90 THEN IIF(CURRENT_DATE > T1.PAG_VENCIMENTO'
      '                      ,'#39'Em Atraso'#39
      '                      ,'#39'A Vencer'#39
      '                   )'
      '      WHEN 91 THEN '#39'Quitada'#39
      '   END AS PAG_STATUS_TEXTO,'
      '   T2.ID AS ID_C10,'
      '   T1.ID AS ID_C11,'
      '   T1.ID_C000210,'
      '   T2.ID_PLANO_CONTAS,'
      '   T1.PAG_PARCELA,'
      '   T1.PAG_VENCIMENTO,'
      '   CAST(T2.PAG_DATA_INCLUSAO AS DATE) AS PAG_DATA_INCLUSAO,'
      '   T1.PAG_DOCUMENTO,'
      '   T1.PAG_VALOR,'
      '   T1.PAG_VLR_ATUALIZADO,'
      '   T1.PAG_VLR_RECEBIDO,'
      '   T1.PAG_VLR_SALDO,'
      '   T1.PAG_ANOTACOES,'
      
        '   CASE T1.PAG_STATUS -- EXIBE A QUANTIDADE DE DIAS A VENCER OU ' +
        'VENCIDO'
      '      WHEN 90 THEN IIF(CURRENT_DATE > T1.PAG_VENCIMENTO'
      '                      ,92'
      '                      ,90'
      '                   )'
      '      WHEN 91 THEN 91'
      '   END AS PAG_STATUS,'
      '   T2.PAG_ORIGEM,'
      '   T2.PAG_FORNECEDOR,'
      '   T2.PAG_JUROS,'
      '   T2.PAG_JUROS_CAREN,'
      '   T2.PAG_MULTA,'
      '   T2.PAG_MULTA_CAREN'
      ''
      'FROM'
      '   C000211 AS T1'
      'INNER JOIN'
      '   C000210 AS T2'
      'ON'
      '   T2.ID = T1.ID_C000210')
    Left = 9
    Top = 210
    object QueryContasID_C10: TLargeintField
      FieldName = 'ID_C10'
      Origin = 'ID_C10'
      Required = True
    end
    object QueryContasID_C11: TLargeintField
      FieldName = 'ID_C11'
      Origin = 'ID_C11'
      Required = True
    end
    object QueryContasID_C000210: TLargeintField
      FieldName = 'ID_C000210'
      Origin = 'ID_C000210'
    end
    object QueryContasID_PLANO_CONTAS: TIntegerField
      FieldName = 'ID_PLANO_CONTAS'
      Origin = 'ID_PLANO_CONTAS'
    end
    object QueryContasPAG_PARCELA: TIntegerField
      Alignment = taCenter
      FieldName = 'PAG_PARCELA'
      Origin = 'PAG_PARCELA'
      DisplayFormat = '00'
    end
    object QueryContasPAG_ORIGEM: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'PAG_ORIGEM'
      Origin = 'PAG_ORIGEM'
      OnGetText = QueryContasPAG_ORIGEMGetText
    end
    object QueryContasPAG_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'PAG_VENCIMENTO'
      Origin = 'PAG_VENCIMENTO'
    end
    object QueryContasPAG_DATA_INCLUSAO: TDateField
      FieldName = 'PAG_DATA_INCLUSAO'
      Origin = 'PAG_DATA_INCLUSAO'
    end
    object QueryContasPAG_DOCUMENTO: TStringField
      FieldName = 'PAG_DOCUMENTO'
      Origin = 'PAG_DOCUMENTO'
      Size = 25
    end
    object QueryContasPAG_VALOR: TFMTBCDField
      FieldName = 'PAG_VALOR'
      Origin = 'PAG_VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasPAG_VLR_ATUALIZADO: TFMTBCDField
      FieldName = 'PAG_VLR_ATUALIZADO'
      Origin = 'PAG_VLR_ATUALIZADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasPAG_VLR_RECEBIDO: TFMTBCDField
      FieldName = 'PAG_VLR_RECEBIDO'
      Origin = 'PAG_VLR_RECEBIDO'
      Precision = 18
      Size = 2
    end
    object QueryContasPAG_VLR_SALDO: TFMTBCDField
      FieldName = 'PAG_VLR_SALDO'
      Origin = 'PAG_VLR_SALDO'
      Precision = 18
      Size = 2
    end
    object QueryContasPAG_ANOTACOES: TStringField
      FieldName = 'PAG_ANOTACOES'
      Origin = 'PAG_ANOTACOES'
      Size = 120
    end
    object QueryContasPAG_STATUS: TIntegerField
      FieldName = 'PAG_STATUS'
      Origin = 'PAG_STATUS'
    end
    object QueryContasPAG_FORNECEDOR: TStringField
      FieldName = 'PAG_FORNECEDOR'
      Origin = 'PAG_FORNECEDOR'
      Size = 120
    end
    object QueryContasPAG_STATUS_TEXTO: TStringField
      FieldName = 'PAG_STATUS_TEXTO'
      Origin = 'PAG_STATUS_TEXTO'
      FixedChar = True
      Size = 9
    end
    object QueryContasPAG_DIAS_VENCIDOS: TLargeintField
      Alignment = taCenter
      FieldName = 'PAG_DIAS_VENCIDOS'
      Origin = 'PAG_DIAS_VENCIDOS'
      DisplayFormat = '000'
    end
    object QueryContasPAG_JUROS: TFMTBCDField
      FieldName = 'PAG_JUROS'
      Origin = 'PAG_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasPAG_JUROS_CAREN: TIntegerField
      FieldName = 'PAG_JUROS_CAREN'
      Origin = 'PAG_JUROS_CAREN'
    end
    object QueryContasPAG_MULTA: TFMTBCDField
      FieldName = 'PAG_MULTA'
      Origin = 'PAG_MULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryContasPAG_MULTA_CAREN: TIntegerField
      FieldName = 'PAG_MULTA_CAREN'
      Origin = 'PAG_MULTA_CAREN'
    end
    object QueryContasTOTAL_CONTAS: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_CONTAS'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(PAG_VLR_ATUALIZADO)'
    end
    object QueryContasTOTAL_RECEBIDO: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_RECEBIDO'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(PAG_VLR_RECEBIDO)'
    end
    object QueryContasTOTAL_RECEBER: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_RECEBER'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(PAG_VLR_SALDO)'
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = QueryContas
    Left = 39
    Top = 210
  end
  object QueryPagtos: TFDQuery
    AfterPost = QueryPagtosAfterPost
    BeforeDelete = QueryPagtosBeforeDelete
    AfterDelete = QueryPagtosAfterDelete
    OnNewRecord = QueryPagtosNewRecord
    IndexFieldNames = 'ID_C000211'
    AggregatesActive = True
    MasterSource = dsDados
    MasterFields = 'ID_C11'
    DetailFields = 'ID_C000211'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      '   CAST(0.00 AS NUMERIC(15,2)) AS PAG_VLR_RECEBER'
      'FROM'
      '   C000212 AS T1'
      'WHERE'
      '   T1.ID_C000211 = :ID_C11'
      'ORDER BY'
      '   T1.ID ASC')
    Left = 9
    Top = 246
    ParamData = <
      item
        Name = 'ID_C11'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 3
      end>
    object QueryPagtosID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPagtosID_C000210: TLargeintField
      FieldName = 'ID_C000210'
      Origin = 'ID_C000210'
    end
    object QueryPagtosID_C000211: TLargeintField
      FieldName = 'ID_C000211'
      Origin = 'ID_C000211'
    end
    object QueryPagtosID_FORMA_PAGTO: TIntegerField
      FieldName = 'ID_FORMA_PAGTO'
      Origin = 'ID_FORMA_PAGTO'
    end
    object QueryPagtosID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
    end
    object QueryPagtosID_PLN_CTAS: TIntegerField
      FieldName = 'ID_PLN_CTAS'
      Origin = 'ID_PLN_CTAS'
    end
    object QueryPagtosPAG_PLN_CTAS_DESC: TStringField
      FieldName = 'PAG_PLN_CTAS_DESC'
      Origin = 'PAG_PLN_CTAS_DESC'
      ProviderFlags = []
      Size = 80
    end
    object QueryPagtosPAG_DATA_PAGTO: TDateField
      FieldName = 'PAG_DATA_PAGTO'
      Origin = 'PAG_DATA_PAGTO'
    end
    object QueryPagtosPAG_SALDO: TFMTBCDField
      FieldName = 'PAG_SALDO'
      Origin = 'PAG_SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_ANOTACOES: TStringField
      FieldName = 'PAG_ANOTACOES'
      Origin = 'PAG_ANOTACOES'
      Size = 120
    end
    object QueryPagtosPAG_TAX_JUROS: TFMTBCDField
      FieldName = 'PAG_TAX_JUROS'
      Origin = 'PAG_TAX_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_FORMA_PAGTO: TStringField
      FieldName = 'PAG_FORMA_PAGTO'
      Origin = 'PAG_FORMA_PAGTO'
      Size = 60
    end
    object QueryPagtosPAG_VLR_JUROS: TFMTBCDField
      FieldName = 'PAG_VLR_JUROS'
      Origin = 'PAG_VLR_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_VLR_MULTA: TFMTBCDField
      FieldName = 'PAG_VLR_MULTA'
      Origin = 'PAG_VLR_MULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_VLR_ACRESCIMOS: TFMTBCDField
      FieldName = 'PAG_VLR_ACRESCIMOS'
      Origin = 'PAG_VLR_ACRESCIMOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_VLR_DESCONTOS: TFMTBCDField
      FieldName = 'PAG_VLR_DESCONTOS'
      Origin = 'PAG_VLR_DESCONTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_VLR_CARTORIOS: TFMTBCDField
      FieldName = 'PAG_VLR_CARTORIOS'
      Origin = 'PAG_VLR_CARTORIOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_VLR_RECEBIDO: TFMTBCDField
      FieldName = 'PAG_VLR_RECEBIDO'
      Origin = 'PAG_VLR_RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPagtosPAG_VLR_RECEBER: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_VLR_RECEBER'
      Origin = 'PAG_VLR_RECEBER'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsPagtos: TJvDataSource
    AutoEdit = False
    DataSet = QueryPagtos
    Left = 39
    Top = 246
  end
  object Icones24x24: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 496
    Top = 204
    Bitmap = {
      494C010107000900040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E7073784666A1FF4666
      A1FF415175FF3C3A49FF3C3A49FF3C3A49FF3C3A49FF3C3A49FF3C3A49FF3C3A
      49FF3C3A49FF3C3B49FF3D3B4AFF3D3B4AFF3C3A49FF3C3A49FF3C3A49FF414F
      71FF4666A1FF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000191A
      1B1C191A1B1C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003D3E3D4072786F8872786F8872786F8872786F8872786F8872786F887278
      6F8872786F8872786F8872786F8872786F8872786F8872786F8872786F884445
      444800000000000000000000000000000000000000006E7073784666A1FF729A
      D3FF586B94FF3C3A49FF4F4C5DFF4F4C5DFF4F4C5DFF4F4C5DFF4F4C5DFF4F4C
      5DFF444252FF3D3B4AFF6D7A74FF444550FF42404FFF4F4C5DFF3C3A49FF5665
      8CFF729AD3FF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000141515165A8E
      ADDB5A8EADDB1415151600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000696D6778739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C
      5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF7178
      6E8700000000000000000000000000000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF5F5B6FFF5F5B6FFF5F5B6FFF5F5B6FFF5F5B6FFF5954
      68FF3D3B4AFF6E7A75FFBDE0BAFF616B69FF434251FF5F5B6FFF3C3A49FF6779
      A1FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F105C8BA8D25196
      C2FF5196C2FF5C8BA8D20F0F0F10000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000739C
      5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C
      5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C
      5BFF739C5BFF000000000000000000000000000000006E7073784666A1FF8AAA
      DDFF46485BFF3C3B49FF3C3A49FF3C3A49FF3C3A49FF434150FF555164FF4542
      52FF454751FFB5D4B2FFA7C4A7FF3C3B49FF4D4A5BFF5F5B6FFF3C3A49FF6779
      A1FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0A0B5C87A1C85196C2FF5196
      C2FF5196C2FF5196C2FF5C87A1C80A0A0A0B0000000000000000000000000000
      000000000000000000000000000000000000000000003D3E3D4072786F88739C
      5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C
      5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C
      5BFF739C5BFF72786F884445444800000000000000006E7073784666A1FF4D53
      69FF4A4C55FF7B9085FF839487FF839487FF819387FF555B60FF3C3C4AFF3C3A
      49FF90A593FFBDE0BAFF626B6AFF3F3D4BFF5D586CFF5F5B6FFF3C3A49FF6779
      A1FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000070707085F829BBD5196C2FF5196C2FF5196
      C2FF5196C2FF5196C2FF5196C2FF5F829BBD0707070800000000000000000000
      00000000000000000000000000000000000000000000696D6778739C5BFF739C
      5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C
      5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C
      5BFF739C5BFF739C5BFF71786E8700000000000000006E7073784666A1FF4243
      53FF66706DFFBCDEB9FFBDE0BAFFBDE0BAFFBDE0BAFFA9C7A9FF3E3D4BFF5C64
      65FFBDE0BAFFA1BCA1FF3C3A49FF4E4B5DFF5F5B6FFF5F5B6FFF3C3A49FF6779
      A1FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C86
      9FC35C869FC30000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000696D6778739C5BFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF739C5BFF71786E8700000000000000006E7073784666A1FF6575
      9BFF3C3A49FF3C3A49FF3C3A49FF3C3A49FF798D82FF67726EFF403F4DFFABC9
      ABFFBDE0BAFF5A6263FF403E4DFF5E5A6DFF5F5B6FFF5F5B6FFF3C3A49FF6779
      A1FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C86
      9FC35C869FC30000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000696D6778739C5BFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFB6D9B1FFA0C4
      96FFA0C496FFB6D9B1FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF739C5BFF71786E8700000000000000006E7073784666A1FF9BC3
      FEFF5E6A8DFF3C3A49FF4F4C5DFF454253FF403E4CFF3C3A49FF7B9085FFBDE0
      BAFF9AB39BFF3C3A49FF504D5FFF5F5B6FFF5F5B6FFF5F5B6FFF3C3A49FF6779
      A1FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C86
      9FC35C869FC30000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000696D6778739C5BFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFAFD1A7FF78A162FF739C
      5BFF739C5BFF78A162FFAFD1A7FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF739C5BFF71786E8700000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF5F5B6FFF5A576AFF3C3B49FF3E3C4BFFB4D4B2FFBDE0
      BAFF66716EFF3D3B4BFF5E5A6DFF5F5B6FFF5F5B6FFF5F5B6FFF3C3A49FF6779
      A1FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFF749C
      5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C
      5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C
      5CFF749C5CFF749C5CFF5F6B59870000000000000000696D6778739C5BFFBDE0
      BAFFB3D6ADFF80A668FF80A668FFB3D6ADFFBDE0BAFF87AC71FF89AA71FFEBF1
      E8FFEBF1E8FF88AA70FF87AC71FFBDE0BAFFB3D6ADFF80A668FF80A668FFB3D6
      ADFFBDE0BAFF739C5BFF71786E8700000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF4E4B5CFF474455FF3F3C4CFF3C3A49FFB7D8B5FFBDE0
      BAFF93AA96FF3C3A49FF4A4759FF3D3C4AFF3C3A49FF3C3A49FF3C3A49FF5058
      71FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFF9CC0
      8FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC0
      8FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC0
      8FFF9CC08FFF749C5CFF5F6B59870000000000000000696D6778739C5BFFBDE0
      BAFF9EC291FF739C5BFF739C5BFF9EC291FFBDE0BAFF77A060FFB3C8A6FFFFFF
      FFFFFFFFFFFFB3C8A6FF77A060FFBDE0BAFF9EC291FF739C5BFF739C5BFF9EC2
      91FFBDE0BAFF739C5BFF71786E8700000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF3C3A49FF51555BFF3C3A49FF3C3A49FF91A894FFBDE0
      BAFFBBDDB8FF494C55FF3C3A49FF555A5FFF839487FF839487FF3C3A49FF5058
      71FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF749C5CFF5F6B59870000000000000000696D6778739C5BFFBDE0
      BAFFB3D6ADFF80A668FF80A668FFB3D6ADFFBDE0BAFF87AC71FF89AA71FFECF1
      E9FFECF1E9FF88AA71FF87AC71FFBDE0BAFFB3D6ADFF80A668FF80A668FFB3D6
      ADFFBDE0BAFF739C5BFF71786E8700000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF52565BFFBDE0BAFF5B6164FF3C3A49FF5D6465FFBDE0
      BAFFBDE0BAFF839487FF4D5058FFB2D3B1FFBDE0BAFFBDE0BAFF3C3A49FF5058
      71FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBCDFB8FF97BC8AFF7CA3
      66FF7CA366FF97BC8AFFBCDFB8FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF749C5CFF5F6B59870000000000000000696D6778739C5BFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFAED2A7FF78A162FF739C
      5BFF739C5BFF78A162FFAFD1A7FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF739C5BFF71786E8700000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF3D3B4AFFA7C3A6FFA0BAA0FF3C3A49FF3C3C49FFADCC
      ADFFBDE0BAFFB3D3B1FFADCCADFFA7C3A7FF444551FF3C3A49FF3C3A49FF5058
      71FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFFBDE0
      BAFFBCE0B9FFA4C899FFA4C899FFBCE0B9FFBDE0BAFF97BC8AFF759C5DFFA6BF
      97FFA6BF97FF759C5DFF97BC8AFFBDE0BAFFBCE0B9FFA4C899FFA4C899FFBCE0
      B9FFBDE0BAFF749C5CFF5F6B59870000000000000000696D6778739C5BFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFB6D9B1FFA0C4
      96FFA0C496FFB6D9B1FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF739C5BFF71786E8700000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF3F3D4CFF666F6DFFBDE0BAFF8B9F8FFF839487FFA5C2
      A5FFBDE0BAFFBDE0BAFFAFCEAEFF484854FF413F4EFF4F4C5DFF3C3A49FF5D69
      8CFF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFFBDE0
      BAFFA4C799FF749C5CFF749C5CFFA4C899FFBDE0BAFF7CA366FFA7C098FFFFFF
      FFFFFFFFFFFFA6BF97FF7CA366FFBDE0BAFFA4C799FF749C5CFF749C5CFFA4C8
      99FFBDE0BAFF749C5CFF5F6B59870000000000000000696D6778739C5BFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF739C5BFF71786E8700000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF4E4B5BFF3C3B49FF97AE99FFBDDEBAFFBDE0BAFFBDE0
      BAFFB3D2B1FF718378FF3F3F4DFF3C3A49FF3C3A49FF454454FF3C3A49FF6779
      A1FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFFBDE0
      BAFFA4C799FF749C5CFF749C5CFFA4C89AFFBDE0BAFF7CA366FFA7C098FFFFFF
      FFFFFFFFFFFFA7BF97FF7CA366FFBDE0BAFFA4C799FF749C5CFF749C5CFFA4C8
      9AFFBDE0BAFF749C5CFF5F6B59870000000000000000696D6778739C5BFF739C
      5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C
      5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C5BFF739C
      5BFF739C5BFF739C5BFF71786E8700000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF5D5A6EFF434151FF3C3A49FF3C3A49FF3C3A49FF3C3A
      49FF3C3A49FF3D3C4AFF4B5665FF78A9B9FF73A0B0FF444756FF3D3C4BFF6677
      9EFF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFFBDE0
      BAFFBCE0B9FFA4C89AFFA4C89AFFBCE0B9FFBDE0BAFF97BC8AFF759C5DFFA7BF
      97FFA7BF97FF759C5DFF97BC8AFFBDE0BAFFBCE0B9FFA4C89AFFA4C89AFFBCE0
      B9FFBDE0BAFF749C5CFF5F6B5987000000000000000036363638686C6677686C
      6677686C6677686C6677686C6677686C6677686C6677686C6677686C66777280
      93DF728093DF686C6677686C6677686C6677686C6677686C6677686C6677686C
      6677686C6677686C66773C3D3C3F00000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF5F5B6FFF5E5A6DFF524F61FF4F4C5DFF4F4C5DFF4F4C
      5DFF454353FF3F3E4EFF9ADEEEFFA3EEFFFFA3EEFFFF88BFCFFF3C3A49FF5965
      86FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBCDFB8FF97BB88FF7CA3
      66FF7CA366FF97BC89FFBCDFB8FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF749C5CFF5F6B5987000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006D6D
      A8C36D6DA8C30000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF5F5B6FFF5F5B6FFF5F5B6FFF5F5B6FFF5F5B6FFF5F5B
      6FFF494556FF4A5261FFA3EEFFFFA3EEFFFFA3EEFFFF9EE4F5FF3C3A49FF545D
      78FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF749C5CFF5F6B5987000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006D6D
      A8C36D6DA8C30000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF5F5B6FFF5F5B6FFF5F5B6FFF5F5B6FFF5F5B6FFF5F5B
      6FFF4E4B5DFF3D3B4AFF92CEDFFFA3EEFFFFA3EEFFFF7AABBCFF3C3A49FF5B69
      8BFF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFF97BC
      89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC
      89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC
      89FF97BC89FF749C5CFF5F6B5987000000000000000000000000000000000000
      00000000000000000000000000000909090A69697A826B6B7F886B6B7F885D5D
      BAE35D5DBAE36B6B7F886B6B7F8869697A820909090A00000000000000000000
      000000000000000000000000000000000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF4C495BFF4C495BFF4C495BFF4C495BFF4C495BFF4C49
      5BFF4B485AFF3F3D4DFF414251FF658696FF5F798DFF3D3C4BFF3C3B4AFF6779
      A0FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059615478749C5CFF749C
      5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C
      5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C5CFF749C
      5CFF749C5CFF749C5CFF5F6B5987000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4E504242C4FC4040C7FF4040
      C7FF4040C7FF4040C7FF4242C4FC4A4A4E500000000000000000000000000000
      000000000000000000000000000000000000000000006E7073784666A1FF9CC4
      FFFF6D85ABFF3C3A49FF3C3A49FF3C3A49FF3C3A49FF3C3A49FF3C3A49FF3C3A
      49FF3C3A49FF3C3A49FF3D3A49FF3D3C4BFF3D3D4CFF3C3A49FF3C3A49FF6779
      A1FF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005353595C4242C5FE4040
      C7FF4040C7FF4242C5FE5353595C000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E7073784666A1FF9CC4
      FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4
      FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4
      FFFF9CC4FFFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C656A4040
      C7FF4040C7FF5C5C656A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E7073784666A1FF6C94
      CDFF6C94CDFF6C94CDFF6C94CDFF6C94CDFF6C94CDFF6C94CDFF6C94CDFF6C94
      CDFF6C94CDFF6C94CDFF6C94CDFF6C94CDFF6C94CDFF6C94CDFF6C94CDFF6C94
      CDFF6C94CDFF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      7178646471780000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E7073784666A1FF4666
      A1FF4666A1FF4666A1FF4666A1FF4666A1FF4666A1FF4666A1FF4666A1FF4666
      A1FF4666A1FF4666A1FF4666A1FF4666A1FF4666A1FF4666A1FF4666A1FF4666
      A1FF4666A1FF4666A1FF787A7F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000161643563D3DB6E83C3CB3E4121236460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E5331883E5331883E5331883E53
      31883E5331883E5331883E5331883E5331883E5331883E5331883E5331883E53
      31883E5331883E5331883E5331883E5331883E5331883E5331883E5331883E53
      31883E5331883E533188202C1B48000000000000000000000000000000000000
      0000000000000000000000000000000000000707171F14143E511C1C556D1F1F
      5A751818495E0F0F303D00000405000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000534A3F88534A3F88534A3F88534A3F88534A3F88534A
      3F88534A3F88534A3F88534A3F88534A3F888E847AB7A49B90C7A49B90C76B7A
      ADE94343C7FF5454D1FF4F4FCCFE3C3CB3E40000000012272F40255363882553
      6388255363882553638824505F8417333D540101010200000000000101011837
      425A1837425A000202021837425A1837425A0001010100000000000000000000
      000000000000000000000000000000000000759C5DFF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF3D533187000000000000000000000000000000000000
      000000000000010103041B1B52693636A2D04242C7FF4242C7FF4242C7FF4242
      C7FF4242C7FF4242C7FF4040BDF32B2B7DA209091E2700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FFC5B7A7FFEDE3D6FFEDE3D6FFB1C8CCFF4871
      C2FF4242C7FF5E5ED9FF5454D1FF3D3DB2E60000000021495878479BBAFF479B
      BAFF479BBAFF479BBAFF479BBAFF479BBAFF36738BBF060F12181938435C479B
      BAFF479BBAFF295B6C96479BBAFF479BBAFF1837425A00000000000000000000
      000000000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D533187000000000000000000000000000000000000
      00000E0E2D3A3A3AABDD4242C7FF5252CFFD6C6CE2FF8181EEFF8989F3FF8D8D
      F5FF8585F1FF7777E8FF6060DAFF4444C7FC4141C4FC2525708F000004050000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBDAE5FF4D9FBEFF8AD8
      ECFF648DD8FF4242C7FF4343C7FF16164356000000005F96A6B8A3EEFFFFA3EE
      FFFFA3EEFFFFA3EEFFFFA3EDFEFF80CFE4FF499CBAFD428EAAEA2A5E719A479B
      BAFF479BBAFF35738BBF479BBAFF509BA9FF4F7B67CB438796DE3E859EDA0915
      192300000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D533187000000000000000000000000000000001717
      495D4141C3FA4A4ACAFC7878E9FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8989F4FF6262DBFF4242C7FF323299C40404
      0E1300000000000000000000000000000000000000000000000000000000534A
      3F88534A3F88534A3F889C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBDAE5FF4D9FBEFF8AD8ECFFA3EE
      FFFF8BD8EDFF4871C2FF6B7AACE900000000000000005F96A6B8A3EEFFFFA3EE
      FFFFA3EEFFFFA3EEFFFFA3EEFFFFA3EEFFFF93E0F3FF55A6C2FC4799B9FE479B
      BAFF529CA4FF588972E2709C69FF759C5DFF759C5DFF5A9C94FF479BBAFF224C
      5B7D00000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D53318700000000000000000000000013133C4D4242
      C5FD5555D2FE8989F4FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF7575E7FF4444C6FD3333
      99C3010105060000000000000000000000000000000000000000000000009C8B
      77FF9C8B77FF9C8B77FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB8D7E4FF4D9FBEFF8AD8ECFFA3EEFFFF8AD8
      ECFF4D9FBEFFB1C9CCFFA49B8FC700000000000000005F96A6B8A3EEFFFFA3EE
      FFFFA3EEFFFFA3EEFFFFA3EEFFFFA3EEFFFFA3EEFFFFA0EBFCFF69BAD4FF479B
      BAFF549CA2FF729D68FF8BB078FFA2C696FF7FA369FE689C77FF479BBAFF2552
      628700000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D5331870000000000000000080819204040BDF35151
      CEFD8C8CF5FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF7575E7FF4242
      C7FF24246E8E0000000000000000000000000000000000000000000000009C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8EBACCFF4A9DBCFF8AD8ECFFA3EEFFFF8AD8ECFF4D9F
      BEFFBCDBE6FFEDE3D6FFA49B8FC700000000000000005F96A6B8A3EEFFFFA3EE
      FFFFA3EEFFFFA3EEFFFFA3EEFFFFA3EEFFFF97E3F6FF97E3F6FFA3EEFFFF81CE
      E5FF4A9EBCFF51A1BAFFA9D3BAFFBDE0BAFF96BB88FF759D5FFF4A9BB5FF2552
      628700000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D53318700000000000000002A2A80A54343C6FD8686
      F1FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6262
      DCFF4141C4FC09091E270000000000000000534A3F88534A3F88534A3F889C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB4CED9FF499BBAFF71C2DAFFA3EEFFFF8AD8ECFF4D9FBEFFBCDB
      E6FFFFFFFFFFEDE3D6FF8E8479B600000000000000003663728D93E0F3FFA3EE
      FFFFA3EEFFFFA3EEFFFFA3EEFFFF8DDAEEFF489CBBFF479CBBFF74C4DCFFA2ED
      FEFF93E0F3FF53A6C2FF5EA9BBFFBDE0BAFFACCFA4FF759C5DFF569B9CFF2552
      628700000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D5331870000000009091D254242C5FE6767DEFF8F8F
      F7FF8F8FF7FF8F8FF7FF9C9CF8FFE6E6FDFFA1A1F8FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FFCECEFBFFC5C5FBFF8F8FF7FF8F8FF7FF8F8FF7FF8989
      F4FF4444C6FC2A2A7EA100000000000000009C8B77FF9C8B77FF9C8B77FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF79A1B7FF5BA2C2FF4A9DBDFF71C2DAFF4B9EBDFFBCDBE6FFFFFF
      FFFFFFFFFFFFC4B7A7FF534A3F870000000000000000214958784A9EBDFF97E2
      F5FFA3EEFFFFA3EEFFFFA3EEFFFF7BC8DEFF6B9C70FF7BB4A4FF479BBAFF5FAF
      CBFF98E3F6FF66B7D1FF4E9FBAFFBDE0BAFFBCDFB9FF79A165FF659B80FF2552
      628700000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D533187000000001F1F5E784242C7FF8787F2FF8F8F
      F7FF8F8FF7FF8F8FF7FFA1A1F8FFF4F4FEFFF4F4FEFFA1A1F8FF8F8FF7FF8F8F
      F7FF8F8FF7FFCECEFBFFFFFFFFFFCECEFBFF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6060DAFF4040BDF300000405000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFEFF4D6570FF68AACBFF59A1C2FF489BBAFF91BCCEFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF534A3F870000000000000000060F121836738BBF479B
      BAFF6FBFD9FFA0EBFCFFA3EEFFFF97E4F3FF749C61FF8CB384FFACD6BAFF4D9F
      BAFF479BBAFF479BBAFF73B2B1FFB2D5ABFFBCE0B9FF90B580FF739D63FF2653
      628800000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D53318700000000323297C15050CEFD8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FFA1A1F8FFF4F4FEFFF4F4FEFFA1A1F8FF8F8F
      F7FFCECEFBFFFFFFFFFFCECEFBFF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF7878E9FF4242C7FF0F0F2F3E000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC6CBCDFF4C3F35FF4D6570FF79A1B7FFB3CED9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF534A3F8700000000000000000000000000020203234D
      5D7F479AB8FD55A6C2FC93E0F3FFA3EEFFFF70A37EFF78A169FFBDE0BAFFAFD8
      BAFF74AE9FFF689D7CFF759C5EFF759C5DFF84AA6FFF9DC392FF759C5DFF3A64
      60A500000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D533187000000003D3DB1E35F5FD9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FFA1A1F8FFF4F4FEFFF4F4FEFFD6D6
      FCFFFFFFFFFFCECEFBFF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8585F1FF4242C7FF18184A5F000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD8DDDEFFC6CDCEFFFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF534A3F87000000000000000000000000000000000000
      000012282E41428EAAEA499CBAFD7ECEE4FF81BFB4FF759C5DFFB1D4AAFF8FB5
      7EFF759C5DFFA1BA8FFFD9E4D3FFCBD9C2FF85A86FFF7CA265FF769C5FFE517B
      5FC900000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFF9CC08EFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D533187000000004141C2FA6565DDFF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FFA1A1F8FFFAFAFFFFFFFF
      FFFFD6D6FCFF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8D8DF5FF4242C7FF1F1F5A75000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF534A3F87000000000000000000000000000000000000
      000000000000060F121835738BBE479BBAFF4C9BB1FF759C5DFF9BBF8DFF779E
      60FF83A56DFFFFFFFFFFFFFFFFFFFFFFFFFFE7EEE3FF769D5EFF80A66BFE698D
      58E700000000000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFADD1A6FF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF8AAF77FF759C
      5DFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFF9CC08FFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D533187000000003F3FBBEF6262DCFF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FFCECEFBFFFFFFFFFFFAFA
      FFFFF4F4FEFFA1A1F8FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8989F4FF4242C7FF1B1B536C000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF534A3F87000000000000000000000000000000000000
      0000000000000000000000010101132C3548204856766D9765F97DA468FF759C
      5DFFABC29DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83A56CFF85AB71FF759C
      5DFF131A0F2B000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D533187000000003838A6D55A5AD6FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FFCECEFBFFFFFFFFFFCECEFBFFA1A1
      F8FFF4F4FEFFF4F4FEFFA1A1F8FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8181EEFF4242C7FF15154052000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF534A3F87000000000000000000000000000000000000
      00000000000000000000000000000000000000000000547042B9759C5DFF759D
      5EFFABC29CFFFFFFFFFFFFFFFFFFFFFFFFFFF5F8F3FF789E60FF97BB88FF759B
      5DFE374A2C79000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D5331870000000028287DA04545C7FC8E8EF6FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FFCECEFBFFFFFFFFFFCECEFBFF8F8FF7FF8F8F
      F7FFA1A1F8FFF4F4FEFFF4F4FEFFA1A1F8FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6C6CE2FF4242C7FF0707171E000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFCBC2B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF534A3F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000012180F28759C5DFF84A9
      6EFF7BA164FFD7E2D0FFFFFFFFFFF2F5EFFF9CB78AFF779E60FFB2D6ACFF84A8
      6FFD5D7C4ACA000000000000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D5331870000000014143E504242C7FF7979E9FF8F8F
      F7FF8F8FF7FF8F8FF7FFADADF9FFFFFFFFFFCECEFBFF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FFA1A1F8FFF4F4FEFFE6E6FDFF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF5252CEFD3737A4D100000000000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FFB2A496FFCAC1B7FFCAC1B7FFCAC1B7FFCAC1
      B7FFCAC1B7FFCAC1B7FFCAC1B7FFCAC1B7FFCAC1B7FFCAC1B7FFCAC1B7FFCAC1
      B7FFCAC1B7FF9C8B77FF534A3F87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000658750DD87AB
      75FE83A86EFF759C5DFF7AA063FF769C5EFF779E5FFFA4C799FFBDE0BAFF9BBF
      8DFF749B5CFE0B0F08190000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D53318700000000020206093B3BB2E55151CEFD8E8E
      F7FF8F8FF7FF8F8FF7FF8F8FF7FFAEAEF9FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FFA1A1F8FF9C9CF8FF8F8FF7FF8F8FF7FF8F8FF7FF7878
      E9FF4242C7FF1B1B526900000000000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF534A3F87000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004056338C759D
      5DFDB8DBB3FFA4C89AFF96BB88FF9CC08FFFB3D6ADFFBDE0BAFFBDE0BAFFB1D4
      AAFF759C5DFF2D3D24640000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9CC08EFF759C
      5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D533187000000000000000019194C614242C7FF6E6E
      E3FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8A8AF4FF4949
      C9FC3A3AABDC0101030400000000000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFCBC0B2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B77FF534A
      3F87000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B25153D759C
      5DFFA6C99CFFBDE0BAFFBDE0BAFFBBDEB7FFA5C99BFFB5D8AFFFBDE0BAFFBDE0
      BAFF7EA267FC526F41B50000000000000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFADD1A6FF9CC0
      8FFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D5331870000000000000000000002032E2E8BB24343
      C6FE7979E9FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8C8CF5FF5454D0FD4141
      C3FB0E0E2B380000000000000000000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FFB2A393FFCABFB1FFCABFB1FFCABFB1FFCABFB1FFCABFB1FFCABFB1FFCABF
      B1FFCABFB1FFCABFB1FFCABFB1FFCABFB1FFCABFB1FFCABFB1FF9C8B77FF534A
      3F87000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000200036D93
      58EE90B580FFBDE0BAFFBDE0BAFF98BC8AFF759C5DFF80A66BFFBDE0BAFFBDE0
      BAFF92B783FF73985BF80607030C00000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D53318700000000000000000000000003030C0F3636
      A4D24343C6FE6E6EE3FF8E8EF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8686F2FF5050CDFD4242C5FD1818
      485C000000000000000000000000000000009C8B77FFCBC0B2FFFFFAF2FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF534A
      3F87000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004862
      3AA0789D61FCBCDFB9FFBDE0BAFF9EC292FF759C5DFF84A970FF99BE8CFF80A5
      6CFC759C5DFF759C5DFF1E2A184400000000759C5DFF97BC8AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF759C5DFF3D533187000000000000000000000000000000000202
      0A0D2F2F8BB44242C7FF5151CEFD7979E9FF8E8EF6FF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FF8787F2FF6767DEFF4444C5FD3F3FBEF413133B4C0000
      0000000000000000000000000000000000009C8B77FFCBC0B2FFFFFAF2FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B77FF534A3F8700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002431
      1D51759C5DFFAACEA1FFACCFA4FF96BA86FF7AA065FC759C5DFF749B5CFD5875
      47C13244286F0D120B1E0000000000000000759C5DFF86AB71FF97BC89FF97BC
      89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC
      89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC89FF97BC
      89FF97BC89FF759C5DFF3D533187000000000000000000000000000000000000
      0000010102021A1A4C623C3CB3E44242C7FF4545C6FC5A5AD6FF6262DCFF6565
      DDFF5E5ED9FF5151CEFD4242C7FF4141C5FE2C2C82A608081920000000000000
      0000000000000000000000000000000000009C8B77FFB2A393FFCABFB1FFCABF
      B1FFCABFB1FFCABFB1FFCABFB1FFCABFB1FFCABFB1FFCABFB1FFCABFB1FFCABF
      B1FFCABFB1FFCABFB1FFCABFB1FF9C8B77FF534A3F8700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000607
      030C73995AFA769C5FFE759C5DFF71985BF9526F42B42C3C2362080C06140000
      000000000000000000000000000000000000759C5DFF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF3D533187000000000000000000000000000000000000
      000000000000000000000202060814143E5129297A9F3838A8D63F3FB9EE4141
      C3FA3C3CB3E4323297C11E1E5C7709091D250000000000000000000000000000
      0000000000000000000000000000000000009C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF534A3F8700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004B653CA54C663CA626341E550607030C0000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF800001000000FFE7FFF0
      000F800001000000FFC3FFF0000F800001000000FF81FFE00007800001000000
      FF00FF800001800001000000FE007F800001800001000000FFE7FF8000018000
      01000000FFE7FF800001800001000000FFE7FF80000180000100000080000180
      0001800001000000800001800001800001000000800001800001800001000000
      8000018000018000010000008000018000018000010000008000018000018000
      01000000800001800001800001000000800001800001800001000000800001FF
      E7FF800001000000800001FFE7FF800001000000800001FE007F800001000000
      800001FF00FF800001000000FFFFFFFF81FF800001000000FFFFFFFFC3FF8000
      01000000FFFFFFFFE7FF800001000000FFFFFFFFFFFFFFFFF0FFFFFF000001FF
      01FFFC000080407F000001F8007FFC000080007F000001F0001FFC000080000F
      000001E0000FE0000180000F000001C00007E0000180000F000001800007E000
      0180000F00000180000300000180000F00000100000300000180000F00000100
      000100000180000F000001000001000001C0000F000001000001000001F0000F
      000001000001000001F8000F000001000001000001FC00070000010000010000
      01FF8007000001000001000001FF8007000001000003000001FFC00300000100
      0003000001FFC00300000180000300000FFFC00300000180000700000FFFC001
      000001C0000F00000FFFE001000001E0001F00007FFFE003000001F0003F0000
      7FFFE01F000001FC00FF00007FFFF0FF00000000000000000000000000000000
      000000000000}
  end
end
