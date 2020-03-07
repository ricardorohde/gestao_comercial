object FrListagemNFe: TFrListagemNFe
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lista de Notas Fiscais.'
  ClientHeight = 252
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 586
    Height = 158
    Margins.Bottom = 0
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = eGridDrawColumnCell
    OnDblClick = eGridDblClick
    AutoSizeColumns = True
    AutoSizeColumnIndex = 1
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'NFE_NUMERO'
        Title.Alignment = taRightJustify
        Title.Caption = 'N'#250'mero'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_CHAVE_ACESSO'
        Title.Caption = 'Chave'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 322
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NFE_TIPO_OPERACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo de Oper'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFE_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 213
    Width = 586
    CaptionOk = 'Selecionar'
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 586
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 24
      Height = 13
      Caption = 'F2 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 280
      Top = 3
      Width = 112
      Height = 13
      Caption = 'Pesquisar notas fiscais.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 30
      Top = 3
      Width = 85
      Height = 13
      Caption = 'Tipo de Opera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 256
      Top = 3
      Width = 24
      Height = 13
      Caption = 'F4 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 155
      Top = 3
      Width = 72
      Height = 13
      Caption = 'Status da NF-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 131
      Top = 3
      Width = 24
      Height = 13
      Caption = 'F3 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbTipoOperacao: TRzComboBox
      AlignWithMargins = True
      Left = 6
      Top = 18
      Width = 119
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Todas'
      OnChange = cbTipoOperacaoChange
      Items.Strings = (
        'NF-e de Entrada'
        'NF-e de Saida'
        'Todas')
      ItemIndex = 2
      Values.Strings = (
        '0'
        '1'
        '99')
    end
    object txtPesq: TRzEdit
      Left = 256
      Top = 18
      Width = 323
      Height = 21
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = 'Informe o n'#250'mero'
      TextHintVisibleOnFocus = True
    end
    object cbStatusNfe: TRzComboBox
      AlignWithMargins = True
      Left = 131
      Top = 18
      Width = 119
      Height = 21
      AllowEdit = False
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Autorizada'
      OnChange = cbStatusNfeChange
      Items.Strings = (
        'Em Digita'#231#227'o'
        'Aguardando'
        'Autorizada'
        'Cancelada'
        'Rejeitada'
        'Denegada')
      ItemIndex = 2
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5')
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 288
    Top = 132
  end
  object Query: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      
        'SELECT * FROM C000600 WHERE ID_EMPRESA = :ID AND NFE_STATUS = :S' +
        'TS_NFE AND NFE_TIPO_OPERACAO = :NFE_TIPO ')
    Left = 256
    Top = 132
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STS_NFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NFE_TIPO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QueryNFE_NUMERO: TIntegerField
      Alignment = taCenter
      FieldName = 'NFE_NUMERO'
      Origin = 'NFE_NUMERO'
      DisplayFormat = '000,000'
    end
    object QueryNFE_CHAVE_ACESSO: TStringField
      FieldName = 'NFE_CHAVE_ACESSO'
      Origin = 'NFE_CHAVE_ACESSO'
      FixedChar = True
      Size = 44
    end
    object QueryNFE_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'NFE_STATUS'
      Origin = 'NFE_STATUS'
      OnGetText = QueryNFE_STATUSGetText
    end
    object QueryNFE_TIPO_OPERACAO: TIntegerField
      FieldName = 'NFE_TIPO_OPERACAO'
      Origin = 'NFE_TIPO_OPERACAO'
      OnGetText = QueryNFE_TIPO_OPERACAOGetText
    end
  end
  object Pop00: TPopupMenu
    AutoPopup = False
    Left = 368
    Top = 64
    object TipodeOperao1: TMenuItem
      Caption = 'Tipo de Opera'#231#227'o'
      ShortCut = 113
      OnClick = TipodeOperao1Click
    end
    object StatusNFe1: TMenuItem
      Caption = 'Status NF-e'
      ShortCut = 114
      OnClick = StatusNFe1Click
    end
    object Pequisar1: TMenuItem
      Caption = 'Pequisar'
      ShortCut = 115
      OnClick = Pequisar1Click
    end
    object Selecionar1: TMenuItem
      Action = actSelect
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
    end
  end
  object ActionList1: TActionList
    Left = 260
    Top = 56
    object actSelect: TAction
      Caption = 'Se&lecionar'
      OnExecute = actSelectExecute
      OnUpdate = actSelectUpdate
    end
  end
end
