object DMDados: TDMDados
  OldCreateOrder = False
  Height = 223
  Width = 293
  object Conexao: TIB_Connection
    CacheStatementHandles = False
    SQLDialect = 3
    Params.Strings = (
      'SQL DIALECT=3'
      'SERVER=192.168.0.100/3055'
      'PROTOCOL=TCP/IP'
      'PATH=lm'
      'USER NAME=sysdba')
    BeforeConnect = ConexaoBeforeConnect
    Left = 104
    Top = 64
  end
end
