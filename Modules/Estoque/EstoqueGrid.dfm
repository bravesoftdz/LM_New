inherited fmEstoqueGrid: TfmEstoqueGrid
  Caption = 'fmEstoqueGrid'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'PRODUTO=Produto')
    SQL.Strings = (
      'select * from movimentacao_estoque')
  end
end
