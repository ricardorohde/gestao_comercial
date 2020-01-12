object FrFiltro_Pos_Estoque: TFrFiltro_Pos_Estoque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Posi'#231#227'o do Estoque.'
  ClientHeight = 110
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 337
    Top = 29
    Width = 5
    Height = 15
    Caption = '-'
  end
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 72
    Width = 403
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    CaptionCancel = 'Cancelar'
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = 8404992
    GradientColorStyle = gcsCustom
    TabOrder = 0
    VisualStyle = vsGradient
  end
  object eGrupo: TRzButtonEdit
    AlignWithMargins = True
    Left = 6
    Top = 25
    Width = 263
    Height = 23
    Margins.Left = 6
    Margins.Top = 2
    Margins.Right = 6
    Margins.Bottom = 2
    Text = ''
    Enabled = False
    TabOrder = 1
    TextHint = 'F2 - Selecione o Grupo'
    TextHintVisibleOnFocus = True
    OnEnter = eGrupoEnter
    OnExit = eGrupoExit
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
    OnButtonClick = SelecioanrGrupo1Click
  end
  object eChkGrupos: TRzCheckBox
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 107
    Height = 17
    Margins.Left = 6
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Todos os Grupos'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = eChkGruposClick
  end
  object eChkProduto: TRzCheckBox
    AlignWithMargins = True
    Left = 278
    Top = 6
    Width = 117
    Height = 17
    Margins.Left = 6
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Todos os Produtos'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = eChkProdutoClick
  end
  object eCodigoIni: TRzSpinEdit
    Left = 278
    Top = 25
    Width = 57
    Height = 23
    AllowKeyEdit = True
    Max = 999999.000000000000000000
    Min = 1.000000000000000000
    Value = 1.000000000000000000
    Enabled = False
    TabOrder = 4
  end
  object eCodigoFim: TRzSpinEdit
    Left = 344
    Top = 25
    Width = 57
    Height = 23
    AllowKeyEdit = True
    Max = 999999.000000000000000000
    Min = 1.000000000000000000
    Value = 1.000000000000000000
    Enabled = False
    TabOrder = 5
  end
  object RzCheckBox1: TRzCheckBox
    AlignWithMargins = True
    Left = 6
    Top = 52
    Width = 120
    Height = 17
    Margins.Left = 6
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Separar por Grupos'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = eChkGruposClick
  end
  object Query: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.ID,'
      '   T1.ID_EMPRESA,'
      '   T1.ID_GRUPO,'
      '   T1.PRD_CODIGO,'
      '   PRD_CODIGO_BRR,'
      '   T3.GRP_DESCRICAO AS PRD_GRUPO,'
      '   T1.PRD_DESCRICAO,'
      '   T1.PRD_UNIDADE,'
      '   T1.PRD_NCM,'
      '   T1.PRD_VLR_CUSTO,'
      '   T2.QTDE_INICIAL AS PRD_QTDE_INICIAL,'
      '   T2.QTDE_ENTRADA AS PRD_QTDE_ENTRADA,'
      '   T2.QTDE_SAIDA   AS PRD_QTDE_SAIDA,'
      '   T2.QTDE_ATUAL   AS PRD_QTDE_ATUAL,'
      
        '   CAST((T1.PRD_VLR_CUSTO * T2.QTDE_ATUAL) AS NUMERIC(15,2)) AS ' +
        'PRD_CUSTO_TOTAL'
      'FROM'
      '   C000405 AS T1'
      'JOIN'
      '   C000406 AS T2'
      'ON'
      '   T2.ID_PRODUTO = T1.ID'
      'JOIN'
      '   C000402 AS T3'
      'ON'
      '   T1.ID_GRUPO   = T3.ID')
    Left = 4
    Top = 79
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object QueryID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object QueryID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
    object QueryPRD_GRUPO: TStringField
      FieldName = 'PRD_GRUPO'
      Origin = 'PRD_GRUPO'
      Size = 60
    end
    object QueryPRD_CODIGO: TIntegerField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      DisplayFormat = '000000'
    end
    object QueryPRD_CODIGO_BRR: TStringField
      FieldName = 'PRD_CODIGO_BRR'
      Origin = 'PRD_CODIGO_BRR'
      Size = 15
    end
    object QueryPRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      Size = 120
    end
    object QueryPRD_UNIDADE: TStringField
      Alignment = taCenter
      FieldName = 'PRD_UNIDADE'
      Origin = 'PRD_UNIDADE'
      Size = 3
    end
    object QueryPRD_NCM: TStringField
      FieldName = 'PRD_NCM'
      Origin = 'PRD_NCM'
      Size = 8
    end
    object QueryPRD_QTDE_INICIAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_QTDE_INICIAL'
      Origin = 'QTDE_INICIAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryPRD_QTDE_ENTRADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_QTDE_ENTRADA'
      Origin = 'QTDE_ENTRADA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryPRD_QTDE_SAIDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_QTDE_SAIDA'
      Origin = 'QTDE_SAIDA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryPRD_QTDE_ATUAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_QTDE_ATUAL'
      Origin = 'QTDE_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryPRD_VLR_CUSTO: TBCDField
      FieldName = 'PRD_VLR_CUSTO'
      Origin = 'PRD_VLR_CUSTO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object QueryPRD_CUSTO_TOTAL: TFMTBCDField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CUSTO_TOTAL'
      Origin = 'PRD_CUSTO_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object Pop00: TPopupMenu
    AutoPopup = False
    Left = 36
    Top = 79
    object SelecioanrGrupo1: TMenuItem
      Caption = 'Selecioanr Grupo'
      ShortCut = 113
      OnClick = SelecioanrGrupo1Click
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
end
