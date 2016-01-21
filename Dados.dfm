object DMDados: TDMDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 223
  Width = 293
  object Conexao: TIB_Connection
    CacheStatementHandles = False
    SQLDialect = 3
    Params.Strings = (
      'SQL DIALECT=3'
      'SERVER=127.0.0.1/3055'
      'PROTOCOL=TCP/IP'
      'PATH=lm'
      'USER NAME=sysdba'
      'BUFFERS=<default>')
    BeforeConnect = ConexaoBeforeConnect
    Left = 104
    Top = 64
  end
end
