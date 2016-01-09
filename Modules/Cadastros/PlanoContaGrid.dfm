inherited fmPlanoConGrid: TfmPlanoConGrid
  Caption = 'Cadastro de Plano de Contas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select p.codigo'
      '     , p.descricao'
      '     , case p.tipo'
      '         when 1 then '#39'DEPESA'#39
      '         when 2 then '#39'RECEITA'#39
      '       end as tipo'
      '     , g.descricao as grupo'
      'from planoconta p'
      'left join grupos g on g.codigo = p.grupo')
  end
end
