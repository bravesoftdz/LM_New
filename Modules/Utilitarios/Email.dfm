object fmemail: Tfmemail
  Left = 0
  Top = 0
  Caption = 'fmemail'
  ClientHeight = 493
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbpDestinatarios: TGroupBox
    Left = 8
    Top = 8
    Width = 553
    Height = 161
    Caption = 'Destinat'#225'rios'
    TabOrder = 0
    object lblPara: TLabel
      Left = 16
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Para:'
    end
    object lblCC: TLabel
      Left = 16
      Top = 62
      Width = 80
      Height = 13
      Caption = 'Com C'#243'pia (CC):'
    end
    object lblCCO: TLabel
      Left = 16
      Top = 108
      Width = 122
      Height = 13
      Caption = 'Com C'#243'pia Oculta (CCO):'
    end
    object edtPara: TEdit
      Left = 16
      Top = 35
      Width = 505
      Height = 21
      TabOrder = 0
      Text = 'edtPara'
    end
    object edtCC: TEdit
      Left = 16
      Top = 81
      Width = 505
      Height = 21
      TabOrder = 1
      Text = 'edtCC'
    end
    object edtCCO: TEdit
      Left = 16
      Top = 127
      Width = 505
      Height = 21
      TabOrder = 2
      Text = 'edtCCO'
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 175
    Width = 553
    Height = 314
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Assunto:'
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 60
      Height = 13
      Caption = 'Menssagem:'
    end
    object Label3: TLabel
      Left = 19
      Top = 189
      Width = 40
      Height = 13
      Caption = 'Anexos:'
    end
    object btnAnexo: TSpeedButton
      Left = 463
      Top = 205
      Width = 87
      Height = 44
      BiDiMode = bdRightToLeftReadingOnly
      Caption = 'Adicionar'
      ParentBiDiMode = False
      OnClick = btnAnexoClick
    end
    object btnRemover: TSpeedButton
      Left = 463
      Top = 255
      Width = 87
      Height = 44
      BiDiMode = bdRightToLeftReadingOnly
      Caption = 'Remover'
      ParentBiDiMode = False
      OnClick = btnRemoverClick
    end
    object edtAssunto: TEdit
      Left = 65
      Top = 13
      Width = 456
      Height = 21
      TabOrder = 0
      Text = 'edtAssunto'
    end
    object mmoMsg: TMemo
      Left = 16
      Top = 64
      Width = 529
      Height = 113
      TabOrder = 1
    end
    object ListAnexos: TListBox
      Left = 16
      Top = 205
      Width = 441
      Height = 97
      ItemHeight = 13
      TabOrder = 2
      OnKeyDown = ListAnexosKeyDown
    end
  end
  object Panel1: TPanel
    Left = 563
    Top = 0
    Width = 167
    Height = 493
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    object btnEnviar: TSpeedButton
      Left = 7
      Top = 14
      Width = 153
      Height = 53
      Caption = '&Enviar'
      OnClick = btnEnviarClick
    end
    object btnConfigurar: TSpeedButton
      Left = 7
      Top = 73
      Width = 153
      Height = 53
      Caption = '&Configurar'
    end
    object btnFechar: TSpeedButton
      Left = 7
      Top = 192
      Width = 153
      Height = 53
      Caption = '&Fechar'
      OnClick = btnFecharClick
    end
    object btnContatos: TSpeedButton
      Left = 7
      Top = 132
      Width = 153
      Height = 53
      Caption = 'Con&tatos'
    end
    object pg1: TGauge
      Left = 4
      Top = 465
      Width = 157
      Height = 24
      Progress = 0
    end
  end
  object IdSMTP1: TIdSMTP
    OnDisconnected = IdSMTP1Disconnected
    OnConnected = IdSMTP1Connected
    SASLMechanisms = <>
    Left = 56
    Top = 400
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 120
    Top = 400
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 184
    Top = 400
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 320
    Top = 400
  end
  object OpenDialog1: TOpenDialog
    Left = 56
    Top = 296
  end
end
