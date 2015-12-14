inherited fmFormEditor: TfmFormEditor
  Caption = 'fmFormEditor'
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControls: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
  end
  object IB_Query1: TIB_Query
    IB_Connection = DMDados.Conexao
    Left = 312
    Top = 152
  end
  object IB_DataSource1: TIB_DataSource
    Dataset = IB_Query1
    Left = 352
    Top = 184
  end
end
