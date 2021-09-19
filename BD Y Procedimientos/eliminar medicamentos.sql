CREATE PROCEDURE SP_ELIMINAR_MEDICAMENTO

@id varchar(25)

as
begin

delete from medicamentos where id=@id
end