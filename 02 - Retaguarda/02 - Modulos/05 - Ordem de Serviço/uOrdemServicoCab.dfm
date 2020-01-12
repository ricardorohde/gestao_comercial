object FrOrdemServicoCab: TFrOrdemServicoCab
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrOrdemServicoCab'
  ClientHeight = 298
  ClientWidth = 584
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 580
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
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    ParentFont = False
    TabOrder = 3
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 4
      Width = 139
      Height = 26
      Caption = 'Abertura de O.S'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
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
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 260
    Width = 580
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    GradientColorStyle = gcsCustom
    TabOrder = 2
    VisualStyle = vsGradient
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 580
    Height = 43
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsGradient
    object Label5: TLabel
      Left = 3
      Top = 2
      Width = 33
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ed_cliente: TRzDBButtonEdit
      Left = 3
      Top = 17
      Width = 400
      Height = 21
      DataSource = dsDados
      DataField = 'OS_CLI_RAZAO_SOCIAL'
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      TextHint = 'F2 - Cliente'
      TextHintVisibleOnFocus = True
      OnEnter = ed_clienteEnter
      OnExit = ed_clienteExit
      AllowKeyEdit = False
      ButtonShortCut = 113
      AltBtnWidth = 15
      ButtonWidth = 18
      OnButtonClick = ed_clienteButtonClick
    end
    object ed_cnpj: TRzDBEdit
      Left = 409
      Top = 17
      Width = 137
      Height = 21
      DataSource = dsDados
      DataField = 'OS_CLI_CNPJ'
      DisabledColor = 13882323
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ed_uf: TRzDBEdit
      Left = 552
      Top = 17
      Width = 25
      Height = 21
      DataSource = dsDados
      DataField = 'OS_CLI_UF'
      DisabledColor = 13882323
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 83
    Width = 580
    Height = 175
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    object Label4: TLabel
      Left = 3
      Top = 40
      Width = 58
      Height = 15
      Caption = 'Anota'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 3
      Top = 2
      Width = 51
      Height = 13
      Caption = 'Atendente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 244
      Top = 2
      Width = 67
      Height = 13
      Caption = 'Prev. Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 344
      Top = 2
      Width = 72
      Height = 13
      Caption = 'Representante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ed_anotacoes: TDBMemo
      AlignWithMargins = True
      Left = 3
      Top = 57
      Width = 574
      Height = 115
      Align = alBottom
      DataField = 'OS_ANOTACOES_ENT'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = ed_clienteEnter
      OnExit = ed_clienteExit
    end
    object ed_atendente: TRzDBLookupComboBox
      Left = 3
      Top = 17
      Width = 235
      Height = 21
      DataField = 'ID_ATENDENTE'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'FUN_APELIDO'
      ListSource = dsQuery
      ParentFont = False
      TabOrder = 0
      OnEnter = ed_clienteEnter
      OnExit = ed_clienteExit
    end
    object ed_representante: TDBEdit
      Left = 344
      Top = 17
      Width = 233
      Height = 21
      CharCase = ecUpperCase
      DataField = 'OS_REPRESENTANTE'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = ed_clienteEnter
      OnExit = ed_clienteExit
    end
    object ed_prev_entrega: TJvDBDateEdit
      Left = 244
      Top = 17
      Width = 93
      Height = 21
      DataField = 'OS_PREV_ENTREGA'
      DataSource = dsDados
      ShowNullDate = False
      TabOrder = 1
      OnEnter = ed_clienteEnter
      OnExit = ed_clienteExit
    end
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = FrOrdemServico.Query
    Left = 18
    Top = 162
  end
  object Query: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   LPAD(FUN_CODIGO,2,0) || '#39' - '#39' || FUN_APELIDO AS FUN_APELIDO'
      'FROM'
      '   C000301'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   FUN_APELIDO')
    Left = 50
    Top = 162
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    Left = 82
    Top = 162
  end
end
