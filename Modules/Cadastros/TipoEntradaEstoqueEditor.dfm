inherited fmTipoEntradaEstoqueEditor: TfmTipoEntradaEstoqueEditor
  Caption = 'Tipo Entrada Estoque'
  ClientHeight = 146
  ClientWidth = 435
  ExplicitWidth = 441
  ExplicitHeight = 175
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControles: TPanel
    Width = 435
    inherited pnlBotao: TPanel
      Left = 86
      Top = 5
      ExplicitLeft = 86
      ExplicitTop = 5
      inherited btnConcluir: TSpeedButton
        Top = 0
        ExplicitTop = 0
      end
      inherited btnFechar: TSpeedButton
        Top = 0
        ExplicitTop = 0
      end
    end
  end
  object IB_Edit1: TIB_Edit [1]
    Left = 56
    Top = 69
    Width = 81
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
    Left = 56
    Top = 96
    Width = 329
    Height = 21
    AutoLabel.Caption = 'Descri'#231#227'o:'
    AutoLabel.Kind = albLeft
    DataField = 'NOME'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
  end
  object IB_ComboBox1: TIB_ComboBox [3]
    Left = 240
    Top = 69
    Width = 145
    Height = 21
    AutoLabel.Caption = 'Tipo:'
    AutoLabel.Kind = albLeft
    DataField = 'TIPO_CREDITO_DEBITO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 3
    Style = csDropDownList
    Items.Strings = (
      'Entrada'
      'Sa'#237'da')
    ItemValues.Strings = (
      '1'
      '2')
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from tipo_movimentacao_estoque where codigo = :codigo')
    DeleteSQL.Strings = (
      'DELETE FROM TIPO_MOVIMENTACAO_ESTOQUE TIPO_MOVIMENTACAO_ESTOQUE'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE TIPO_MOVIMENTACAO_ESTOQUE TIPO_MOVIMENTACAO_ESTOQUE SET'
      '   TIPO_MOVIMENTACAO_ESTOQUE.CODIGO = :CODIGO, /*PK*/'
      '   TIPO_MOVIMENTACAO_ESTOQUE.NOME = :NOME,'
      
        '   TIPO_MOVIMENTACAO_ESTOQUE.TIPO_CREDITO_DEBITO = :TIPO_CREDITO' +
        '_DEBITO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO TIPO_MOVIMENTACAO_ESTOQUE('
      '   CODIGO, /*PK*/'
      '   NOME,'
      '   TIPO_CREDITO_DEBITO)'
      'VALUES ('
      '   :CODIGO,'
      '   :NOME,'
      '   :TIPO_CREDITO_DEBITO)')
    Left = 384
    Top = 64
    ParamValues = (
      'CODIGO=00000000')
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 392
    Top = 112
  end
end
