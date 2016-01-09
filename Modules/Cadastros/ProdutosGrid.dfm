inherited fmProdutosGrid: TfmProdutosGrid
  Caption = 'Cadastro de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from produtos')
  end
end
