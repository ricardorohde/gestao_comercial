object FrRegrasTributacao: TFrRegrasTributacao
  Left = 0
  Top = 0
  Caption = 'Cadastro de Regras de Tributa'#231#227'o'
  ClientHeight = 541
  ClientWidth = 1099
  Color = clGray
  Constraints.MinHeight = 580
  Constraints.MinWidth = 1115
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 15
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 1093
    Height = 451
    Margins.Bottom = 0
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    object pgControl: TJvPageControl
      Left = 0
      Top = 0
      Width = 1093
      Height = 451
      ActivePage = tabPrincipal
      Align = alClient
      TabOrder = 0
      ParentColor = False
      Color = clBtnFace
      object tabPrincipal: TTabSheet
        Caption = 'Principal'
        object gGrid: TJvDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1079
          Height = 415
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnDblClick = actAlterarExecute
          AlternateRowColor = 15658734
          ScrollBars = ssVertical
          AutoSizeColumns = True
          AutoSizeColumnIndex = 2
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 19
          TitleRowHeight = 19
          Columns = <
            item
              Expanded = False
              FieldName = 'TRB_DATA_REG'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Caption = 'MODIFICA'#199#195'O'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 149
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRB_OPERACAO'
              Title.Caption = 'OPERA'#199#195'O'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'DESCRI'#199#195'O'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 320
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRB_ICMS_CST'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              Title.Caption = 'CST / CSOSN'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRB_ICMS_CFOP'
              Title.Caption = 'CFOP'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRB_ICMS_ALIQ'
              Title.Caption = 'ICMS'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRB_IPI_ALIQ'
              Title.Caption = 'IPI'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRB_STATUS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              PickList.Strings = (
                'S'
                'N')
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'ATIVO'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 53
              Visible = True
            end>
        end
      end
      object tabDetalhes: TTabSheet
        Caption = 'Detalhes'
        ImageIndex = 1
        object RzPanel3: TRzPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1079
          Height = 46
          Align = alTop
          BorderOuter = fsNone
          Color = clSilver
          TabOrder = 0
          object Label1: TLabel
            Left = 6
            Top = 3
            Width = 54
            Height = 15
            Caption = 'Opera'#231#227'o'
          end
          object Label2: TLabel
            Left = 127
            Top = 3
            Width = 59
            Height = 15
            Caption = 'Finalidade'
          end
          object Label3: TLabel
            Left = 703
            Top = 1
            Width = 149
            Height = 19
            Caption = 'Regime Tribut'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object JvBevel1: TJvBevel
            Left = 686
            Top = 2
            Width = 2
            Height = 42
          end
          object lbRegimeTrib: TLabel
            Left = 703
            Top = 22
            Width = 248
            Height = 16
            Caption = '2 - Simples Nacional -> Excesso da Receita'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 598
            Top = 3
            Width = 70
            Height = 15
            Caption = 'Usar em PDV'
          end
          object Label29: TLabel
            Left = 333
            Top = 3
            Width = 55
            Height = 15
            Caption = 'Descri'#231#227'o'
          end
          object eOperacao: TRzDBComboBox
            Left = 6
            Top = 18
            Width = 115
            Height = 23
            DataField = 'TRB_OPERACAO'
            DataSource = dsDados
            Style = csDropDownList
            TabOrder = 0
            Items.Strings = (
              '0 - NF-e Entrada'
              '1 - NF-e Saida')
            Values.Strings = (
              '0'
              '1')
          end
          object eFinalidade: TRzDBComboBox
            Left = 127
            Top = 18
            Width = 200
            Height = 23
            DataField = 'TRB_FINALIDADE'
            DataSource = dsDados
            Style = csDropDownList
            TabOrder = 1
            Items.Strings = (
              '1 - NF-e Normal'
              '2 - NF-e de Ajuste'
              '3 - NF-e Complementar'
              '4 - NF-e de Devolu'#231#227'o/Retorno')
            Values.Strings = (
              '1'
              '2'
              '3'
              '4')
          end
          object RzDBComboBox1: TRzDBComboBox
            Left = 598
            Top = 18
            Width = 82
            Height = 23
            DataField = 'TRB_FRENTE_CAIXA'
            DataSource = dsDados
            Style = csDropDownList
            TabOrder = 3
            Items.Strings = (
              '1 - Sim'
              '2 - N'#227'o')
            Values.Strings = (
              '1'
              '2')
          end
          object ed_descricao: TJvEdit
            Left = 333
            Top = 18
            Width = 259
            Height = 23
            ReadOnly = True
            TabOrder = 2
            Text = ''
            DataConnector.DataSource = dsDados
            DataConnector.DataField = 'TRB_DESCRICAO'
          end
        end
        object pgControlTrib: TRzPageControl
          AlignWithMargins = True
          Left = 159
          Top = 55
          Width = 923
          Height = 363
          Hint = ''
          ActivePage = tabICMsJ
          Align = alClient
          TabIndex = 0
          TabOrder = 1
          FixedDimension = 21
          object tabICMsJ: TRzTabSheet
            Caption = 'ICMS - Contribuinte'
            object Label5: TLabel
              Left = 6
              Top = 3
              Width = 29
              Height = 15
              Caption = 'CFOP'
            end
            object Label6: TLabel
              Left = 133
              Top = 3
              Width = 106
              Height = 15
              Caption = 'Situa'#231#227'o Tribut'#225'ria'
            end
            object eCfopPJ: TRzDBEdit
              Left = 6
              Top = 19
              Width = 121
              Height = 23
              DataSource = dsDados
              DataField = 'TRB_ICMS_CFOP'
              TabOrder = 0
            end
            object RzGroupBox1: TRzGroupBox
              Left = 6
              Top = 47
              Width = 302
              Height = 116
              Caption = 'Informa'#231#245'es do ICMS'
              TabOrder = 2
              object Label7: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 19
                Width = 294
                Height = 15
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Modalidade de Calculo'
                ExplicitWidth = 128
              end
              object Label10: TLabel
                Left = 4
                Top = 64
                Width = 65
                Height = 15
                Caption = 'Al'#237'quota - %'
              end
              object Label11: TLabel
                Left = 121
                Top = 64
                Width = 140
                Height = 15
                Caption = 'Redu'#231#227'o Base Calculo - %'
              end
              object eICMsMod: TRzDBComboBox
                AlignWithMargins = True
                Left = 4
                Top = 37
                Width = 294
                Height = 23
                DataField = 'TRB_ICMS_MODAL'
                DataSource = dsDados
                Style = csDropDownList
                Align = alTop
                TabOrder = 0
                Items.Strings = (
                  '0 - Margem Valor Agregado %'
                  '1 - Pauta (Valor)'
                  '2 - Pre'#231'o Tab. M'#225'ximo (Valor)'
                  '3 - Valor da Opera'#231#227'o')
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object eICMSAliqPJ: TJvDBCalcEdit
                Left = 4
                Top = 81
                Width = 111
                Height = 23
                DisplayFormat = ',0.00'
                TabOrder = 1
                DecimalPlacesAlwaysShown = True
                DataField = 'TRB_ICMS_ALIQ'
                DataSource = dsDados
                EmptyIsNull = False
              end
              object eICMSRedBasCalc: TJvDBCalcEdit
                Left = 121
                Top = 81
                Width = 177
                Height = 23
                DisplayFormat = ',0.00'
                TabOrder = 2
                DecimalPlacesAlwaysShown = True
                DataField = 'TRB_ICMS_RBCALC'
                DataSource = dsDados
                EmptyIsNull = False
              end
            end
            object RzGroupBox2: TRzGroupBox
              Left = 314
              Top = 47
              Width = 557
              Height = 116
              Caption = 'Informa'#231#245'es do ICMS'
              TabOrder = 3
              object Label12: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 19
                Width = 549
                Height = 15
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Modalidade de Calculo'
                ExplicitWidth = 128
              end
              object Label13: TLabel
                Left = 4
                Top = 64
                Width = 65
                Height = 15
                Caption = 'Al'#237'quota - %'
              end
              object Label14: TLabel
                Left = 156
                Top = 64
                Width = 140
                Height = 15
                Caption = 'Redu'#231#227'o Base Calculo - %'
              end
              object Label15: TLabel
                Left = 355
                Top = 64
                Width = 43
                Height = 15
                Caption = 'MVA - %'
              end
              object Label4: TLabel
                Left = 451
                Top = 64
                Width = 93
                Height = 15
                Caption = 'MVA Redu'#231#227'o - %'
              end
              object eICMsSTMod: TRzDBComboBox
                AlignWithMargins = True
                Left = 4
                Top = 37
                Width = 549
                Height = 23
                DataField = 'TRB_ICMS_ST_MODAL'
                DataSource = dsDados
                Style = csDropDownList
                Align = alTop
                TabOrder = 0
                Items.Strings = (
                  '0 - Pre'#231'o Tabelado ou M'#225'ximo Sugerido'
                  '1 - Lista Negativa (Valor)'
                  '2 - Lista Positiva (Valor)'
                  '3 - Lista Neutra (Valor)'
                  '4 - Margem de Valor Agregado'
                  '5 - Pauta (Valor)')
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
              end
              object eICMsSTAliq: TJvDBCalcEdit
                Left = 4
                Top = 81
                Width = 146
                Height = 23
                DisplayFormat = ',0.00'
                TabOrder = 1
                DecimalPlacesAlwaysShown = True
                DataField = 'TRB_ICMS_ST_ALIQ'
                DataSource = dsDados
                EmptyIsNull = False
              end
              object eICMsSTRedBasCalc: TJvDBCalcEdit
                Left = 156
                Top = 81
                Width = 193
                Height = 23
                DisplayFormat = ',0.00'
                TabOrder = 2
                DecimalPlacesAlwaysShown = True
                DataField = 'TRB_ICMS_ST_RBCALC'
                DataSource = dsDados
                EmptyIsNull = False
              end
              object eICMsMVA: TJvDBCalcEdit
                Left = 355
                Top = 81
                Width = 90
                Height = 23
                DisplayFormat = ',0.00'
                TabOrder = 3
                DecimalPlacesAlwaysShown = True
                DataField = 'TRB_ICMS_ST_MVA'
                DataSource = dsDados
                EmptyIsNull = False
              end
              object eICMsMVaRB: TJvDBCalcEdit
                Left = 451
                Top = 81
                Width = 102
                Height = 23
                DisplayFormat = ',0.00'
                TabOrder = 4
                DecimalPlacesAlwaysShown = True
                DataField = 'TRB_ICMS_ST_MVA_RB'
                DataSource = dsDados
                EmptyIsNull = False
              end
            end
            object eCstPJ: TRzDBLookupComboBox
              Left = 133
              Top = 19
              Width = 738
              Height = 23
              DataField = 'TRB_ICMS_CST'
              DataSource = dsDados
              KeyField = 'CST_CODIGO'
              ListField = 'CST_DESCRICAO'
              ListSource = dsCst
              TabOrder = 1
            end
            object RzDBCheckBox28: TRzDBCheckBox
              Left = 6
              Top = 169
              Width = 181
              Height = 17
              DataField = 'TRB_IND_TOT'
              DataSource = dsDados
              ValueChecked = '0'
              ValueUnchecked = '1'
              Caption = 'Comp'#245'e o valor total da NF-e.'
              TabOrder = 4
            end
            object RzDBCheckBox29: TRzDBCheckBox
              Left = 6
              Top = 190
              Width = 311
              Height = 17
              DataField = 'TRB_INTEGRA_CALCULO'
              DataSource = dsDados
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              Caption = 'Integra a base de calculo das formas de pagamentos.'
              TabOrder = 5
            end
          end
          object tabICMsF: TRzTabSheet
            Caption = 'ICMS - N'#227'o Contribuinte'
            object Label16: TLabel
              Left = 6
              Top = 3
              Width = 29
              Height = 15
              Caption = 'CFOP'
            end
            object Label17: TLabel
              Left = 133
              Top = 3
              Width = 106
              Height = 15
              Caption = 'Situa'#231#227'o Tribut'#225'ria'
            end
            object Label18: TLabel
              Left = 760
              Top = 47
              Width = 65
              Height = 15
              Caption = 'Al'#237'quota - %'
            end
            object eCFOpPF: TRzDBEdit
              Left = 6
              Top = 20
              Width = 121
              Height = 23
              DataSource = dsDados
              DataField = 'TRB_ICMS_NC_CFOP'
              TabOrder = 0
            end
            object eICMsAliqPF: TJvDBCalcEdit
              Left = 760
              Top = 64
              Width = 111
              Height = 23
              DisplayFormat = ',0.00'
              TabOrder = 1
              DecimalPlacesAlwaysShown = True
              DataField = 'TRB_ICMS_NC_ALIQ'
              DataSource = dsDados
              EmptyIsNull = False
            end
            object eCStPF: TRzDBLookupComboBox
              Left = 133
              Top = 20
              Width = 738
              Height = 23
              DataField = 'TRB_ICMS_NC_CST'
              DataSource = dsDados
              KeyField = 'CST_CODIGO'
              ListField = 'CST_DESCRICAO'
              ListSource = dsCst
              TabOrder = 2
            end
          end
          object tabIPI: TRzTabSheet
            Caption = 'IPI'
            object Label19: TLabel
              Left = 8
              Top = 3
              Width = 106
              Height = 15
              Caption = 'Situa'#231#227'o Tribut'#225'ria'
            end
            object Label20: TLabel
              Left = 447
              Top = 47
              Width = 65
              Height = 15
              Caption = 'Al'#237'quota - %'
            end
            object Label21: TLabel
              Left = 564
              Top = 48
              Width = 144
              Height = 15
              Caption = 'C'#243'digo de Enquadramento'
            end
            object eIPICst: TRzDBComboBox
              Left = 8
              Top = 20
              Width = 754
              Height = 23
              DataField = 'TRB_IPI_CST'
              DataSource = dsDados
              Style = csDropDownList
              TabOrder = 0
              Items.Strings = (
                '00 - Entrada com recupera'#231#227'o de cr'#233'dito'
                '01 - Entrada tributada com al'#237'quota zero'
                '02 - Entrada isenta'
                '03 - Entrada n'#227'o-tributada'
                '04 - Entrada imune'
                '05 - Entrada com suspens'#227'o'
                '49 - Outras entradas'
                '50 - Sa'#237'da tributada'
                '51 - Sa'#237'da tribut'#225'vel com al'#237'quota zero'
                '52 - Sa'#237'da isenta'
                '53 - Sa'#237'da n'#227'o-tributada'
                '54 - Sa'#237'da imune'
                '55 - Sa'#237'da com suspens'#227'o'
                '99 - Outras sa'#237'das')
              Values.Strings = (
                '00'
                '01'
                '02'
                '03'
                '04'
                '05'
                '49'
                '50'
                '51'
                '52'
                '53'
                '54'
                '55'
                '99')
            end
            object eIPIAliq: TJvDBCalcEdit
              Left = 447
              Top = 64
              Width = 111
              Height = 23
              DisplayFormat = ',0.00'
              TabOrder = 1
              DecimalPlacesAlwaysShown = True
              DataField = 'TRB_IPI_ALIQ'
              DataSource = dsDados
              EmptyIsNull = False
            end
            object eIPICodigo: TRzDBEdit
              Left = 564
              Top = 64
              Width = 198
              Height = 23
              DataSource = dsDados
              DataField = 'TRB_IPI_CODIGO'
              TabOrder = 2
            end
          end
          object tabPIS: TRzTabSheet
            Caption = 'PIS'
            object Label22: TLabel
              Left = 8
              Top = 3
              Width = 106
              Height = 15
              Caption = 'Situa'#231#227'o Tribut'#225'ria'
            end
            object Label23: TLabel
              Left = 651
              Top = 47
              Width = 80
              Height = 15
              Caption = 'Al'#237'quota ST - %'
            end
            object Label24: TLabel
              Left = 534
              Top = 47
              Width = 65
              Height = 15
              Caption = 'Al'#237'quota - %'
            end
            object ePISCst: TRzDBComboBox
              Left = 8
              Top = 20
              Width = 754
              Height = 23
              DataField = 'TRB_PIS_CST'
              DataSource = dsDados
              Style = csDropDownList
              TabOrder = 0
              Items.Strings = (
                '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
                
                  '02 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
                  'roduto'
                
                  '03 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
                  'roduto'
                '04 - Opera'#231#227'o Tribut'#225'vel Monof'#225'sica '#8211' Revenda a Al'#237'quota Zero'
                '05 - Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
                '06 - Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
                '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
                '08 - Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
                '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
                '49 - Outras Opera'#231#245'es de Sa'#237'da'
                
                  '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita Tributada no Mercado Interno'
                
                  '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita N'#227'o-Tributada no Mercado Interno'
                
                  '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita de Exporta'#231#227'o'
                
                  '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas e N'#227'o-Tributadas no Mercado Interno'
                
                  '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas no Mercado Interno e de Exporta'#231#227'o'
                
                  '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o T' +
                  'ributadas Mercado Interno e de Exporta'#231#227'o'
                
                  '56 - Oper. c/ Direito a Cr'#233'd. Vinculada a Rec. Tributadas e N'#227'o-' +
                  'Tributadas Mercado Interno e de Exporta'#231#227'o'
                
                  '60 - Cr'#233'dito Presumido - Oper. de Aquisi'#231#227'o Vinculada Exclusivam' +
                  'ente a Rec. Tributada no Mercado Interno'
                
                  '61 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada Exclusivamen' +
                  'te a Rec. N'#227'o-Tributada Mercado Interno'
                
                  '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receita de Exporta'#231#227'o'
                
                  '63 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada a Rec.Tribut' +
                  'adas e N'#227'o-Tributadas no Mercado Interno'
                
                  '64 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada a Rec. Tribu' +
                  'tadas no Mercado Interno e de Exporta'#231#227'o'
                
                  '65 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada a Rec. N'#227'o-T' +
                  'ributadas Mercado Interno e Exporta'#231#227'o'
                
                  '66 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada a Rec. Trib.' +
                  ' e N'#227'o-Trib. Mercado Interno e Exporta'#231#227'o'
                '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es'
                '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
                '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
                '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
                '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
                '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
                '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
                '98 - Outras Opera'#231#245'es de Entrada'
                '99 - Outras Opera'#231#245'es')
              Values.Strings = (
                '01'
                '02'
                '03'
                '04'
                '05'
                '06'
                '07'
                '08'
                '09'
                '49'
                '50'
                '51'
                '52'
                '53'
                '54'
                '55'
                '56'
                '60'
                '61'
                '62'
                '63'
                '64'
                '65'
                '66'
                '67'
                '70'
                '71'
                '72'
                '73'
                '74'
                '75'
                '98'
                '99')
            end
            object ePISAliqST: TJvDBCalcEdit
              Left = 651
              Top = 64
              Width = 111
              Height = 23
              DisplayFormat = ',0.00'
              TabOrder = 2
              DecimalPlacesAlwaysShown = True
              DataField = 'TRB_PIS_ALIQ_ST'
              DataSource = dsDados
              EmptyIsNull = False
            end
            object ePISAliq: TJvDBCalcEdit
              Left = 534
              Top = 64
              Width = 111
              Height = 23
              DisplayFormat = ',0.00'
              TabOrder = 1
              DecimalPlacesAlwaysShown = True
              DataField = 'TRB_PIS_ALIQ'
              DataSource = dsDados
              EmptyIsNull = False
            end
          end
          object tabCofins: TRzTabSheet
            Caption = 'COFINS'
            object Label25: TLabel
              Left = 8
              Top = 3
              Width = 106
              Height = 15
              Caption = 'Situa'#231#227'o Tribut'#225'ria'
            end
            object Label26: TLabel
              Left = 534
              Top = 47
              Width = 65
              Height = 15
              Caption = 'Al'#237'quota - %'
            end
            object Label27: TLabel
              Left = 651
              Top = 47
              Width = 80
              Height = 15
              Caption = 'Al'#237'quota ST - %'
            end
            object eCofinsCST: TRzDBComboBox
              Left = 8
              Top = 20
              Width = 754
              Height = 23
              DataField = 'TRB_COFINS_CST'
              DataSource = dsDados
              Style = csDropDownList
              TabOrder = 0
              Items.Strings = (
                '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
                
                  '02 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
                  'roduto'
                
                  '03 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
                  'roduto'
                '04 - Opera'#231#227'o Tribut'#225'vel Monof'#225'sica '#8211' Revenda a Al'#237'quota Zero'
                '05 - Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
                '06 - Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
                '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
                '08 - Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
                '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
                '49 - Outras Opera'#231#245'es de Sa'#237'da'
                
                  '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita Tributada no Mercado Interno'
                
                  '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita N'#227'o-Tributada no Mercado Interno'
                
                  '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita de Exporta'#231#227'o'
                
                  '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas e N'#227'o-Tributadas no Mercado Interno'
                
                  '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas no Mercado Interno e de Exporta'#231#227'o'
                
                  '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o T' +
                  'ributadas Mercado Interno e de Exporta'#231#227'o'
                
                  '56 - Oper. c/ Direito a Cr'#233'd. Vinculada a Rec. Tributadas e N'#227'o-' +
                  'Tributadas Mercado Interno e de Exporta'#231#227'o'
                
                  '60 - Cr'#233'dito Presumido - Oper. de Aquisi'#231#227'o Vinculada Exclusivam' +
                  'ente a Rec. Tributada no Mercado Interno'
                
                  '61 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada Exclusivamen' +
                  'te a Rec. N'#227'o-Tributada Mercado Interno'
                
                  '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receita de Exporta'#231#227'o'
                
                  '63 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada a Rec.Tribut' +
                  'adas e N'#227'o-Tributadas no Mercado Interno'
                
                  '64 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada a Rec. Tribu' +
                  'tadas no Mercado Interno e de Exporta'#231#227'o'
                
                  '65 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada a Rec. N'#227'o-T' +
                  'ributadas Mercado Interno e Exporta'#231#227'o'
                
                  '66 - Cr'#233'd. Presumido - Oper. de Aquisi'#231#227'o Vinculada a Rec. Trib.' +
                  ' e N'#227'o-Trib. Mercado Interno e Exporta'#231#227'o'
                '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es'
                '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
                '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
                '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
                '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
                '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
                '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
                '98 - Outras Opera'#231#245'es de Entrada'
                '99 - Outras Opera'#231#245'es')
              Values.Strings = (
                '01'
                '02'
                '03'
                '04'
                '05'
                '06'
                '07'
                '08'
                '09'
                '49'
                '50'
                '51'
                '52'
                '53'
                '54'
                '55'
                '56'
                '60'
                '61'
                '62'
                '63'
                '64'
                '65'
                '66'
                '67'
                '70'
                '71'
                '72'
                '73'
                '74'
                '75'
                '98'
                '99')
            end
            object eCofinsAliq: TJvDBCalcEdit
              Left = 534
              Top = 64
              Width = 111
              Height = 23
              DisplayFormat = ',0.00'
              TabOrder = 1
              DecimalPlacesAlwaysShown = True
              DataField = 'TRB_COFINS_ALIQ'
              DataSource = dsDados
              EmptyIsNull = False
            end
            object eCofinsAliqST: TJvDBCalcEdit
              Left = 651
              Top = 64
              Width = 111
              Height = 23
              DisplayFormat = ',0.00'
              TabOrder = 2
              DecimalPlacesAlwaysShown = True
              DataField = 'TRB_COFINS_ALIQ_ST'
              DataSource = dsDados
              EmptyIsNull = False
            end
          end
        end
        object RzPanel4: TRzPanel
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 150
          Height = 363
          Align = alLeft
          BorderOuter = fsNone
          TabOrder = 2
          object RzGroupBox3: TRzGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 143
            Height = 286
            Margins.Bottom = 5
            Align = alLeft
            Caption = ' Selecione o(s) Estado(s)'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 0
            object SpeedButton1: TSpeedButton
              Left = 91
              Top = 263
              Width = 23
              Height = 22
              Hint = 'Marcar todas as UFs'
              Glyph.Data = {
                3E020000424D3E0200000000000036000000280000000D0000000D0000000100
                18000000000008020000C40E0000C40E00000000000000000000717171717171
                7171717171717171717171717171717171717171717171717171717171717171
                7100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF71717100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171FFFFFFFFFFFFF6F6F66B6B
                6B6B6B6BF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171FFFFFF
                F6F6F66B6B6B4646464646466B6B6BF6F6F6FFFFFFFFFFFFFFFFFFFFFFFF7171
                7100717171F6F6F66B6B6B464646E3E3E3E3E3E34646466B6B6BF6F6F6FFFFFF
                FFFFFFFFFFFF71717100717171B9B9B9464646E3E3E3FFFFFFFFFFFFE3E3E346
                46466B6B6BF6F6F6FFFFFFFFFFFF71717100717171FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFE3E3E34646466B6B6BF6F6F6FFFFFF71717100717171FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E34646466B6B6BF6F6F67171
                7100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3
                464646B9B9B971717100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171717171
                7171717171717171717171717171717171717171717171717171717171717171
                7100}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 119
              Top = 263
              Width = 23
              Height = 22
              Hint = 'Demarcar todas as UFs'
              Glyph.Data = {
                3E020000424D3E0200000000000036000000280000000D0000000D0000000100
                18000000000008020000C40E0000C40E00000000000000000000717171717171
                7171717171717171717171717171717171717171717171717171717171717171
                7100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF71717100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171
                7100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF71717100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171
                7100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF71717100717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71717100717171717171
                7171717171717171717171717171717171717171717171717171717171717171
                7100}
              OnClick = SpeedButton2Click
            end
            object RzDBCheckBox1: TRzDBCheckBox
              Left = 6
              Top = 24
              Width = 33
              Height = 17
              DataField = 'AC'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'AC'
              TabOrder = 0
            end
            object RzDBCheckBox2: TRzDBCheckBox
              Left = 6
              Top = 42
              Width = 31
              Height = 17
              DataField = 'AL'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'AL'
              TabOrder = 1
            end
            object RzDBCheckBox3: TRzDBCheckBox
              Left = 6
              Top = 60
              Width = 33
              Height = 17
              DataField = 'AP'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'AP'
              TabOrder = 2
            end
            object RzDBCheckBox4: TRzDBCheckBox
              Left = 6
              Top = 78
              Width = 37
              Height = 17
              DataField = 'AM'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'AM'
              TabOrder = 3
            end
            object RzDBCheckBox5: TRzDBCheckBox
              Left = 6
              Top = 96
              Width = 33
              Height = 17
              DataField = 'BA'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'BA'
              TabOrder = 4
            end
            object RzDBCheckBox6: TRzDBCheckBox
              Left = 6
              Top = 114
              Width = 32
              Height = 17
              DataField = 'CE'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'CE'
              TabOrder = 5
            end
            object RzDBCheckBox7: TRzDBCheckBox
              Left = 6
              Top = 132
              Width = 33
              Height = 17
              DataField = 'DF'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'DF'
              TabOrder = 6
            end
            object RzDBCheckBox8: TRzDBCheckBox
              Left = 6
              Top = 150
              Width = 31
              Height = 17
              DataField = 'ES'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'ES'
              TabOrder = 7
            end
            object RzDBCheckBox9: TRzDBCheckBox
              Left = 6
              Top = 168
              Width = 36
              Height = 17
              DataField = 'GO'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'GO'
              TabOrder = 8
            end
            object RzDBCheckBox10: TRzDBCheckBox
              Left = 6
              Top = 186
              Width = 37
              Height = 17
              DataField = 'MA'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'MA'
              TabOrder = 9
            end
            object RzDBCheckBox11: TRzDBCheckBox
              Left = 6
              Top = 204
              Width = 36
              Height = 17
              DataField = 'MT'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'MT'
              TabOrder = 10
            end
            object RzDBCheckBox12: TRzDBCheckBox
              Left = 6
              Top = 222
              Width = 36
              Height = 17
              DataField = 'MS'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'MS'
              TabOrder = 11
            end
            object RzDBCheckBox13: TRzDBCheckBox
              Left = 67
              Top = 60
              Width = 32
              Height = 17
              DataField = 'PE'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'PE'
              TabOrder = 16
            end
            object RzDBCheckBox14: TRzDBCheckBox
              Left = 67
              Top = 78
              Width = 30
              Height = 17
              DataField = 'PI'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'PI'
              TabOrder = 17
            end
            object RzDBCheckBox15: TRzDBCheckBox
              Left = 6
              Top = 240
              Width = 38
              Height = 17
              DataField = 'MG'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'MG'
              TabOrder = 12
            end
            object RzDBCheckBox16: TRzDBCheckBox
              Left = 6
              Top = 258
              Width = 32
              Height = 17
              DataField = 'PA'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'PA'
              TabOrder = 13
            end
            object RzDBCheckBox17: TRzDBCheckBox
              Left = 67
              Top = 24
              Width = 33
              Height = 17
              DataField = 'PB'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'PB'
              TabOrder = 14
            end
            object RzDBCheckBox18: TRzDBCheckBox
              Left = 67
              Top = 42
              Width = 33
              Height = 17
              DataField = 'PR'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'PR'
              TabOrder = 15
            end
            object RzDBCheckBox19: TRzDBCheckBox
              Left = 67
              Top = 96
              Width = 30
              Height = 17
              DataField = 'RJ'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'RJ'
              TabOrder = 18
            end
            object RzDBCheckBox20: TRzDBCheckBox
              Left = 67
              Top = 114
              Width = 34
              Height = 17
              DataField = 'RN'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'RN'
              TabOrder = 19
            end
            object RzDBCheckBox21: TRzDBCheckBox
              Left = 67
              Top = 132
              Width = 32
              Height = 17
              DataField = 'RS'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'RS'
              TabOrder = 20
            end
            object RzDBCheckBox22: TRzDBCheckBox
              Left = 67
              Top = 150
              Width = 35
              Height = 17
              DataField = 'RO'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'RO'
              TabOrder = 21
            end
            object RzDBCheckBox23: TRzDBCheckBox
              Left = 67
              Top = 168
              Width = 33
              Height = 17
              DataField = 'RR'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'RR'
              TabOrder = 22
            end
            object RzDBCheckBox24: TRzDBCheckBox
              Left = 67
              Top = 186
              Width = 32
              Height = 17
              DataField = 'SC'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'SC'
              TabOrder = 23
            end
            object RzDBCheckBox25: TRzDBCheckBox
              Left = 67
              Top = 204
              Width = 32
              Height = 17
              DataField = 'SP'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'SP'
              TabOrder = 24
            end
            object RzDBCheckBox26: TRzDBCheckBox
              Left = 67
              Top = 222
              Width = 31
              Height = 17
              DataField = 'SE'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'SE'
              TabOrder = 25
            end
            object RzDBCheckBox27: TRzDBCheckBox
              Left = 67
              Top = 240
              Width = 34
              Height = 17
              DataField = 'TO'
              DataSource = dsDados
              ValueChecked = '1'
              ValueUnchecked = '2'
              Caption = 'TO'
              TabOrder = 26
            end
          end
          object RzDBRadioGroup1: TRzDBRadioGroup
            AlignWithMargins = True
            Left = 3
            Top = 297
            Width = 144
            Height = 63
            DataField = 'TRB_STATUS'
            DataSource = dsDados
            Items.Strings = (
              'Ativo'
              'Inativo')
            Values.Strings = (
              '1'
              '2')
            Align = alBottom
            Caption = ' Status do Registro'
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Calibri'
            CaptionFont.Style = [fsBold]
            GroupStyle = gsUnderline
            TabOrder = 1
          end
        end
      end
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1093
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
    TabOrder = 1
    VisualStyle = vsGradient
    object Label8: TLabel
      Left = 41
      Top = 3
      Width = 220
      Height = 26
      Caption = 'Regras de Tributa'#231#227'o NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 296
      Top = 1
      Width = 717
      Height = 30
      Caption = 
        'Neste formul'#225'rio '#233' possivel pr'#233' configurar todas as regras neces' +
        's'#225'rias de tributa'#231#227'o para emiss'#227'o de uma nota fiscal, permitindo' +
        ' vincular esta regra a um ou mais estados de uma '#250'nica vez.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel3: TBevel
      Left = 281
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
  object RzToolbar1: TRzToolbar
    AlignWithMargins = True
    Left = 3
    Top = 494
    Width = 1093
    Height = 44
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
      Width = 85
      Height = 40
      DisabledIndex = 35
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCadastrar
    end
    object btnEdit: TRzToolButton
      Left = 97
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 37
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actAlterar
    end
    object btnCancel: TRzToolButton
      Left = 190
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 39
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actExcluir
    end
    object btnOK: TRzToolButton
      Left = 283
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 41
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actGravar
    end
    object btnError: TRzToolButton
      Left = 376
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 43
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actCancelar
    end
    object btnExit: TRzToolButton
      Left = 469
      Top = 2
      Width = 85
      Height = 40
      DisabledIndex = 45
      Layout = blGlyphTop
      UseToolbarButtonSize = False
      Action = actSair
    end
    object RzSpacer1: TRzSpacer
      Left = 89
      Top = 10
      Grooved = True
    end
    object RzSpacer2: TRzSpacer
      Left = 182
      Top = 10
      Grooved = True
    end
    object RzSpacer3: TRzSpacer
      Left = 275
      Top = 10
    end
    object RzSpacer4: TRzSpacer
      Left = 461
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 368
      Top = 10
      Grooved = True
    end
  end
  object ActionManager1: TActionManager
    Images = FrPrincipal.sysIcones16
    Left = 239
    Top = 317
    StyleName = 'Platform Default'
    object actCadastrar: TAction
      Caption = 'Cadastrar'
      ImageIndex = 13
      OnExecute = actCadastrarExecute
      OnUpdate = actCadastrarUpdate
    end
    object actAlterar: TAction
      Caption = 'Alterar'
      ImageIndex = 15
      OnExecute = actAlterarExecute
      OnUpdate = actAlterarUpdate
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 19
      OnExecute = actExcluirExecute
      OnUpdate = actAlterarUpdate
    end
    object actGravar: TAction
      Caption = 'Gravar'
      ImageIndex = 7
      OnExecute = actGravarExecute
      OnUpdate = actGravarUpdate
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
      OnExecute = actCancelarExecute
      OnUpdate = actGravarUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 25
      OnExecute = actSairExecute
      OnUpdate = actCadastrarUpdate
    end
  end
  object tbDados: TFDQuery
    BeforePost = tbDadosBeforePost
    AfterPost = tbDadosAfterPost
    BeforeDelete = tbDadosBeforeDelete
    OnNewRecord = tbDadosNewRecord
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   T1.*,'
      '   ('
      '      TRB_DESCRICAO || '#39' - '#39' ||'
      
        '      '#39'CST: '#39' || TRB_ICMS_CST || '#39' / '#39' || '#39'CFOP: '#39' || TRB_ICMS_C' +
        'FOP || '#39' / FINALIDADE: '#39' ||'
      '      IIF(TRB_FINALIDADE = 1'
      '         ,'#39'1 - NORMAL'#39
      '         ,IIF(TRB_FINALIDADE = 2'
      '            , '#39'2 - AJUSTE'#39
      '            ,IIF(TRB_FINALIDADE = 3'
      '               ,'#39'3 - COMPLEMENTAR'#39
      '               ,IIF(TRB_FINALIDADE = 4'
      '                  ,'#39'4 - DEVOLU'#199#195'O/RETORNO'#39
      '                  ,'#39'N/D'#39
      '                )'
      '             )'
      '          )'
      '      )'
      '   ) AS DESCRICAO'
      'FROM'
      '   C000015 AS T1'
      'WHERE'
      '   ID_EMPRESA = :ID_EMPRESA'
      'AND'
      '   TRB_CRT    = :TRB_CRT'
      'ORDER BY'
      '   TRB_OPERACAO DESC, TRB_ICMS_ALIQ, TRB_ICMS_CFOP ASC'
      '   ')
    Left = 178
    Top = 317
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'TRB_CRT'
        DataType = ftInteger
        ParamType = ptInput
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
    object tbDadosTRB_CRT: TIntegerField
      FieldName = 'TRB_CRT'
      Origin = 'TRB_CRT'
    end
    object tbDadosTRB_DESCRICAO: TStringField
      FieldName = 'TRB_DESCRICAO'
      Origin = 'TRB_DESCRICAO'
      Size = 35
    end
    object tbDadosTRB_DATA_REG: TSQLTimeStampField
      FieldName = 'TRB_DATA_REG'
      Origin = 'TRB_DATA_REG'
    end
    object tbDadosTRB_ICMS_CST: TStringField
      DefaultExpression = #39'102'#39
      FieldName = 'TRB_ICMS_CST'
      Origin = 'TRB_ICMS_CST'
      Size = 10
    end
    object tbDadosTRB_ICMS_CFOP: TIntegerField
      FieldName = 'TRB_ICMS_CFOP'
      Origin = 'TRB_ICMS_CFOP'
    end
    object tbDadosTRB_ICMS_MODAL: TIntegerField
      DefaultExpression = '3'
      FieldName = 'TRB_ICMS_MODAL'
      Origin = 'TRB_ICMS_MODAL'
    end
    object tbDadosTRB_ICMS_ALIQ: TFMTBCDField
      FieldName = 'TRB_ICMS_ALIQ'
      Origin = 'TRB_ICMS_ALIQ'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_ICMS_RBCALC: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_ICMS_RBCALC'
      Origin = 'TRB_ICMS_RBCALC'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_ICMS_NC_CST: TStringField
      DefaultExpression = #39'102'#39
      FieldName = 'TRB_ICMS_NC_CST'
      Origin = 'TRB_ICMS_NC_CST'
      Size = 10
    end
    object tbDadosTRB_ICMS_NC_CFOP: TIntegerField
      FieldName = 'TRB_ICMS_NC_CFOP'
      Origin = 'TRB_ICMS_NC_CFOP'
    end
    object tbDadosTRB_ICMS_NC_ALIQ: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_ICMS_NC_ALIQ'
      Origin = 'TRB_ICMS_NC_ALIQ'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_ICMS_ST_ALIQ: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_ICMS_ST_ALIQ'
      Origin = 'TRB_ICMS_ST_ALIQ'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_ICMS_ST_MODAL: TIntegerField
      DefaultExpression = '4'
      FieldName = 'TRB_ICMS_ST_MODAL'
      Origin = 'TRB_ICMS_ST_MODAL'
    end
    object tbDadosTRB_ICMS_ST_RBCALC: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_ICMS_ST_RBCALC'
      Origin = 'TRB_ICMS_ST_RBCALC'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_ICMS_ST_MVA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_ICMS_ST_MVA'
      Origin = 'TRB_ICMS_ST_MVA'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_ICMS_ST_MVA_RB: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_ICMS_ST_MVA_RB'
      Origin = 'TRB_ICMS_ST_MVA_RB'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_IPI_CST: TStringField
      DefaultExpression = #39'99'#39
      FieldName = 'TRB_IPI_CST'
      Origin = 'TRB_IPI_CST'
      Size = 10
    end
    object tbDadosTRB_IPI_CODIGO: TIntegerField
      DefaultExpression = '999'
      FieldName = 'TRB_IPI_CODIGO'
      Origin = 'TRB_IPI_CODIGO'
    end
    object tbDadosTRB_IPI_SELO: TStringField
      FieldName = 'TRB_IPI_SELO'
      Origin = 'TRB_IPI_SELO'
      Size = 35
    end
    object tbDadosTRB_IPI_QTDE_SELO: TIntegerField
      FieldName = 'TRB_IPI_QTDE_SELO'
      Origin = 'TRB_IPI_QTDE_SELO'
    end
    object tbDadosTRB_IPI_ALIQ: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_IPI_ALIQ'
      Origin = 'TRB_IPI_ALIQ'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_PIS_CST: TStringField
      DefaultExpression = #39'99'#39
      FieldName = 'TRB_PIS_CST'
      Origin = 'TRB_PIS_CST'
      Size = 10
    end
    object tbDadosTRB_PIS_ALIQ: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_PIS_ALIQ'
      Origin = 'TRB_PIS_ALIQ'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_PIS_ALIQ_ST: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_PIS_ALIQ_ST'
      Origin = 'TRB_PIS_ALIQ_ST'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_COFINS_CST: TStringField
      DefaultExpression = #39'99'#39
      FieldName = 'TRB_COFINS_CST'
      Origin = 'TRB_COFINS_CST'
      Size = 10
    end
    object tbDadosTRB_COFINS_ALIQ: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_COFINS_ALIQ'
      Origin = 'TRB_COFINS_ALIQ'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_COFINS_ALIQ_ST: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TRB_COFINS_ALIQ_ST'
      Origin = 'TRB_COFINS_ALIQ_ST'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object tbDadosTRB_OPERACAO: TIntegerField
      Alignment = taLeftJustify
      DefaultExpression = '1'
      FieldName = 'TRB_OPERACAO'
      Origin = 'TRB_OPERACAO'
      OnGetText = tbDadosTRB_OPERACAOGetText
    end
    object tbDadosTRB_FINALIDADE: TIntegerField
      DefaultExpression = '1'
      FieldName = 'TRB_FINALIDADE'
      Origin = 'TRB_FINALIDADE'
    end
    object tbDadosTRB_STATUS: TIntegerField
      Alignment = taCenter
      DefaultExpression = '1'
      FieldName = 'TRB_STATUS'
      Origin = 'TRB_STATUS'
      OnGetText = tbDadosTRB_STATUSGetText
    end
    object tbDadosAC: TIntegerField
      FieldName = 'AC'
      Origin = 'AC'
    end
    object tbDadosAL: TIntegerField
      FieldName = 'AL'
      Origin = 'AL'
    end
    object tbDadosAP: TIntegerField
      FieldName = 'AP'
      Origin = 'AP'
    end
    object tbDadosAM: TIntegerField
      FieldName = 'AM'
      Origin = 'AM'
    end
    object tbDadosBA: TIntegerField
      FieldName = 'BA'
      Origin = 'BA'
    end
    object tbDadosCE: TIntegerField
      FieldName = 'CE'
      Origin = 'CE'
    end
    object tbDadosDF: TIntegerField
      FieldName = 'DF'
      Origin = 'DF'
    end
    object tbDadosES: TIntegerField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object tbDadosGO: TIntegerField
      FieldName = 'GO'
      Origin = 'GO'
    end
    object tbDadosMA: TIntegerField
      FieldName = 'MA'
      Origin = 'MA'
    end
    object tbDadosMT: TIntegerField
      FieldName = 'MT'
      Origin = 'MT'
    end
    object tbDadosMS: TIntegerField
      FieldName = 'MS'
      Origin = 'MS'
    end
    object tbDadosMG: TIntegerField
      FieldName = 'MG'
      Origin = 'MG'
    end
    object tbDadosPA: TIntegerField
      FieldName = 'PA'
      Origin = 'PA'
    end
    object tbDadosPB: TIntegerField
      FieldName = 'PB'
      Origin = 'PB'
    end
    object tbDadosPR: TIntegerField
      FieldName = 'PR'
      Origin = 'PR'
    end
    object tbDadosPE: TIntegerField
      FieldName = 'PE'
      Origin = 'PE'
    end
    object tbDadosPI: TIntegerField
      FieldName = 'PI'
      Origin = '"PI"'
    end
    object tbDadosRJ: TIntegerField
      FieldName = 'RJ'
      Origin = 'RJ'
    end
    object tbDadosRN: TIntegerField
      FieldName = 'RN'
      Origin = 'RN'
    end
    object tbDadosRS: TIntegerField
      FieldName = 'RS'
      Origin = 'RS'
    end
    object tbDadosRO: TIntegerField
      FieldName = 'RO'
      Origin = 'RO'
    end
    object tbDadosRR: TIntegerField
      FieldName = 'RR'
      Origin = 'RR'
    end
    object tbDadosSC: TIntegerField
      FieldName = 'SC'
      Origin = 'SC'
    end
    object tbDadosSP: TIntegerField
      FieldName = 'SP'
      Origin = 'SP'
    end
    object tbDadosSE: TIntegerField
      FieldName = 'SE'
      Origin = 'SE'
    end
    object tbDadosTO: TIntegerField
      FieldName = 'TO'
      Origin = '"TO"'
    end
    object tbDadosDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 71
    end
    object tbDadosTRB_FRENTE_CAIXA: TIntegerField
      DefaultExpression = '2'
      FieldName = 'TRB_FRENTE_CAIXA'
      Origin = 'TRB_FRENTE_CAIXA'
    end
    object tbDadosTRB_IND_TOT: TIntegerField
      DefaultExpression = '1'
      FieldName = 'TRB_IND_TOT'
      Origin = 'TRB_IND_TOT'
    end
    object tbDadosTRB_INTEGRA_CALCULO: TStringField
      DefaultExpression = #39'S'#39
      FieldName = 'TRB_INTEGRA_CALCULO'
      Origin = 'TRB_INTEGRA_CALCULO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDados: TJvDataSource
    DataSet = tbDados
    OnStateChange = dsDadosStateChange
    Left = 208
    Top = 317
  end
  object tbCst: TFDQuery
    Connection = FrModuloRet.DBConexao
    SQL.Strings = (
      'SELECT'
      '   ID,'
      '   CST_CODIGO,'
      '   CST_CRT,'
      '   (CST_CODIGO || '#39' - '#39' || CST_DESCRICAO) AS CST_DESCRICAO'
      'FROM'
      '   C000016'
      'WHERE'
      '   CST_CRT = :CST_CRT'
      'ORDER BY'
      '   CST_CRT ASC, CST_CODIGO ASC')
    Left = 178
    Top = 353
    ParamData = <
      item
        Name = 'CST_CRT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsCst: TJvDataSource
    AutoEdit = False
    DataSet = tbCst
    Left = 208
    Top = 353
  end
end
