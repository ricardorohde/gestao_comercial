object FrPedidosComprasCab: TFrPedidosComprasCab
  Left = 3
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cabe'#231'alho do Pedido de Compra'
  ClientHeight = 279
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopMenu
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 57
    Height = 15
    Caption = 'N.'#186' Pedido'
  end
  object Label2: TLabel
    Left = 81
    Top = 6
    Width = 69
    Height = 15
    Caption = 'Modifica'#231#227'o'
  end
  object Label3: TLabel
    Left = 216
    Top = 6
    Width = 84
    Height = 15
    Caption = 'Data do Pedido'
  end
  object Label4: TLabel
    Left = 320
    Top = 6
    Width = 91
    Height = 15
    Caption = 'Prazo de Entrega'
  end
  object Label6: TLabel
    Left = 8
    Top = 59
    Width = 23
    Height = 15
    Caption = 'F2 - '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 103
    Width = 51
    Height = 15
    Caption = 'Vendedor'
  end
  object Label8: TLabel
    Left = 201
    Top = 103
    Width = 52
    Height = 15
    Caption = 'Fone Fixo'
  end
  object Label9: TLabel
    Left = 305
    Top = 103
    Width = 40
    Height = 15
    Caption = 'Celular'
  end
  object Label10: TLabel
    Left = 409
    Top = 103
    Width = 31
    Height = 15
    Caption = 'Skype'
  end
  object Label13: TLabel
    Left = 305
    Top = 198
    Width = 62
    Height = 15
    Caption = 'Comprador'
  end
  object Bevel1: TBevel
    Left = 3
    Top = 50
    Width = 579
    Height = 3
  end
  object Bevel2: TBevel
    Left = 3
    Top = 192
    Width = 570
    Height = 3
  end
  object Label14: TLabel
    Left = 588
    Top = 6
    Width = 131
    Height = 15
    Caption = 'Informa'#231#245'es Adicionais'
  end
  object Label15: TLabel
    Left = 408
    Top = 59
    Width = 25
    Height = 15
    Caption = 'Cnpj'
  end
  object Label16: TLabel
    Left = 543
    Top = 59
    Width = 14
    Height = 15
    Caption = 'Uf.'
  end
  object Label17: TLabel
    Left = 8
    Top = 198
    Width = 59
    Height = 15
    Caption = 'Solicitante'
  end
  object Label5: TLabel
    Left = 31
    Top = 59
    Width = 127
    Height = 15
    Caption = 'Selecione o Fornecedor'
  end
  object Label18: TLabel
    Left = 8
    Top = 145
    Width = 89
    Height = 15
    Caption = 'E-mail Vendedor'
  end
  object eCodigo: TRzDBEdit
    Left = 8
    Top = 21
    Width = 67
    Height = 23
    DataSource = dsDados
    DataField = 'PED_NUMERO'
    Enabled = False
    TabOrder = 0
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object eModificacao: TRzDBEdit
    Left = 81
    Top = 21
    Width = 129
    Height = 23
    DataSource = dsDados
    DataField = 'PED_DATA_REG'
    Enabled = False
    TabOrder = 1
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object ePrazoEntrega: TRzDBEdit
    Left = 320
    Top = 21
    Width = 253
    Height = 23
    DataSource = dsDados
    DataField = 'PED_PRAZO_ENTREGA'
    CharCase = ecUpperCase
    TabOrder = 3
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object eVendedor: TRzDBEdit
    Left = 8
    Top = 118
    Width = 187
    Height = 23
    DataSource = dsDados
    DataField = 'PED_VEND_NOME'
    CharCase = ecUpperCase
    TabOrder = 7
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object eFoneFixo: TRzDBEdit
    Left = 201
    Top = 118
    Width = 98
    Height = 23
    DataSource = dsDados
    DataField = 'PED_VEND_FONE_FIXO'
    TabOrder = 8
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object eCelular: TRzDBEdit
    Left = 305
    Top = 118
    Width = 98
    Height = 23
    DataSource = dsDados
    DataField = 'PED_VEND_FONE_MOVEL'
    TabOrder = 9
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object eSkype: TRzDBEdit
    Left = 409
    Top = 118
    Width = 164
    Height = 23
    DataSource = dsDados
    DataField = 'PED_VEND_SKYPE'
    CharCase = ecLowerCase
    TabOrder = 10
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object eDataPedido: TJvDBDateEdit
    Left = 216
    Top = 21
    Width = 98
    Height = 23
    DataField = 'PED_DATA_PEDIDO'
    DataSource = dsDados
    ShowNullDate = False
    TabOrder = 2
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object eFornecedor: TRzDBButtonEdit
    Left = 8
    Top = 74
    Width = 395
    Height = 23
    DataSource = dsDados
    DataField = 'FOR_RAZAO_SOCIAL'
    CharCase = ecUpperCase
    TabOrder = 4
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 18
    OnButtonClick = eFornecedorButtonClick
  end
  object eComprador: TJvDBLookupCombo
    Left = 305
    Top = 213
    Width = 268
    Height = 22
    DataField = 'ID_FUNCIONARIO'
    DataSource = dsDados
    LookupField = 'ID'
    LookupDisplay = 'CONCATENATION'
    LookupSource = dsFunc
    TabOrder = 13
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 243
    Width = 899
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    TabOrder = 15
  end
  object eInfos: TRzDBMemo
    Left = 588
    Top = 21
    Width = 304
    Height = 214
    DataField = 'PED_OBSERVACAO'
    DataSource = dsDados
    TabOrder = 14
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object eCnpj: TRzDBEdit
    Left = 409
    Top = 74
    Width = 128
    Height = 23
    DataSource = dsDados
    DataField = 'FOR_CNPJ'
    CharCase = ecLowerCase
    Enabled = False
    TabOrder = 5
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object RzDBEdit1: TRzDBEdit
    Left = 543
    Top = 74
    Width = 30
    Height = 23
    DataSource = dsDados
    DataField = 'FOR_UF'
    BiDiMode = bdLeftToRight
    CharCase = ecUpperCase
    Enabled = False
    ParentBiDiMode = False
    TabOrder = 6
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object eSolicitante: TRzDBEdit
    Left = 8
    Top = 213
    Width = 291
    Height = 23
    DataSource = dsDados
    DataField = 'PED_SOLICITANTE'
    CharCase = ecUpperCase
    TabOrder = 12
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object RzDBEdit2: TRzDBEdit
    Left = 8
    Top = 160
    Width = 565
    Height = 23
    DataSource = dsDados
    DataField = 'PED_VEND_EMAIL'
    CharCase = ecLowerCase
    TabOrder = 11
    OnEnter = eCodigoEnter
    OnExit = eCodigoExit
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = FrPedidosCompras.tbDados
    Left = 20
    Top = 247
  end
  object tbFunc: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   LPAD(FUN_CODIGO,3,0) || '#39' - '#39' || FUN_APELIDO'
      'FROM'
      '   C000301'
      'WHERE'
      
        '   ID_EMPRESA = :ID_EMPRESA AND FUN_COMPRADOR = 1 AND FUN_STATUS' +
        ' = 1'
      'ORDER BY'
      '   FUN_NOME ASC')
    Left = 53
    Top = 247
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsFunc: TJvDataSource
    DataSet = tbFunc
    Left = 86
    Top = 247
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 119
    Top = 247
  end
  object PopMenu: TPopupMenu
    Left = 152
    Top = 247
    object SelecionarFornecedor1: TMenuItem
      Caption = 'Selecionar Fornecedor'
      ShortCut = 113
      OnClick = eFornecedorButtonClick
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
    end
  end
end
