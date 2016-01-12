inherited fmContasPagarGrid: TfmContasPagarGrid
  Caption = 'fmContasPagarGrid'
  ExplicitWidth = 320
  ExplicitHeight = 240
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
    DeleteSQL.Strings = (
      'DELETE FROM CONTAS CONTAS'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
  end
end
