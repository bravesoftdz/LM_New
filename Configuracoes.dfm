object fmConfiguracoes: TfmConfiguracoes
  Left = 0
  Top = 0
  Caption = 'Configura'#231#245'es'
  ClientHeight = 420
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 224
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 643
    Height = 360
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Gerais'
      object Label2: TLabel
        Left = 39
        Top = 27
        Width = 191
        Height = 13
        Caption = 'C'#243'digo Cliente/Fornecedor da empresa:'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 360
    Width = 643
    Height = 60
    Align = alBottom
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 208
      Top = 6
      Width = 105
      Height = 43
      Caption = 'OK'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 319
      Top = 6
      Width = 105
      Height = 43
      Caption = 'Cancelar'
      OnClick = SpeedButton2Click
    end
  end
  object Edit1: TEdit
    Left = 240
    Top = 48
    Width = 103
    Height = 21
    TabOrder = 2
  end
  object IB_Query1: TIB_Query
    IB_Connection = DMDados.Conexao
    IB_Transaction = IB_Transaction1
    SQL.Strings = (
      'select * from configuracoes'
      'where codigo = :codigo')
    DeleteSQL.Strings = (
      'DELETE FROM CONFIGURACOES CONFIGURACOES'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE CONFIGURACOES CONFIGURACOES SET'
      '   CONFIGURACOES.CODIGO = :CODIGO, /*PK*/'
      '   CONFIGURACOES.EMPRESA_PADRAO = :EMPRESA_PADRAO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO CONFIGURACOES('
      '   CODIGO, /*PK*/'
      '   EMPRESA_PADRAO)'
      'VALUES ('
      '   :CODIGO,'
      '   :EMPRESA_PADRAO)')
    KeyLinks.Strings = (
      'CONFIGURACOES.RDB$DB_KEY')
    KeyLinksAutoDefine = False
    FetchWholeRows = False
    Left = 576
    Top = 96
    ParamValues = (
      'CODIGO='#39'0'#39)
  end
  object IB_DataSource1: TIB_DataSource
    Dataset = IB_Query1
    Left = 576
    Top = 136
  end
  object IB_Transaction1: TIB_Transaction
    IB_Connection = DMDados.Conexao
    Isolation = tiCommitted
    Left = 576
    Top = 56
  end
end
