inherited fmMarcasGrid: TfmMarcasGrid
  Caption = 'Cadastro de Marcas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'CODIGO=C'#243'digo'
      'MARCA=Marca')
    SQL.Strings = (
      'select * from marcas')
    DeleteSQL.Strings = (
      'DELETE FROM MARCAS MARCAS'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      '')
  end
end
