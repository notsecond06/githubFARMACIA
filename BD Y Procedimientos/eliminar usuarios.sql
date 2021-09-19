CREATE PROCEDURE SP_ELIMINAR_USUARIO

@id integer

as
begin

delete from usuarios where id=@id
end