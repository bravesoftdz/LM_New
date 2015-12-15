inherited fmCliforEditor: TfmCliforEditor
  Caption = 'fmCliforEditor'
  ClientHeight = 335
  ClientWidth = 463
  ExplicitWidth = 479
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControls: TPanel
    Width = 463
    ExplicitWidth = 628
    inherited btnConcluir: TSpeedButton
      Left = 87
      ExplicitLeft = 87
    end
    inherited btnFechar: TSpeedButton
      Left = 214
      ExplicitLeft = 214
    end
  end
  object edtCodigo: TIB_Edit [1]
    Left = 65
    Top = 80
    Width = 65
    Height = 21
    AutoLabel.Caption = 'C'#243'digo'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 1
  end
  object IB_Edit1: TIB_Edit [2]
    Left = 65
    Top = 107
    Width = 383
    Height = 21
    AutoLabel.Caption = 'Razao'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 2
  end
  object IB_Edit2: TIB_Edit [3]
    Left = 65
    Top = 134
    Width = 383
    Height = 21
    AutoLabel.Caption = 'Fantasia'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 3
  end
  object IB_Edit3: TIB_Edit [4]
    Left = 223
    Top = 161
    Width = 115
    Height = 21
    AutoLabel.Caption = 'CPF/CNPJ'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 4
  end
  object IB_ComboBox1: TIB_ComboBox [5]
    Left = 65
    Top = 161
    Width = 97
    Height = 21
    AutoLabel.Caption = 'Pessoa'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 5
    Items.Strings = (
      'Fis'#237'ca'
      'Jur'#237'dica')
    ItemValues.Strings = (
      '1'
      '2')
  end
  object IB_Edit4: TIB_Edit [6]
    Left = 361
    Top = 161
    Width = 87
    Height = 21
    AutoLabel.Caption = 'IE'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 6
  end
  object GroupBox1: TGroupBox [7]
    Left = 8
    Top = 188
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
      ParentBackground = False
      TabOrder = 3
    end
    object IB_LookupCombo1: TIB_LookupCombo
      Left = 114
      Top = 74
      Width = 197
      Height = 21
      ParentBackground = False
      TabOrder = 4
      ShowButton = True
    end
    object IB_Edit9: TIB_Edit
      Left = 342
      Top = 74
      Width = 89
      Height = 21
      AutoLabel.Caption = 'CEP'
      AutoLabel.Kind = albLeft
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
      ParentBackground = False
      TabOrder = 6
    end
  end
  object IB_Date1: TIB_Date [8]
    Left = 65
    Top = 299
    Width = 100
    Height = 21
    AutoLabel.Caption = 'Nascimento'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 8
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  inherited IB_Query1: TIB_Query
    Left = 177
    Top = 56
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 249
    Top = 56
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 329
    Top = 56
  end
end
