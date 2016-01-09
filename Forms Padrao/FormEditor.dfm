inherited fmFormEditor: TfmFormEditor
  BorderStyle = bsDialog
  Caption = 'fmFormEditor'
  ClientHeight = 550
  ClientWidth = 638
  OnShow = FormShow
  ExplicitWidth = 644
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControles: TPanel
    Left = 0
    Top = 0
    Width = 638
    Height = 54
    Align = alTop
    TabOrder = 0
    DesignSize = (
      638
      54)
    object pnlBotao: TPanel
      Left = 198
      Top = 0
      Width = 250
      Height = 54
      Anchors = [akRight, akBottom]
      BevelOuter = bvNone
      DragCursor = crHandPoint
      TabOrder = 0
      object btnConcluir: TSpeedButton
        Left = 0
        Top = 5
        Width = 121
        Height = 43
        Caption = '&Concluir'
        OnClick = btnConcluirClick
      end
      object btnFechar: TSpeedButton
        Left = 127
        Top = 5
        Width = 121
        Height = 43
        Caption = '&Fechar'
        OnClick = btnFecharClick
      end
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
