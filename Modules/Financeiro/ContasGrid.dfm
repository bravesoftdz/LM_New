inherited fmContasGrid: TfmContasGrid
  Caption = 'fmContasGrid'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'CODIGO=C'#243'digo'
      'DATA_EMISSAO=Data'
      'DATA_VENCIMENTO=Vencimento')
    FieldsVisible.Strings = (
      'DATA_PROGRAMADA=FALSE')
    SQL.Strings = (
      'select *'
      'from contas')
  end
end
