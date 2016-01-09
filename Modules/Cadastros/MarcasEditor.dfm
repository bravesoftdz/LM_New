inherited fmMarcasEditor: TfmMarcasEditor
  Caption = 'Marcas'
  ClientHeight = 143
  ClientWidth = 406
  ExplicitWidth = 422
  ExplicitHeight = 182
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControls: TPanel
    Width = 406
    inherited btnConcluir: TSpeedButton
      Left = 79
      Top = 5
      ExplicitLeft = 79
      ExplicitTop = 5
    end
    inherited btnFechar: TSpeedButton
      Left = 206
      Top = 5
      ExplicitLeft = 206
      ExplicitTop = 5
    end
  end
  object IB_Edit1: TIB_Edit [1]
    Left = 64
    Top = 72
    Width = 89
    Height = 21
    AutoLabel.Caption = 'Codigo:'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 1
  end
  object IB_Edit2: TIB_Edit [2]
    Left = 64
    Top = 99
    Width = 321
    Height = 21
    AutoLabel.Caption = 'Marca:'
    AutoLabel.Kind = albLeft
    DataField = 'MARCA'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from marcas where codigo = :codigo')
    DeleteSQL.Strings = (
      'DELETE FROM MARCAS MARCAS'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE MARCAS MARCAS SET'
      '   MARCAS.CODIGO = :CODIGO, /*PK*/'
      '   MARCAS.MARCA = :MARCA'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO MARCAS('
      '   CODIGO, /*PK*/'
      '   MARCA)'
      'VALUES ('
      '   :CODIGO,'
      '   :MARCA)')
    KeyLinks.Strings = (
      'MARCAS.CODIGO')
    Left = 272
    Top = 64
    ParamValues = (
      'CODIGO='#39'0'#39)
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 336
    Top = 64
  end
end
