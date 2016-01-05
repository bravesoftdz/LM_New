inherited fmEntradaEstoque: TfmEntradaEstoque
  Caption = 'fmEntradaEstoque'
  ClientHeight = 452
  ExplicitHeight = 491
  PixelsPerInch = 96
  TextHeight = 13
  object IB_Edit1: TIB_Edit [1]
    Left = 72
    Top = 80
    Width = 73
    Height = 21
    AutoLabel.Caption = 'C'#243'digo'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 1
  end
  object IB_Edit2: TIB_Edit [2]
    Left = 72
    Top = 133
    Width = 73
    Height = 21
    AutoLabel.Caption = 'clifor'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 2
  end
  object GroupBox1: TGroupBox [3]
    Left = 3
    Top = 168
    Width = 620
    Height = 281
    Caption = 'Produtos da Entrada'
    TabOrder = 3
    object GridItens: TIB_Grid
      Left = 5
      Top = 105
      Width = 609
      Height = 165
      CustomGlyphsSupplied = []
      Ctl3D = False
      ParentCtl3D = False
      ParentBackground = False
      ReadOnly = True
      TabOrder = 0
    end
    object IB_Edit3: TIB_Edit
      Left = 69
      Top = 24
      Width = 73
      Height = 21
      AutoLabel.Caption = 'Produto'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      TabOrder = 1
    end
    object IB_LookupCombo2: TIB_LookupCombo
      Left = 144
      Top = 24
      Width = 454
      Height = 21
      ParentBackground = False
      TabOrder = 2
      CustomPopup = IB_Grid2
      ShowButton = True
    end
    object IB_Grid2: TIB_Grid
      Left = 301
      Top = 28
      Width = 73
      Height = 17
      CustomGlyphsSupplied = []
      Ctl3D = False
      ParentCtl3D = False
      ParentBackground = False
      TabOrder = 3
    end
    object IB_Edit4: TIB_Edit
      Left = 69
      Top = 78
      Width = 73
      Height = 21
      AutoLabel.Caption = 'Quantidade'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      TabOrder = 4
    end
    object IB_Edit5: TIB_Edit
      Left = 285
      Top = 78
      Width = 73
      Height = 21
      AutoLabel.Caption = 'Val. Unit'#225'rio'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      TabOrder = 5
    end
    object IB_Edit6: TIB_Edit
      Left = 498
      Top = 78
      Width = 100
      Height = 21
      AutoLabel.Caption = 'Valor Total'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      TabOrder = 6
    end
    object IB_Date2: TIB_Date
      Left = 69
      Top = 51
      Width = 91
      Height = 21
      AutoLabel.Caption = 'Validade'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      TabOrder = 7
      IncCellHeight = 1
      IncCellWidth = 2
      DrawYearArrow = False
    end
  end
  object IB_LookupCombo1: TIB_LookupCombo [4]
    Left = 147
    Top = 133
    Width = 454
    Height = 21
    DataSource = srcClifor
    ParentBackground = False
    TabOrder = 4
    CustomPopup = IB_Grid1
    ShowButton = True
  end
  object IB_Grid1: TIB_Grid [5]
    Left = 304
    Top = 133
    Width = 57
    Height = 17
    CustomGlyphsSupplied = []
    DataSource = srcClifor
    Ctl3D = False
    ParentCtl3D = False
    ParentBackground = False
    TabOrder = 5
  end
  object IB_Date1: TIB_Date [6]
    Left = 72
    Top = 106
    Width = 90
    Height = 21
    AutoLabel.Caption = 'Data'
    AutoLabel.Kind = albLeft
    ParentBackground = False
    TabOrder = 6
    IncCellHeight = 1
    IncCellWidth = 2
    DrawYearArrow = False
  end
  inherited IB_Query1: TIB_Query
    BeforePost = IB_Query1BeforePost
    Left = 16
    Top = 8
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 72
    Top = 8
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 144
    Top = 8
  end
  object Clifor: TIB_Query
    Left = 416
    Top = 56
  end
  object srcClifor: TIB_DataSource
    Dataset = Clifor
    Left = 472
    Top = 56
  end
  object Itens: TIB_Query
    IB_Connection = DMDados.Conexao
    CachedUpdates = True
    Left = 240
    Top = 416
  end
  object srcItens: TIB_DataSource
    Dataset = Itens
    Left = 288
    Top = 416
  end
end
