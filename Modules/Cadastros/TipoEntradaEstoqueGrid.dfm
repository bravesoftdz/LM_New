inherited fmTipoEstradaEstoqueGrid: TfmTipoEstradaEstoqueGrid
  Caption = 'Cadastro de Tipo Entrada Estoque'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'TIPO_CREDITO_DEBITO=Tipo'
      'NOME=Nome'
      'CODIGO=C'#243'digo')
    SQL.Strings = (
      'select * from tipo_movimentacao_estoque')
    DeleteSQL.Strings = (
      'DELETE FROM TIPO_MOVIMENTACAO_ESTOQUE TIPO_MOVIMENTACAO_ESTOQUE'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      '')
  end
end
