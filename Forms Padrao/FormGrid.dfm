inherited fmFormGrid: TfmFormGrid
  Caption = 'fmFormGrid'
  ClientHeight = 503
  ClientWidth = 790
  ExplicitWidth = 806
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControles: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 65
    Align = alTop
    TabOrder = 0
    object btnIncluir: TSpeedButton
      Left = 64
      Top = 16
      Width = 121
      Height = 43
      Caption = '&Incluir'
      OnClick = btnIncluirClick
    end
    object btnAlterar: TSpeedButton
      Left = 191
      Top = 16
      Width = 121
      Height = 43
      Caption = '&Alterar'
    end
    object btnExcluir: TSpeedButton
      Left = 318
      Top = 16
      Width = 121
      Height = 43
      Caption = '&Excluir'
      OnClick = btnExcluirClick
    end
    object btnPesquisar: TSpeedButton
      Left = 445
      Top = 16
      Width = 121
      Height = 43
      Caption = '&Pesquisar'
    end
  end
  object IB_Grid1: TIB_Grid
    Left = 0
    Top = 65
    Width = 790
    Height = 438
    CustomGlyphsSupplied = []
    DataSource = IB_DataSource1
    Align = alClient
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 56
    ExplicitHeight = 447
  end
  object IB_Query1: TIB_Query
    IB_Connection = DMDados.Conexao
    Left = 384
    Top = 176
  end
  object IB_DataSource1: TIB_DataSource
    Dataset = IB_Query1
    Left = 464
    Top = 176
  end
end
