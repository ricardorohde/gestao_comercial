object FrEmissorNfeReferenciadas: TFrEmissorNfeReferenciadas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'NF-e Referenciada'
  ClientHeight = 251
  ClientWidth = 510
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop01
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 506
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
      Width = 161
      Height = 26
      Caption = 'NF-e Referenciada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 221
      Top = 1
      Width = 276
      Height = 32
      AutoSize = False
      Caption = 
        'Aqui voc'#234' poder'#225' informar todas as notas fiscais refer'#234'nciadas q' +
        'uando necess'#225'rio.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 213
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
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 2
    Top = 213
    Width = 506
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    HotTrack = True
    OKDefault = False
    ShowCancelButton = False
    Color = clSilver
    TabOrder = 1
    TabStop = True
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 4
      Top = 10
      Width = 30
      Height = 15
      Caption = 'DEL - '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 34
      Top = 10
      Width = 138
      Height = 15
      Caption = 'Exclui chave selecionada'
    end
  end
  object JvDBGrid1: TJvDBGrid
    AlignWithMargins = True
    Left = 2
    Top = 38
    Width = 506
    Height = 173
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 0
    Align = alClient
    DataSource = dsChave
    DrawingStyle = gdsClassic
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgAlwaysShowSelection]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    OnEnter = JvDBGrid1Enter
    OnExit = JvDBGrid1Exit
    PostOnEnterKey = True
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
        FieldName = 'NFE_REF_CHAVE'
        Title.Caption = 'Chave da NF-e Referenciada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 489
        Visible = True
      end>
    Delphi2010OptionsMigrated = True
  end
  object tbChave: TFDQuery
    BeforeDelete = tbChaveBeforeDelete
    OnCalcFields = tbChaveCalcFields
    IndexFieldNames = 'ID_NOTA_FISCAL'
    MasterSource = FrEmissorNfe.dsDados
    MasterFields = 'ID'
    DetailFields = 'ID_NOTA_FISCAL'
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   *'
      'FROM'
      '   C000603'
      'WHERE'
      '   ID_NOTA_FISCAL = :ID'
      'ORDER BY'
      '   ID ASC')
    Left = 12
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object tbChaveID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbChaveID_NOTA_FISCAL: TIntegerField
      FieldName = 'ID_NOTA_FISCAL'
      Origin = 'ID_NOTA_FISCAL'
    end
    object tbChaveNFE_REF_CHAVE: TStringField
      FieldName = 'NFE_REF_CHAVE'
      Origin = 'NFE_REF_CHAVE'
      FixedChar = True
      Size = 44
    end
    object tbChaveNFE_NUMERO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NFE_NUMERO'
      DisplayFormat = '000,000,000'
      Calculated = True
    end
  end
  object dsChave: TJvDataSource
    DataSet = tbChave
    Left = 42
    Top = 120
  end
  object Pop01: TPopupMenu
    AutoPopup = False
    Left = 312
    Top = 156
    object ExcluirChave1: TMenuItem
      Caption = 'Excluir Chave'
      ShortCut = 46
      OnClick = ExcluirChave1Click
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
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 78
    Top = 120
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 114
    Top = 120
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = FrEmissorNfe.tbDados
    Left = 12
    Top = 156
  end
end
