inherited fmEstoqueGrid: TfmEstoqueGrid
  Caption = 'fmEstoqueGrid'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'PRODUTO=Produto'
      'TIPO_MOVIMENTO=Tipo'
      'P.DESCRICAO=Descri'#231#227'o'
      'CLIENTE_FORNECEDOR=Cli./Forn.'
      'ME.DATA_HORA=Data'
      'ME.QUANTIDADE=Quant.'
      'ME.VALOR_UNITARIO=Valor Unit'#225'rio'
      'ME.VALOR_TOTAL=Valor Total'
      'ME.DATA_VALIDADE=Data Validade')
    FieldsIndex.Strings = (
      'TIPO_MOVIMENTO'
      'ME.PRODUTO'
      'P.DESCRICAO'
      'CLIENTE_FORNECEDOR'
      'ME.CODIGO'
      'ME.DATA_HORA'
      'ME.QUANTIDADE'
      'ME.EMPRESA'
      'ME.USUARIO'
      'ME.TIPO_MOVIMENTO'
      'ME.CLIENTE_FORNECEDOR'
      'ME.OBS'
      'ME.VALOR_UNITARIO'
      'ME.VALOR_TOTAL'
      'ME.DATA_VALIDADE')
    FieldsVisible.Strings = (
      'ME.CLIENTE_FORNECEDOR=FALSE'
      'ME.CODIGO=FALSE'
      'ME.EMPRESA=FALSE'
      'ME.USUARIO=FALSE'
      'ME.OBS=FALSE')
    SQL.Strings = (
      'select'
      'tme.nome as tipo_movimento,'
      'p.descricao,'
      'c.razao as cliente_fornecedor,'
      'me.*'
      'from'
      'movimentacao_estoque me'
      'left join produtos p'
      'on p.codigo = me.produto'
      'left join tipo_movimentacao_estoque tme'
      'on tme.codigo = me.tipo_movimento'
      'left join clifor c'
      'on c.codigo = me.cliente_fornecedor')
  end
end
