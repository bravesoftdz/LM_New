inherited fmFuncionariosGrid: TfmFuncionariosGrid
  Caption = 'Cadastro de Funcionarios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'U.CODIGO=C'#243'digo'
      'U.NOME=Nome'
      'U.TELEFONE=Telefone'
      'U.ENDERECO=Endere'#231'o'
      'U.DATA_NASCIMENTO=Data Nascimento'
      'CIDADE=Cidade'
      'U.EMAIL=E-Mail')
    SQL.Strings = (
      'select u.codigo'
      '      ,u.nome'
      '      ,u.cpf'
      '      ,u.telefone'
      '      ,u.email'
      '      ,u.endereco'
      '      ,u.data_nascimento'
      '      ,c.cidade as cidade'
      'from usuarios u'
      'left join cidades c on c.codigo = u.cidade')
    DeleteSQL.Strings = (
      'DELETE FROM USUARIOS U'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
  end
end
