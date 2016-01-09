inherited fmGrupoPlanoConGrid: TfmGrupoPlanoConGrid
  Caption = 'Cadastro de Grupos de Plano de Contas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from grupos'
      '')
  end
end
