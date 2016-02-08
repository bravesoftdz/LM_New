inherited fmContasPagarGrid: TfmContasPagarGrid
  Caption = 'Cadastro de contas a pagar'
  ClientHeight = 337
  ClientWidth = 754
  ExplicitWidth = 770
  ExplicitHeight = 376
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControles: TPanel
    Width = 754
    ExplicitWidth = 754
    inherited pnlBotao: TPanel
      Left = 72
      Top = 5
      Width = 628
      ExplicitLeft = 72
      ExplicitTop = 5
      ExplicitWidth = 628
      object BtnQuitar: TSpeedButton
        Left = 508
        Top = 0
        Width = 121
        Height = 43
        Caption = '&Quitar'
        OnClick = BtnQuitarClick
      end
    end
  end
  inherited IB_Grid1: TIB_Grid
    Width = 754
    Height = 284
    ExplicitWidth = 754
    ExplicitHeight = 284
  end
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'CODIGO=C'#243'digo'
      'DATA_EMISSAO=Data'
      'DATA_VENCIMENTO=Vencimento'
      'C.DATA_PAGAMENTO=Pagamento'
      'CLIENTE=Cliente'
      'PLANO_DE_CONTA=Plano de Conta'
      'C.VALOR=Valor'
      'C.VALOR_PAGREC=Valor Pago')
    FieldsVisible.Strings = (
      'DATA_PROGRAMADA=FALSE')
    SQL.Strings = (
      'Select c.codigo'
      '     , c.data_emissao'
      '     , c.data_vencimento'
      '     , c.data_pagrec'
      '     , cli.razao as cliente'
      '     , p.descricao as plano_de_conta'
      '     , c.valor'
      '     , c.valor_pagrec'
      'from contas c'
      'join clifor cli on cli.codigo = c.clifor'
      'left join planoconta p on p.codigo = c.plano_conta'
      'where c.tipo = 1')
    DeleteSQL.Strings = (
      'DELETE FROM CONTAS CONTAS'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
  end
end
