object FrOperadorasCartoes: TFrOperadorasCartoes
  Left = 0
  Top = 0
  Caption = 'Operadoras de Cart'#245'es'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1093
    Height = 34
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
    TabOrder = 0
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 197
      Height = 26
      Caption = 'Operadoras de Cart'#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 296
      Top = 1
      Width = 730
      Height = 30
      Caption = 
        'As operadoras de cart'#227'o de cr'#233'dito s'#227'o as institui'#231#245'es que emite' +
        'm os cart'#245'es e gerenciam o pagamento das faturas. Normalmente, a' +
        ' operadora '#233' o banco ou institui'#231#227'o que emitiu o cart'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 276
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
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 3
    Top = 494
    Width = 1093
    Height = 44
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
    TabOrder = 1
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
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 1093
    Height = 451
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    object pgControl: TJvPageControl
      Left = 0
      Top = 0
      Width = 1093
      Height = 451
      ActivePage = tabDetalhes
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ParentColor = False
      Color = clBtnFace
      object tabPrincipal: TTabSheet
        Caption = 'Principal'
        object JvDBGrid1: TJvDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1079
          Height = 415
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsQuery
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnDblClick = actAlterarExecute
          AlternateRowColor = 13487565
          ScrollBars = ssVertical
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
              FieldName = 'OPE_CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_DATA_REG'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Caption = 'Modifica'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_DESCRICAO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 416
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_TAXA_DEBITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Caption = 'Taxa D'#233'bito'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clRed
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_PRAZO_DEBITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              PickList.Strings = (
                'S'
                'N')
              ReadOnly = True
              Title.Caption = 'Prazo D'#233'bito'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_TAXA_CREDITO'
              Title.Caption = 'Taxa Cr'#233'dito'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clRed
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_PRAZO_CREDITO'
              Title.Caption = 'Prazo Cr'#233'dito'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_TAXA_ANTECIPACAO'
              Title.Caption = 'Taxa Antecipa'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clRed
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_STATUS'
              Title.Alignment = taCenter
              Title.Caption = 'Ativo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 36
              Visible = True
            end>
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 38
          Height = 15
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 92
          Top = 3
          Width = 69
          Height = 15
          Caption = 'Modifica'#231#227'o'
        end
        object Label3: TLabel
          Left = 223
          Top = 3
          Width = 55
          Height = 15
          Caption = 'Descri'#231#227'o'
        end
        object Label5: TLabel
          Left = 3
          Top = 119
          Width = 178
          Height = 15
          Caption = 'Taxa na Antecipa'#231#227'o das Vendas'
        end
        object RzDBRadioGroup1: TRzDBRadioGroup
          Left = 3
          Top = 165
          Width = 434
          Height = 45
          DataField = 'OPE_STATUS'
          DataSource = dsQuery
          Items.Strings = (
            'Ativo'
            'Inativo')
          Values.Strings = (
            '1'
            '2')
          Caption = 'Status'
          Columns = 2
          Enabled = False
          SpaceEvenly = True
          TabOrder = 3
        end
        object eCodigo: TRzDBEdit
          Left = 3
          Top = 19
          Width = 83
          Height = 23
          DataSource = dsQuery
          DataField = 'OPE_CODIGO'
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          FocusColor = clSilver
          ParentFont = False
          TabOrder = 0
        end
        object eDataReg: TRzDBEdit
          Left = 92
          Top = 19
          Width = 125
          Height = 23
          DataSource = dsQuery
          DataField = 'OPE_DATA_REG'
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 1
        end
        object eDescricao: TRzDBEdit
          Left = 223
          Top = 19
          Width = 214
          Height = 23
          DataSource = dsQuery
          DataField = 'OPE_DESCRICAO'
          CharCase = ecUpperCase
          FocusColor = clSilver
          TabOrder = 2
        end
        object RzGroupBox1: TRzGroupBox
          Left = 3
          Top = 48
          Width = 214
          Height = 69
          Caption = ' Taxas e Prazos (D'#233'bito)'
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -13
          CaptionFont.Name = 'Calibri'
          CaptionFont.Style = [fsBold]
          GroupStyle = gsUnderline
          TabOrder = 4
          object Label4: TLabel
            Left = 6
            Top = 23
            Width = 94
            Height = 15
            Caption = 'Vendas a D'#233'bitos'
          end
          object Label7: TLabel
            Left = 114
            Top = 23
            Width = 80
            Height = 15
            Caption = 'Prazo Recebto.'
          end
          object JvDBCalcEdit1: TJvDBCalcEdit
            Left = 6
            Top = 40
            Width = 102
            Height = 23
            DisplayFormat = ',0.00'
            TabOrder = 0
            DecimalPlacesAlwaysShown = True
            DataField = 'OPE_TAXA_DEBITO'
            DataSource = dsQuery
            EmptyIsNull = False
          end
          object JvDBSpinEdit1: TJvDBSpinEdit
            Left = 114
            Top = 40
            Width = 94
            Height = 23
            TabOrder = 1
            DataField = 'OPE_PRAZO_DEBITO'
            DataSource = dsQuery
          end
        end
        object RzGroupBox3: TRzGroupBox
          Left = 223
          Top = 48
          Width = 214
          Height = 69
          Caption = ' Taxas e Prazos (Cr'#233'dito)'
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -13
          CaptionFont.Name = 'Calibri'
          CaptionFont.Style = [fsBold]
          GroupStyle = gsUnderline
          TabOrder = 5
          object Label6: TLabel
            Left = 6
            Top = 23
            Width = 98
            Height = 15
            Caption = 'Vendas a Cr'#233'ditos'
          end
          object Label13: TLabel
            Left = 114
            Top = 23
            Width = 80
            Height = 15
            Caption = 'Prazo Recebto.'
          end
          object JvDBCalcEdit3: TJvDBCalcEdit
            Left = 6
            Top = 40
            Width = 102
            Height = 23
            DisplayFormat = ',0.00'
            TabOrder = 0
            DecimalPlacesAlwaysShown = True
            DataField = 'OPE_TAXA_CREDITO'
            DataSource = dsQuery
            EmptyIsNull = False
          end
          object JvDBSpinEdit2: TJvDBSpinEdit
            Left = 114
            Top = 40
            Width = 94
            Height = 23
            TabOrder = 1
            DataField = 'OPE_PRAZO_CREDITO'
            DataSource = dsQuery
          end
        end
        object JvDBCalcEdit2: TJvDBCalcEdit
          Left = 3
          Top = 136
          Width = 214
          Height = 23
          DisplayFormat = ',0.00'
          TabOrder = 6
          DecimalPlacesAlwaysShown = True
          DataField = 'OPE_TAXA_ANTECIPACAO'
          DataSource = dsQuery
          EmptyIsNull = False
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
      ImageIndex = 34
      OnExecute = actCadastrarExecute
      OnUpdate = actCadastrarUpdate
    end
    object actAlterar: TAction
      Caption = 'Alterar'
      ImageIndex = 14
      OnExecute = actAlterarExecute
      OnUpdate = actAlterarUpdate
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 18
      OnExecute = actExcluirExecute
      OnUpdate = actAlterarUpdate
    end
    object actGravar: TAction
      Caption = 'Gravar'
      ImageIndex = 26
      OnExecute = actGravarExecute
      OnUpdate = actGravarUpdate
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 16
      OnExecute = actCancelarExecute
      OnUpdate = actGravarUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 24
      OnExecute = actSairExecute
      OnUpdate = actCadastrarUpdate
    end
  end
  object Query: TFDQuery
    BeforePost = QueryBeforePost
    AfterPost = QueryAfterPost
    BeforeDelete = QueryBeforeDelete
    OnNewRecord = QueryNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT * FROM C000018 WHERE ID_EMPRESA = :ID_EMPRESA')
    Left = 464
    Top = 264
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object QueryOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
    end
    object QueryOPE_DATA_REG: TSQLTimeStampField
      FieldName = 'OPE_DATA_REG'
      Origin = 'OPE_DATA_REG'
    end
    object QueryOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      Size = 65
    end
    object QueryOPE_TAXA_DEBITO: TBCDField
      FieldName = 'OPE_TAXA_DEBITO'
      Origin = 'OPE_TAXA_DEBITO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryOPE_TAXA_CREDITO: TBCDField
      FieldName = 'OPE_TAXA_CREDITO'
      Origin = 'OPE_TAXA_CREDITO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryOPE_TAXA_ANTECIPACAO: TBCDField
      FieldName = 'OPE_TAXA_ANTECIPACAO'
      Origin = 'OPE_TAXA_ANTECIPACAO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryOPE_PRAZO_DEBITO: TIntegerField
      FieldName = 'OPE_PRAZO_DEBITO'
      Origin = 'OPE_PRAZO_DEBITO'
    end
    object QueryOPE_PRAZO_CREDITO: TIntegerField
      FieldName = 'OPE_PRAZO_CREDITO'
      Origin = 'OPE_PRAZO_CREDITO'
    end
    object QueryOPE_STATUS: TIntegerField
      FieldName = 'OPE_STATUS'
      Origin = 'OPE_STATUS'
    end
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = Query
    OnStateChange = dsQueryStateChange
    Left = 496
    Top = 264
  end
end
