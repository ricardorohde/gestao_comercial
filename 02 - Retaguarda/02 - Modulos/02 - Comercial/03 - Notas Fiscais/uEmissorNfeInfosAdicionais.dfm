object FrEmissorNfeInfosAdicionais: TFrEmissorNfeInfosAdicionais
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Informa'#231#245'es Adicionais'
  ClientHeight = 379
  ClientWidth = 686
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 680
    Height = 13
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Informa'#231#245'es Complementares de Interesse ao Contribuinte.'
    ExplicitWidth = 288
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 224
    Width = 680
    Height = 13
    Margins.Bottom = 0
    Align = alBottom
    Caption = 'Informa'#231#245'es Complementares de Interesse ao Fisco.'
    ExplicitWidth = 253
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 680
    Height = 34
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
    TabOrder = 3
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 201
      Height = 26
      Caption = 'Informa'#231#245'es Adicionais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 257
      Top = 1
      Width = 419
      Height = 30
      Caption = 
        'Espa'#231'o reservado para informa'#231#245'es de diversas naturezas e de int' +
        'eresse ao contribuinte.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 249
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
    Left = 3
    Top = 340
    Width = 680
    Margins.Top = 0
    HotTrack = True
    OKDefault = False
    ModalResultOk = 0
    OnClickOk = RzDialogButtons1ClickOk
    Color = clGray
    TabOrder = 2
  end
  object eNfeInfoContrib: TRzDBMemo
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 680
    Height = 165
    Margins.Bottom = 0
    Align = alClient
    DataField = 'NFE_INFO_CONTRIB'
    DataSource = FrEmissorNfe.dsDados
    TabOrder = 0
    FocusColor = 15066597
  end
  object eNfeFisco: TRzDBMemo
    AlignWithMargins = True
    Left = 3
    Top = 240
    Width = 680
    Height = 97
    Align = alBottom
    DataField = 'NFE_INFO_FISCO'
    DataSource = FrEmissorNfe.dsDados
    TabOrder = 1
    FocusColor = 15066597
  end
end
