inherited fmCliForGrid: TfmCliForGrid
  Caption = 'Cadastro de Clientes e Fornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'C.RAZAO=Razao'
      'C.CNPJ=CNPJ/CPF'
      'C.DATA_NASCIMENTO=Data Nascimento'
      'C.CELULAR=Celular'
      'C.TELEFONE=Fone'
      'C.EMAIL=Email'
      'C.ENDERECO=Endereco'
      'CD.CIDADE=Cidade')
    FieldsIndex.Strings = (
      'C.RAZAO'
      'C.CNPJ'
      'C.CELULAR'
      'C.TELEFONE'
      'C.RG_INCSESTADUAL'
      'C.EMAIL'
      'C.ENDERECO'
      'C.NUMERO'
      'C.COMPLEMENTO'
      'C.BAIRRO'
      'C.CEP'
      'C.ESTADO'
      'C.CIDADE'
      'C.CODIGO'
      'C.FANTASIA'
      'C.TIPO_PESSOA'
      'C.DATA_NASCIMENTO'
      'C.IE'
      'CD.CIDADE')
    FieldsVisible.Strings = (
      'C.RG_INCSESTADUAL=FALSE'
      'C.NUMERO=FALSE'
      'C.COMPLEMENTO=FALSE'
      'C.BAIRRO=FALSE'
      'C.CEP=FALSE'
      'C.ESTADO=FALSE'
      'C.CIDADE=FALSE'
      'C.CODIGO=FALSE'
      'C.FANTASIA=FALSE'
      'C.TIPO_PESSOA=FALSE'
      'C.IE=FALSE')
    SQL.Strings = (
      'select c.*'
      '     , cd.cidade'
      'from clifor c'
      'left join cidades cd on cd.codigo = c.cidade')
    DeleteSQL.Strings = (
      'DELETE FROM CLIFOR CLIFOR'
      'WHERE'
      'CLIFOR.RDB$DB_KEY = :DB_KEY')
  end
end
