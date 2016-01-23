inherited fmContasPagarEditor: TfmContasPagarEditor
  Caption = 'fmContasPagarEditor'
  ClientHeight = 357
  ClientWidth = 698
  ExplicitWidth = 704
  ExplicitHeight = 386
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 535
    Top = 134
    Width = 23
    Height = 22
    Caption = '>>'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton [1]
    Left = 535
    Top = 162
    Width = 23
    Height = 22
    Caption = '>>'
    OnClick = SpeedButton2Click
  end
  object IB_CheckBox2: TIB_CheckBox [2]
    Left = 215
    Top = 216
    Width = 97
    Height = 17
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    ParentBackground = False
    TabOrder = 9
    Caption = #192' Vista'
  end
  object IB_Edit3: TIB_Edit [3]
    Left = 80
    Top = 188
    Width = 73
    Height = 21
    AutoLabel.Caption = 'Quantidade'
    AutoLabel.Kind = albLeft
    DataField = 'QUANTIDADE'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 11
  end
  object IB_Date2: TIB_Date [4]
    Left = 253
    Top = 107
    Width = 97
    Height = 21
    AutoLabel.Caption = 'Vencimento'
    AutoLabel.Kind = albLeft
    DataField = 'DATA_VENCIMENTO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object IB_Date1: TIB_Date [5]
    Left = 80
    Top = 107
    Width = 97
    Height = 21
    AutoLabel.Caption = 'Emiss'#227'o'
    AutoLabel.Kind = albLeft
    DataField = 'DATA_EMISSAO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 1
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object IB_Edit5: TIB_Edit [6]
    Left = 80
    Top = 134
    Width = 73
    Height = 21
    AutoLabel.Caption = 'Client/Fornec.'
    AutoLabel.Kind = albLeft
    DataField = 'CLIFOR'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 4
  end
  object IB_Edit4: TIB_Edit [7]
    Left = 411
    Top = 188
    Width = 121
    Height = 21
    AutoLabel.Caption = 'Valor Total'
    AutoLabel.Kind = albLeft
    DataField = 'VALOR'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 13
  end
  object IB_CheckBox1: TIB_CheckBox [8]
    Left = 80
    Top = 216
    Width = 97
    Height = 17
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    ParentBackground = False
    TabOrder = 8
    Caption = 'Parcelada'
  end
  object IB_Date3: TIB_Date [9]
    Left = 432
    Top = 107
    Width = 97
    Height = 21
    AutoLabel.Caption = 'Programada'
    AutoLabel.Kind = albLeft
    DataField = 'DATA_PROGRAMADA'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 3
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object IB_Memo1: TIB_Memo [10]
    Left = 80
    Top = 247
    Width = 452
    Height = 65
    AutoLabel.Caption = 'Obs.'
    AutoLabel.Kind = albLeft
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 14
    AutoSize = False
  end
  object IB_LookupCombo1: TIB_LookupCombo [11]
    Left = 154
    Top = 134
    Width = 378
    Height = 21
    DataSource = srcClifor
    ParentBackground = False
    TabOrder = 5
    DisplayField = 'RAZAO'
    ShowButton = True
  end
  object IB_Edit6: TIB_Edit [12]
    Left = 232
    Top = 188
    Width = 88
    Height = 21
    AutoLabel.Caption = 'Valor Unit.'
    AutoLabel.Kind = albLeft
    DataField = 'VALOR_UNITARIO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 12
  end
  object IB_LookupCombo2: TIB_LookupCombo [13]
    Left = 154
    Top = 161
    Width = 378
    Height = 21
    DataSource = SrcPlanoconta
    ParentBackground = False
    TabOrder = 7
    DisplayField = 'DESCRICAO'
    ShowButton = True
  end
  object IB_Edit2: TIB_Edit [14]
    Left = 80
    Top = 161
    Width = 73
    Height = 21
    AutoLabel.Caption = 'Plano Conta'
    AutoLabel.Kind = albLeft
    DataField = 'PLANO_CONTA'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 6
  end
  object IB_Edit1: TIB_Edit [15]
    Left = 80
    Top = 80
    Width = 73
    Height = 21
    AutoLabel.Caption = 'C'#243'digo'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    ReadOnly = True
    TabOrder = 0
  end
  object IB_CheckBox3: TIB_CheckBox [16]
    Left = 342
    Top = 216
    Width = 97
    Height = 17
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    ParentBackground = False
    TabOrder = 10
    Caption = 'IB_CheckBox3'
  end
  inherited pnlControles: TPanel
    Width = 698
    TabOrder = 15
    ExplicitWidth = 698
    inherited pnlBotao: TPanel
      Left = 358
      ExplicitLeft = 358
    end
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from contas'
      'where codigo =:codigo')
    DeleteSQL.Strings = (
      'DELETE FROM CONTAS CONTAS'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE CONTAS CONTAS SET'
      '   CONTAS.CODIGO = :CODIGO, /*PK*/'
      '   CONTAS.TIPO = :TIPO,'
      '   CONTAS.DATA_EMISSAO = :DATA_EMISSAO,'
      '   CONTAS.DATA_VENCIMENTO = :DATA_VENCIMENTO,'
      '   CONTAS.DATA_PROGRAMADA = :DATA_PROGRAMADA,'
      '   CONTAS.CLIFOR = :CLIFOR,'
      '   CONTAS.PLANO_CONTA = :PLANO_CONTA,'
      '   CONTAS.QUANTIDADE = :QUANTIDADE,'
      '   CONTAS.VALOR_UNITARIO = :VALOR_UNITARIO,'
      '   CONTAS.VALOR = :VALOR,'
      '   CONTAS.VALOR_PAGREC = :VALOR_PAGREC'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO CONTAS('
      '   CODIGO, /*PK*/'
      '   TIPO,'
      '   DATA_EMISSAO,'
      '   DATA_VENCIMENTO,'
      '   DATA_PROGRAMADA,'
      '   CLIFOR,'
      '   PLANO_CONTA,'
      '   QUANTIDADE,'
      '   VALOR_UNITARIO,'
      '   VALOR,'
      '   VALOR_PAGREC)'
      'VALUES ('
      '   :CODIGO,'
      '   :TIPO,'
      '   :DATA_EMISSAO,'
      '   :DATA_VENCIMENTO,'
      '   :DATA_PROGRAMADA,'
      '   :CLIFOR,'
      '   :PLANO_CONTA,'
      '   :QUANTIDADE,'
      '   :VALOR_UNITARIO,'
      '   :VALOR,'
      '   :VALOR_PAGREC)')
    BeforePost = IB_Query1BeforePost
    Left = 16
    Top = 8
    ParamValues = (
      'CODIGO='#39'0'#39)
  end
  inherited IB_DataSource1: TIB_DataSource
    OnDataChange = IB_DataSource1DataChange
    Left = 88
    Top = 8
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 160
    Top = 8
  end
  object qryClifor: TIB_Query
    FieldsIndex.Strings = (
      'CODIGO'
      'RAZAO'
      'CNPJ'
      'DATA_NASCIMENTO'
      'CELULAR'
      'TELEFONE'
      'RG_INCSESTADUAL'
      'EMAIL'
      'ENDERECO'
      'NUMERO'
      'COMPLEMENTO'
      'BAIRRO'
      'CEP'
      'ESTADO'
      'CIDADE'
      'FANTASIA'
      'TIPO_PESSOA'
      'IE')
    FieldsVisible.Strings = (
      'DATA_NASCIMENTO=FALSE'
      'CELULAR=FALSE'
      'CNPJ=FALSE'
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
      'FANTASIA=FALSE'
      'TIPO_PESSOA=FALSE'
      'IE=FALSE')
    SQL.Strings = (
      'select * from clifor')
    KeyLinks.Strings = (
      'codigo=clifor')
    KeySource = IB_DataSource1
    Left = 608
    Top = 72
  end
  object srcClifor: TIB_DataSource
    Dataset = qryClifor
    Left = 608
    Top = 120
  end
  object qryPlanoConta: TIB_Query
    SQL.Strings = (
      'select * from planoconta')
    KeyLinks.Strings = (
      'PLANOCONTA.CODIGO = plano_conta')
    KeySource = IB_DataSource1
    Left = 600
    Top = 168
  end
  object SrcPlanoconta: TIB_DataSource
    Dataset = qryPlanoConta
    Left = 596
    Top = 216
  end
end
