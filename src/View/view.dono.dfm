object frmDono: TfrmDono
  Left = 0
  Top = 0
  Caption = 'Cadastro de Dono'
  ClientHeight = 346
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object CardPanel1: TCardPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 346
    Align = alClient
    ActiveCard = CardLista
    Caption = 'CardPanel1'
    TabOrder = 0
    ExplicitWidth = 649
    ExplicitHeight = 256
    object CardLista: TCard
      Left = 1
      Top = 1
      Width = 690
      Height = 344
      Caption = 'Lista'
      CardIndex = 0
      TabOrder = 0
      ExplicitHeight = 260
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 690
        Height = 73
        Align = alTop
        Caption = 'Lista de donos'
        TabOrder = 0
        ExplicitWidth = 647
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 302
        Width = 684
        Height = 39
        Align = alBottom
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        ExplicitTop = 212
        ExplicitWidth = 641
        object btnNovo: TButton
          Left = 453
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
          ExplicitLeft = 410
        end
        object btnAlterar: TButton
          Left = 528
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarClick
          ExplicitLeft = 485
        end
        object btnExcluir: TButton
          Left = 603
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
          ExplicitLeft = 560
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 73
        Width = 690
        Height = 226
        Align = alClient
        DataSource = dsDono
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object CardCadastro: TCard
      Left = 1
      Top = 1
      Width = 690
      Height = 344
      Caption = 'Cadastro'
      CardIndex = 1
      TabOrder = 1
      ExplicitWidth = 647
      ExplicitHeight = 254
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 302
        Width = 684
        Height = 39
        Align = alBottom
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        ExplicitTop = 212
        ExplicitWidth = 641
        object btnSalvar: TButton
          Left = 528
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Salvar'
          TabOrder = 0
          OnClick = btnSalvarClick
          ExplicitLeft = 485
        end
        object btnCancelar: TButton
          Left = 603
          Top = 6
          Width = 75
          Height = 27
          Align = alRight
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btnCancelarClick
          ExplicitLeft = 560
        end
      end
      object edtCodigo: TLabeledEdit
        Left = 24
        Top = 56
        Width = 89
        Height = 28
        EditLabel.Width = 49
        EditLabel.Height = 20
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        TabOrder = 1
      end
      object edtNome: TLabeledEdit
        Left = 136
        Top = 56
        Width = 385
        Height = 28
        EditLabel.Width = 41
        EditLabel.Height = 20
        EditLabel.Caption = 'Nome'
        TabOrder = 2
      end
    end
  end
  object dsDono: TDataSource
    DataSet = DmDados.FDdono
    Left = 601
    Top = 17
  end
end
