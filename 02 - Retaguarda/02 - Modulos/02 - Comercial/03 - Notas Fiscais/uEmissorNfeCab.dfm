object FrEmissorNfeCab: TFrEmissorNfeCab
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cabe'#231'alho da Nota Fiscal.'
  ClientHeight = 236
  ClientWidth = 635
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 198
    Width = 631
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
    ExplicitTop = 226
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 58
    Width = 631
    Height = 49
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
      Left = 8
      Top = 3
      Width = 97
      Height = 15
      Caption = 'Tipo de Opera'#231#227'o'
    end
    object Label2: TLabel
      Left = 120
      Top = 3
      Width = 59
      Height = 15
      Caption = 'Finalidade'
    end
    object Label3: TLabel
      Left = 288
      Top = 3
      Width = 123
      Height = 15
      Caption = 'Natureza da Opera'#231#227'o'
    end
    object eOperacao: TRzDBComboBox
      Left = 8
      Top = 18
      Width = 106
      Height = 23
      DataField = 'NFE_TIPO_OPERACAO'
      DataSource = dsDados
      Style = csDropDownList
      TabOrder = 0
      OnChange = eOperacaoChange
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
      Items.Strings = (
        '0 - Entrada'
        '1 - Saida')
      Values.Strings = (
        '0'
        '1')
    end
    object eFinalidade: TRzDBComboBox
      Left = 120
      Top = 18
      Width = 162
      Height = 23
      DataField = 'NFE_FINALIDADE'
      DataSource = dsDados
      Style = csDropDownList
      TabOrder = 1
      OnChange = eFinalidadeChange
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
      Items.Strings = (
        '1 - NF-e Normal'
        '2 - NF-e Complementar'
        '3 - NF-e de Ajuste'
        '4 - Devolu'#231#227'o de Mercadoria')
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
    object RzDBEdit1: TRzDBEdit
      Left = 288
      Top = 18
      Width = 333
      Height = 23
      DataSource = dsDados
      DataField = 'NFE_NATUREZA_OPERACAO'
      CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 631
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
      Width = 625
      Height = 48
      Align = alTop
      Caption = 'Selecione o Destinat'#225'rio'
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object RzDBEdit6: TRzDBEdit
        AlignWithMargins = True
        Left = 595
        Top = 20
        Width = 25
        Height = 23
        DataSource = dsDados
        DataField = 'CLI_UF'
        Align = alRight
        DisabledColor = clSilver
        Enabled = False
        TabOrder = 0
        OnEnter = RzDBEdit1Enter
        OnExit = RzDBEdit1Exit
      end
      object RzDBEdit5: TRzDBEdit
        AlignWithMargins = True
        Left = 461
        Top = 20
        Width = 128
        Height = 23
        DataSource = dsDados
        DataField = 'CLI_CNPJ'
        Align = alRight
        DisabledColor = clSilver
        Enabled = False
        TabOrder = 1
        OnEnter = RzDBEdit1Enter
        OnExit = RzDBEdit1Exit
      end
      object eCliente: TRzDBButtonEdit
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 450
        Height = 23
        DataSource = dsDados
        DataField = 'CLI_RAZAO_SOCIAL'
        Align = alClient
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
    Top = 109
    Width = 631
    Height = 87
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    ExplicitHeight = 115
    object Label6: TLabel
      Left = 147
      Top = 9
      Width = 95
      Height = 15
      Alignment = taRightJustify
      Caption = 'Tabela de Pre'#231'os:'
    end
    object Label5: TLabel
      Left = 188
      Top = 36
      Width = 54
      Height = 15
      Alignment = taRightJustify
      Caption = 'Vendedor:'
    end
    object Label7: TLabel
      Left = 116
      Top = 63
      Width = 126
      Height = 15
      Alignment = taRightJustify
      Caption = 'Indicador de Presen'#231'a:'
    end
    object ePresenca: TRzDBComboBox
      Left = 247
      Top = 59
      Width = 374
      Height = 23
      DataField = 'NFE_INDICADOR_PRESENCA'
      DataSource = dsDados
      Style = csDropDownList
      TabOrder = 2
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
      Items.Strings = (
        '0 - N'#227'o se Aplica'
        '1 - Opera'#231#227'o presencial;'
        '2 - Opera'#231#227'o n'#227'o Presencial, pela Internet;'
        '3 - Opera'#231#227'o n'#227'o Presencial, Teleatendimento;'
        '4 - NFC-e em Opera'#231#227'o com entrega a domic'#237'lio;'
        '9 - Opera'#231#227'o n'#227'o Presencial, Outros.')
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '6')
    end
    object eVendedor: TRzDBLookupComboBox
      Left = 247
      Top = 32
      Width = 374
      Height = 23
      DataField = 'ID_FUNCIONARIO'
      DataSource = dsDados
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dsFuncionario
      TabOrder = 1
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
    object ePrecos: TRzDBLookupComboBox
      Left = 247
      Top = 5
      Width = 374
      Height = 23
      DataField = 'ID_TABELA_PRECOS'
      DataSource = dsDados
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dsPrecos
      TabOrder = 0
      OnEnter = RzDBEdit1Enter
      OnExit = RzDBEdit1Exit
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = FrEmissorNfe.tbDados
    Left = 11
    Top = 99
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
    Top = 129
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
    Top = 129
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
    Top = 159
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
    Top = 159
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 41
    Top = 99
  end
  object dsItens: TJvDataSource
    AutoEdit = False
    DataSet = FrEmissorNfe.tbItens
    Left = 25
    Top = 198
  end
end
