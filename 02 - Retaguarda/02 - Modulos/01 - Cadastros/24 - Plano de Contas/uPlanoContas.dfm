object FrPlanoContas: TFrPlanoContas
  Left = 0
  Top = 0
  Caption = 'Plano de Contas'
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
      Width = 138
      Height = 26
      Caption = 'Plano de Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
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
      ActivePage = tabPrincipal
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChanging = pgControlChanging
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
          DrawingStyle = gdsClassic
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
          OnDrawColumnCell = JvDBGrid1DrawColumnCell
          OnDblClick = actAlterarExecute
          AlternateRowColor = 15921906
          ScrollBars = ssVertical
          AutoSizeColumns = True
          AutoSizeColumnIndex = 1
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 19
          TitleRowHeight = 19
          UseThemedHighlighting = False
          Columns = <
            item
              Expanded = False
              FieldName = 'PLN_CONTA_CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Consolas'
              Font.Style = []
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PLN_DESCRICAO_II'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Consolas'
              Font.Style = []
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 921
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PLN_TIPO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Consolas'
              Font.Style = []
              PickList.Strings = (
                'S'
                'N')
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PLN_ATIVO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Consolas'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Ativo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 39
              Visible = True
            end>
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        object Label1: TLabel
          Left = 111
          Top = 9
          Width = 38
          Height = 15
          Caption = 'C'#243'digo'
        end
        object Label3: TLabel
          Left = 194
          Top = 9
          Width = 55
          Height = 15
          Caption = 'Descri'#231#227'o'
        end
        object Label4: TLabel
          Left = 3
          Top = 9
          Width = 24
          Height = 15
          Caption = 'Tipo'
        end
        object RzDBRadioGroup1: TRzDBRadioGroup
          Left = 3
          Top = 54
          Width = 437
          Height = 45
          DataField = 'PLN_ATIVO'
          DataSource = dsQuery
          Items.Strings = (
            'Ativo'
            'Inativo')
          Values.Strings = (
            'S'
            'N')
          Caption = 'Status'
          Columns = 2
          Enabled = False
          SpaceEvenly = True
          TabOrder = 3
        end
        object JvDBComboBox1: TJvDBComboBox
          Left = 3
          Top = 25
          Width = 102
          Height = 23
          DataField = 'PLN_TIPO'
          DataSource = dsQuery
          Items.Strings = (
            'Anal'#237'tico'
            'Sint'#233'tico')
          TabOrder = 0
          Values.Strings = (
            'A'
            'S')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object ed_codigo: TRzDBEdit
          Left = 111
          Top = 25
          Width = 77
          Height = 23
          DataSource = dsQuery
          DataField = 'PLN_CONTA_CODIGO'
          Enabled = False
          TabOrder = 1
        end
        object ed_descricao: TRzDBEdit
          Left = 194
          Top = 25
          Width = 246
          Height = 23
          DataSource = dsQuery
          DataField = 'PLN_DESCRICAO'
          CharCase = ecUpperCase
          FocusColor = clSilver
          TabOrder = 2
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.sysIcones16
    Left = 377
    Top = 192
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
      OnUpdate = actSairUpdate
    end
  end
  object Query: TFDQuery
    AfterOpen = QueryAfterOpen
    BeforeInsert = QueryBeforeInsert
    BeforeEdit = QueryBeforeEdit
    AfterPost = QueryAfterPost
    BeforeDelete = QueryBeforeDelete
    OnNewRecord = QueryNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    ID_EMPRESA,'
      '    PLN_CONTA_CODIGO,'
      '    PLN_DESCRICAO,'
      '    CASE CHAR_LENGTH(PLN_CONTA_CODIGO)'
      '        WHEN  1 THEN '#39#39' || PLN_DESCRICAO'
      '        WHEN  3 THEN '#39'  '#39' || PLN_DESCRICAO'
      '        WHEN  5 THEN '#39'    '#39' || PLN_DESCRICAO'
      '        WHEN  8 THEN '#39'      '#39' || PLN_DESCRICAO'
      '        WHEN  9 THEN '#39'        '#39' || PLN_DESCRICAO'
      '    END AS PLN_DESCRICAO_II,'
      '    PLN_TIPO,'
      '    PLN_ATIVO'
      'FROM'
      '    C000018'
      'WHERE '
      '    ID_EMPRESA = :ID_EMPRESA '
      'ORDER BY 3')
    Left = 440
    Top = 192
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
    object QueryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object QueryPLN_CONTA_CODIGO: TStringField
      FieldName = 'PLN_CONTA_CODIGO'
      Origin = 'PLN_CONTA_CODIGO'
      Size = 12
    end
    object QueryPLN_DESCRICAO: TStringField
      FieldName = 'PLN_DESCRICAO'
      Origin = 'PLN_DESCRICAO'
      Size = 65
    end
    object QueryPLN_TIPO: TStringField
      Alignment = taCenter
      FieldName = 'PLN_TIPO'
      Origin = 'PLN_TIPO'
      FixedChar = True
      Size = 1
    end
    object QueryPLN_ATIVO: TStringField
      Alignment = taCenter
      FieldName = 'PLN_ATIVO'
      Origin = 'PLN_ATIVO'
      FixedChar = True
      Size = 1
    end
    object QueryPLN_DESCRICAO_II: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLN_DESCRICAO_II'
      Origin = 'PLN_DESCRICAO_II'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object dsQuery: TJvDataSource
    DataSet = Query
    OnStateChange = dsQueryStateChange
    Left = 470
    Top = 192
  end
  object aQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 500
    Top = 192
  end
  object StoreCodigo: TFDStoredProc
    Connection = FrModuloRet.DBConexao
    StoredProcName = 'SP_CODIGO_PLANO_CONTAS'
    Left = 409
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'A_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 3
        Name = 'RESULT'
        DataType = ftString
        ParamType = ptOutput
        Size = 25
      end>
  end
end
