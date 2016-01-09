inherited fmGrupoPlanoConEditor: TfmGrupoPlanoConEditor
  Caption = 'Grupo de Plano de Contas'
  ClientHeight = 142
  ClientWidth = 443
  ExplicitWidth = 459
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 13
  object IB_Edit2: TIB_Edit [0]
    Left = 63
    Top = 99
    Width = 250
    Height = 21
    AutoLabel.Caption = 'Descri'#231#227'o:'
    AutoLabel.Kind = albLeft
    DataField = 'DESCRICAO'
    DataSource = IB_DataSource1
    ParentBackground = False
    TabOrder = 2
  end
  object IB_Edit1: TIB_Edit [1]
    Left = 63
    Top = 72
    Width = 90
    Height = 21
    AutoLabel.Caption = 'Codigo:'
    AutoLabel.Kind = albLeft
    DataField = 'CODIGO'
    DataSource = IB_DataSource1
    ParentBackground = False
    ReadOnly = True
    TabOrder = 1
  end
  inherited pnlControls: TPanel
    Width = 443
    ExplicitWidth = 443
    inherited btnConcluir: TSpeedButton
      Left = 47
      ExplicitLeft = 47
    end
    inherited btnFechar: TSpeedButton
      Left = 174
      ExplicitLeft = 174
    end
  end
  inherited IB_Query1: TIB_Query
    SQL.Strings = (
      'select * from grupos where codigo = :codigo')
    DeleteSQL.Strings = (
      'DELETE FROM GRUPOS GRUPOS'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    EditSQL.Strings = (
      'UPDATE GRUPOS GRUPOS SET'
      '   GRUPOS.CODIGO = :CODIGO, /*PK*/'
      '   GRUPOS.DESCRICAO = :DESCRICAO'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO GRUPOS('
      '   CODIGO, /*PK*/'
      '   DESCRICAO)'
      'VALUES ('
      '   :CODIGO,'
      '   :DESCRICAO)')
    Left = 56
    Top = 128
    ParamValues = (
      'CODIGO=00000000')
  end
  inherited IB_DataSource1: TIB_DataSource
    Left = 104
    Top = 128
  end
  inherited IB_Transaction1: TIB_Transaction
    Left = 160
  end
end
