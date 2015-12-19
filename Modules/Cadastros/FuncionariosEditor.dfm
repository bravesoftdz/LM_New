inherited fmFuncionariosEditor: TfmFuncionariosEditor
  Caption = 'Funcion'#225'rios'
  ClientHeight = 357
  ExplicitHeight = 396
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 54
    Width = 628
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
          Width = 94
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
          ParentBackground = False
          TabOrder = 6
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
    end
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from usuarios where codigo = :codigo')
    Left = 480
    Top = 16
    ParamValues = (
      'CODIGO=')
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 576
    Top = 16
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 528
    Top = 24
  end
end
