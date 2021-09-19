CREATE PROCEDURE SP_BUSCAR_PROVEEDORES

@id varchar(25)

AS

BEGIN

select nombre, contacto, licencia, fecha_venc, direccion  from proveedores where id=@id
end