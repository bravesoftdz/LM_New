SET TERM ^ ;

create or alter procedure ESTORNA_CONTA (
    CODIGO integer)
as
begin
  /* Procedure Text */
  if (:codigo > 0) then
  begin
    update contas c set c.data_pagrec = null, 
            c.juros = null,
            c.multa = null,
            c.desconto = null,
            c.valor_pagrec = null
    where c.codigo = :codigo;
  end
  suspend;
end^

SET TERM ; ^

