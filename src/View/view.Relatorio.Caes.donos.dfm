object frmFiltrar: TfrmFiltrar
  Left = 0
  Top = 0
  Caption = 'Filtrar'
  ClientHeight = 598
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 598
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 432
    ExplicitTop = 288
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 695
      Height = 80
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 668
      object edtBuca: TLabeledEdit
        Left = 40
        Top = 29
        Width = 369
        Height = 29
        EditLabel.Width = 33
        EditLabel.Height = 21
        EditLabel.Caption = 'Ra'#231'a'
        TabOrder = 0
        TextHint = 'Buscar por Ra'#231'a'
        OnChange = edtBucaChange
      end
      object btnRel: TButton
        Left = 448
        Top = 19
        Width = 121
        Height = 43
        Caption = 'Relatorio'
        TabOrder = 1
        OnClick = btnRelClick
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 81
      Width = 695
      Height = 516
      Align = alClient
      DataSource = DmDados.dsRel
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
