object FrCondicoesPagtos: TFrCondicoesPagtos
  Left = 0
  Top = 0
  Caption = 'Condi'#231#245'es de Pagamentos'
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
      Width = 226
      Height = 26
      Caption = 'Condi'#231#245'es de Pagamentos'
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
      Width = 720
      Height = 30
      Caption = 
        'Neste formul'#225'rio '#233' gerado todas as condi'#231#245'es de pagamentos, esta' +
        ' ser'#227'o utilizadas por todo o sistema durante as vendas, pode-se ' +
        'informar administradoras de cart'#245'es e sua respectivas taxas.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 281
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
          Height = 417
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsQuery
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
              FieldName = 'CND_CODIGO'
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
              FieldName = 'CND_DATA_REG'
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
              Width = 156
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CND_DESCRICAO'
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
              Width = 323
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRM_DESCRICAO'
              Title.Caption = 'Forma de Pagamento'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 172
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BND_DESCRICAO'
              Title.Caption = 'Bandeira'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ADM_DESCRICAO'
              Title.Caption = 'Administradora'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CND_STATUS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              PickList.Strings = (
                'S'
                'N')
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Ativo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 46
              Visible = True
            end>
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        object Label1: TLabel
          Left = 6
          Top = 13
          Width = 136
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo / Dt. de Modifica'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 92
          Top = 41
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 154
          Top = 60
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde. Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 243
          Top = 60
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde. Dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 332
          Top = 60
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dia de Vencto.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 36
          Top = 106
          Width = 106
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forma de Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 68
          Top = 133
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Admnistradora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 96
          Top = 159
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bandeira:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RzDBRadioGroup1: TRzDBRadioGroup
          Left = 3
          Top = 234
          Width = 409
          Height = 45
          DataField = 'CND_STATUS'
          DataSource = dsQuery
          Items.Strings = (
            'Ativo'
            'Inativo')
          Values.Strings = (
            '1'
            '2')
          Caption = 'Status'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          SpaceEvenly = True
          TabOrder = 3
        end
        object eCodigo: TRzDBEdit
          Left = 154
          Top = 10
          Width = 83
          Height = 21
          DataSource = dsQuery
          DataField = 'CND_CODIGO'
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = clSilver
          ParentFont = False
          TabOrder = 0
        end
        object eDataReg: TRzDBEdit
          Left = 279
          Top = 10
          Width = 136
          Height = 21
          DataSource = dsQuery
          DataField = 'CND_DATA_REG'
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object eDescricao: TRzDBEdit
          Left = 154
          Top = 37
          Width = 261
          Height = 21
          DataSource = dsQuery
          DataField = 'CND_DESCRICAO'
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FocusColor = clSilver
          ParentFont = False
          TabOrder = 2
        end
        object JvSpinEdit1: TJvSpinEdit
          Left = 154
          Top = 75
          Width = 83
          Height = 21
          TabOrder = 4
        end
        object JvDBCalcEdit1: TJvDBCalcEdit
          Left = 332
          Top = 75
          Width = 83
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object JvSpinEdit2: TJvSpinEdit
          Left = 243
          Top = 75
          Width = 83
          Height = 21
          TabOrder = 6
        end
        object JvDBSearchComboBox2: TJvDBSearchComboBox
          Left = 154
          Top = 155
          Width = 261
          Height = 21
          DataField = 'BND_DESCRICAO'
          DataSource = dsQueryBandeiras
          Style = csDropDownList
          TabOrder = 7
          Text = ''
        end
        object JvDBSearchComboBox3: TJvDBSearchComboBox
          Left = 154
          Top = 129
          Width = 261
          Height = 21
          DataField = 'ADM_DESCRICAO'
          DataSource = dsQueryAdministradoras
          Style = csDropDownList
          TabOrder = 8
          Text = ''
        end
        object JvDBLookupCombo1: TJvDBLookupCombo
          Left = 154
          Top = 102
          Width = 261
          Height = 21
          DisplayAllFields = True
          Color = clBtnFace
          DataField = 'ID_FORMA_PAGTO'
          DataSource = dsQuery
          LookupField = 'ID'
          LookupDisplay = 'FRM_CODIGO;FRM_DESCRICAO'
          LookupDisplayIndex = 1
          LookupSource = dsQueryFormas
          TabOrder = 9
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.sysIcones16
    Left = 571
    Top = 124
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
      'SELECT'
      '   T1.*,'
      '   IIF(T1.ID_FORMA_PAGTO IN (1,2),'
      '      '#39'00 - NENHUM'#39','
      
        '      (SELECT LPAD(ID,2,0) || '#39' - '#39' || FRM_DESCRICAO FROM C00001' +
        '0 WHERE ID = T1.ID_FORMA_PAGTO)'
      '   ) AS FRM_DESCRICAO,'
      ''
      '   IIF(T1.ID_FORMA_PAGTO IN (1,2),'
      '      '#39'00 - NENHUM'#39','
      
        '      (SELECT LPAD(ID,2,0) || '#39' - '#39' || GTW_DESCRICAO FROM C00001' +
        '1 WHERE ID = T1.ID_GATEWAY)'
      '   ) AS GTW_DESCRICAO,'
      ''
      '   IIF(T1.ID_FORMA_PAGTO IN (1,2),'
      '      '#39'00 - NENHUM'#39','
      
        '      (SELECT LPAD(ID,2,0) || '#39' - '#39' || BND_DESCRICAO FROM C00001' +
        '2 WHERE ID = T1.ID_BANDEIRA_CARTAO)'
      '   ) AS BND_DESCRICAO,'
      ''
      '   IIF(T1.ID_FORMA_PAGTO IN (1,2),'
      '      '#39'00 - NENHUM'#39','
      
        '      (SELECT LPAD(ID,2,0) || '#39' - '#39' || ADM_DESCRICAO FROM C00001' +
        '3 WHERE ID = T1.ID_ADMINISTRADORA)'
      '   ) AS ADM_DESCRICAO'
      ''
      'FROM'
      '   C000014 AS T1'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA ORDER BY CND_CODIGO ASC')
    Left = 436
    Top = 124
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QueryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object QueryID_FORMA_PAGTO: TIntegerField
      FieldName = 'ID_FORMA_PAGTO'
      Origin = 'ID_FORMA_PAGTO'
    end
    object QueryID_BANDEIRA_CARTAO: TIntegerField
      FieldName = 'ID_BANDEIRA_CARTAO'
      Origin = 'ID_BANDEIRA_CARTAO'
    end
    object QueryID_GATEWAY: TIntegerField
      FieldName = 'ID_GATEWAY'
      Origin = 'ID_GATEWAY'
    end
    object QueryID_ADMINISTRADORA: TIntegerField
      FieldName = 'ID_ADMINISTRADORA'
      Origin = 'ID_ADMINISTRADORA'
    end
    object QueryCND_CODIGO: TIntegerField
      FieldName = 'CND_CODIGO'
      Origin = 'CND_CODIGO'
      DisplayFormat = '000000'
    end
    object QueryCND_DATA_REG: TSQLTimeStampField
      FieldName = 'CND_DATA_REG'
      Origin = 'CND_DATA_REG'
    end
    object QueryCND_DESCRICAO: TStringField
      FieldName = 'CND_DESCRICAO'
      Origin = 'CND_DESCRICAO'
      Size = 60
    end
    object QueryFRM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FRM_DESCRICAO'
      Origin = 'FRM_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object QueryGTW_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTW_DESCRICAO'
      Origin = 'GTW_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object QueryBND_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BND_DESCRICAO'
      Origin = 'BND_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object QueryADM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADM_DESCRICAO'
      Origin = 'ADM_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object QueryCND_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'CND_STATUS'
      Origin = 'CND_STATUS'
      OnGetText = QueryCND_STATUSGetText
    end
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = Query
    OnStateChange = dsQueryStateChange
    Left = 436
    Top = 156
  end
  object QueryFormas: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   FRM_CODIGO,'
      '   FRM_DESCRICAO'
      'FROM'
      '   C000010'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY '
      '   FRM_CODIGO ASC')
    Left = 470
    Top = 124
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
    object QueryFormasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryFormasFRM_CODIGO: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 2
      FieldName = 'FRM_CODIGO'
      Origin = 'FRM_CODIGO'
      ReadOnly = True
      DisplayFormat = '00'
    end
    object QueryFormasFRM_DESCRICAO: TStringField
      FieldName = 'FRM_DESCRICAO'
      Origin = 'FRM_DESCRICAO'
      Size = 60
    end
  end
  object dsQueryFormas: TJvDataSource
    AutoEdit = False
    DataSet = QueryFormas
    Left = 470
    Top = 156
  end
  object QueryBandeiras: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      
        '   LPAD(BND_CODIGO,2,0) || '#39' - '#39' || BND_DESCRICAO AS BND_DESCRIC' +
        'AO'
      'FROM'
      '   C000012'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA')
    Left = 502
    Top = 124
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object dsQueryBandeiras: TJvDataSource
    AutoEdit = False
    DataSet = QueryBandeiras
    Left = 502
    Top = 156
  end
  object QueryAdministradoras: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      
        '   LPAD(ADM_CODIGO,2,0) || '#39' - '#39' || ADM_DESCRICAO AS ADM_DESCRIC' +
        'AO'
      'FROM'
      '   C000013'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA')
    Left = 534
    Top = 124
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object dsQueryAdministradoras: TJvDataSource
    AutoEdit = False
    DataSet = QueryAdministradoras
    Left = 534
    Top = 156
  end
end
