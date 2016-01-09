inherited fmFuncionariosEditor: TfmFuncionariosEditor
  Caption = 'Funcion'#225'rios'
  ClientHeight = 357
  OnCreate = FormCreate
  ExplicitHeight = 386
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 54
    Width = 638
    Height = 303
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Funcion'#225'rio'
      object GroupBox1: TGroupBox
        Left = 3
        Top = 0
        Width = 614
        Height = 113
        Caption = 'Cadastro'
        TabOrder = 0
        object IB_Edit1: TIB_Edit
          Left = 56
          Top = 24
          Width = 81
          Height = 21
          AutoLabel.Caption = 'C'#243'digo:'
          AutoLabel.Kind = albLeft
          DataField = 'CODIGO'
          DataSource = IB_DataSource1
          ParentBackground = False
          ReadOnly = True
          TabOrder = 0
        end
        object IB_Edit2: TIB_Edit
          Left = 56
          Top = 51
          Width = 321
          Height = 21
          AutoLabel.Caption = 'Nome:'
          AutoLabel.Kind = albLeft
          DataField = 'NOME'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 1
        end
        object IB_Edit3: TIB_Edit
          Left = 56
          Top = 78
          Width = 137
          Height = 21
          AutoLabel.Caption = 'CPF:'
          AutoLabel.Kind = albLeft
          DataField = 'CPF'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 2
        end
        object IB_Edit4: TIB_Edit
          Left = 232
          Top = 24
          Width = 145
          Height = 21
          AutoLabel.Caption = 'Telefone:'
          AutoLabel.Kind = albLeft
          DataField = 'TELEFONE'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 3
        end
        object IB_Edit5: TIB_Edit
          Left = 280
          Top = 78
          Width = 321
          Height = 21
          AutoLabel.Caption = 'Email:'
          AutoLabel.Kind = albLeft
          DataField = 'EMAIL'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 4
        end
        object IB_Edit6: TIB_Edit
          Left = 504
          Top = 24
          Width = 97
          Height = 21
          AutoLabel.Caption = 'Data Nascimento:'
          AutoLabel.Kind = albLeft
          DataField = 'DATA_NASCIMENTO'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 5
        end
        object IB_Edit7: TIB_Edit
          Left = 504
          Top = 51
          Width = 97
          Height = 21
          AutoLabel.Caption = 'Data Admiss'#227'o:'
          AutoLabel.Kind = albLeft
          DataField = 'DATA_ADMISSAO'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 6
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 119
        Width = 614
        Height = 146
        Caption = 'Endere'#231'o'
        TabOrder = 1
        object IB_Edit8: TIB_Edit
          Left = 56
          Top = 25
          Width = 376
          Height = 21
          AutoLabel.Caption = 'Endere'#231'o:'
          AutoLabel.Kind = albLeft
          DataField = 'ENDERECO'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 0
        end
        object IB_Edit9: TIB_Edit
          Left = 504
          Top = 25
          Width = 97
          Height = 21
          AutoLabel.Caption = 'N'#250'mero:'
          AutoLabel.Kind = albLeft
          DataField = 'NUMERO'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 1
        end
        object IB_Edit10: TIB_Edit
          Left = 56
          Top = 52
          Width = 153
          Height = 21
          AutoLabel.Caption = 'Bairro:'
          AutoLabel.Kind = albLeft
          DataField = 'BAIRRO'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 2
        end
        object IB_Edit11: TIB_Edit
          Left = 318
          Top = 52
          Width = 114
          Height = 21
          AutoLabel.Caption = 'CEP:'
          AutoLabel.Kind = albLeft
          DataField = 'CEP'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 3
        end
        object IB_Edit12: TIB_Edit
          Left = 544
          Top = 52
          Width = 57
          Height = 21
          AutoLabel.Caption = 'Estado:'
          AutoLabel.Kind = albLeft
          DataField = 'ESTADO'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 4
        end
        object IB_Edit13: TIB_Edit
          Left = 56
          Top = 79
          Width = 81
          Height = 21
          AutoLabel.Caption = 'Cidade:'
          AutoLabel.Kind = albLeft
          DataField = 'CIDADE'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 5
        end
        object IB_LookupCombo1: TIB_LookupCombo
          Left = 143
          Top = 79
          Width = 234
          Height = 21
          DataSource = SourceCidades
          ParentBackground = False
          TabOrder = 6
          DisplayField = 'CIDADE'
          ShowButton = True
        end
        object IB_Edit14: TIB_Edit
          Left = 448
          Top = 79
          Width = 153
          Height = 21
          AutoLabel.Caption = 'Compl.'
          AutoLabel.Kind = albLeft
          DataField = 'COMPLEMENTO'
          DataSource = IB_DataSource1
          ParentBackground = False
          TabOrder = 7
        end
      end
    end
    object Usuário: TTabSheet
      Caption = 'Usu'#225'rio'
      ImageIndex = 1
      object SpeedButton1: TSpeedButton
        Left = 207
        Top = 38
        Width = 66
        Height = 22
        Caption = 'Alt. Senha'
        OnClick = SpeedButton1Click
      end
      object IB_Edit15: TIB_Edit
        Left = 64
        Top = 11
        Width = 137
        Height = 21
        AutoLabel.Caption = 'Usu'#225'rio:'
        AutoLabel.Kind = albLeft
        DataField = 'USUARIO'
        DataSource = IB_DataSource1
        ParentBackground = False
        TabOrder = 0
      end
      object IB_Edit16: TIB_Edit
        Left = 64
        Top = 38
        Width = 137
        Height = 21
        AutoLabel.Caption = 'Senha:'
        AutoLabel.Kind = albLeft
        DataField = 'SENHA'
        DataSource = IB_DataSource1
        Enabled = False
        ParentBackground = False
        TabOrder = 1
        PasswordChar = '*'
      end
      object IB_CheckBox1: TIB_CheckBox
        Left = 232
        Top = 11
        Width = 97
        Height = 17
        DataField = 'ATIVO'
        DataSource = IB_DataSource1
        BorderStyle = bsNone
        ParentBackground = False
        TabOrder = 2
        Caption = 'Ativo'
      end
    end
  end
  inherited IB_Query1: TIB_Query
    ColumnAttributes.Strings = (
      'ATIVO=BOOLEAN='#39'1,0'#39)
    FieldsCharCase.Strings = (
      'USUARIO=UPPER')
    FieldsEditMask.Strings = (
      'CPF=000.000.000-00'
      'CEP=00000-000')
    SQL.Strings = (
      'select * from usuarios where codigo = :codigo')
    DefaultValues.Strings = (
      'ATIVO=0')
    DeleteSQL.Strings = (
      'DELETE FROM USUARIOS USUARIOS'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE USUARIOS USUARIOS SET'
      '   USUARIOS.CODIGO = :CODIGO, /*PK*/'
      '   USUARIOS.USUARIO = :USUARIO,'
      '   USUARIOS.SENHA = :SENHA,'
      '   USUARIOS.NOME = :NOME,'
      '   USUARIOS.CPF = :CPF,'
      '   USUARIOS.TELEFONE = :TELEFONE,'
      '   USUARIOS.EMAIL = :EMAIL,'
      '   USUARIOS.ENDERECO = :ENDERECO,'
      '   USUARIOS.NUMERO = :NUMERO,'
      '   USUARIOS.COMPLEMENTO = :COMPLEMENTO,'
      '   USUARIOS.BAIRRO = :BAIRRO,'
      '   USUARIOS.CEP = :CEP,'
      '   USUARIOS.CIDADE = :CIDADE,'
      '   USUARIOS.PAPEL_DE_ACESSO = :PAPEL_DE_ACESSO,'
      '   USUARIOS.ESTADO = :ESTADO,'
      '   USUARIOS.DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '   USUARIOS.DATA_ADMISSAO = :DATA_ADMISSAO,'
      '   USUARIOS.ATIVO = :ATIVO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO USUARIOS('
      '   CODIGO, /*PK*/'
      '   USUARIO,'
      '   SENHA,'
      '   NOME,'
      '   CPF,'
      '   TELEFONE,'
      '   EMAIL,'
      '   ENDERECO,'
      '   NUMERO,'
      '   COMPLEMENTO,'
      '   BAIRRO,'
      '   CEP,'
      '   CIDADE,'
      '   PAPEL_DE_ACESSO,'
      '   ESTADO,'
      '   DATA_NASCIMENTO,'
      '   DATA_ADMISSAO,'
      '   ATIVO)'
      'VALUES ('
      '   :CODIGO,'
      '   :USUARIO,'
      '   :SENHA,'
      '   :NOME,'
      '   :CPF,'
      '   :TELEFONE,'
      '   :EMAIL,'
      '   :ENDERECO,'
      '   :NUMERO,'
      '   :COMPLEMENTO,'
      '   :BAIRRO,'
      '   :CEP,'
      '   :CIDADE,'
      '   :PAPEL_DE_ACESSO,'
      '   :ESTADO,'
      '   :DATA_NASCIMENTO,'
      '   :DATA_ADMISSAO,'
      '   :ATIVO)')
    KeyLinks.Strings = (
      'USUARIOS.CODIGO')
    Left = 480
    Top = 16
    ParamValues = (
      'CODIGO='#39'0'#39)
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 576
    Top = 16
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 528
    Top = 8
  end
  object Cidades: TIB_Query
    SQL.Strings = (
      'select * from cidades'
      'order by cidade')
    KeyLinks.Strings = (
      'codigo = cidade')
    KeySource = IB_DataSource1
    OrderingItemNo = 1
    OrderingItems.Strings = (
      'CIDADE=CIDADE;CIDADE DESC')
    OrderingLinks.Strings = (
      'CIDADE=ITEM=1')
    Left = 479
    Top = 312
  end
  object SourceCidades: TIB_DataSource
    Dataset = Cidades
    Left = 551
    Top = 312
  end
end
