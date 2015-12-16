inherited fmCliForGrid: TfmCliForGrid
  Caption = 'fmCliForGrid'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from clifor')
    DeleteSQL.Strings = (
      'DELETE FROM CLIFOR CLIFOR'
      'WHERE'
      'CLIFOR.RDB$DB_KEY = :DB_KEY')
  end
end
