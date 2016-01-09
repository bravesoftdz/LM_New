inherited fmCliforEditor: TfmCliforEditor
  Caption = 'fmCliforEditor'
  ClientHeight = 323
  ClientWidth = 463
  OnCreate = FormCreate
  ExplicitWidth = 469
  ExplicitHeight = 352
  PixelsPerInch = 96
  TextHeight = 13
  object IB_Edit4: TIB_Edit [0]
    Left = 361
    Top = 150
    Width = 87
    Height = 21
    AutoLabel.Caption = 'IE'
    AutoLabel.Kind = albLeft
    DataField = 'IE'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 6
  end
  object IB_Date1: TIB_Date [1]
    Left = 361
    Top = 177
    Width = 87
    Height = 21
    AutoLabel.Caption = 'Nascimento'
    AutoLabel.Kind = albLeft
    DataField = 'DATA_NASCIMENTO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 8
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object GroupBox1: TGroupBox [2]
    Left = 8
    Top = 204
    Width = 447
    Height = 105
    Caption = 'Endere'#231'o'
    TabOrder = 7
    object IB_Edit5: TIB_Edit
      Left = 57
      Top = 20
      Width = 289
      Height = 21
      AutoLabel.Caption = 'Rua'
      AutoLabel.Kind = albLeft
      DataField = 'ENDERECO'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 0
    end
    object IB_Edit6: TIB_Edit
      Left = 57
      Top = 47
      Width = 80
      Height = 21
      AutoLabel.Caption = 'Complem.'
      AutoLabel.Kind = albLeft
      DataField = 'COMPLEMENTO'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 1
    end
    object IB_Edit7: TIB_Edit
      Left = 366
      Top = 20
      Width = 65
      Height = 21
      AutoLabel.Caption = 'N'#186
      AutoLabel.Kind = albLeft
      DataField = 'NUMERO'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 2
    end
    object IB_Edit8: TIB_Edit
      Left = 183
      Top = 47
      Width = 248
      Height = 21
      AutoLabel.Caption = 'Bairro'
      AutoLabel.Kind = albLeft
      DataField = 'BAIRRO'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 3
    end
    object IB_LookupCombo1: TIB_LookupCombo
      Left = 119
      Top = 74
      Width = 197
      Height = 21
      DataSource = SourceCidades
      ParentBackground = False
      TabOrder = 4
      DisplayField = 'NOME'
      ShowButton = True
    end
    object IB_Edit9: TIB_Edit
      Left = 342
      Top = 74
      Width = 89
      Height = 21
      AutoLabel.Caption = 'CEP'
      AutoLabel.Kind = albLeft
      DataField = 'CEP'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 5
    end
    object IB_Edit10: TIB_Edit
      Left = 57
      Top = 74
      Width = 56
      Height = 21
      AutoLabel.Caption = 'Cidade'
      AutoLabel.Kind = albLeft
      DataField = 'CIDADE'
      DataSource = IB_DataSource1
      ParentBackground = False
      TabOrder = 6
    end
  end
  object IB_ComboBox1: TIB_ComboBox [3]
    Left = 65
    Top = 150
    Width = 97
    Height = 21
    AutoLabel.Caption = 'Pessoa'
    AutoLabel.Kind = albLeft
    DataField = 'TIPO_PESSOA'
    DataSource = IB_DataSource1
    BorderStyle = bsNone
    ParentBackground = False
    TabOrder = 5
    Style = csDropDownList
    Items.Strings = (
      'Fis'#237'ca'
      'Jur'#237'dica')
    ItemValues.Strings = (
      '1'
      '2')
    OnChange = IB_ComboBox1Change
  end
  object IB_Edit3: TIB_Edit [4]
    Left = 223
    Top = 150
    Width = 115
    Height = 21
    AutoLabel.Caption = 'CPF/CNPJ'
    AutoLabel.Kind = albLeft
    DataField = 'CNPJ'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 4
    OnEnter = IB_Edit3Enter
  end
  object IB_Edit2: TIB_Edit [5]
    Left = 65
    Top = 123
    Width = 383
    Height = 21
    AutoLabel.Caption = 'Fantasia'
    AutoLabel.Kind = albLeft
    DataField = 'FANTASIA'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 3
  end
  object IB_Edit1: TIB_Edit [6]
    Left = 65
    Top = 96
    Width = 383
    Height = 21
    AutoLabel.Caption = 'Razao'
    AutoLabel.Kind = albLeft
    DataField = 'RAZAO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
  end
  object IB_Edit11: TIB_Edit [7]
    Left = 64
    Top = 177
    Width = 233
    Height = 21
    AutoLabel.Caption = 'Email'
    AutoLabel.Kind = albLeft
    DataField = 'EMAIL'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 9
  end
  object IB_Edit12: TIB_Edit [8]
    Left = 191
    Top = 69
    Width = 106
    Height = 21
    AutoLabel.Caption = 'Telefone'
    AutoLabel.Kind = albLeft
    DataField = 'TELEFONE'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 10
  end
  object IB_Edit13: TIB_Edit [9]
    Left = 342
    Top = 69
    Width = 106
    Height = 21
    AutoLabel.Caption = 'Cel'
    AutoLabel.Kind = albLeft
    DataField = 'CELULAR'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 11
  end
  object edtCodigo: TIB_Edit [10]
    Left = 65
    Top = 69
    Width = 65
    Height = 21
    AutoLabel.Caption = 'C'#243'digo'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 1
  end
  inherited pnlControles: TPanel
    Width = 463
    ExplicitWidth = 463
    inherited pnlBotao: TPanel
      Left = 104
      ExplicitLeft = 104
      inherited btnConcluir: TSpeedButton
        Left = -1
        Top = 6
        ExplicitLeft = -1
        ExplicitTop = 6
      end
      inherited btnFechar: TSpeedButton
        Left = 126
        Top = 6
        ExplicitLeft = 126
        ExplicitTop = 6
      end
    end
  end
  inherited IB_Query1: TIB_Query
    FieldsEditMask.Strings = (
      'CELULAR=(00) 0000-0000'
      'TELEFONE=(00) 0000-0000')
    SQL.Strings = (
      'select * from clifor where codigo = :codigo')
    DefaultValues.Strings = (
      'TIPO_PESSOA=1')
    DeleteSQL.Strings = (
      'DELETE FROM CLIFOR CLIFOR'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE CLIFOR CLIFOR SET'
      '   CLIFOR.CODIGO = :CODIGO, /*PK*/'
      '   CLIFOR.RAZAO = :RAZAO,'
      '   CLIFOR.CNPJ = :CNPJ,'
      '   CLIFOR.DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '   CLIFOR.CELULAR = :CELULAR,'
      '   CLIFOR.TELEFONE = :TELEFONE,'
      '   CLIFOR.RG_INCSESTADUAL = :RG_INCSESTADUAL,'
      '   CLIFOR.EMAIL = :EMAIL,'
      '   CLIFOR.ENDERECO = :ENDERECO,'
      '   CLIFOR.NUMERO = :NUMERO,'
      '   CLIFOR.COMPLEMENTO = :COMPLEMENTO,'
      '   CLIFOR.BAIRRO = :BAIRRO,'
      '   CLIFOR.CEP = :CEP,'
      '   CLIFOR.ESTADO = :ESTADO,'
      '   CLIFOR.CIDADE = :CIDADE,'
      '   CLIFOR.FANTASIA = :FANTASIA,'
      '   CLIFOR.TIPO_PESSOA = :TIPO_PESSOA,'
      '   CLIFOR.IE = :IE'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO CLIFOR('
      '   CODIGO, /*PK*/'
      '   RAZAO,'
      '   CNPJ,'
      '   DATA_NASCIMENTO,'
      '   CELULAR,'
      '   TELEFONE,'
      '   RG_INCSESTADUAL,'
      '   EMAIL,'
      '   ENDERECO,'
      '   NUMERO,'
      '   COMPLEMENTO,'
      '   BAIRRO,'
      '   CEP,'
      '   ESTADO,'
      '   CIDADE,'
      '   FANTASIA,'
      '   TIPO_PESSOA,'
      '   IE)'
      'VALUES ('
      '   :CODIGO,'
      '   :RAZAO,'
      '   :CNPJ,'
      '   :DATA_NASCIMENTO,'
      '   :CELULAR,'
      '   :TELEFONE,'
      '   :RG_INCSESTADUAL,'
      '   :EMAIL,'
      '   :ENDERECO,'
      '   :NUMERO,'
      '   :COMPLEMENTO,'
      '   :BAIRRO,'
      '   :CEP,'
      '   :ESTADO,'
      '   :CIDADE,'
      '   :FANTASIA,'
      '   :TIPO_PESSOA,'
      '   :IE)')
    KeyLinks.Strings = (
      'CLIFOR.CODIGO')
    Left = 353
    Top = 8
    ParamValues = (
      'CODIGO='#39'0'#39)
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 393
    Top = 8
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 433
    Top = 8
  end
  object Cidades: TIB_Query
    SQL.Strings = (
      'select * from cidades ')
    KeyLinks.Strings = (
      'codigo=cidade')
    KeySource = IB_DataSource1
    OrderingItemNo = 1
    OrderingItems.Strings = (
      'NOME=NOME;NOME DESC')
    OrderingLinks.Strings = (
      'NOME=ITEM=1')
    Left = 240
    Top = 320
  end
  object SourceCidades: TIB_DataSource
    Dataset = Cidades
    Left = 304
    Top = 320
  end
end
