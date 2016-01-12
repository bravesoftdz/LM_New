inherited fmReservaGrid: TfmReservaGrid
  Caption = 'Cadastro de Reservas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from reserva')
  end
end
