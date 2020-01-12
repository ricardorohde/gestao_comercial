object FrPrdFiltroEtiquetas3x21: TFrPrdFiltroEtiquetas3x21
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Etiqueta'
  ClientHeight = 192
  ClientWidth = 444
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Label2: TLabel
    Left = 389
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Qtde'
  end
  object Label6: TLabel
    Left = 49
    Top = 54
    Width = 86
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tabela de Pre'#231'os:'
  end
  object Label3: TLabel
    Left = 8
    Top = 84
    Width = 130
    Height = 13
    Caption = 'Tamanho e Posicionamento'
  end
  object Label4: TLabel
    Left = 63
    Top = 108
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Topo'
  end
  object Label5: TLabel
    Left = 118
    Top = 108
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Largura'
  end
  object Label7: TLabel
    Left = 247
    Top = 108
    Width = 61
    Height = 13
    Caption = 'Col. Espacos'
  end
  object Label9: TLabel
    Left = 173
    Top = 108
    Width = 59
    Height = 13
    Caption = 'Col. Largura'
  end
  object Label11: TLabel
    Left = 321
    Top = 108
    Width = 28
    Height = 13
    Caption = 'Fonte'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 99
    Width = 428
    Height = 3
  end
  object Label8: TLabel
    Left = 370
    Top = 108
    Width = 51
    Height = 13
    Caption = 'Alt. Barras'
  end
  object lbColunas: TLabel
    Left = 8
    Top = 108
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'Colunas'
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 156
    Width = 444
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    GradientColorStyle = gcsCustom
    TabOrder = 3
    VisualStyle = vsGradient
  end
  object RzButtonEdit1: TRzButtonEdit
    Left = 8
    Top = 23
    Width = 375
    Height = 21
    Text = ''
    TabOrder = 0
    TextHint = 'F2 - Buscar'
    TextHintVisibleOnFocus = True
    AllowKeyEdit = False
    AltBtnWidth = 15
    ButtonWidth = 15
    OnButtonClick = RzButtonEdit1ButtonClick
  end
  object RzSpinEdit1: TRzSpinEdit
    Left = 389
    Top = 23
    Width = 47
    Height = 21
    Max = 200.000000000000000000
    Min = 1.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 1
  end
  object JvDBSearchComboBox1: TJvDBSearchComboBox
    Left = 141
    Top = 50
    Width = 295
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsPrecos
    Style = csDropDownList
    TabOrder = 2
    Text = ''
  end
  object etqColEspaco: TRzSpinEdit
    Left = 247
    Top = 123
    Width = 68
    Height = 21
    Max = 9999.000000000000000000
    Value = 2.000000000000000000
    TabOrder = 4
  end
  object etqColLarg: TRzSpinEdit
    Left = 173
    Top = 123
    Width = 68
    Height = 21
    Max = 9999.000000000000000000
    Value = 33.000000000000000000
    TabOrder = 5
  end
  object etqTopo: TRzSpinEdit
    Left = 63
    Top = 123
    Width = 49
    Height = 21
    Max = 9999.000000000000000000
    TabOrder = 6
  end
  object etqLargura: TRzSpinEdit
    Left = 118
    Top = 123
    Width = 49
    Height = 21
    Max = 9999.000000000000000000
    Value = 404.000000000000000000
    TabOrder = 7
  end
  object etqFonte: TRzSpinEdit
    Left = 321
    Top = 123
    Width = 43
    Height = 21
    Max = 9999.000000000000000000
    Value = 6.000000000000000000
    TabOrder = 8
  end
  object etqCodBarras: TRzSpinEdit
    Left = 370
    Top = 123
    Width = 66
    Height = 21
    Max = 9999.000000000000000000
    Value = 38.000000000000000000
    TabOrder = 9
  end
  object etqColunas: TRzSpinEdit
    Left = 8
    Top = 123
    Width = 49
    Height = 21
    Max = 9999.000000000000000000
    TabOrder = 10
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
    Top = 158
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
    Top = 158
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 88
    Top = 158
  end
end
