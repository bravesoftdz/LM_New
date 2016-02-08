object Quitacao: TQuitacao
  Left = 541
  Top = 281
  Caption = 'Quita'#231#227'o'
  ClientHeight = 191
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 73
    Height = 13
    Caption = 'Data Quita'#231#227'o:'
  end
  object Label2: TLabel
    Left = 51
    Top = 46
    Width = 30
    Height = 13
    Caption = 'Juros:'
  end
  object Label3: TLabel
    Left = 206
    Top = 46
    Width = 30
    Height = 13
    Caption = 'Multa:'
  end
  object Label4: TLabel
    Left = 32
    Top = 73
    Width = 49
    Height = 13
    Caption = 'Desconto:'
  end
  object Label5: TLabel
    Left = 20
    Top = 116
    Width = 83
    Height = 13
    Caption = 'Valor Pag/Rec:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 74
    Top = 150
    Width = 81
    Height = 33
    Caption = 'Ok'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 170
    Top = 150
    Width = 81
    Height = 33
    Caption = 'Cancelar'
    OnClick = SpeedButton2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 85
    Top = 16
    Width = 105
    Height = 21
    Date = 42408.577967500000000000
    Time = 42408.577967500000000000
    TabOrder = 0
  end
  object edtJuros: TEdit
    Left = 85
    Top = 43
    Width = 81
    Height = 21
    TabOrder = 1
    Text = '0'
    OnChange = edtJurosChange
  end
  object edtMulta: TEdit
    Left = 236
    Top = 43
    Width = 81
    Height = 21
    TabOrder = 2
    Text = '0'
    OnChange = edtMultaChange
  end
  object edtDesconto: TEdit
    Left = 85
    Top = 70
    Width = 81
    Height = 21
    TabOrder = 3
    Text = '0'
    OnChange = edtDescontoChange
  end
  object edtTotal: TEdit
    Left = 109
    Top = 113
    Width = 142
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object Qry: TIB_Query
    Left = 280
    Top = 128
  end
end
