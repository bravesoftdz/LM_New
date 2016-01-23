inherited fmReservaGrid: TfmReservaGrid
  Caption = 'Cadastro de Reservas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'R.CODIGO=C'#243'digo'
      'R."DATA"=Data'
      'R.QUANTIDADE=Quantidade'
      'R.VALOR_TOTAL=Valor'
      'DESC_PRODUTO=Produto'
      'RAZAO_CLIENTE=Cliente')
    FieldsVisible.Strings = (
      'R.PRODUTO=FALSE'
      'R.CLIENTE=FALSE'
      'R.CANCELADO=FALSE'
      'R.HORA=FALSE'
      'R.OBSERVACAO=FALSE'
      'R.VALOR_UNITARIO=FALSE'
      'R.USUARIO=FALSE')
    SQL.Strings = (
      'select r.*,'
      '       p.descricao as desc_produto,'
      '       c.razao as razao_cliente '
      'from reserva r'
      'left join produtos p on p.codigo = r.produto'
      'left join clifor c on c.codigo = r.cliente')
    DeleteSQL.Strings = (
      'DELETE FROM RESERVA R'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
  end
end
