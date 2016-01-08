inherited fmProdutosEditor: TfmProdutosEditor
  Caption = 'fmProdutosEditor'
  ClientWidth = 417
  ExplicitWidth = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControls: TPanel
    Width = 417
    inherited btnConcluir: TSpeedButton
      Left = 91
      ExplicitLeft = 91
    end
    inherited btnFechar: TSpeedButton
      Left = 218
      ExplicitLeft = 218
    end
  end
  object IB_Edit1: TIB_Edit [1]
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
  object IB_Edit2: TIB_Edit [2]
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
  object IB_Edit3: TIB_Edit [3]
    Left = 64
    Top = 134
    Width = 113
    Height = 21
    AutoLabel.Caption = 'Valor:'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 3
  end
  object IB_Edit4: TIB_Edit [4]
    Left = 272
    Top = 134
    Width = 113
    Height = 21
    AutoLabel.Caption = 'Tamanho:'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 4
  end
  object IB_Edit5: TIB_Edit [5]
    Left = 64
    Top = 161
    Width = 81
    Height = 21
    AutoLabel.Caption = 'Marca:'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 5
  end
  object IB_LookupCombo1: TIB_LookupCombo [6]
    Left = 151
    Top = 161
    Width = 234
    Height = 21
    ParentBackground = False
    TabOrder = 6
    ShowButton = True
  end
  object IB_Edit6: TIB_Edit [7]
    Left = 240
    Top = 80
    Width = 145
    Height = 21
    AutoLabel.Caption = 'Cor:'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 7
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from produtos '
      'where codigo = :codigo')
    Left = 480
    Top = 32
    ParamValues = (
      'CODIGO=00000000')
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 512
    Top = 88
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 568
    Top = 8
  end
end
