inherited fmEstoqueGrid: TfmEstoqueGrid
  Caption = 'fmEstoqueGrid'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlControles: TPanel
    inherited pnlBotao: TPanel
      Left = 85
      Width = 630
      ExplicitLeft = 85
      ExplicitWidth = 630
      inherited btnPesquisar: TSpeedButton
        Left = 507
        ExplicitLeft = 507
      end
      inherited btnIncluir: TSpeedButton
        Left = 440
        Top = 24
        Visible = False
        ExplicitLeft = 440
        ExplicitTop = 24
      end
      inherited btnExcluir: TSpeedButton
        Left = 380
        ExplicitLeft = 380
      end
      inherited btnAlterar: TSpeedButton
        Left = 253
        ExplicitLeft = 253
      end
      object btnEntrada: TSpeedButton
        Left = 127
        Top = 0
        Width = 121
        Height = 43
        Caption = 'En&trada'
        OnClick = btnEntradaClick
      end
      object btnSaida: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 43
        Caption = '&Sa'#237'da'
        OnClick = btnSaidaClick
      end
    end
  end
  inherited IB_Query1: TIB_Query
    FieldsDisplayLabel.Strings = (
      'PRODUTO=Produto'
      'TIPO_MOVIMENTO=Tipo'
      'P.DESCRICAO=Descri'#231#227'o'
      'CLIENTE_FORNECEDOR=Cli./Forn.'
      'ME.DATA_HORA=Data'
      'ME.QUANTIDADE=Quant.'
      'ME.VALOR_UNITARIO=Valor Unit'#225'rio'
      'ME.VALOR_TOTAL=Valor Total'
      'ME.DATA_VALIDADE=Data Validade')
    FieldsIndex.Strings = (
      'TIPO_MOVIMENTO'
      'ME.PRODUTO'
      'P.DESCRICAO'
      'CLIENTE_FORNECEDOR'
      'ME.CODIGO'
      'ME.DATA_HORA'
      'ME.QUANTIDADE'
      'ME.EMPRESA'
      'ME.USUARIO'
      'ME.TIPO_MOVIMENTO'
      'ME.CLIENTE_FORNECEDOR'
      'ME.OBS'
      'ME.VALOR_UNITARIO'
      'ME.VALOR_TOTAL'
      'ME.DATA_VALIDADE')
    FieldsVisible.Strings = (
      'ME.CLIENTE_FORNECEDOR=FALSE'
      'ME.CODIGO=FALSE'
      'ME.EMPRESA=FALSE'
      'ME.USUARIO=FALSE'
      'ME.OBS=FALSE')
    SQL.Strings = (
      'select case me.tipo_movimento'
      '   when 0 then '#39'Entrada'#39
      '   when 1 then '#39'Sa'#237'da'#39
      '   when 2 then '#39'Loca'#231#227'o'#39
      '   else '#39'N'#227'o catalogado'#39
      '   end as tipo_movimento'
      '  , p.descricao'
      '  , c.razao as cliente_fornecedor'
      '  , me.*'
      'from movimentacao_estoque me'
      'left join produtos p on p.codigo = me.produto'
      
        'left join tipo_movimentacao_estoque tme on tme.codigo = me.tipo_' +
        'movimento'
      'left join clifor c on c.codigo = me.cliente_fornecedor')
  end
end
