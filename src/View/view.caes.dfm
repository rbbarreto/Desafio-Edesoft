object frmCaes: TfrmCaes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Caes'
  ClientHeight = 219
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CardPanel1: TCardPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 219
    Align = alClient
    ActiveCard = CardLista
    Caption = 'CardPanel1'
    TabOrder = 0
    object CardLista: TCard
      Left = 1
      Top = 1
      Width = 694
      Height = 217
      Caption = 'Lista'
      CardIndex = 0
      TabOrder = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 694
        Height = 57
        Align = alTop
        Caption = 'Lista de C'#227'es'
        TabOrder = 0
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 175
        Width = 688
        Height = 39
        Align = alBottom
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object btnNovo: TButton
          Left = 457
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnAlterar: TButton
          Left = 532
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarClick
        end
        object btnExcluir: TButton
          Left = 607
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 57
        Width = 694
        Height = 115
        Align = alClient
        DataSource = dsCaes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object CardCadastro: TCard
      Left = 1
      Top = 1
      Width = 694
      Height = 217
      Caption = 'Cadastro'
      CardIndex = 1
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitHeight = 293
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 175
        Width = 688
        Height = 39
        Align = alBottom
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        ExplicitTop = 294
        object btnSalvar: TButton
          Left = 532
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Salvar'
          TabOrder = 0
          OnClick = btnSalvarClick
        end
        object btnCancelar: TButton
          Left = 607
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btnCancelarClick
        end
      end
      object edtNome: TLabeledEdit
        Left = 136
        Top = 48
        Width = 241
        Height = 28
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 1
      end
      object edtRaca: TLabeledEdit
        Left = 399
        Top = 48
        Width = 201
        Height = 28
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 2
      end
      object edtCodigo: TLabeledEdit
        Left = 16
        Top = 48
        Width = 114
        Height = 28
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        TabOrder = 3
      end
    end
  end
  object dsCaes: TDataSource
    DataSet = DmDados.FDCaes
    Left = 625
    Top = 25
  end
end
