inherited fmEmpresasEditor: TfmEmpresasEditor
  Caption = 'fmEmpresasEditor'
  ClientHeight = 381
  ClientWidth = 668
  ExplicitWidth = 684
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControls: TPanel
    Width = 668
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 60
    Width = 667
    Height = 314
    Caption = 'Empresa'
    TabOrder = 1
    object IB_Edit1: TIB_Edit
      Left = 73
      Top = 24
      Width = 89
      Height = 21
      AutoLabel.Caption = 'Codigo:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 0
    end
    object IB_Edit2: TIB_Edit
      Left = 225
      Top = 24
      Width = 182
      Height = 21
      AutoLabel.Caption = 'Nome:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 1
    end
    object IB_Image1: TIB_Image
      Left = 432
      Top = 24
      Width = 225
      Height = 169
      ParentBackground = False
      TabOrder = 2
    end
    object IB_Edit3: TIB_Edit
      Left = 73
      Top = 105
      Width = 89
      Height = 21
      AutoLabel.Caption = 'Empresa:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 3
    end
    object IB_LookupCombo1: TIB_LookupCombo
      Left = 168
      Top = 105
      Width = 239
      Height = 21
      ParentBackground = False
      TabOrder = 4
      ShowButton = True
    end
    object IB_Edit4: TIB_Edit
      Left = 73
      Top = 78
      Width = 161
      Height = 21
      AutoLabel.Caption = 'CNPJ:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 5
    end
    object IB_Edit5: TIB_Edit
      Left = 297
      Top = 78
      Width = 110
      Height = 21
      AutoLabel.Caption = 'Inscri'#231#227'o:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 6
    end
    object IB_Edit6: TIB_Edit
      Left = 73
      Top = 51
      Width = 161
      Height = 21
      AutoLabel.Caption = 'Responsav'#233'l:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 7
    end
    object IB_Edit7: TIB_Edit
      Left = 273
      Top = 51
      Width = 134
      Height = 21
      AutoLabel.Caption = 'CPF:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 8
    end
    object IB_Edit8: TIB_Edit
      Left = 73
      Top = 132
      Width = 334
      Height = 21
      AutoLabel.Caption = 'Endere'#231'o:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 9
    end
    object IB_Edit9: TIB_Edit
      Left = 73
      Top = 159
      Width = 120
      Height = 21
      AutoLabel.Caption = 'Bairro:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 10
    end
    object IB_Edit10: TIB_Edit
      Left = 233
      Top = 159
      Width = 89
      Height = 21
      AutoLabel.Caption = 'CEP:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 11
    end
    object IB_Edit11: TIB_Edit
      Left = 360
      Top = 159
      Width = 47
      Height = 21
      AutoLabel.Caption = 'N'#186':'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 12
    end
    object IB_Edit12: TIB_Edit
      Left = 73
      Top = 186
      Width = 89
      Height = 21
      AutoLabel.Caption = 'Cidade:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 13
    end
    object IB_LookupCombo4: TIB_LookupCombo
      Left = 168
      Top = 186
      Width = 239
      Height = 21
      ParentBackground = False
      TabOrder = 14
      ShowButton = True
    end
    object IB_Edit13: TIB_Edit
      Left = 73
      Top = 213
      Width = 105
      Height = 21
      AutoLabel.Caption = 'Telefone:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 15
    end
    object IB_Edit14: TIB_Edit
      Left = 217
      Top = 213
      Width = 105
      Height = 21
      AutoLabel.Caption = 'Compl.'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 16
    end
    object IB_Edit15: TIB_Edit
      Left = 360
      Top = 213
      Width = 47
      Height = 21
      AutoLabel.Caption = 'UF:'
      AutoLabel.Kind = albLeft
      ParentBackground = False
      ReadOnly = True
      TabOrder = 17
    end
  end
  inherited IB_Query1: TIB_Query
    Left = 448
    Top = 8
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 528
    Top = 8
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 96
    Top = 8
  end
end
