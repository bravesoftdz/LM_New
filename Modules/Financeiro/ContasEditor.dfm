inherited fmContasEditor: TfmContasEditor
  Caption = 'fmContasEditor'
  ClientHeight = 323
  ClientWidth = 538
  ExplicitWidth = 554
  ExplicitHeight = 362
  PixelsPerInch = 96
  TextHeight = 13
  object IB_LookupCombo1: TIB_LookupCombo [0]
    Left = 154
    Top = 134
    Width = 378
    Height = 21
    DataSource = srcClifor
    ParentBackground = False
    TabOrder = 5
    CustomPopup = IB_Grid1
    ShowButton = True
  end
  object IB_Memo1: TIB_Memo [1]
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
  object IB_CheckBox1: TIB_CheckBox [2]
    Left = 80
    Top = 216
    Width = 97
    Height = 17
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    ParentBackground = False
    TabOrder = 15
    Caption = 'Parcelada'
  end
  object IB_Edit5: TIB_Edit [3]
    Left = 80
    Top = 134
    Width = 73
    Height = 21
    AutoLabel.Caption = 'Client/Fornec.'
    AutoLabel.Kind = albLeft
    DataField = 'CLIFOR'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 3
  end
  object IB_Date3: TIB_Date [4]
    Left = 432
    Top = 107
    Width = 97
    Height = 21
    AutoLabel.Caption = 'Programada'
    AutoLabel.Kind = albLeft
    DataField = 'DATA_PROGRAMADA'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 13
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object IB_CheckBox3: TIB_CheckBox [5]
    Left = 342
    Top = 216
    Width = 97
    Height = 17
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    ParentBackground = False
    TabOrder = 17
    Caption = 'IB_CheckBox3'
  end
  object IB_Date1: TIB_Date [6]
    Left = 80
    Top = 107
    Width = 97
    Height = 21
    AutoLabel.Caption = 'Emiss'#227'o'
    AutoLabel.Kind = albLeft
    DataField = 'DATA_EMISSAO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 4
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object IB_Grid1: TIB_Grid [7]
    Left = 216
    Top = 138
    Width = 72
    Height = 17
    CustomGlyphsSupplied = []
    DataSource = srcClifor
    ParentBackground = False
    TabOrder = 7
  end
  object IB_Date2: TIB_Date [8]
    Left = 253
    Top = 107
    Width = 97
    Height = 21
    AutoLabel.Caption = 'Vencimento'
    AutoLabel.Kind = albLeft
    DataField = 'DATA_VENCIMENTO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 12
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  object IB_Edit6: TIB_Edit [9]
    Left = 232
    Top = 188
    Width = 88
    Height = 21
    AutoLabel.Caption = 'Valor Unit.'
    AutoLabel.Kind = albLeft
    DataField = 'VALOR_UNITARIO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 11
  end
  object IB_Edit4: TIB_Edit [10]
    Left = 411
    Top = 188
    Width = 121
    Height = 21
    AutoLabel.Caption = 'Valor Total'
    AutoLabel.Kind = albLeft
    DataField = 'VALOR'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 10
  end
  object IB_Grid2: TIB_Grid [11]
    Left = 272
    Top = 165
    Width = 73
    Height = 17
    CustomGlyphsSupplied = []
    DataSource = SrcPlanoconta
    ParentBackground = False
    TabOrder = 8
  end
  object IB_Edit2: TIB_Edit [12]
    Left = 80
    Top = 161
    Width = 73
    Height = 21
    AutoLabel.Caption = 'Plano Conta'
    AutoLabel.Kind = albLeft
    DataField = 'PLANO_CONTA'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
  end
  object IB_Edit1: TIB_Edit [13]
    Left = 80
    Top = 80
    Width = 73
    Height = 21
    AutoLabel.Caption = 'C'#243'digo'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 1
  end
  object IB_Edit3: TIB_Edit [14]
    Left = 80
    Top = 188
    Width = 73
    Height = 21
    AutoLabel.Caption = 'Quantidade'
    AutoLabel.Kind = albLeft
    DataField = 'QUANTIDADE'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 9
  end
  object IB_CheckBox2: TIB_CheckBox [15]
    Left = 215
    Top = 216
    Width = 97
    Height = 17
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    ParentBackground = False
    TabOrder = 16
    Caption = #192' Vista'
  end
  object IB_LookupCombo2: TIB_LookupCombo [16]
    Left = 154
    Top = 161
    Width = 378
    Height = 21
    DataSource = SrcPlanoconta
    ParentBackground = False
    TabOrder = 6
    CustomPopup = IB_Grid2
    ShowButton = True
  end
  inherited pnlControls: TPanel
    Width = 538
    ExplicitWidth = 538
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from contas')
    BeforePost = IB_Query1BeforePost
    Left = 16
    Top = 8
  end
  inherited IB_DataSource1: TIB_DataSource
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
    Left = 600
    Top = 168
  end
  object SrcPlanoconta: TIB_DataSource
    Dataset = qryPlanoConta
    Left = 596
    Top = 216
  end
end
