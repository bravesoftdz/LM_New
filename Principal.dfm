object fmPrincipal: TfmPrincipal
  Left = 0
  Top = 0
  Caption = 'fmPrincipal'
  ClientHeight = 491
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 368
    Top = 248
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object ClienteseFornecedores1: TMenuItem
        Caption = 'Clientes e Fornecedores'
        OnClick = ClienteseFornecedores1Click
      end
    end
  end
end
