inherited fmFormEditor: TfmFormEditor
  Caption = 'fmFormEditor'
  ClientHeight = 540
  ClientWidth = 628
  ExplicitWidth = 644
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControls: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 54
    Align = alTop
    TabOrder = 0
    object btnConcluir: TSpeedButton
      Left = 191
      Top = 4
      Width = 121
      Height = 43
      Caption = '&Concluir'
      OnClick = btnConcluirClick
    end
    object btnFechar: TSpeedButton
      Left = 318
      Top = 4
      Width = 121
      Height = 43
      Caption = '&Fechar'
      OnClick = btnFecharClick
    end
  end
  object IB_Query1: TIB_Query
    IB_Connection = DMDados.Conexao
    IB_Transaction = IB_Transaction1
    Left = 312
    Top = 152
  end
  object IB_DataSource1: TIB_DataSource
    Dataset = IB_Query1
    Left = 344
    Top = 208
  end
  object IB_Transaction1: TIB_Transaction
    IB_Connection = DMDados.Conexao
    Isolation = tiCommitted
    Left = 400
    Top = 128
  end
end