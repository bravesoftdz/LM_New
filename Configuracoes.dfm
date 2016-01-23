object fmConfiguracoes: TfmConfiguracoes
  Left = 0
  Top = 0
  Caption = 'Configuracoes do Sistema'
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
      object IB_Empresa_Padrao: TIB_Edit
        Left = 107
        Top = 16
        Width = 65
        Height = 21
        Hint = 
          'Define qual empresa cadastrada nos clientes fornecedores que ger' +
          #234'ncia o sistema!'
        AutoLabel.Caption = 'Empresa Padr'#227'o:'
        AutoLabel.Kind = albLeft
        DataField = 'EMPRESA_PADRAO'
        DataSource = IB_DataSource1
        ParentShowHint = False
        ShowHint = True
        ParentBackground = False
        TabOrder = 0
      end
      object IB_LookupCombo1: TIB_LookupCombo
        Left = 178
        Top = 16
        Width = 346
        Height = 21
        DataSource = SourceClientes
        ParentBackground = False
        TabOrder = 1
        DisplayField = 'RAZAO'
        ShowButton = True
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
  object Clientes: TIB_Query
    IB_Connection = DMDados.Conexao
    SQL.Strings = (
      'select codigo, razao from clifor')
    KeyLinks.Strings = (
      'codigo=empresa_padrao')
    KeySource = IB_DataSource1
    Left = 516
    Top = 240
  end
  object SourceClientes: TIB_DataSource
    Dataset = Clientes
    Left = 516
    Top = 288
  end
end
