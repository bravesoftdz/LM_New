inherited fmMarcasGrid: TfmMarcasGrid
  Caption = 'Cadastro de Marcas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from marcas')
  end
end
