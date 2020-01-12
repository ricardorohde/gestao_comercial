object FrVendedores: TFrVendedores
  Left = 0
  Top = 0
  Caption = 'Cadastro de Vendedores'
  ClientHeight = 541
  ClientWidth = 1099
  Color = clBtnFace
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
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
      Width = 210
      Height = 26
      Caption = 'Cadastro de Vendedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 264
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
      Width = 80
      Height = 40
      DisabledIndex = 35
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      Left = 92
      Top = 2
      Width = 80
      Height = 40
      DisabledIndex = 37
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      Left = 180
      Top = 2
      Width = 80
      Height = 40
      DisabledIndex = 39
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actExcluir
    end
    object btnOK: TRzToolButton
      Left = 268
      Top = 2
      Width = 80
      Height = 40
      DisabledIndex = 41
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actGravar
    end
    object btnError: TRzToolButton
      Left = 356
      Top = 2
      Width = 80
      Height = 40
      DisabledIndex = 43
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      Left = 444
      Top = 2
      Width = 80
      Height = 40
      DisabledIndex = 45
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actSair
    end
    object RzSpacer1: TRzSpacer
      Left = 84
      Top = 10
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 172
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 260
      Top = 10
    end
    object RzSpacer4: TRzSpacer
      Left = 436
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 348
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
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          AlternateRowColor = 15658734
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
              FieldName = 'VND_CODIGO'
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VND_DATA_REG'
              Title.Caption = 'Modifica'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 145
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VND_NOME'
              Title.Caption = 'Nome Completo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 515
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VND_APELIDO'
              Title.Caption = 'Apelido'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 288
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VND_STATUS'
              PickList.Strings = (
                'S'
                'N')
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Ativo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 34
              Visible = True
            end>
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
        end
        object Label3: TLabel
          Left = 256
          Top = 3
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
        end
        object Label2: TLabel
          Left = 92
          Top = 3
          Width = 66
          Height = 15
          Caption = 'Modifica'#231#227'o'
        end
        object Label4: TLabel
          Left = 256
          Top = 50
          Width = 58
          Height = 15
          Caption = 'Margem %'
        end
        object Label5: TLabel
          Left = 3
          Top = 50
          Width = 103
          Height = 15
          Caption = 'Tabela de Desconto'
        end
        object Label6: TLabel
          Left = 335
          Top = 50
          Width = 94
          Height = 15
          Caption = 'Permite Desconto'
        end
        object Label7: TLabel
          Left = 3
          Top = 96
          Width = 40
          Height = 15
          Caption = 'Usu'#225'rio'
        end
        object Label9: TLabel
          Left = 447
          Top = 50
          Width = 78
          Height = 15
          Caption = 'Cadastro Ativo'
        end
        object Label10: TLabel
          Left = 256
          Top = 96
          Width = 32
          Height = 15
          Caption = 'Senha'
        end
        object eCodigo: TRzDBEdit
          Left = 3
          Top = 19
          Width = 83
          Height = 23
          DataSource = dsDados
          DataField = 'VND_CODIGO'
          CharCase = ecUpperCase
          Enabled = False
          FocusColor = clSilver
          TabOrder = 0
        end
        object eDataReg: TRzDBEdit
          Left = 92
          Top = 19
          Width = 158
          Height = 23
          DataSource = dsDados
          DataField = 'VND_DATA_REG'
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 1
        end
        object eMargem: TRzDBEdit
          Left = 256
          Top = 67
          Width = 73
          Height = 23
          DataSource = dsDados
          DataField = 'VND_MAX_DESCONTO'
          CharCase = ecUpperCase
          Enabled = False
          FocusColor = clSilver
          TabOrder = 4
          OnEnter = eUsuarioEnter
          OnExit = eUsuarioExit
        end
        object eFuncionario: TDBLookupComboBox
          Left = 256
          Top = 19
          Width = 309
          Height = 23
          DataField = 'ID'
          DataSource = dsDados
          KeyField = 'ID'
          ListField = 'FUN_NOME'
          ListSource = dsFuncionario
          TabOrder = 2
          OnEnter = eUsuarioEnter
          OnExit = eUsuarioExit
        end
        object eTabDesconto: TDBLookupComboBox
          Left = 3
          Top = 67
          Width = 247
          Height = 23
          DataField = 'ID_TAB_DESCONTO'
          DataSource = dsDados
          KeyField = 'ID'
          ListField = 'DESCONTO'
          ListSource = dsDesconto
          TabOrder = 3
          OnEnter = eUsuarioEnter
          OnExit = eUsuarioExit
        end
        object txtUsuario: TRzDBEdit
          Left = 3
          Top = 113
          Width = 247
          Height = 23
          DataSource = dsDados
          DataField = 'VND_USER'
          TabOrder = 7
          TextHint = 'Usu'#225'rio'
          TextHintVisibleOnFocus = True
          OnEnter = eUsuarioEnter
          OnExit = eUsuarioExit
        end
        object txtSenha: TRzDBEdit
          Left = 256
          Top = 113
          Width = 184
          Height = 23
          DataSource = dsDados
          DataField = 'VND_SENHA'
          PasswordChar = '*'
          TabOrder = 8
          TextHint = 'Senha'
          TextHintVisibleOnFocus = True
          OnEnter = eUsuarioEnter
          OnExit = eUsuarioExit
        end
        object JvDBComboBox1: TJvDBComboBox
          Left = 335
          Top = 67
          Width = 105
          Height = 23
          DataField = 'VND_PERMITE_DESCONTO'
          DataSource = dsDados
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 5
          Values.Strings = (
            '1'
            '2')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
          OnEnter = eUsuarioEnter
          OnExit = eUsuarioExit
        end
        object JvDBComboBox2: TJvDBComboBox
          Left = 446
          Top = 67
          Width = 119
          Height = 23
          DataField = 'VND_STATUS'
          DataSource = dsDados
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 6
          Values.Strings = (
            '1'
            '2')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
          OnEnter = eUsuarioEnter
          OnExit = eUsuarioExit
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.sysIcones16
    Left = 743
    Top = 255
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
      OnUpdate = actExcluirUpdate
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
      OnUpdate = actCancelarUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 24
      OnExecute = actSairExecute
      OnUpdate = actCadastrarUpdate
    end
  end
  object tbDados: TFDQuery
    BeforePost = tbDadosBeforePost
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      
        '   (SELECT FUN_CODIGO  FROM C000301 WHERE ID = T1.ID) AS VND_COD' +
        'IGO,'
      
        '   (SELECT FUN_NOME    FROM C000301 WHERE ID = T1.ID) AS VND_NOM' +
        'E,'
      
        '   (SELECT DSC_MARGEM  FROM C000302 WHERE ID = T1.ID_TAB_DESCONT' +
        'O) AS VND_MAX_DESCONTO'
      'FROM'
      '   C000061 AS T1'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   VND_NOME ASC')
    Left = 776
    Top = 256
    ParamData = <
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
    object tbDadosID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tbDadosID_TAB_DESCONTO: TIntegerField
      FieldName = 'ID_TAB_DESCONTO'
      Origin = 'ID_TAB_DESCONTO'
    end
    object tbDadosVND_DATA_REG: TSQLTimeStampField
      FieldName = 'VND_DATA_REG'
      Origin = 'VND_DATA_REG'
    end
    object tbDadosVND_PERMITE_DESCONTO: TIntegerField
      DefaultExpression = '1'
      FieldName = 'VND_PERMITE_DESCONTO'
      Origin = 'VND_PERMITE_DESCONTO'
    end
    object tbDadosVND_MAX_DESCONTO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VND_MAX_DESCONTO'
      Origin = 'VND_MAX_DESCONTO'
      ProviderFlags = []
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosVND_APELIDO: TStringField
      FieldName = 'VND_APELIDO'
      Origin = 'VND_APELIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object tbDadosVND_STATUS: TIntegerField
      Alignment = taCenter
      DefaultExpression = '1'
      FieldName = 'VND_STATUS'
      Origin = 'VND_STATUS'
      OnGetText = tbDadosVND_STATUSGetText
    end
    object tbDadosVND_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VND_CODIGO'
      Origin = 'FUN_CODIGO'
      ProviderFlags = []
      DisplayFormat = '000'
    end
    object tbDadosVND_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VND_NOME'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 120
    end
    object tbDadosVND_USER: TStringField
      FieldName = 'VND_USER'
      Origin = 'VND_USER'
      OnSetText = tbDadosVND_USERSetText
      Size = 25
    end
    object tbDadosVND_SENHA: TStringField
      FieldName = 'VND_SENHA'
      Origin = 'VND_SENHA'
      OnSetText = tbDadosVND_USERSetText
      Size = 15
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    OnFieldChanged = dsDadosFieldChanged
    Left = 776
    Top = 288
  end
  object tbFuncionario: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   FUN_CODIGO,'
      
        '   (LPAD(FUN_CODIGO,3,0) || '#39' - '#39' || C000301.FUN_NOME) AS FUN_NO' +
        'ME,'
      '   FUN_APELIDO'
      'FROM'
      '   C000301'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'AND'
      '   FUN_VENDEDOR = 1'
      'ORDER BY'
      '   FUN_NOME ASC'
      '')
    Left = 747
    Top = 222
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
    object tbFuncionarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbFuncionarioFUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
      Origin = 'FUN_CODIGO'
    end
    object tbFuncionarioFUN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 126
    end
    object tbFuncionarioFUN_APELIDO: TStringField
      FieldName = 'FUN_APELIDO'
      Origin = 'FUN_APELIDO'
      Required = True
      Size = 80
    end
  end
  object dsFuncionario: TJvDataSource
    AutoEdit = False
    DataSet = tbFuncionario
    Left = 777
    Top = 222
  end
  object tbDesconto: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   DSC_MARGEM,'
      '   (LPAD(DSC_CODIGO,3,0) || '#39' - '#39' || DSC_DESCRICAO) AS DESCONTO'
      'FROM'
      '   C000302'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'AND'
      '   DSC_STATUS = 1'
      'ORDER BY'
      '   DSC_DESCRICAO ASC')
    Left = 809
    Top = 222
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tbDescontoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDescontoDSC_MARGEM: TFMTBCDField
      FieldName = 'DSC_MARGEM'
      Origin = 'DSC_MARGEM'
      Precision = 18
      Size = 2
    end
    object tbDescontoDESCONTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 66
    end
  end
  object dsDesconto: TJvDataSource
    AutoEdit = False
    DataSet = tbDesconto
    Left = 841
    Top = 222
  end
end
