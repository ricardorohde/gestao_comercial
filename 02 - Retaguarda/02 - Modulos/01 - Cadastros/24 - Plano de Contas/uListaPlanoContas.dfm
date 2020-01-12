object FrListaPlanoContas: TFrListaPlanoContas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Plano de Contas:'
  ClientHeight = 356
  ClientWidth = 682
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 678
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
    TabOrder = 0
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 233
      Height = 26
      Caption = 'Selecionar Plano de Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227072
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 287
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
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 678
    Height = 43
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 3
      Top = 2
      Width = 24
      Height = 15
      Caption = 'F3 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 27
      Top = 2
      Width = 81
      Height = 15
      Caption = 'Conta Principal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 178
      Top = 2
      Width = 125
      Height = 15
      Caption = 'Par'#226'metros da Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 154
      Top = 2
      Width = 24
      Height = 15
      Caption = 'F4 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eSearch: TRzEdit
      Left = 154
      Top = 17
      Width = 521
      Height = 23
      Text = ''
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = eSearchChange
      OnKeyUp = eSearchKeyUp
    end
    object ed_tipo_pesquisa: TJvDBSearchComboBox
      Left = 3
      Top = 17
      Width = 145
      Height = 23
      DataField = 'PLN_DESCRICAO_II'
      DataSource = dsListQuery
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = ''
      OnChange = ed_tipo_pesquisaChange
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 318
    Width = 678
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    TabOrder = 2
    VisualStyle = vsGradient
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 83
    Width = 678
    Height = 233
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
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
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    OnDrawColumnCell = eGridDrawColumnCell
    OnDblClick = RzDialogButtons1ClickOk
    AlternateRowColor = 15921906
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
        Width = 503
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
  object Query: TFDQuery
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
      
        '    PLN_CONTA_CODIGO || '#39' - '#39' || PLN_DESCRICAO AS PLN_DESCRICAO_' +
        'III,'
      '    PLN_TIPO,'
      '    PLN_ATIVO'
      'FROM'
      '    C000018'
      'WHERE '
      '    ID_EMPRESA = :ID_EMPRESA '
      'AND'
      '    PLN_CONTA_CODIGO LIKE :PLN_CONTA_CODIGO || '#39'%'#39
      'ORDER BY 3')
    Left = 256
    Top = 136
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'PLN_CONTA_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 12
        Value = ''
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
    object QueryPLN_DESCRICAO_II: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLN_DESCRICAO_II'
      Origin = 'PLN_DESCRICAO_II'
      ProviderFlags = []
      ReadOnly = True
      Size = 73
    end
    object QueryPLN_DESCRICAO_III: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLN_DESCRICAO_III'
      Origin = 'PLN_DESCRICAO_III'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
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
  end
  object dsQuery: TJvDataSource
    AutoEdit = False
    DataSet = Query
    Left = 288
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 320
    Top = 136
    object ipodePesquisa1: TMenuItem
      Caption = 'Tipo de Pesquisa'
      ShortCut = 114
      OnClick = ipodePesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object ListQuery: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'select'
      '    pln_conta_codigo,'
      
        '    pln_conta_codigo || '#39' - '#39' || pln_descricao as pln_descricao_' +
        'ii'
      'from'
      '    c000018'
      'where'
      '    id_empresa = :id_empresa'
      'and'
      '    char_length(pln_conta_codigo) = 1'
      'order by 1')
    Left = 72
    Top = 216
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object dsListQuery: TDataSource
    AutoEdit = False
    DataSet = ListQuery
    Left = 102
    Top = 216
  end
end
