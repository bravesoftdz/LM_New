inherited fmRequisicaoEditor: TfmRequisicaoEditor
  Caption = 'Requisi'#231#245'es'
  ClientHeight = 195
  ClientWidth = 573
  OnCreate = FormCreate
  ExplicitWidth = 579
  ExplicitHeight = 224
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 542
    Top = 99
    Width = 23
    Height = 21
    Caption = '>>'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton [1]
    Left = 542
    Top = 126
    Width = 23
    Height = 21
    Caption = '>>'
    OnClick = SpeedButton2Click
  end
  object IB_Date2: TIB_Date [2]
    Left = 424
    Top = 72
    Width = 112
    Height = 21
    AutoLabel.Caption = 'Previs'#227'o:'
    AutoLabel.Kind = albLeft
    DataField = 'DATA_PREVISTA'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 3
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object IB_LookupCombo1: TIB_LookupCombo [3]
    Left = 151
    Top = 99
    Width = 385
    Height = 21
    DataSource = SourceProduto
    ParentBackground = False
    TabOrder = 5
    DisplayField = 'descricao'
    ShowButton = True
  end
  object IB_Edit6: TIB_Edit [4]
    Left = 431
    Top = 153
    Width = 105
    Height = 21
    AutoLabel.Caption = 'Vlr. Total:'
    AutoLabel.Kind = albLeft
    DataField = 'VALOR_TOTAL'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 10
  end
  object IB_Edit5: TIB_Edit [5]
    Left = 248
    Top = 153
    Width = 105
    Height = 21
    AutoLabel.Caption = 'Vlr. Unit'#225'rio:'
    AutoLabel.Kind = albLeft
    DataField = 'VALOR_UNITARIO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 9
  end
  object IB_Edit4: TIB_Edit [6]
    Left = 64
    Top = 153
    Width = 105
    Height = 21
    AutoLabel.Caption = 'Quantidade:'
    AutoLabel.Kind = albLeft
    DataField = 'QUANTIDADE'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 8
  end
  object IB_LookupCombo3: TIB_LookupCombo [7]
    Left = 151
    Top = 126
    Width = 385
    Height = 21
    DataSource = SourceFornecedor
    ParentBackground = False
    TabOrder = 7
    DisplayField = 'RAZAO'
    ShowButton = True
  end
  object IB_Date1: TIB_Date [8]
    Left = 248
    Top = 72
    Width = 110
    Height = 21
    AutoLabel.Caption = 'Data Requisi'#231#227'o:'
    AutoLabel.Kind = albLeft
    DataField = '"DATA"'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object IB_Edit3: TIB_Edit [9]
    Left = 64
    Top = 126
    Width = 81
    Height = 21
    AutoLabel.Caption = 'Fornecedor:'
    AutoLabel.Kind = albLeft
    DataField = 'FORNECEDOR'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 6
  end
  object IB_Edit2: TIB_Edit [10]
    Left = 64
    Top = 99
    Width = 81
    Height = 21
    AutoLabel.Caption = 'Produto:'
    AutoLabel.Kind = albLeft
    DataField = 'PRODUTO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 4
  end
  object IB_Edit1: TIB_Edit [11]
    Left = 64
    Top = 72
    Width = 81
    Height = 21
    AutoLabel.Caption = 'C'#243'digo:'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 1
  end
  inherited pnlControles: TPanel
    Width = 573
    ExplicitWidth = 573
    inherited pnlBotao: TPanel
      Left = 133
      ExplicitLeft = 133
    end
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from requisicao'
      'where codigo = :codigo')
    DeleteSQL.Strings = (
      'DELETE FROM REQUISICAO REQUISICAO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE REQUISICAO REQUISICAO SET'
      '   REQUISICAO.CODIGO = :CODIGO, /*PK*/'
      '   REQUISICAO."DATA" = :"DATA",'
      '   REQUISICAO.PRODUTO = :PRODUTO,'
      '   REQUISICAO.QUANTIDADE = :QUANTIDADE,'
      '   REQUISICAO.FORNECEDOR = :FORNECEDOR,'
      '   REQUISICAO.VALOR_UNITARIO = :VALOR_UNITARIO,'
      '   REQUISICAO.VALOR_TOTAL = :VALOR_TOTAL,'
      '   REQUISICAO.DATA_PREVISTA = :DATA_PREVISTA'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO REQUISICAO('
      '   CODIGO, /*PK*/'
      '   "DATA",'
      '   PRODUTO,'
      '   QUANTIDADE,'
      '   FORNECEDOR,'
      '   VALOR_UNITARIO,'
      '   VALOR_TOTAL,'
      '   DATA_PREVISTA)'
      'VALUES ('
      '   :CODIGO,'
      '   :"DATA",'
      '   :PRODUTO,'
      '   :QUANTIDADE,'
      '   :FORNECEDOR,'
      '   :VALOR_UNITARIO,'
      '   :VALOR_TOTAL,'
      '   :DATA_PREVISTA)')
    Left = 40
    Top = 184
    ParamValues = (
      'CODIGO='#39'0'#39)
  end
  inherited IB_DataSource1: TIB_DataSource
    OnDataChange = IB_DataSource1DataChange
    Left = 224
    Top = 184
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 128
    Top = 184
  end
  object Produto: TIB_Query
    SQL.Strings = (
      'select codigo,'
      '       descricao'
      'from produtos'
      'order by descricao')
    KeyLinks.Strings = (
      'codigo = produto')
    KeySource = IB_DataSource1
    OrderingItemNo = 1
    OrderingItems.Strings = (
      'DESCRICAO=DESCRICAO;DESCRICAO DESC')
    OrderingLinks.Strings = (
      'DESCRICAO=ITEM=1')
    Left = 272
    Top = 272
  end
  object SourceProduto: TIB_DataSource
    Dataset = Produto
    Left = 344
    Top = 272
  end
  object SourceFornecedor: TIB_DataSource
    Dataset = Fornecedor
    Left = 344
    Top = 224
  end
  object Fornecedor: TIB_Query
    SQL.Strings = (
      'select codigo'
      '     , razao'
      'from clifor')
    KeyLinks.Strings = (
      'codigo = fornecedor')
    KeySource = IB_DataSource1
    OrderingItemNo = 2
    OrderingItems.Strings = (
      'CODIGO=CODIGO;CODIGO DESC'
      'RAZAO=RAZAO;RAZAO DESC')
    OrderingLinks.Strings = (
      'CODIGO=ITEM=1'
      'RAZAO=ITEM=2')
    Left = 272
    Top = 224
  end
end
