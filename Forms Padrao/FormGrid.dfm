inherited fmFormGrid: TfmFormGrid
  Caption = 'fmFormGrid'
  ClientHeight = 503
  ClientWidth = 790
  OnCreate = FormCreate
  ExplicitWidth = 806
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControles: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 53
    Align = alTop
    TabOrder = 0
    ExplicitTop = -6
    object Panel1: TPanel
      Left = 144
      Top = 4
      Width = 502
      Height = 43
      TabOrder = 0
      object btnPesquisar: TSpeedButton
        Left = 381
        Top = 0
        Width = 121
        Height = 43
        Caption = '&Pesquisar'
      end
      object btnIncluir: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 43
        Caption = '&Incluir'
        OnClick = btnIncluirClick
      end
      object btnExcluir: TSpeedButton
        Left = 254
        Top = 0
        Width = 121
        Height = 43
        Caption = '&Excluir'
        OnClick = btnExcluirClick
      end
      object btnAlterar: TSpeedButton
        Left = 127
        Top = 0
        Width = 121
        Height = 43
        Caption = '&Alterar'
        OnClick = btnAlterarClick
      end
    end
  end
  object IB_Grid1: TIB_Grid
    Left = 0
    Top = 53
    Width = 790
    Height = 450
    CustomGlyphsSupplied = []
    DataSource = IB_DataSource1
    Align = alClient
    OnDblClick = IB_Grid1DblClick
    ParentBackground = False
    TabOrder = 1
    RowSelect = True
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
