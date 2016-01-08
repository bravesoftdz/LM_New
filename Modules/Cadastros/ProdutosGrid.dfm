inherited fmProdutosGrid: TfmProdutosGrid
  Caption = 'fmProdutosGrid'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControles: TPanel
    ExplicitTop = 0
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from produtos')
  end
end
