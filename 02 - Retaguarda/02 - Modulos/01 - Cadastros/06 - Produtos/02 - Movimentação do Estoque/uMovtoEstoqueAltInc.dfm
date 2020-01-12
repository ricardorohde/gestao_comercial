object frmovtoEstoqueAltInc: TfrmovtoEstoqueAltInc
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Inclus'#227'o / Altera'#231#227'o de Movimentos.'
  ClientHeight = 299
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 88
    Width = 65
    Height = 13
    Caption = 'Observa'#231#245'es'
  end
  object Label3: TLabel
    Left = 7
    Top = 49
    Width = 58
    Height = 13
    Caption = 'Movimento'
  end
  object Label4: TLabel
    Left = 7
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Produto'
  end
  object Label6: TLabel
    Left = 400
    Top = 8
    Width = 18
    Height = 13
    Caption = 'Un.'
  end
  object Label5: TLabel
    Left = 448
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Qtde.'
  end
  object Label7: TLabel
    Left = 104
    Top = 49
    Width = 59
    Height = 13
    Caption = 'Justificativa'
  end
  object Label8: TLabel
    Left = 400
    Top = 49
    Width = 78
    Height = 13
    Caption = 'Docto. N'#250'mero'
  end
  object txtObservacoes: TRzDBMemo
    AlignWithMargins = True
    Left = 8
    Top = 103
    Width = 526
    Height = 146
    DataField = 'MOV_OBSERVACAO'
    DataSource = dsQuery
    TabOrder = 4
  end
  object txtTipo: TRzDBComboBox
    Left = 8
    Top = 64
    Width = 90
    Height = 21
    DataField = 'MOV_TIPO'
    DataSource = dsQuery
    Style = csDropDownList
    TabOrder = 2
    Items.Strings = (
      'ENTRADA'
      'SAIDA')
    Values.Strings = (
      '1'
      '2')
  end
  object txtProduto: TRzDBButtonEdit
    Left = 8
    Top = 25
    Width = 386
    Height = 21
    DataSource = dsQuery
    DataField = 'PRD_DESCRICAO'
    TabOrder = 0
    AltBtnWidth = 15
    ButtonWidth = 18
    OnButtonClick = txtProdutoButtonClick
  end
  object txtQuant: TJvDBCalcEdit
    Left = 448
    Top = 25
    Width = 86
    Height = 21
    DisplayFormat = ',0.00'
    TabOrder = 1
    Value = 200.000000000000000000
    DecimalPlacesAlwaysShown = True
    DataField = 'PRD_QTDE'
    DataSource = dsQuery
  end
  object txtDocto: TDBEdit
    Left = 400
    Top = 64
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MOV_DOCTO'
    DataSource = dsQuery
    TabOrder = 3
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 263
    Width = 542
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    OnClickCancel = RzDialogButtons1ClickCancel
    TabOrder = 5
    ExplicitLeft = 184
    ExplicitTop = 280
    ExplicitWidth = 185
  end
  object txtJustificativa: TJvDBComboBox
    Left = 104
    Top = 64
    Width = 290
    Height = 21
    DataField = 'MOV_JUSTIFICATIVA'
    DataSource = dsQuery
    Items.Strings = (
      'Ajuste de Estoque'
      'Brinde para Clientes'
      'Brinde para Funcion'#225'rios'
      'Devolu'#231#227'o de Mercadorias'
      'Troca de Produto'
      'Troca de Produtos com Defeitos')
    TabOrder = 6
    UpdateFieldImmediatelly = True
    Values.Strings = (
      'Ajuste de Estoque'
      'Brinde para Clientes'
      'Brinde para Funcion'#225'rios'
      'Devolu'#231#227'o de Mercadorias'
      'Troca de Produto'
      'Troca de Produtos com Defeitos')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object RzDBEdit1: TRzDBEdit
    Left = 400
    Top = 25
    Width = 42
    Height = 21
    DataSource = dsQuery
    DataField = 'PRD_UNIDADE'
    Alignment = taCenter
    Enabled = False
    TabOrder = 7
  end
  object dsQuery: TDataSource
    AutoEdit = False
    DataSet = FrMovtoEstoque.Query
    Left = 176
    Top = 136
  end
end
