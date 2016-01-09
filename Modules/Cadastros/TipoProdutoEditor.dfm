inherited fmTipoProdutoEditor: TfmTipoProdutoEditor
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tipo Produto'
  ClientHeight = 139
  ClientWidth = 408
  ExplicitWidth = 414
  ExplicitHeight = 168
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
    ReadOnly = True
    TabOrder = 1
  end
  object IB_Edit2: TIB_Edit [1]
    Left = 64
    Top = 99
    Width = 321
    Height = 21
    AutoLabel.Caption = 'Marca:'
    AutoLabel.Kind = albLeft
    DataField = 'TIPO_PRODUTO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
  end
  inherited pnlControles: TPanel
    Width = 408
    ExplicitWidth = 408
    inherited pnlBotao: TPanel
      Left = 86
      ExplicitLeft = 86
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
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from tipo_produto where codigo = :codigo')
    DeleteSQL.Strings = (
      'DELETE FROM TIPO_PRODUTO TIPO_PRODUTO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE TIPO_PRODUTO TIPO_PRODUTO SET'
      '   TIPO_PRODUTO.CODIGO = :CODIGO, /*PK*/'
      '   TIPO_PRODUTO.TIPO_PRODUTO = :TIPO_PRODUTO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO TIPO_PRODUTO('
      '   CODIGO, /*PK*/'
      '   TIPO_PRODUTO)'
      'VALUES ('
      '   :CODIGO,'
      '   :TIPO_PRODUTO)')
    Left = 208
    Top = 56
    ParamValues = (
      'CODIGO=00000000')
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 264
    Top = 56
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 336
    Top = 56
  end
end
