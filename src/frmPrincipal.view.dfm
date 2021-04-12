object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Dog and peoples'
  ClientHeight = 381
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 20
  object Button1: TButton
    Left = 40
    Top = 41
    Width = 289
    Height = 65
    Caption = 'Cadastro de donos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 112
    Width = 289
    Height = 65
    Caption = 'Cadastro de C'#227'es'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 192
    Width = 289
    Height = 65
    Caption = 'Relacionamento de C'#227'es e donos'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 40
    Top = 271
    Width = 289
    Height = 65
    Caption = ' Filtrar por ra'#231'a de c'#227'o associada'
    TabOrder = 3
    OnClick = Button4Click
  end
end
