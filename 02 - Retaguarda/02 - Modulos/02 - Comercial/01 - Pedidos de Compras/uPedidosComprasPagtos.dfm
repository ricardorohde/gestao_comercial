object FrPedidosComprasPagtos: TFrPedidosComprasPagtos
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Condi'#231#245'es de Pagamentos:'
  ClientHeight = 332
  ClientWidth = 640
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 294
    Width = 636
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    CaptionOk = 'Gravar'
    CaptionCancel = 'Fechar'
    HotTrack = True
    OKDefault = False
    ShowOKButton = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    VisualStyle = vsGradient
    object JvDBNavigator1: TJvDBNavigator
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 370
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 4
      DataSource = dsQuery
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
      Hints.Strings = (
        'Primeiro Registro'
        'Prior record'
        'Next record'
        'Last record'
        'Inserir'
        'Excluir'
        'Alterar'
        'Salvar'
        'Cancelar'
        'Refresh data'
        'Salvar'
        'Cancel updates')
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 636
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
      Width = 226
      Height = 26
      Caption = 'Condi'#231#245'es de Pagamentos'
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
  object pn_dados: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 636
    Height = 41
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    Color = clSilver
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 1
      Width = 51
      Height = 13
      Caption = 'Dt. Vencto'
      Enabled = False
    end
    object Label2: TLabel
      Left = 109
      Top = 1
      Width = 54
      Height = 13
      Caption = 'Vlr. Parcela'
      Enabled = False
    end
    object Label3: TLabel
      Left = 211
      Top = 1
      Width = 41
      Height = 13
      Caption = 'Hist'#243'rico'
      Enabled = False
    end
    object ed_valor: TJvDBCalcEdit
      Left = 109
      Top = 15
      Width = 96
      Height = 22
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = True
      DataField = 'PAG_VLR_PARCELA'
      DataSource = dsQuery
    end
    object ed_historico: TDBEdit
      Left = 211
      Top = 15
      Width = 420
      Height = 22
      DataField = 'PAG_HISTORICO'
      DataSource = dsQuery
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ed_data: TJvDBDateEdit
      Left = 4
      Top = 15
      Width = 99
      Height = 22
      DataField = 'PAG_VENCIMENTO'
      DataSource = dsQuery
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 0
    end
  end
  object eGrid: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 81
    Width = 636
    Height = 211
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
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    AutoAppend = False
    AlternateRowColor = 15724527
    AutoSizeColumns = True
    AutoSizeColumnIndex = 2
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    CanDelete = False
    EditControls = <>
    AutoSizeRows = False
    RowsHeight = 18
    TitleRowHeight = 17
    BooleanEditor = False
    Columns = <
      item
        Expanded = False
        FieldName = 'PAG_VENCIMENTO'
        Title.Caption = 'Dt. Vencto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_VLR_PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'Vlr. Parcela'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 408
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object Query: TFDQuery
    BeforeInsert = QueryBeforeInsert
    AfterInsert = QueryAfterInsert
    BeforeEdit = QueryBeforeEdit
    BeforePost = QueryBeforePost
    AfterPost = QueryAfterPost
    BeforeDelete = QueryBeforeDelete
    AfterDelete = QueryAfterDelete
    IndexFieldNames = 'ID_PEDIDO'
    AggregatesActive = True
    MasterSource = FrPedidosCompras.dsDados
    MasterFields = 'ID'
    Connection = FrModuloRet.DBConexao
    UpdateOptions.AssignedValues = [uvUpdateChngFields]
    SQL.Strings = (
      'select * from C000311 where id_pedido = :id')
    Left = 12
    Top = 138
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 16
      end>
    object QueryID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object QueryPAG_VENCIMENTO: TDateField
      Alignment = taRightJustify
      DisplayWidth = 20
      FieldName = 'PAG_VENCIMENTO'
      Origin = 'PAG_VENCIMENTO'
    end
    object QueryPAG_HISTORICO: TStringField
      DisplayWidth = 60
      FieldName = 'PAG_HISTORICO'
      Origin = 'PAG_HISTORICO'
      Size = 150
    end
    object QueryPAG_VLR_PARCELA: TFMTBCDField
      FieldName = 'PAG_VLR_PARCELA'
      Origin = 'PAG_VLR_PARCELA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QueryPAG_VLR_TOTAL: TAggregateField
      FieldName = 'PAG_VLR_TOTAL'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(PAG_VLR_PARCELA)'
    end
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = Query
    OnStateChange = dsQueryStateChange
    Left = 42
    Top = 138
  end
end
