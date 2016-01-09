inherited fmProdutosEditor: TfmProdutosEditor
  Caption = 'Produtos'
  ClientHeight = 238
  ClientWidth = 426
  OnCreate = FormCreate
  ExplicitWidth = 442
  ExplicitHeight = 277
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 386
    Top = 161
    Width = 23
    Height = 22
    Caption = '>>'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton [1]
    Left = 386
    Top = 189
    Width = 23
    Height = 22
    Caption = '>>'
    OnClick = SpeedButton2Click
  end
  object IB_Edit5: TIB_Edit [2]
    Left = 64
    Top = 161
    Width = 81
    Height = 21
    AutoLabel.Caption = 'Marca:'
    AutoLabel.Kind = albLeft
    DataField = 'MARCA'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 5
  end
  object IB_Edit7: TIB_Edit [3]
    Left = 64
    Top = 188
    Width = 81
    Height = 21
    AutoLabel.Caption = 'Marca:'
    AutoLabel.Kind = albLeft
    DataField = 'TIPO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 8
  end
  object IB_LookupCombo3: TIB_LookupCombo [4]
    Left = 151
    Top = 189
    Width = 234
    Height = 21
    DataSource = SourceTipo
    ParentBackground = False
    TabOrder = 9
    DisplayField = 'TIPO_PRODUTO'
    ShowButton = True
  end
  object IB_Edit6: TIB_Edit [5]
    Left = 240
    Top = 80
    Width = 145
    Height = 21
    AutoLabel.Caption = 'Cor:'
    AutoLabel.Kind = albLeft
    DataField = 'COR'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 7
  end
  object IB_LookupCombo1: TIB_LookupCombo [6]
    Left = 151
    Top = 161
    Width = 234
    Height = 21
    DataSource = SourceMarcas
    ParentBackground = False
    TabOrder = 6
    DisplayField = 'MARCA'
    ShowButton = True
  end
  object IB_Edit4: TIB_Edit [7]
    Left = 272
    Top = 134
    Width = 113
    Height = 21
    AutoLabel.Caption = 'Tamanho:'
    AutoLabel.Kind = albLeft
    DataField = 'TAMANHO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 4
  end
  object IB_Edit3: TIB_Edit [8]
    Left = 64
    Top = 134
    Width = 113
    Height = 21
    AutoLabel.Caption = 'Valor:'
    AutoLabel.Kind = albLeft
    DataField = 'VALOR'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 3
  end
  object IB_Edit2: TIB_Edit [9]
    Left = 64
    Top = 107
    Width = 321
    Height = 21
    AutoLabel.Caption = 'Descri'#231#227'o:'
    AutoLabel.Kind = albLeft
    DataField = 'DESCRICAO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
  end
  object IB_Edit1: TIB_Edit [10]
    Left = 64
    Top = 80
    Width = 81
    Height = 21
    AutoLabel.Caption = 'C'#243'digo:'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    ReadOnly = True
    TabOrder = 1
  end
  inherited pnlControls: TPanel
    Width = 426
    ExplicitWidth = 426
    inherited btnConcluir: TSpeedButton
      Left = 91
      ExplicitLeft = 91
    end
    inherited btnFechar: TSpeedButton
      Left = 218
      ExplicitLeft = 218
    end
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from produtos '
      'where codigo = :codigo')
    DeleteSQL.Strings = (
      'DELETE FROM PRODUTOS PRODUTOS'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE PRODUTOS PRODUTOS SET'
      '   PRODUTOS.CODIGO = :CODIGO, /*PK*/'
      '   PRODUTOS.DESCRICAO = :DESCRICAO,'
      '   PRODUTOS.VALOR = :VALOR,'
      '   PRODUTOS.TAMANHO = :TAMANHO,'
      '   PRODUTOS.MARCA = :MARCA,'
      '   PRODUTOS.GRUPO = :GRUPO,'
      '   PRODUTOS.COR = :COR,'
      '   PRODUTOS.TIPO = :TIPO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO PRODUTOS('
      '   CODIGO, /*PK*/'
      '   DESCRICAO,'
      '   VALOR,'
      '   TAMANHO,'
      '   MARCA,'
      '   GRUPO,'
      '   COR,'
      '   TIPO)'
      'VALUES ('
      '   :CODIGO,'
      '   :DESCRICAO,'
      '   :VALOR,'
      '   :TAMANHO,'
      '   :MARCA,'
      '   :GRUPO,'
      '   :COR,'
      '   :TIPO)')
    Left = 40
    Top = 240
    ParamValues = (
      'CODIGO=00000000')
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 104
    Top = 240
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 184
    Top = 240
  end
  object Marca: TIB_Query
    SQL.Strings = (
      'select codigo, marca from marcas')
    KeyLinks.Strings = (
      'codigo = marca')
    KeySource = IB_DataSource1
    Left = 248
    Top = 224
  end
  object SourceMarcas: TIB_DataSource
    Dataset = Marca
    Left = 304
    Top = 224
  end
  object Tipo: TIB_Query
    SQL.Strings = (
      'select * from tipo_produto')
    KeyLinks.Strings = (
      'codigo = tipo')
    KeySource = IB_DataSource1
    Left = 248
    Top = 272
  end
  object SourceTipo: TIB_DataSource
    Dataset = Tipo
    Left = 304
    Top = 272
  end
end
