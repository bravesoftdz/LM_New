inherited fmMarcasEditor: TfmMarcasEditor
  Caption = 'Marcas'
  ClientHeight = 143
  ClientWidth = 406
  ExplicitWidth = 412
  ExplicitHeight = 172
  PixelsPerInch = 96
  TextHeight = 13
  object IB_Edit1: TIB_Edit [0]
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
  object IB_Edit2: TIB_Edit [1]
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
  inherited pnlControles: TPanel
    Width = 406
    ExplicitWidth = 406
    inherited pnlBotao: TPanel
      Left = 86
      ExplicitLeft = 86
      inherited btnConcluir: TSpeedButton
        Top = 4
        ExplicitTop = 4
      end
      inherited btnFechar: TSpeedButton
        Top = 4
        ExplicitTop = 4
      end
    end
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
