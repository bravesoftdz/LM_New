inherited fmRequisicaoGrid: TfmRequisicaoGrid
  Caption = 'Cadastro de Requisi'#231#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'R.CODIGO=C'#243'digo'
      'R."DATA"=Data'
      'R.VALOR_TOTAL=Valor Total'
      'R.DATA_PREVISTA=Data Prevista'
      'P.DESCRICAO=Produto'
      'FORNECEDOR=Fornecedor')
    FieldsVisible.Strings = (
      'R.PRODUTO=FALSE'
      'R.QUANTIDADE=FALSE'
      'R.FORNECEDOR=TRUE'
      'R.VALOR_UNITARIO=FALSE')
    SQL.Strings = (
      'select r.*'
      '     , p.descricao'
      '     , c.razao as fornecedor  '
      'from requisicao r'
      'left join produtos p on p.codigo = r.produto'
      'left join clifor c on c.codigo = r.fornecedor')
    DeleteSQL.Strings = (
      'DELETE FROM REQUISICAO R'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
  end
end
