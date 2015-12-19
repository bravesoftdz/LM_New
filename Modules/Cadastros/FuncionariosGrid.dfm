inherited fmFuncionariosGrid: TfmFuncionariosGrid
  Caption = 'Funcionarios'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from usuarios')
  end
end
