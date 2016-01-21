inherited fmProdutosGrid: TfmProdutosGrid
  Caption = 'Cadastro de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'P.CODIGO=C'#243'digo'
      'P.DESCRICAO=Descricao'
      'P.VALOR=Valor'
      'P.TAMANHO=Tamanho'
      'P.COR=Cor'
      'P.TIPO=Tipo'
      'M.MARCA=Marca'
      'TP.TIPO_PRODUTO=Tipo Produto')
    FieldsVisible.Strings = (
      'P.MARCA=FALSE'
      'P.GRUPO=FALSE'
      'P.TIPO=FALSE')
    SQL.Strings = (
      'select p.*,'
      '       m.marca,'
      '       tp.tipo_produto'
      'from produtos p'
      'left join marcas m on m.codigo = p.marca'
      'left join tipo_produto tp on tp.codigo = p.tipo')
  end
end
