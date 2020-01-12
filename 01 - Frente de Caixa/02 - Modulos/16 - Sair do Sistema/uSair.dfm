object FrSair: TFrSair
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrSair'
  ClientHeight = 312
  ClientWidth = 470
  Color = 14086904
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object JvImage1: TJvImage
    Left = 19
    Top = 79
    Width = 70
    Height = 70
    AutoSize = True
    Center = True
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 470
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Confirma'#231#245'es'
    Color = 8440061
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 446
  end
  object bt_operador: TPngBitBtn
    Left = 124
    Top = 59
    Width = 233
    Height = 42
    Caption = 'Desconectar Operador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Margin = 10
    ParentFont = False
    Spacing = 20
    TabOrder = 1
    PngImage.Data = {
      89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
      F4000000017352474200AECE1CE9000000097048597300000EC300000EC301C7
      6FA864000002264944415478DA63641860C038EA007234FDDFEEAFF09FE16F28
      C37F062DA8D055867FFF5633F96C7B485307FC5F15CACCC0FBBDF5FF7F862246
      464656143986FFBF80440FE317CE3AC6B0D57F69E2807FDB7D66323230A6E175
      24C3FFE94C9E5BB2A8EE807FDB7CDC80BEDE49A4B1AE8C9E9BF650DB011B810E
      F02346ED7F06860D4C9E9B03A9EB80EDBEAF808A458972C0FFFF2F99BCB64850
      3B047EA1273C3C21F01318021CD40E81BB40C54A4486C01D6008A852D9013E93
      80392097B810F83F199813F2A8EB802D5EF20CCCCCD7801AB8F0FB9EE12B0313
      932693C7C6C754750024147CFD81D44AA02676EC3E67F80974412830F837136B
      26C945F1BFAD7E260C4CFFFB811A6DD02C3FC2C8F4AF80D17DEB5952CC23BB32
      FAB7C35F16486A4338BFAF3079ED78428E3943AB360C0D5DC5CCA3F6C8F21FE3
      7F4B60A02B008504A152EF81463D6060FC7FECDB0D8513AB578751B7328AABEE
      52666462A800467400B03012C1A71698165E03C98D4C4C2CEDF31B8BEE51E480
      B4FA7AAE5FFF78BA80592B9D9191818594D0029605BF81C44C76E6AFE5B31A1B
      BF91EC80849A4ED5FF0C8CEB803ED621C5620C87FCFF7F85859939706E63F11D
      A21D105FDFA3C1F8EFDF3EA0B4242596231CC1F08C99E19FD3BC96F29B041D10
      5BD126CCCCCA721A28A5480DCB91C0DD5FBFFF982EEBA87C8FD701F1355DCB80
      C11E4965CB2121C1C0B06C617369345E0724D476FFA785E530B0A0B914C5CE51
      070C3E07D01B8C3A60C01D0000F64CC621DDA7EF060000000049454E44AE4260
      82}
  end
  object PngBitBtn2: TPngBitBtn
    Left = 124
    Top = 107
    Width = 233
    Height = 42
    Caption = 'Sair sem Encerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = PngBitBtn2Click
  end
  object PngBitBtn3: TPngBitBtn
    Left = 124
    Top = 155
    Width = 233
    Height = 42
    Caption = 'Encerrar e Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 293
    Width = 470
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 4
    ExplicitLeft = 188
    ExplicitTop = 240
    ExplicitWidth = 185
    object RzStatusPane1: TRzStatusPane
      Left = 0
      Top = 0
      Width = 69
      Height = 19
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      BlinkIntervalOff = 2000
      Caption = 'Operador:'
    end
    object br_operador: TRzStatusPane
      Left = 69
      Top = 0
      Height = 19
      Align = alLeft
      BlinkIntervalOff = 2000
      Caption = ''
      ExplicitLeft = 470
      ExplicitHeight = 20
    end
  end
  object aQuery: TFDQuery
    Connection = FrModulo.DBCon_Local
    Left = 12
    Top = 208
  end
end
