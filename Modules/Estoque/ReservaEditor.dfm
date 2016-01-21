inherited fmReservaEditor: TfmReservaEditor
  Caption = 'Reserva'
  ClientHeight = 250
  ClientWidth = 580
  OnCreate = FormCreate
  ExplicitWidth = 586
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 543
    Top = 99
    Width = 23
    Height = 21
    Caption = '>>'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton [1]
    Left = 543
    Top = 126
    Width = 23
    Height = 21
    Caption = '>>'
    OnClick = SpeedButton2Click
  end
  object IB_Edit2: TIB_Edit [2]
    Left = 72
    Top = 99
    Width = 89
    Height = 21
    AutoLabel.Caption = 'Cliente:'
    AutoLabel.Kind = albLeft
    DataField = 'CLIENTE'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 5
  end
  object IB_Edit3: TIB_Edit [3]
    Left = 72
    Top = 126
    Width = 89
    Height = 21
    AutoLabel.Caption = 'Produto:'
    AutoLabel.Kind = albLeft
    DataField = 'PRODUTO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 7
  end
  object IB_Memo1: TIB_Memo [4]
    Left = 73
    Top = 180
    Width = 464
    Height = 49
    AutoLabel.Caption = 'Observa'#231#227'o:'
    AutoLabel.Kind = albLeft
    DataField = 'OBSERVACAO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 12
    AutoSize = False
  end
  object IB_CheckBox1: TIB_CheckBox [5]
    Left = 183
    Top = 73
    Width = 73
    Height = 17
    DataField = 'CANCELADO'
    DataSource = IB_DataSource1
    BorderStyle = bsNone
    ParentBackground = False
    TabOrder = 2
    Caption = 'Cancelado'
  end
  object IB_Edit7: TIB_Edit [6]
    Left = 448
    Top = 153
    Width = 89
    Height = 21
    AutoLabel.Caption = 'Valor Total:'
    AutoLabel.Kind = albLeft
    DataField = 'VALOR_TOTAL'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 11
  end
  object IB_Edit6: TIB_Edit [7]
    Left = 264
    Top = 153
    Width = 82
    Height = 21
    AutoLabel.Caption = 'Valor Unit'#225'rio:'
    AutoLabel.Kind = albLeft
    DataField = 'VALOR_UNITARIO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 10
  end
  object IB_Edit5: TIB_Edit [8]
    Left = 72
    Top = 153
    Width = 89
    Height = 21
    AutoLabel.Caption = 'Quantidade:'
    AutoLabel.Kind = albLeft
    DataField = 'QUANTIDADE'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 9
  end
  object IB_Edit4: TIB_Edit [9]
    Left = 448
    Top = 72
    Width = 89
    Height = 21
    AutoLabel.Caption = 'Hora:'
    AutoLabel.Kind = albLeft
    DataField = 'HORA'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 4
  end
  object IB_Date1: TIB_Date [10]
    Left = 302
    Top = 72
    Width = 103
    Height = 21
    AutoLabel.Caption = 'Data:'
    AutoLabel.Kind = albLeft
    DataField = '"DATA"'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 3
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object IB_LookupCombo4: TIB_LookupCombo [11]
    Left = 167
    Top = 126
    Width = 370
    Height = 21
    DataSource = SourceProdutos
    ParentBackground = False
    TabOrder = 8
    DisplayField = 'DESCRICAO'
    ShowButton = True
  end
  object IB_LookupCombo1: TIB_LookupCombo [12]
    Left = 167
    Top = 99
    Width = 370
    Height = 21
    DataSource = SourceClientes
    ParentBackground = False
    TabOrder = 6
    DisplayField = 'RAZAO'
    ShowButton = True
  end
  object IB_Edit1: TIB_Edit [13]
    Left = 72
    Top = 72
    Width = 89
    Height = 21
    AutoLabel.Caption = 'C'#243'digo:'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    ReadOnly = True
    TabOrder = 1
  end
  inherited pnlControles: TPanel
    Width = 580
    ExplicitWidth = 580
    inherited pnlBotao: TPanel
      Left = 140
      ExplicitLeft = 140
    end
  end
  inherited IB_Query1: TIB_Query
    ColumnAttributes.Strings = (
      'CANCELADO=BOOLEAN='#39'1,0'#39)
    FieldsEditMask.Strings = (
      'HORA=00:00')
    SQL.Strings = (
      'select * from reserva '
      'where codigo = :codigo')
    DefaultValues.Strings = (
      'CANCELADO=0')
    DeleteSQL.Strings = (
      'DELETE FROM RESERVA RESERVA'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE RESERVA RESERVA SET'
      '   RESERVA.CODIGO = :CODIGO, /*PK*/'
      '   RESERVA.PRODUTO = :PRODUTO,'
      '   RESERVA.CLIENTE = :CLIENTE,'
      '   RESERVA.CANCELADO = :CANCELADO,'
      '   RESERVA."DATA" = :"DATA",'
      '   RESERVA.HORA = :HORA,'
      '   RESERVA.QUANTIDADE = :QUANTIDADE,'
      '   RESERVA.OBSERVACAO = :OBSERVACAO,'
      '   RESERVA.VALOR_UNITARIO = :VALOR_UNITARIO,'
      '   RESERVA.VALOR_TOTAL = :VALOR_TOTAL'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO RESERVA('
      '   CODIGO, /*PK*/'
      '   PRODUTO,'
      '   CLIENTE,'
      '   CANCELADO,'
      '   "DATA",'
      '   HORA,'
      '   QUANTIDADE,'
      '   OBSERVACAO,'
      '   VALOR_UNITARIO,'
      '   VALOR_TOTAL)'
      'VALUES ('
      '   :CODIGO,'
      '   :PRODUTO,'
      '   :CLIENTE,'
      '   :CANCELADO,'
      '   :"DATA",'
      '   :HORA,'
      '   :QUANTIDADE,'
      '   :OBSERVACAO,'
      '   :VALOR_UNITARIO,'
      '   :VALOR_TOTAL)')
    KeyLinks.Strings = (
      'RESERVA.CODIGO')
    Left = 176
    Top = 200
    ParamValues = (
      'CODIGO=00000000')
  end
  inherited IB_DataSource1: TIB_DataSource
    OnDataChange = IB_DataSource1DataChange
    Left = 88
    Top = 200
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 480
    Top = 8
  end
  object Clientes: TIB_Query
    SQL.Strings = (
      'select codigo'
      '   , razao'
      'from clifor'
      'order by razao')
    KeyLinks.Strings = (
      'codigo = cliente')
    KeySource = IB_DataSource1
    Left = 320
    Top = 192
  end
  object SourceClientes: TIB_DataSource
    Dataset = Clientes
    Left = 392
    Top = 192
  end
  object Produtos: TIB_Query
    SQL.Strings = (
      'select codigo'
      '  , descricao'
      'from produtos'
      'order by descricao')
    KeyLinks.Strings = (
      'codigo = produto')
    KeySource = IB_DataSource1
    OrderingItems.Strings = (
      'DESCRICAO=DESCRICAO;DESCRICAO DESC')
    OrderingLinks.Strings = (
      'DESCRICAO=ITEM=1')
    Left = 464
    Top = 192
  end
  object SourceProdutos: TIB_DataSource
    Dataset = Produtos
    Left = 536
    Top = 192
  end
end
