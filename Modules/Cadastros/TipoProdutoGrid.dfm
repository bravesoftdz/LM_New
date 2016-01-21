inherited fmTipoProdutoGrid: TfmTipoProdutoGrid
  Caption = 'Cadastro de Tipo Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'CODIGO=C'#243'digo'
      'TIPO_PRODUTO=Tipo Produto')
    SQL.Strings = (
      'select * from tipo_produto')
  end
end
