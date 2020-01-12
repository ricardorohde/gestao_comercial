object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configurar Conex'#227'o'
  ClientHeight = 189
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object RzDialogButtons1: TRzDialogButtons
    AlignWithMargins = True
    Left = 3
    Top = 150
    Width = 542
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    Color = clGray
    TabOrder = 0
    ExplicitLeft = 180
    ExplicitTop = 120
    ExplicitWidth = 185
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 2
    Width = 544
    Height = 143
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -3
    ExplicitWidth = 559
    ExplicitHeight = 93
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 2
      Top = 73
      Width = 540
      Height = 67
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      Caption = 'Servidor Local.'
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 543
      object Label2: TLabel
        Left = 6
        Top = 16
        Width = 40
        Height = 15
        Caption = 'Host/IP'
      end
      object Label3: TLabel
        Left = 253
        Top = 16
        Width = 52
        Height = 15
        Caption = 'Porta TCP'
      end
      object Label4: TLabel
        Left = 319
        Top = 16
        Width = 40
        Height = 15
        Caption = 'Usu'#225'rio'
      end
      object Label5: TLabel
        Left = 450
        Top = 16
        Width = 32
        Height = 15
        Caption = 'Senha'
      end
      object eHostLocal: TDBEdit
        Left = 6
        Top = 33
        Width = 241
        Height = 23
        DataField = 'CNF_HOST_LOCAL'
        DataSource = dsDados
        TabOrder = 0
      end
      object ePortaLocal: TDBEdit
        Left = 253
        Top = 33
        Width = 60
        Height = 23
        DataField = 'CNF_PORTA_LOCAL'
        DataSource = dsDados
        TabOrder = 1
      end
      object eUserLocal: TDBEdit
        Left = 319
        Top = 33
        Width = 125
        Height = 23
        DataField = 'CNF_USER_LOCAL'
        DataSource = dsDados
        TabOrder = 2
      end
      object eSenhaLocal: TDBEdit
        Left = 450
        Top = 33
        Width = 78
        Height = 23
        DataField = 'CNF_USER_LOCAL'
        DataSource = dsDados
        PasswordChar = '*'
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 540
      Height = 67
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      Caption = 'Servidor Remoto.'
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 543
      object Label1: TLabel
        Left = 6
        Top = 16
        Width = 40
        Height = 15
        Caption = 'Host/IP'
      end
      object Label6: TLabel
        Left = 253
        Top = 16
        Width = 52
        Height = 15
        Caption = 'Porta TCP'
      end
      object Label7: TLabel
        Left = 319
        Top = 16
        Width = 40
        Height = 15
        Caption = 'Usu'#225'rio'
      end
      object Label8: TLabel
        Left = 450
        Top = 16
        Width = 32
        Height = 15
        Caption = 'Senha'
      end
      object eHostRemoto: TDBEdit
        Left = 6
        Top = 33
        Width = 241
        Height = 23
        DataField = 'CNF_HOST_REMOTO'
        DataSource = dsDados
        TabOrder = 0
      end
      object ePortaRemoto: TDBEdit
        Left = 253
        Top = 33
        Width = 60
        Height = 23
        DataField = 'CNF_PORTA_REMOTO'
        DataSource = dsDados
        TabOrder = 1
      end
      object eUserRemoto: TDBEdit
        Left = 319
        Top = 33
        Width = 125
        Height = 23
        DataField = 'CNF_USER_REMOTO'
        DataSource = dsDados
        TabOrder = 2
      end
      object eSenhaRemoto: TDBEdit
        Left = 450
        Top = 33
        Width = 78
        Height = 23
        DataField = 'CNF_SENHA_REMOTO'
        DataSource = dsDados
        PasswordChar = '*'
        TabOrder = 3
      end
    end
  end
  object tbDados: TFDMemTable
    FieldDefs = <
      item
        Name = 'CNF_HOST_REMOTO'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'CNF_PORTA_REMOTO'
        DataType = ftInteger
      end
      item
        Name = 'CNF_USER_REMOTO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CNF_SENHA_REMOTO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'CNF_HOST_LOCAL'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'CNF_PORTA_LOCAL'
        DataType = ftInteger
      end
      item
        Name = 'CNF_USER_LOCAL'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CNF_SENHA_LOCAL'
        DataType = ftString
        Size = 12
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
    Left = 7
    Top = 154
  end
  object dsDados: TDataSource
    DataSet = tbDados
    Left = 40
    Top = 154
  end
end
