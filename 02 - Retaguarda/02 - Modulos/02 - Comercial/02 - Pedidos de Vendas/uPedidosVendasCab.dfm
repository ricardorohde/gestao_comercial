object FrPedidosVendasCab: TFrPedidosVendasCab
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cabe'#231'alho do Pedido de Vendas'
  ClientHeight = 380
  ClientWidth = 585
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 342
    Width = 581
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    GradientColorStyle = gcsCustom
    TabOrder = 3
    VisualStyle = vsGradient
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 58
    Width = 581
    Height = 103
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    TabOrder = 1
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 9
      Top = 4
      Width = 57
      Height = 15
      Caption = 'N.'#186' Pedido'
    end
    object Label2: TLabel
      Left = 110
      Top = 4
      Width = 69
      Height = 15
      Caption = 'Modifica'#231#227'o'
    end
    object Label3: TLabel
      Left = 248
      Top = 4
      Width = 67
      Height = 15
      Caption = 'Data Pedido'
    end
    object Label4: TLabel
      Left = 361
      Top = 4
      Width = 70
      Height = 15
      Caption = 'Prev. Entrega'
    end
    object Label5: TLabel
      Left = 188
      Top = 78
      Width = 54
      Height = 15
      Alignment = taRightJustify
      Caption = 'Vendedor:'
    end
    object Label6: TLabel
      Left = 147
      Top = 51
      Width = 95
      Height = 15
      Alignment = taRightJustify
      Caption = 'Tabela de Pre'#231'os:'
    end
    object RzDBEdit1: TRzDBEdit
      Left = 9
      Top = 20
      Width = 95
      Height = 23
      DataSource = dsDados
      DataField = 'PED_NUMERO'
      Enabled = False
      TabOrder = 0
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
    object RzDBEdit2: TRzDBEdit
      Left = 110
      Top = 20
      Width = 132
      Height = 23
      DataSource = dsDados
      DataField = 'PED_DATA_REG'
      Enabled = False
      TabOrder = 1
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
    object eDataPedido: TJvDBDateEdit
      Left = 248
      Top = 20
      Width = 107
      Height = 23
      DataField = 'PED_DATA_PEDIDO'
      DataSource = dsDados
      ShowNullDate = False
      TabOrder = 2
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
    object ePrecos: TRzDBLookupComboBox
      Left = 248
      Top = 47
      Width = 322
      Height = 23
      DataField = 'ID_TABELA_PRECOS'
      DataSource = dsDados
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dsPrecos
      TabOrder = 4
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
    object eVendedor: TRzDBLookupComboBox
      Left = 248
      Top = 74
      Width = 322
      Height = 23
      DataField = 'ID_FUNCIONARIO'
      DataSource = dsDados
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dsFuncionario
      TabOrder = 5
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
    object ePrevEntrega: TRzDBEdit
      Left = 361
      Top = 20
      Width = 209
      Height = 23
      DataSource = dsDados
      DataField = 'PED_PREV_ENTREGA'
      CharCase = ecUpperCase
      TabOrder = 3
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 581
    Height = 54
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    AutoSize = True
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    TabOrder = 0
    VisualStyle = vsGradient
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 575
      Height = 48
      Align = alTop
      Caption = 'Selecione o Cliente'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object RzDBEdit6: TRzDBEdit
        Left = 542
        Top = 17
        Width = 25
        Height = 23
        DataSource = dsDados
        DataField = 'CLI_UF'
        DisabledColor = clSilver
        Enabled = False
        TabOrder = 0
        OnEnter = RzDBEdit1Enter
        OnExit = RzDBEdit1Exit
      end
      object RzDBEdit5: TRzDBEdit
        Left = 409
        Top = 17
        Width = 128
        Height = 23
        DataSource = dsDados
        DataField = 'CLI_CNPJ'
        DisabledColor = clSilver
        Enabled = False
        TabOrder = 1
        OnEnter = RzDBEdit1Enter
        OnExit = RzDBEdit1Exit
      end
      object eCliente: TRzDBButtonEdit
        Left = 6
        Top = 17
        Width = 397
        Height = 23
        DataSource = dsDados
        DataField = 'CLI_RAZAO_SOCIAL'
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        FocusColor = 11974326
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        TextHint = 'F2 - Cliente'
        TextHintVisibleOnFocus = True
        OnEnter = RzDBEdit1Enter
        OnExit = RzDBEdit1Exit
        AllowKeyEdit = False
        ButtonShortCut = 113
        AltBtnWidth = 15
        ButtonWidth = 18
        OnButtonClick = eClienteButtonClick
      end
    end
  end
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 163
    Width = 581
    Height = 177
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    object Label9: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 575
      Height = 15
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Observa'#231#245'es'
      ExplicitWidth = 71
    end
    object eInfos: TRzDBMemo
      AlignWithMargins = True
      Left = 3
      Top = 21
      Width = 575
      Height = 153
      Align = alClient
      DataField = 'PED_OBSERVACAO'
      DataSource = dsDados
      TabOrder = 0
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = FrPedidosVendas.tbDados
    Left = 11
    Top = 213
  end
  object tbPrecos: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      
        '   ID, (LPAD(PRC_CODIGO,3,0) || '#39' - '#39' || PRC_DESCRICAO) AS DESCR' +
        'ICAO'
      'FROM'
      '   C000303'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'AND'
      '   PRC_STATUS = 1'
      'ORDER BY'
      '   PRC_DESCRICAO ASC')
    Left = 11
    Top = 249
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object dsPrecos: TJvDataSource
    AutoEdit = False
    DataSet = tbPrecos
    Left = 41
    Top = 249
  end
  object tbFuncionario: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      
        '   ID, (LPAD(FUN_CODIGO,3,0) || '#39' - '#39' || FUN_APELIDO) AS DESCRIC' +
        'AO'
      'FROM'
      '   C000301'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'AND'
      '   FUN_STATUS = 1'
      'ORDER BY'
      '   FUN_APELIDO ASC')
    Left = 11
    Top = 279
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object dsFuncionario: TJvDataSource
    AutoEdit = False
    DataSet = tbFuncionario
    Left = 41
    Top = 279
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 171
    Top = 220
  end
  object dsItens: TJvDataSource
    AutoEdit = False
    DataSet = FrPedidosVendas.tbItens
    Left = 41
    Top = 344
  end
end
