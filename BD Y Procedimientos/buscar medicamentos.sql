CREATE PROCEDURE SP_BUSCAR_MEDICAMENTO

@id varchar(25)

AS

BEGIN

select nombre, proveedor, descripcion, preciocompra, precioventa, fvencimiento  from medicamentos where id=@id
end