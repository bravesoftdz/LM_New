inherited fmGrupoPlanoConGrid: TfmGrupoPlanoConGrid
  Caption = 'FmGruposGrid'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControles: TPanel
    ExplicitTop = 0
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from grupos'
      '')
  end
end