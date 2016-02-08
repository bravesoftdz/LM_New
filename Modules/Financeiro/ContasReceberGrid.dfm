inherited fmContasReceberGrid: TfmContasReceberGrid
  Caption = 'Cadastro de contas a receber'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControles: TPanel
    inherited pnlBotao: TPanel
      Width = 628
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
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'CODIGO=C'#243'digo'
      'DATA_EMISSAO=Data'
      'DATA_VENCIMENTO=Vencimento'
      'C.DATA_PAGAMENTO=Pagamento'
      'CLIENTE=Cliente'
      'PLANO_DE_CONTA=Plano De Conta'
      'C.VALOR=Valor'
      'C.VALOR_PAGREC=Valor Recebido')
    FieldsVisible.Strings = (
      'DATA_PROGRAMADA=FALSE')
    SQL.Strings = (
      'Select c.codigo'
      '     , c.data_emissao'
      '     , c.data_vencimento'
      '     , c.data_pagamento'
      '     , cli.razao as cliente'
      '     , p.descricao as plano_de_conta'
      '     , c.valor'
      '     , c.valor_pagrec'
      'from contas c'
      'join clifor cli on cli.codigo = c.clifor'
      'left join planoconta p on p.codigo = c.plano_conta'
      'where c.tipo = 2')
    DeleteSQL.Strings = (
      'DELETE FROM CONTAS CONTAS'
      'WHERE'
      '   CODIGO = :OLD_CODIGO')
  end
end
