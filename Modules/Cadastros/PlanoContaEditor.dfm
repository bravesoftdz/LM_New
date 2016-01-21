inherited fmPlanoConEditor: TfmPlanoConEditor
  Caption = 'Plano de Contas'
  ClientHeight = 164
  ClientWidth = 377
  ExplicitWidth = 383
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 346
    Top = 126
    Width = 23
    Height = 22
    Caption = '>>'
    OnClick = SpeedButton1Click
  end
  object IB_Edit1: TIB_Edit [1]
    Left = 72
    Top = 72
    Width = 89
    Height = 21
    AutoLabel.Caption = 'Codigo:'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    ReadOnly = True
    TabOrder = 1
  end
  object IB_Edit2: TIB_Edit [2]
    Left = 72
    Top = 99
    Width = 273
    Height = 21
    AutoLabel.Caption = 'Descri'#231#227'o:'
    AutoLabel.Kind = albLeft
    DataField = 'DESCRICAO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 3
  end
  object IB_LookupCombo1: TIB_LookupCombo [3]
    Left = 168
    Top = 126
    Width = 177
    Height = 21
    DataSource = SourceGrupos
    ParentBackground = False
    TabOrder = 5
    DisplayField = 'DESCRICAO'
    ShowButton = True
  end
  object IB_Edit3: TIB_Edit [4]
    Left = 72
    Top = 126
    Width = 89
    Height = 21
    AutoLabel.Caption = 'Grupo:'
    AutoLabel.Kind = albLeft
    DataField = 'GRUPO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 4
  end
  object IB_ComboBox1: TIB_ComboBox [5]
    Left = 208
    Top = 72
    Width = 137
    Height = 21
    AutoLabel.Caption = 'Tipo:'
    AutoLabel.Kind = albLeft
    DataField = 'TIPO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
    Style = csDropDownList
    Items.Strings = (
      'DESPESA'
      'RECEITA')
    ItemValues.Strings = (
      '1'
      '2')
  end
  inherited pnlControles: TPanel
    Width = 377
    ExplicitWidth = 377
    inherited pnlBotao: TPanel
      Left = 62
      ExplicitLeft = 62
      inherited btnConcluir: TSpeedButton
        Left = 2
        ExplicitLeft = 2
      end
      inherited btnFechar: TSpeedButton
        Left = 129
        ExplicitLeft = 129
      end
    end
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from planoconta where codigo = :codigo')
    DeleteSQL.Strings = (
      'DELETE FROM PLANOCONTA PLANOCONTA'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE PLANOCONTA PLANOCONTA SET'
      '   PLANOCONTA.CODIGO = :CODIGO, /*PK*/'
      '   PLANOCONTA.DESCRICAO = :DESCRICAO,'
      '   PLANOCONTA.TIPO = :TIPO,'
      '   PLANOCONTA.GRUPO = :GRUPO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO PLANOCONTA('
      '   CODIGO, /*PK*/'
      '   DESCRICAO,'
      '   TIPO,'
      '   GRUPO)'
      'VALUES ('
      '   :CODIGO,'
      '   :DESCRICAO,'
      '   :TIPO,'
      '   :GRUPO)')
    Left = 24
    ParamValues = (
      'CODIGO=')
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 72
    Top = 152
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 120
    Top = 152
  end
  object Grupos: TIB_Query
    IB_Connection = DMDados.Conexao
    SQL.Strings = (
      'select * from grupos')
    KeyLinks.Strings = (
      'codigo = grupo')
    KeySource = IB_DataSource1
    Left = 192
    Top = 152
  end
  object SourceGrupos: TIB_DataSource
    Dataset = Grupos
    Left = 264
    Top = 152
  end
end
