object DMDados: TDMDados
  OldCreateOrder = False
  Height = 223
  Width = 293
  object Conexao: TIB_Connection
    CacheStatementHandles = False
    SQLDialect = 3
    Params.Strings = (
      'SQL DIALECT=3'
      'SERVER=192.168.0.104/3055'
      'PROTOCOL=TCP/IP'
      'PATH=lm'
      'USER NAME=sysdba')
    BeforeConnect = ConexaoBeforeConnect
    Left = 88
    Top = 56
  end
end
