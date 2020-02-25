object FrImportarVendaCelularPesquisar: TFrImportarVendaCelularPesquisar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 357
  ClientWidth = 813
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop00
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 809
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
    TabOrder = 2
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 163
      Height = 26
      Caption = 'Vendas Pr'#233' Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
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
    Top = 319
    Width = 809
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    CaptionCancel = 'Fechar'
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = Selecionar1Click
    Color = clSilver
    TabOrder = 1
    VisualStyle = vsGradient
  end
  object eGrid: TNextDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 686
    Height = 279
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    AppearanceOptions = [aoBoldTextSelection, aoHideSelection, aoHighlightSlideCells]
    BorderStyle = bsNone
    Caption = ''
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLinesColor = clSilver
    GridLinesStyle = lsActiveHorzOnly
    HeaderStyle = hsOldStyle
    Options = [goGrid, goHeader, goIndicator, goRowMoving, goSelectFullRow, goInplaceEditEvents]
    ParentFont = False
    TabOrder = 0
    TabStop = True
    WantReturns = True
    OnDblClick = Selecionar1Click
    DataAwareOptions = []
    DataSource = dsQuery
    object NxDBDateColumn1: TNxDBDateColumn
      DefaultValue = '21/06/2019'
      DefaultWidth = 150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      Header.Caption = 'Data'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = [fsBold]
      Header.ParentFont = False
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 0
      SortType = stDate
      Width = 150
      FieldName = 'DATA_VENDA'
      HideWhenEmpty = False
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxDBTextColumn1: TNxDBTextColumn
      Alignment = taCenter
      Color = 33023
      DefaultWidth = 85
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      Header.Caption = 'C'#243'digo'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clBlack
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = [fsBold]
      Header.ParentFont = False
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      Width = 85
      FieldName = 'PRE_CODIGO_VENDA'
    end
    object NxDBTextColumn2: TNxDBTextColumn
      DefaultWidth = 144
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      Header.Caption = 'Vendedor'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = [fsBold]
      Header.ParentFont = False
      Options = [coAutoSize, coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 144
      FieldName = 'VENDEDOR'
    end
    object NxDBNumberColumn1: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 90
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      Header.Caption = 'SubTotal'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = [fsBold]
      Header.ParentFont = False
      ParentFont = False
      Position = 3
      SortType = stNumeric
      Width = 90
      FieldName = 'PRE_VLR_SUBTOTAL'
      FormatMask = ',0.00'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBNumberColumn2: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 90
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      Header.Caption = 'Desconto'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = [fsBold]
      Header.ParentFont = False
      ParentFont = False
      Position = 4
      SortType = stNumeric
      Width = 90
      FieldName = 'PRE_VLR_DESCONTO'
      FormatMask = ',0.00'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBNumberColumn3: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 90
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      Header.Caption = 'Valor Total'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = [fsBold]
      Header.ParentFont = False
      ParentFont = False
      Position = 5
      SortType = stNumeric
      Width = 90
      FieldName = 'PRE_VLR_TOTAL'
      FormatMask = ',0.00'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBImageColumn1: TNxDBImageColumn
      Alignment = taCenter
      DefaultValue = '0'
      DefaultWidth = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      Header.Caption = 'ST'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = [fsBold]
      Header.ParentFont = False
      ParentFont = False
      Position = 6
      SortType = stNumeric
      Width = 25
      FieldName = 'PRE_STATUS'
      Images = ImageList1
      Transparent = True
    end
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 690
    Top = 38
    Width = 121
    Height = 279
    Margins.Left = 0
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alRight
    BorderOuter = fsNone
    TabOrder = 3
    VisualStyle = vsGradient
    object Label3: TLabel
      Left = 37
      Top = 12
      Width = 71
      Height = 18
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 12
      Width = 33
      Height = 18
      Caption = 'F2 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 37
      Top = 59
      Width = 64
      Height = 18
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 4
      Top = 59
      Width = 33
      Height = 18
      Caption = 'F3 - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object aData: TJvDateEdit
      Left = 4
      Top = 30
      Width = 113
      Height = 27
      CheckOnExit = True
      ClickKey = 13
      DefaultToday = True
      DialogTitle = 'Selecione a Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 0
    end
    object bData: TJvDateEdit
      Left = 4
      Top = 77
      Width = 113
      Height = 27
      CheckOnExit = True
      ClickKey = 13
      DefaultToday = True
      DialogTitle = 'Selecione a Data'
      Flat = False
      ParentFlat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 4
      Top = 110
      Width = 113
      Height = 31
      Caption = 'F4 - Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = FiltrarVendas1Click
    end
  end
  object DBRest: TRESTDWDataBase
    Active = True
    Compression = True
    MyIP = '127.0.0.1'
    Login = 'testserver'
    Password = 'testserver'
    Proxy = False
    ProxyOptions.Port = 8888
    PoolerService = '127.0.0.1'
    PoolerPort = 8082
    PoolerName = 'TServerMethodDM.RESTDWPoolerDB1'
    StateConnection.AutoCheck = False
    StateConnection.InTime = 1000
    RequestTimeOut = 10000
    EncodeStrings = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    ParamCreate = True
    FailOver = False
    FailOverConnections = <>
    FailOverReplaceDefaults = False
    ClientConnectionDefs.Active = False
    Left = 184
    Top = 120
  end
  object Query: TRESTDWClientSQL
    Active = True
    Filtered = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'ID_VENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'DATA_VENDA'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRE_CODIGO_VENDA'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'PRE_VLR_SUBTOTAL'
        DataType = ftFMTBcd
        Precision = 62
        Size = 4
      end
      item
        Name = 'PRE_VLR_DESCONTO'
        DataType = ftFMTBcd
        Precision = 62
        Size = 4
      end
      item
        Name = 'PRE_MGR_DESCONTO'
        DataType = ftFMTBcd
        Precision = 62
        Size = 4
      end
      item
        Name = 'PRE_VLR_TOTAL'
        DataType = ftFMTBcd
        Size = 4
      end
      item
        Name = 'PRE_STATUS'
        DataType = ftInteger
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <
      item
        DataType = ftString
        Name = 'ID_EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'ADATA'
        ParamType = ptInput
        Value = '01/01/2019'
      end
      item
        DataType = ftString
        Name = 'BDATA'
        ParamType = ptInput
        Value = '01/01/2020'
      end>
    DataBase = DBRest
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      
        '   (SELECT FUN_APELIDO FROM C000301 WHERE ID = T1.ID_VENDEDOR) A' +
        'S VENDEDOR'
      'FROM  '
      '   C000020 AS T1'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'AND'
      '   CAST(DATA_VENDA AS DATE) BETWEEN :ADATA AND :BDATA'
      'ORDER BY'
      '   ID DESC')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 216
    Top = 120
    object QueryDATA_VENDA: TSQLTimeStampField
      DisplayWidth = 16
      FieldName = 'DATA_VENDA'
    end
    object QueryPRE_CODIGO_VENDA: TStringField
      DisplayWidth = 22
      FieldName = 'PRE_CODIGO_VENDA'
      Size = 25
    end
    object QueryPRE_VLR_SUBTOTAL: TFMTBCDField
      FieldName = 'PRE_VLR_SUBTOTAL'
      DisplayFormat = ',0.00'
      Size = 0
    end
    object QueryPRE_VLR_DESCONTO: TFMTBCDField
      FieldName = 'PRE_VLR_DESCONTO'
      DisplayFormat = ',0.00'
      Size = 0
    end
    object QueryPRE_VLR_TOTAL: TFMTBCDField
      FieldName = 'PRE_VLR_TOTAL'
      DisplayFormat = ',0.00'
      Size = 0
    end
    object QueryVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 80
    end
    object QueryPRE_STATUS: TIntegerField
      FieldName = 'PRE_STATUS'
    end
  end
  object dsQuery: TDataSource
    DataSet = Query
    Left = 248
    Top = 120
  end
  object ImageList1: TImageList
    Left = 280
    Top = 120
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000009900000099
      0000009900000000000000000000000000000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2B200999999009999
      99009999990099999900000000000000000000000000000000000099000000CC
      000000CC000000CC000000CC000000CC00000099000000CC0000009900000099
      0000009900000099000000000000000000000000000000000000000099000000
      CC000000CC000000CC000000CC000000CC00000099000000CC00000099000000
      9900000099000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2B2009999
      99009999990099999900000000000000000000000000000000000099000000FF
      000000CC000000CC000000CC000000CC000000CC00000099000000CC00000099
      0000009900000099000000000000000000000000000000000000000099000000
      FF000000CC000000CC000000CC000000CC000000CC00000099000000CC000000
      9900000099000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900B2B2
      B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2
      B2009999990099999900000000000000000000000000000000000099000000CC
      000000FF000000CC000000CC000000CC000000CC000000CC00000099000000CC
      0000009900000099000000000000000000000000000000000000000099000000
      CC000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      CC00000099000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B2009999
      9900B2B2B20099999900000000000000000000000000000000000099000000FF
      000000CC000000FF000000CC000000CC000000CC000000CC000000CC00000099
      000000CC00000099000000000000000000000000000000000000000099000000
      FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC000000
      99000000CC000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B2009999990099999900000000000000000000000000000000000099000000FF
      000000FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC
      0000009900000099000000000000000000000000000000000000000099000000
      FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC000000
      CC00000099000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B20099999900000000000000000000000000000000000099000099FF
      990000FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC
      000000CC00000099000000000000000000000000000000000000000099009999
      FF000000FF000000FF000000CC000000FF000000CC000000CC000000CC000000
      CC000000CC000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900E5E5
      E500E5E5E500CCCCCC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2
      B200B2B2B20099999900000000000000000000000000000000000099000099FF
      990099FF990000FF000000FF000000CC000000FF000000CC000000CC000000CC
      000000CC00000099000000000000000000000000000000000000000099009999
      FF009999FF000000FF000000FF000000CC000000FF000000CC000000CC000000
      CC000000CC000000990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000009900000099
      0000009900000000000000000000000000000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000E007E007E0070000C003C003C0030000
      C003C003C0030000C003C003C0030000C003C003C0030000C003C003C0030000
      C003C003C0030000C003C003C0030000E007E007E0070000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object Pop00: TPopupMenu
    Left = 56
    Top = 120
    object Selecionar1: TMenuItem
      Caption = 'Selecionar'
      ShortCut = 13
      OnClick = Selecionar1Click
    end
    object FocarDataInicial1: TMenuItem
      Caption = 'Focar Data Inicial'
      ShortCut = 113
      Visible = False
      OnClick = FocarDataInicial1Click
    end
    object FocarDataFinal1: TMenuItem
      Caption = 'Focar Data Final'
      ShortCut = 114
      Visible = False
      OnClick = FocarDataFinal1Click
    end
    object FiltrarVendas1: TMenuItem
      Caption = 'Filtrar Vendas'
      ShortCut = 115
      OnClick = FiltrarVendas1Click
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
