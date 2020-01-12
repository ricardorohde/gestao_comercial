object FrFornecedor: TFrFornecedor
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastros de Fornecedores'
  ClientHeight = 552
  ClientWidth = 1109
  Color = clBtnFace
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object pgControl: TJvPageControl
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 1103
    Height = 454
    Margins.Top = 1
    Margins.Bottom = 1
    ActivePage = tabDetalhes
    Align = alClient
    TabOrder = 0
    OnChanging = pgControlChanging
    object tabPrincipal: TTabSheet
      Caption = 'Principal'
      object JvDBGrid1: TJvDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1089
        Height = 419
        Align = alClient
        DataSource = dsDados
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = actAlterarExecute
        AlternateRowColor = 15658734
        AutoSizeColumns = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 18
        Columns = <
          item
            Expanded = False
            FieldName = 'FOR_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_DATA_REG'
            Title.Caption = 'Modifica'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_RAZAO_SOCIAL'
            Title.Caption = 'Razao Social / Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 363
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CNPJ'
            Title.Caption = 'Cnpj / Cpf'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_IESTADUAL'
            Title.Caption = 'Insc. Estadual / Rg.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_UF'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_FONE_FIXO'
            Title.Caption = 'Telefone'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_EMAIL'
            Title.Caption = 'E-mail'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 216
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Ativo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 33
            Visible = True
          end>
      end
    end
    object tabDetalhes: TTabSheet
      Caption = 'Detalhes'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label15: TLabel
        Left = 6
        Top = 4
        Width = 37
        Height = 14
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 95
        Top = 4
        Width = 77
        Height = 14
        Caption = 'Data Cadastro'
        FocusControl = eDataCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object lRazao: TLabel
        Left = 226
        Top = 4
        Width = 62
        Height = 14
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 693
        Top = 4
        Width = 23
        Height = 14
        Caption = 'Pais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 838
        Top = 4
        Width = 37
        Height = 14
        Caption = 'C'#243'digo'
        FocusControl = eCodigoPais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object lFantasia: TLabel
        Left = 6
        Top = 45
        Width = 75
        Height = 14
        Caption = 'Nome Fantasia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lCnpj: TLabel
        Left = 340
        Top = 45
        Width = 21
        Height = 14
        Caption = 'Cnpj'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lIEstadual: TLabel
        Left = 467
        Top = 45
        Width = 76
        Height = 14
        Caption = 'Insc. Estadual'
        FocusControl = eInscEstadual
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 580
        Top = 45
        Width = 83
        Height = 14
        Caption = 'Insc. Municipal'
        FocusControl = eMunicipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 693
        Top = 45
        Width = 49
        Height = 14
        Caption = 'LogoTipo'
        FocusControl = eMunicipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 6
        Top = 86
        Width = 90
        Height = 14
        Cursor = crHandPoint
        Caption = 'CEP (Autom'#225'tico)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 119
        Top = 86
        Width = 45
        Height = 14
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 493
        Top = 86
        Width = 13
        Height = 14
        Caption = 'N'#186
        FocusControl = eNumero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 540
        Top = 86
        Width = 76
        Height = 14
        Caption = 'Complemento'
        FocusControl = eComplemento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 6
        Top = 127
        Width = 30
        Height = 14
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 235
        Top = 127
        Width = 33
        Height = 14
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 622
        Top = 127
        Width = 57
        Height = 14
        Caption = 'UF - C'#243'digo'
        FocusControl = eUf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 6
        Top = 168
        Width = 48
        Height = 14
        Caption = 'Fone Fixo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 110
        Top = 168
        Width = 63
        Height = 14
        Caption = 'Fone M'#243'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 235
        Top = 168
        Width = 31
        Height = 14
        Caption = 'Skype'
        FocusControl = eSkype
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 460
        Top = 168
        Width = 52
        Height = 14
        Caption = 'Facebook'
        FocusControl = eFacebook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label44: TLabel
        Left = 6
        Top = 209
        Width = 21
        Height = 14
        Caption = 'Site'
        FocusControl = eSite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 297
        Top = 209
        Width = 35
        Height = 14
        Caption = 'E-mail'
        FocusControl = eEmail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 693
        Top = 274
        Width = 119
        Height = 14
        Caption = 'Tipo de Fornecimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 693
        Top = 313
        Width = 54
        Height = 14
        Caption = 'Segmento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label41: TLabel
        Left = 540
        Top = 127
        Width = 33
        Height = 14
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 6
        Top = 249
        Width = 69
        Height = 14
        Caption = 'Observa'#231#245'es'
        FocusControl = eSite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object eCodigo: TDBEdit
        Left = 6
        Top = 19
        Width = 83
        Height = 22
        Hint = 
          'C'#243'digo da empresa ou filial (c'#243'digo 1 sempre ser'#225' empresa matriz' +
          ')'
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'FOR_CODIGO'
        DataSource = dsDados
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eDataCadastro: TDBEdit
        Left = 95
        Top = 19
        Width = 125
        Height = 22
        Hint = 
          'significa que nenhum lan'#231'amento poder'#225' ser feito com data ou ven' +
          'cimento antes dessa Data Base.'
        CharCase = ecUpperCase
        DataField = 'FOR_DATA_REG'
        DataSource = dsDados
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object ePais: TDBEdit
        Left = 693
        Top = 19
        Width = 139
        Height = 22
        Hint = 'Se n'#227'o informado, ser'#225' utilizado (Brasil)'
        CharCase = ecUpperCase
        DataField = 'FOR_PAIS'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eCodigoPais: TDBEdit
        Left = 838
        Top = 19
        Width = 58
        Height = 22
        Hint = 'Se n'#227'o informado, ser'#225' utilizado (1058)'
        CharCase = ecUpperCase
        DataField = 'FOR_CODIGO_PAIS'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eInscEstadual: TDBEdit
        Left = 467
        Top = 60
        Width = 107
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FOR_IESTADUAL'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eMunicipal: TDBEdit
        Left = 580
        Top = 60
        Width = 107
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FOR_IMUNICIPAL'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eCep: TRzDBButtonEdit
        Left = 6
        Top = 101
        Width = 107
        Height = 22
        Hint = 
          'Informe o CEP e clique no bot'#227'o para o preenchimento autom'#225'tico,' +
          ' necess'#225'rio conex'#227'o com a internet.'#13#10'Voc'#234' poder'#225' efetuar a busca' +
          'r na base de dados local, mantendo a tecla (Ctrl) pressionada en' +
          'quanto efetua o clique no bot'#227'o.'
        DataSource = dsDados
        DataField = 'FOR_CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
        ButtonGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000848484FF8484
          84FF848484FF00000000848484FF848484FF848484FF4F4F4F99000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FF000000000000000000000000848484FF00000000848484FFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000008484
          84FF000000000000000000000000848484FF00000000848484FFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000848484FF8484
          84FF848484FF00000000848484FF848484FF848484FF4F4F4F99B8824DFF4A34
          1F66B8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFF4A34
          1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
          1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
          1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFF4A341F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF4A341F66B8824DFF000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
          4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
          0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
          4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000}
        ButtonNumGlyphs = 1
        ButtonKind = bkCustom
        AltBtnWidth = 15
        ButtonWidth = 18
        OnButtonClick = eCepButtonClick
      end
      object eNumero: TDBEdit
        Left = 493
        Top = 101
        Width = 41
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FOR_NUMERO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eComplemento: TDBEdit
        Left = 540
        Top = 101
        Width = 147
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FOR_COMPLEMENTO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eUf: TDBEdit
        Left = 622
        Top = 142
        Width = 28
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FOR_UF'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eSkype: TDBEdit
        Left = 235
        Top = 183
        Width = 219
        Height = 22
        CharCase = ecLowerCase
        DataField = 'FOR_SKYPE'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eFacebook: TDBEdit
        Left = 460
        Top = 183
        Width = 227
        Height = 22
        CharCase = ecLowerCase
        DataField = 'FOR_FACEBOOK'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eSite: TDBEdit
        Left = 6
        Top = 224
        Width = 285
        Height = 22
        CharCase = ecLowerCase
        DataField = 'FOR_SITE'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eEmail: TDBEdit
        Left = 297
        Top = 224
        Width = 390
        Height = 22
        CharCase = ecLowerCase
        DataField = 'FOR_EMAIL'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eTipoProduto: TJvDBComboBox
        Left = 693
        Top = 289
        Width = 203
        Height = 22
        DataField = 'FOR_TIPO_PRODUTO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Items.Strings = (
          'Produtos'
          'Servi'#231'os'
          'Produtos e Servi'#231'os')
        ParentFont = False
        TabOrder = 25
        Values.Strings = (
          '1'
          '2'
          '3')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object Panel1: TPanel
        Left = 693
        Top = 60
        Width = 203
        Height = 213
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 28
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 168
          Width = 195
          Height = 41
          Align = alBottom
          TabOrder = 0
          object BtnLogomarca: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 37
            Height = 33
            Cursor = crHandPoint
            Align = alLeft
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFF4A34
              1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
              1F66B8824DFFB8824DFFB8824DFFB8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
              1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFF4A34
              1F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFF4A341F66B8824DFF00000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
              4DFF4A341F66B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
              4DFFB8824DFFB8824DFF4A341F66B8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
              0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
              0000B8824DFF4A341F66B8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFF4A341F66B8824DFF000000000000000000000000000000000000
              0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000B8824DFFB882
              4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
              000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
              000000000000B8824DFFB8824DFFB8824DFF000000000000000000000000B882
              4DFFB8824DFFB8824DFF00000000000000000000000000000000}
          end
          object SpeedButton1: TSpeedButton
            AlignWithMargins = True
            Left = 154
            Top = 4
            Width = 37
            Height = 33
            Cursor = crHandPoint
            Align = alRight
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              200000000000000400000000000000000000000000000000000000000000131C
              3C471E2B5F700000000000000000000000000000000000000000000000000000
              00000000000000000000000000001F2D6375131C3C4700000000131C3C474260
              D0F64463D8FF1F2D617300000000000000000000000000000000000000000000
              00000000000000000000202E65774463D8FF4260D1F7131C3C472130687B4463
              D8FF4463D8FF4463D8FF1F2D6173000000000000000000000000000000000000
              000000000000202E65774463D8FF4463D8FF4463D8FF212F677A000000002231
              6C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000000000000000
              0000202E65774463D8FF4463D8FF4463D8FF22316B7E00000000000000000000
              000022316C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000202E
              65774463D8FF4463D8FF4463D8FF22316B7E0000000000000000000000000000
              00000000000022316C7F4463D8FF4463D8FF4463D8FF1F2D6173202E65774463
              D8FF4463D8FF4463D8FF22316B7E000000000000000000000000000000000000
              0000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463
              D8FF4463D8FF22316B7E00000000000000000000000000000000000000000000
              000000000000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463
              D8FF22316B7E0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000202E65774463D8FF4463D8FF4463D8FF4463
              D8FF1F2D62740000000000000000000000000000000000000000000000000000
              00000000000000000000202E65774463D8FF4463D8FF4463D8FF4463D8FF4463
              D8FF4463D8FF1F2D627400000000000000000000000000000000000000000000
              000000000000202E65774463D8FF4463D8FF4463D8FF22316B7E22316C7F4463
              D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000000000000000
              0000202E65774463D8FF4463D8FF4463D8FF21316A7D00000000000000002231
              6C7F4463D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000202E
              65774463D8FF4463D8FF4463D8FF21316A7D0000000000000000000000000000
              000022316C7F4463D8FF4463D8FF4463D8FF1F2D6274000000001F2D63754463
              D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
              00000000000022316C7F4463D8FF4463D8FF4463D8FF1E2C6172151E414D4261
              D3F94463D8FF21316A7D00000000000000000000000000000000000000000000
              0000000000000000000022316C7F4463D8FF4261D3F9151E424E00000000151E
              414D212F677A0000000000000000000000000000000000000000000000000000
              00000000000000000000000000002130687B151E414D00000000}
            ExplicitLeft = 12
            ExplicitTop = 8
          end
        end
        object eLogo: TJvDBImage
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 195
          Height = 158
          Align = alClient
          BorderStyle = bsNone
          DataField = 'EMP_LOGOTIPO'
          Stretch = True
          TabOrder = 1
          ShowNameIfEmpty = False
        end
      end
      object DBEdit2: TDBEdit
        Left = 540
        Top = 142
        Width = 76
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FOR_CODIGO_CIDADE'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object DBEdit3: TDBEdit
        Left = 656
        Top = 142
        Width = 31
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FOR_CODIGO_UF'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object RzDBMemo1: TRzDBMemo
        Left = 6
        Top = 264
        Width = 681
        Height = 79
        DataField = 'FOR_OBSERVACAO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object RzDBRadioGroup1: TRzDBRadioGroup
        Left = 6
        Top = 346
        Width = 681
        Height = 42
        DataField = 'FOR_STATUS'
        DataSource = dsDados
        Items.Strings = (
          'Ativo'
          'Inativo')
        Values.Strings = (
          '1'
          '2')
        Caption = 'Status'
        Columns = 2
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        SpaceEvenly = True
        TabOrder = 27
      end
      object DBEdit1: TDBEdit
        Left = 693
        Top = 328
        Width = 203
        Height = 22
        Hint = 
          'significa que nenhum lan'#231'amento poder'#225' ser feito com data ou ven' +
          'cimento antes dessa Data Base.'
        CharCase = ecUpperCase
        DataField = 'FOR_SEGMENTO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 26
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eRazao: TRzDBEdit
        Left = 226
        Top = 19
        Width = 461
        Height = 22
        DataSource = dsDados
        DataField = 'FOR_RAZAO_SOCIAL'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eFantasia: TRzDBEdit
        Left = 6
        Top = 60
        Width = 328
        Height = 22
        DataSource = dsDados
        DataField = 'FOR_NOME_FANTASIA'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        TextHint = '* Obrigat'#243'rio'
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eCnpj: TRzDBEdit
        Left = 340
        Top = 60
        Width = 121
        Height = 22
        DataSource = dsDados
        DataField = 'FOR_CNPJ'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TextHint = '* Obrigat'#243'rio'
        OnEnter = eCodigoEnter
        OnExit = eCnpjExit
      end
      object eEndereco: TRzDBEdit
        Left = 119
        Top = 101
        Width = 368
        Height = 22
        DataSource = dsDados
        DataField = 'FOR_ENDERECO'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        TextHint = '* Obrigat'#243'rio'
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eBairro: TRzDBEdit
        Left = 6
        Top = 142
        Width = 223
        Height = 22
        DataSource = dsDados
        DataField = 'FOR_BAIRRO'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        TextHint = '* Obrigat'#243'rio'
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eCidade: TRzDBEdit
        Left = 235
        Top = 142
        Width = 299
        Height = 22
        DataSource = dsDados
        DataField = 'FOR_CIDADE'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        TextHint = '* Obrigat'#243'rio'
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eFoneFixo: TRzDBEdit
        Left = 6
        Top = 183
        Width = 98
        Height = 22
        DataSource = dsDados
        DataField = 'FOR_FONE_FIXO'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        TextHint = '* Obrigat'#243'rio'
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
      object eFoneMovel: TRzDBEdit
        Left = 110
        Top = 183
        Width = 119
        Height = 22
        DataSource = dsDados
        DataField = 'FOR_FONE_MOVEL'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        TextHint = '* Obrigat'#243'rio'
        OnEnter = eCodigoEnter
        OnExit = eCodigoExit
      end
    end
  end
  object JvPanel1: TJvPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1103
    Height = 44
    Margins.Bottom = 1
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    Align = alTop
    BevelInner = bvLowered
    Caption = '..::: Cadastros de Fornecedores :::..'
    Color = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object JvImage1: TJvImage
      Left = 6
      Top = 2
      Width = 40
      Height = 40
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
        002808060000008CFEB86D00000006624B474400FF00FF00FFA0BDA793000003
        734944415478DAEDD86D4813711C07F0EF769B732E23AD94200ACB50B1270329
        0D7BC0244B297AA4E881A2AC901EA007A2A2B445F922C852212B8B2C2A82C21E
        A7650F96E5CC8AE6C3D2D17349E6A69BB507DD76B7EB1C35A26DE68D2D4FF0FB
        EAB6E3FFBDCFEFF6BF173B1E381E5E4F037A3F70CEEEDBB42F8A6F1C4AF1CAF0
        766042C264AFE2CACB9FF601FB803D0E4CF5CBCDE6DBE89516921AD89D350441
        E8F904FFE8DACCE20C6632C783EB33E0EAD0B3A6B80991018112FF6EADD1B519
        70BFA2A6C36826D7A41FB873D1E7C0829467908845ACD635356BF150AEFC9026
        2D19E173E0A5850A97E7648F95D0A8D55D17F0E86DE907EF1FE91160E1958718
        BDB9D4ED5A5DED4DA82B4EB7A5655C0FE22490A6AC68285804BAC394B221AB54
        C63960679AE567D0FAAA48B5417A2B929340D2A885AA7039F836847312D899CF
        B732A0FF54759DB34063A3029F65FBCD9C05DAACEDA83F319F7B4FF19FA9CB49
        EA033A45F6A8161A4D4BB7BBFE3B904D3AEF76EF007A55F72B9E020362763B8E
        8FEF61F6E0E11D85F4BC55F3BC8A2B3A5B84F4A58DDE01CA13131D7770704E51
        1F904DEC7BD01DD04A51A8525643F9E12DDACD1D108BFC113D621426468D8140
        20F01868A17878A012E2F927114C161A017E3CC40EB72031C20C21E102E86A0F
        5A4912974A6F43E047607CF448F4EF27C10F83118ABAB7A0481B9624A5326584
        3B9F5BA09904F21E49C01305615C74A4A3B7BAAE81B9A80E1BA79AE047D0FF06
        9657BF44636B1392A6C43A5DA4B4AC0AC3428762F29818D640995204956E3066
        4C8D773A77AFEC29A206B52039CA6CFF6C6C37E35A49E57797C0FC6B97312D7E
        3C06050FC073C56BA8DE7F4144F830C48E8D82BA5587279535583777316BA0B4
        381009F1716E7B2BE495D83B4B0F13832B7FF1DAA4D51AF2EDC0BF8BDE097558
        367F26844201CE5D29064952F6E3150B92ED3FFF85AB7730D21A84AE22119E77
        FAAE06294C6F7217BD25180B666B117C3D087E01FD55B3D3E5BFFFF47DB9CDB3
        A74F0AF93DA9F2CD474447843926BD5B56F52D4FBA710858C6935ED7C0BDC7B2
        4206066F499E3E49ECB48F1EC80D6ADDF7EC7CE9A67DAC811EF4BA04AED87E58
        1228F697339386C58E8BEC173C2010DA363D3375BDA145DBF69E1488E24E66AE
        37B1057AD2EBF605CFBACC13010465DE45F07869162B15221412CD14704AACB7
        6665676F6D678BF3B497FBAF807B1AD0EB813F010F1F6B969FE1A83700000000
        49454E44AE426082}
    end
  end
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 3
    Top = 505
    Width = 1103
    Height = 44
    Margins.Top = 1
    Align = alBottom
    AutoStyle = False
    Images = FrPrincipal.sysIcones16
    RowHeight = 40
    ButtonLayout = blGlyphTop
    ButtonWidth = 60
    ButtonHeight = 40
    ShowButtonCaptions = True
    TextOptions = ttoShowTextLabels
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdTop]
    BorderWidth = 0
    GradientColorStyle = gcsCustom
    GradientColorStop = 13948116
    TabOrder = 2
    VisualStyle = vsGradient
    ToolbarControls = (
      btnNew
      RzSpacer1
      btnEdit
      RzSpacer2
      btnCancel
      RzSpacer3
      btnOK
      RzSpacer5
      btnError
      RzSpacer4
      btnExit)
    object btnNew: TRzToolButton
      Left = 4
      Top = 2
      Width = 65
      Height = 40
      DisabledIndex = 35
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      Left = 77
      Top = 2
      Width = 65
      Height = 40
      DisabledIndex = 37
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      Left = 150
      Top = 2
      Width = 65
      Height = 40
      DisabledIndex = 39
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actExcluir
    end
    object btnOK: TRzToolButton
      Left = 223
      Top = 2
      Width = 65
      Height = 40
      DisabledIndex = 41
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actGravar
    end
    object btnError: TRzToolButton
      Left = 296
      Top = 2
      Width = 65
      Height = 40
      DisabledIndex = 43
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      Left = 369
      Top = 2
      Width = 65
      Height = 40
      DisabledIndex = 45
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actSair
    end
    object RzSpacer1: TRzSpacer
      Left = 69
      Top = 10
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 142
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 215
      Top = 10
    end
    object RzSpacer4: TRzSpacer
      Left = 361
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 288
      Top = 10
      Grooved = True
    end
  end
  object SearchCep: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    TimeOut = 10000
    WebService = wsViaCep
    PesquisarIBGE = True
    Left = 770
    Top = 382
  end
  object eChecaDoc: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 804
    Top = 382
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 839
    Top = 382
  end
  object tbDados: TFDQuery
    AfterInsert = tbDadosAfterInsert
    BeforePost = tbDadosBeforePost
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   *'
      'FROM'
      '   C000305'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'ORDER BY'
      '   FOR_RAZAO_SOCIAL ASC')
    Left = 703
    Top = 382
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
    object tbDadosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDadosID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object tbDadosFOR_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      DisplayFormat = '000000'
    end
    object tbDadosFOR_DATA_REG: TSQLTimeStampField
      FieldName = 'FOR_DATA_REG'
      Origin = 'FOR_DATA_REG'
    end
    object tbDadosFOR_RAZAO_SOCIAL: TStringField
      FieldName = 'FOR_RAZAO_SOCIAL'
      Origin = 'FOR_RAZAO_SOCIAL'
      Required = True
      Size = 120
    end
    object tbDadosFOR_NOME_FANTASIA: TStringField
      FieldName = 'FOR_NOME_FANTASIA'
      Origin = 'FOR_NOME_FANTASIA'
      Required = True
      Size = 80
    end
    object tbDadosFOR_CNPJ: TStringField
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
      Required = True
      OnGetText = tbDadosFOR_CNPJGetText
      Size = 15
    end
    object tbDadosFOR_IESTADUAL: TStringField
      FieldName = 'FOR_IESTADUAL'
      Origin = 'FOR_IESTADUAL'
      Size = 15
    end
    object tbDadosFOR_IMUNICIPAL: TStringField
      FieldName = 'FOR_IMUNICIPAL'
      Origin = 'FOR_IMUNICIPAL'
      Size = 15
    end
    object tbDadosFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Origin = 'FOR_CEP'
      Required = True
      EditMask = '!99999\-999;0;'
      Size = 10
    end
    object tbDadosFOR_ENDERECO: TStringField
      FieldName = 'FOR_ENDERECO'
      Origin = 'FOR_ENDERECO'
      Required = True
      Size = 120
    end
    object tbDadosFOR_NUMERO: TIntegerField
      FieldName = 'FOR_NUMERO'
      Origin = 'FOR_NUMERO'
      DisplayFormat = '0000'
    end
    object tbDadosFOR_COMPLEMENTO: TStringField
      FieldName = 'FOR_COMPLEMENTO'
      Origin = 'FOR_COMPLEMENTO'
      Size = 60
    end
    object tbDadosFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Origin = 'FOR_BAIRRO'
      Required = True
      Size = 60
    end
    object tbDadosFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Origin = 'FOR_CIDADE'
      Required = True
      Size = 60
    end
    object tbDadosFOR_CODIGO_CIDADE: TIntegerField
      Alignment = taCenter
      FieldName = 'FOR_CODIGO_CIDADE'
      Origin = 'FOR_CODIGO_CIDADE'
    end
    object tbDadosFOR_UF: TStringField
      Alignment = taCenter
      FieldName = 'FOR_UF'
      Origin = 'FOR_UF'
      FixedChar = True
      Size = 2
    end
    object tbDadosFOR_CODIGO_UF: TIntegerField
      Alignment = taCenter
      FieldName = 'FOR_CODIGO_UF'
      Origin = 'FOR_CODIGO_UF'
    end
    object tbDadosFOR_PAIS: TStringField
      FieldName = 'FOR_PAIS'
      Origin = 'FOR_PAIS'
      Size = 35
    end
    object tbDadosFOR_CODIGO_PAIS: TIntegerField
      FieldName = 'FOR_CODIGO_PAIS'
      Origin = 'FOR_CODIGO_PAIS'
    end
    object tbDadosFOR_FONE_FIXO: TStringField
      FieldName = 'FOR_FONE_FIXO'
      Origin = 'FOR_FONE_FIXO'
      EditMask = '!\(99\)9999\-9999;0;'
      Size = 12
    end
    object tbDadosFOR_FONE_MOVEL: TStringField
      FieldName = 'FOR_FONE_MOVEL'
      Origin = 'FOR_FONE_MOVEL'
      EditMask = '!\(99\)99999\-9999;0;'
      Size = 13
    end
    object tbDadosFOR_SKYPE: TStringField
      FieldName = 'FOR_SKYPE'
      Origin = 'FOR_SKYPE'
      Size = 60
    end
    object tbDadosFOR_FACEBOOK: TStringField
      FieldName = 'FOR_FACEBOOK'
      Origin = 'FOR_FACEBOOK'
      Size = 60
    end
    object tbDadosFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Origin = 'FOR_EMAIL'
      Size = 60
    end
    object tbDadosFOR_SITE: TStringField
      FieldName = 'FOR_SITE'
      Origin = 'FOR_SITE'
      Size = 60
    end
    object tbDadosFOR_SEGMENTO: TStringField
      FieldName = 'FOR_SEGMENTO'
      Origin = 'FOR_SEGMENTO'
      Size = 60
    end
    object tbDadosFOR_TIPO_PRODUTO: TIntegerField
      FieldName = 'FOR_TIPO_PRODUTO'
      Origin = 'FOR_TIPO_PRODUTO'
    end
    object tbDadosFOR_TIPO_PESSOA: TIntegerField
      FieldName = 'FOR_TIPO_PESSOA'
      Origin = 'FOR_TIPO_PESSOA'
      OnChange = tbDadosFOR_TIPO_PESSOAChange
    end
    object tbDadosFOR_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'FOR_STATUS'
      Origin = 'FOR_STATUS'
      OnGetText = tbDadosFOR_STATUSGetText
    end
    object tbDadosFOR_OBSERVACAO: TStringField
      FieldName = 'FOR_OBSERVACAO'
      Origin = 'FOR_OBSERVACAO'
      Size = 600
    end
  end
  object SqlAux: TFDQuery
    Connection = FrModuloRet.DBConexao
    Left = 703
    Top = 414
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.sysIcones16
    Left = 719
    Top = 199
    StyleName = 'Platform Default'
    object actCadastrar: TAction
      Caption = 'Cadastrar'
      ImageIndex = 34
      OnExecute = actCadastrarExecute
      OnUpdate = actCadastrarUpdate
    end
    object actAlterar: TAction
      Caption = 'Alterar'
      ImageIndex = 14
      OnExecute = actAlterarExecute
      OnUpdate = actAlterarUpdate
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 18
      OnExecute = actExcluirExecute
      OnUpdate = actAlterarUpdate
    end
    object actGravar: TAction
      Caption = 'Gravar'
      ImageIndex = 26
      OnExecute = actGravarExecute
      OnUpdate = actGravarUpdate
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 16
      OnExecute = actCancelarExecute
      OnUpdate = actGravarUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 24
      OnExecute = actSairExecute
      OnUpdate = actCadastrarUpdate
    end
  end
  object dsDados: TJvDataSource
    AutoEdit = False
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 735
    Top = 382
  end
end
