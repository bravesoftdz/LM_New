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
    DeleteSQL.Strings = (
      'DELETE FROM TIPO_PRODUTO TIPO_PRODUTO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE TIPO_PRODUTO TIPO_PRODUTO SET'
      '   TIPO_PRODUTO.CODIGO = :CODIGO, /*PK*/'
      '   TIPO_PRODUTO.TIPO_PRODUTO = :TIPO_PRODUTO,'
      '   TIPO_PRODUTO.USUARIO = :USUARIO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO TIPO_PRODUTO('
      '   CODIGO, /*PK*/'
      '   TIPO_PRODUTO,'
      '   USUARIO)'
      'VALUES ('
      '   :CODIGO,'
      '   :TIPO_PRODUTO,'
      '   :USUARIO)')
    KeyLinks.Strings = (
      'TIPO_PRODUTO.CODIGO')
  end
end
