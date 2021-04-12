object frmCaesDonos: TfrmCaesDonos
  Left = 0
  Top = 0
  Caption = 'Relacionamento C'#227'es e donos'
  ClientHeight = 400
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object CardPanel1: TCardPanel
    Left = 0
    Top = 0
    Width = 807
    Height = 400
    Align = alClient
    ActiveCard = CardListaDono
    Caption = 'CardPanel1'
    TabOrder = 0
    object CardLista: TCard
      Left = 1
      Top = 1
      Width = 805
      Height = 398
      Caption = 'CardLista'
      CardIndex = 0
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 805
        Height = 65
        Align = alTop
        Caption = 'Relacionamentos'
        TabOrder = 0
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 65
        Width = 805
        Height = 286
        Align = alClient
        DataSource = dsRelacionamento
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Width = 357
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CAO'
            Width = 228
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RACA'
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = False
          end>
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 354
        Width = 799
        Height = 41
        Align = alBottom
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 2
        object Button1: TButton
          Left = 718
          Top = 6
          Width = 75
          Height = 29
          Align = alRight
          Caption = 'Excluir'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 643
          Top = 6
          Width = 75
          Height = 29
          Align = alRight
          Caption = 'Novo'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
    object CardLanca: TCard
      Left = 1
      Top = 1
      Width = 805
      Height = 398
      Caption = 'CardLanca'
      CardIndex = 1
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 805
        Height = 113
        Align = alTop
        Caption = 'Pessoa'
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 103
          Top = 50
          Width = 23
          Height = 22
          OnClick = SpeedButton1Click
        end
        object edtCodigo: TLabeledEdit
          Left = 16
          Top = 48
          Width = 81
          Height = 28
          EditLabel.Width = 71
          EditLabel.Height = 20
          EditLabel.Caption = 'edtCodigo'
          Enabled = False
          TabOrder = 0
        end
        object edtNome: TLabeledEdit
          Left = 132
          Top = 48
          Width = 493
          Height = 28
          EditLabel.Width = 41
          EditLabel.Height = 20
          EditLabel.Caption = 'Nome'
          Enabled = False
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 113
        Width = 805
        Height = 105
        Align = alTop
        Caption = 'Pessoa'
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          Left = 103
          Top = 50
          Width = 23
          Height = 22
          OnClick = SpeedButton2Click
        end
        object edtCodigoCaes: TLabeledEdit
          Left = 16
          Top = 48
          Width = 81
          Height = 28
          EditLabel.Width = 49
          EditLabel.Height = 20
          EditLabel.Caption = 'Codigo'
          Enabled = False
          TabOrder = 0
        end
        object edtNomeCaes: TLabeledEdit
          Left = 132
          Top = 48
          Width = 293
          Height = 28
          EditLabel.Width = 76
          EditLabel.Height = 20
          EditLabel.Caption = 'Nome Caes'
          Enabled = False
          TabOrder = 1
        end
        object edtRaca: TLabeledEdit
          Left = 431
          Top = 48
          Width = 293
          Height = 28
          EditLabel.Width = 32
          EditLabel.Height = 20
          EditLabel.Caption = 'Raca'
          Enabled = False
          TabOrder = 2
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 349
        Width = 799
        Height = 46
        Align = alBottom
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 2
        object btnSalva: TButton
          Left = 637
          Top = 6
          Width = 81
          Height = 34
          Align = alRight
          Caption = 'Salva'
          TabOrder = 0
          OnClick = btnSalvaClick
        end
        object btnCancelar: TButton
          Left = 718
          Top = 6
          Width = 75
          Height = 34
          Align = alRight
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btnCancelarClick
        end
      end
    end
    object CardListaDono: TCard
      Left = 1
      Top = 1
      Width = 805
      Height = 398
      Caption = 'CardListaDono'
      CardIndex = 2
      TabOrder = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 805
        Height = 49
        Align = alTop
        Caption = 'Lista de Pessoa'
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 49
        Width = 805
        Height = 302
        Align = alClient
        DataSource = DmDados.dsListadono
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
      end
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 354
        Width = 799
        Height = 41
        Align = alBottom
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 2
        object btn_dono: TButton
          Left = 696
          Top = 6
          Width = 97
          Height = 29
          Align = alRight
          Caption = 'Cancelar'
          TabOrder = 0
          OnClick = btn_donoClick
        end
      end
    end
    object CardlistaCaes: TCard
      Left = 1
      Top = 1
      Width = 805
      Height = 398
      Caption = 'CardlistaCaes'
      CardIndex = 3
      TabOrder = 3
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 805
        Height = 49
        Align = alTop
        Caption = 'Lista de Caes'
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 49
        Width = 805
        Height = 302
        Align = alClient
        DataSource = DmDados.dsListaCaes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 354
        Width = 799
        Height = 41
        Align = alBottom
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 2
        object btn_caes: TButton
          Left = 696
          Top = 6
          Width = 97
          Height = 29
          Align = alRight
          Caption = 'Cancelar'
          TabOrder = 0
          OnClick = btn_caesClick
        end
      end
    end
  end
  object dsRelacionamento: TDataSource
    DataSet = DmDados.FDRelacionamento
    Left = 681
    Top = 17
  end
end
