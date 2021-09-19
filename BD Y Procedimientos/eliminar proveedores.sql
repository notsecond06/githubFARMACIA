CREATE PROCEDURE SP_ELIMINAR_PROVEEDORES

@id varchar(25)

as
begin

delete from proveedores where id=@id
end