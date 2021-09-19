CREATE PROCEDURE _SP_MODIFICAR_MEDICAMENTO
@id varchar(25),
@nombre varchar(45),
@proveedor varchar(25),
@descripcion varchar(50),
@preciocompra float,
@precioventa float,
@fvencimiento date
as
begin

UPDATE medicamentos set nombre=@nombre, proveedor=@proveedor, descripcion=@descripcion, preciocompra=@preciocompra, precioventa=@precioventa, fvencimiento=@fvencimiento where id=@id
end