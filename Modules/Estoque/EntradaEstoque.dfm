inherited fmEntradaEstoque: TfmEntradaEstoque
  Caption = 'fmEntradaEstoque'
  ClientHeight = 225
  ClientWidth = 613
  OnCreate = FormCreate
  ExplicitWidth = 619
  ExplicitHeight = 254
  PixelsPerInch = 96
  TextHeight = 13
  object IB_Edit1: TIB_Edit [0]
    Left = 72
    Top = 60
    Width = 113
    Height = 21
    AutoLabel.Caption = 'C'#243'digo'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 1
  end
  object IB_Edit7: TIB_Edit [1]
    Left = 72
    Top = 87
    Width = 73
    Height = 21
    AutoLabel.Kind = albLeft
    AutoLabel.Suffix = ':'
    DataField = 'CLIENTE_FORNECEDOR'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 4
  end
  object IB_LookupCombo3: TIB_LookupCombo [2]
    Left = 151
    Top = 87
    Width = 450
    Height = 21
    DataSource = srcClifor
    ParentBackground = False
    TabOrder = 5
    DisplayField = 'RAZAO'
    IndicateTitles = True
    ShowButton = True
  end
  object IB_Edit8: TIB_Edit [3]
    Left = 72
    Top = 114
    Width = 73
    Height = 21
    AutoLabel.Kind = albLeft
    AutoLabel.Suffix = ':'
    DataField = 'TIPO_MOVIMENTO'
    DataSource = IB_DataSource1
    Visible = False
    ParentBackground = False
    TabOrder = 6
  end
  object IB_DateTimePicker1: TIB_DateTimePicker [4]
    Left = 224
    Top = 60
    Width = 169
    Height = 21
    Date = 42408.992365439810000000
    Time = 42408.992365439810000000
    TabOrder = 2
    AutoLabel.Kind = albLeft
    AutoLabel.Suffix = ':'
    DataField = 'DATA_HORA'
    DataSource = IB_DataSource1
    ParentBackground = False
  end
  object GroupBox2: TGroupBox [5]
    Left = 8
    Top = 141
    Width = 593
    Height = 76
    Caption = 'Produto da movimenta'#231#227'o'
    TabOrder = 8
    object IB_Edit2: TIB_Edit
      Left = 56
      Top = 16
      Width = 73
      Height = 21
      AutoLabel.Kind = albLeft
      AutoLabel.Suffix = ':'
      DataField = 'PRODUTO'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 0
    end
    object IB_LookupCombo1: TIB_LookupCombo
      Left = 135
      Top = 16
      Width = 450
      Height = 21
      DataSource = SourceProdutos
      ParentBackground = False
      TabOrder = 1
      DisplayField = 'DESCRICAO'
      IndicateTitles = True
      ShowButton = True
    end
    object IB_Edit9: TIB_Edit
      Left = 264
      Top = 43
      Width = 121
      Height = 21
      AutoLabel.Kind = albLeft
      AutoLabel.Suffix = ':'
      DataField = 'VALOR_UNITARIO'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 3
    end
    object IB_Edit10: TIB_Edit
      Left = 464
      Top = 43
      Width = 121
      Height = 21
      AutoLabel.Kind = albLeft
      AutoLabel.Suffix = ':'
      DataField = 'VALOR_TOTAL'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 4
    end
    object IB_Edit12: TIB_Edit
      Left = 56
      Top = 43
      Width = 121
      Height = 21
      AutoLabel.Kind = albLeft
      AutoLabel.Suffix = ':'
      DataField = 'QUANTIDADE'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 2
    end
  end
  object IB_LookupCombo4: TIB_LookupCombo [6]
    Left = 151
    Top = 114
    Width = 450
    Height = 21
    DataSource = SourceTipoMovimento
    Visible = False
    ParentBackground = False
    TabOrder = 7
    DisplayField = 'NOME'
    IndicateTitles = True
    ShowButton = True
  end
  object IB_Date1: TIB_Date [7]
    Left = 480
    Top = 60
    Width = 121
    Height = 21
    AutoLabel.Kind = albLeft
    AutoLabel.Suffix = ':'
    DataField = 'DATA_VALIDADE'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 3
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  inherited pnlControles: TPanel
    Width = 613
    ExplicitWidth = 613
    inherited pnlBotao: TPanel
      Left = 173
      ExplicitLeft = 173
    end
  end
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'PRODUTO=Produto'
      'DATA_HORA=Data'
      'QUANTIDADE=Quant.'
      'TIPO_MOVIMENTO=Tipo'
      'OBS=Obs.'
      'VALOR_UNITARIO=Valor Unit'#225'rio'
      'VALOR_TOTAL=Valor Total'
      'DATA_VALIDADE=Data Validade'
      'CLIENTE_FORNECEDOR=Cli./Forn.')
    SQL.Strings = (
      'select * from movimentacao_estoque')
    DeleteSQL.Strings = (
      'DELETE FROM MOVIMENTACAO_ESTOQUE MOVIMENTACAO_ESTOQUE'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE MOVIMENTACAO_ESTOQUE MOVIMENTACAO_ESTOQUE SET'
      '   MOVIMENTACAO_ESTOQUE.PRODUTO = :PRODUTO,'
      '   MOVIMENTACAO_ESTOQUE.DATA_HORA = :DATA_HORA,'
      '   MOVIMENTACAO_ESTOQUE.QUANTIDADE = :QUANTIDADE,'
      '   MOVIMENTACAO_ESTOQUE.EMPRESA = :EMPRESA,'
      '   MOVIMENTACAO_ESTOQUE.USUARIO = :USUARIO,'
      '   MOVIMENTACAO_ESTOQUE.TIPO_MOVIMENTO = :TIPO_MOVIMENTO,'
      
        '   MOVIMENTACAO_ESTOQUE.CLIENTE_FORNECEDOR = :CLIENTE_FORNECEDOR' +
        ','
      '   MOVIMENTACAO_ESTOQUE.OBS = :OBS,'
      '   MOVIMENTACAO_ESTOQUE.VALOR_UNITARIO = :VALOR_UNITARIO,'
      '   MOVIMENTACAO_ESTOQUE.VALOR_TOTAL = :VALOR_TOTAL,'
      '   MOVIMENTACAO_ESTOQUE.DATA_VALIDADE = :DATA_VALIDADE'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO MOVIMENTACAO_ESTOQUE('
      '   PRODUTO,'
      '   DATA_HORA,'
      '   QUANTIDADE,'
      '   EMPRESA,'
      '   USUARIO,'
      '   TIPO_MOVIMENTO,'
      '   CLIENTE_FORNECEDOR,'
      '   OBS,'
      '   VALOR_UNITARIO,'
      '   VALOR_TOTAL,'
      '   DATA_VALIDADE)'
      'VALUES ('
      '   :PRODUTO,'
      '   :DATA_HORA,'
      '   :QUANTIDADE,'
      '   :EMPRESA,'
      '   :USUARIO,'
      '   :TIPO_MOVIMENTO,'
      '   :CLIENTE_FORNECEDOR,'
      '   :OBS,'
      '   :VALOR_UNITARIO,'
      '   :VALOR_TOTAL,'
      '   :DATA_VALIDADE)')
    KeyLinks.Strings = (
      'MOVIMENTACAO_ESTOQUE.CODIGO')
    Left = 16
    Top = 8
  end
  inherited IB_DataSource1: TIB_DataSource
    OnDataChange = IB_DataSource1DataChange
    Left = 96
    Top = 8
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 176
    Top = 8
  end
  object Clifor: TIB_Query
    FieldsDisplayLabel.Strings = (
      'RAZAO=Raz'#227'o')
    FieldsVisible.Strings = (
      'CNPJ=FALSE'
      'DATA_NASCIMENTO=FALSE'
      'CELULAR=FALSE'
      'TELEFONE=FALSE'
      'RG_INCSESTADUAL=FALSE'
      'EMAIL=FALSE'
      'ENDERECO=FALSE'
      'NUMERO=FALSE'
      'COMPLEMENTO=FALSE'
      'BAIRRO=FALSE'
      'CEP=FALSE'
      'ESTADO=FALSE'
      'CIDADE=FALSE'
      'CODIGO=FALSE'
      'FANTASIA=FALSE'
      'TIPO_PESSOA=FALSE'
      'IE=FALSE')
    IB_Connection = DMDados.Conexao
    SQL.Strings = (
      'select * from clifor')
    KeyLinks.Strings = (
      'CLIFOR.CODIGO = CLIENTE_FORNECEDOR')
    KeySource = IB_DataSource1
    Left = 512
    Top = 8
  end
  object srcClifor: TIB_DataSource
    Dataset = Clifor
    Left = 552
    Top = 8
  end
  object Produtos: TIB_Query
    FieldsDisplayLabel.Strings = (
      'DESCRICAO=Descri'#231#227'o')
    FieldsVisible.Strings = (
      'CODIGO=FALSE'
      'VALOR=FALSE'
      'TAMANHO=FALSE'
      'MARCA=FALSE'
      'GRUPO=FALSE'
      'COR=FALSE'
      'TIPO=FALSE')
    IB_Connection = DMDados.Conexao
    SQL.Strings = (
      'select * from produtos')
    KeyLinks.Strings = (
      'PRODUTOS.CODIGO = PRODUTO')
    KeySource = IB_DataSource1
    Left = 248
    Top = 8
  end
  object SourceProdutos: TIB_DataSource
    Dataset = Produtos
    Left = 430
    Top = 8
  end
  object TipoMovimentos: TIB_Query
    FieldsCharCase.Strings = (
      'TIPO_CREDITO_DEBITO=UPPER')
    FieldsDisplayLabel.Strings = (
      'NOME=Nome'
      'TIPO_CREDITO_DEBITO=Tipo')
    FieldsVisible.Strings = (
      'CODIGO=FALSE')
    IB_Connection = DMDados.Conexao
    SQL.Strings = (
      'select * from tipo_movimentacao_estoque')
    KeyLinks.Strings = (
      'TIPO_MOVIMENTACAO_ESTOQUE.CODIGO = TIPO_MOVIMENTO')
    KeySource = IB_DataSource1
    Left = 336
  end
  object SourceTipoMovimento: TIB_DataSource
    Dataset = TipoMovimentos
    Left = 304
    Top = 8
  end
end
