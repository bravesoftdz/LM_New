object fmLogin: TfmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 149
  ClientWidth = 215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnEntrar: TSpeedButton
    Left = 17
    Top = 88
    Width = 89
    Height = 41
    Caption = '&Entrar'
    OnClick = btnEntrarClick
  end
  object btnFechar: TSpeedButton
    Left = 112
    Top = 88
    Width = 89
    Height = 41
    Caption = '&Fechar'
    OnClick = btnFecharClick
  end
  object Label1: TLabel
    Left = 19
    Top = 51
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Label2: TLabel
    Left = 13
    Top = 11
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object IB_LookupCombo1: TIB_LookupCombo
    Left = 56
    Top = 8
    Width = 121
    Height = 21
    AutoLabel.Caption = 'Usu'#225'rio:'
    DataSource = srcUsuarios
    ParentBackground = False
    TabOrder = 0
    DisplayField = 'USUARIO'
    ShowButton = True
  end
  object Edit1: TEdit
    Left = 56
    Top = 48
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = Edit1KeyDown
  end
  object Usuarios: TIB_Query
    FieldsCharCase.Strings = (
      'USUARIO=UPPER')
    FieldsVisible.Strings = (
      'SENHA=FALSE'
      'DB_KEY=FALSE'
      'CODIGO=FALSE')
    IB_Connection = DMDados.Conexao
    SQL.Strings = (
      'select nome usuario'
      ', senha'
      ', codigo'
      'from usuarios'
      'where ativo = 1'
      '')
    OrderingItemNo = 1
    OrderingItems.Strings = (
      'USUARIO=USUARIO;USUARIO DESC')
    OrderingLinks.Strings = (
      'USUARIO=ITEM=1')
    Left = 192
    Top = 8
  end
  object srcUsuarios: TIB_DataSource
    Dataset = Usuarios
    Left = 240
    Top = 8
  end
end
