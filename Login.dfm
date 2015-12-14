object fmLogin: TfmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 149
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnEntrar: TSpeedButton
    Left = 17
    Top = 88
    Width = 89
    Height = 41
    Caption = '&Entrar'
  end
  object btnFechar: TSpeedButton
    Left = 112
    Top = 88
    Width = 89
    Height = 41
    Caption = '&Fechar'
  end
  object IB_LookupCombo1: TIB_LookupCombo
    Left = 56
    Top = 8
    Width = 121
    Height = 21
    AutoLabel.Caption = 'Usu'#225'rio:'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 0
    ShowButton = True
  end
  object Edit1: TEdit
    Left = 56
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Usuarios: TIB_Query
    IB_Connection = DMDados.Conexao
    Left = 272
    Top = 24
  end
  object srcUsuarios: TIB_DataSource
    Dataset = Usuarios
    Left = 296
    Top = 88
  end
end
