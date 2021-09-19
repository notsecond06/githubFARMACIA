CREATE PROCEDURE SP_INSERTAR_MEDICAMENTO

@id varchar(25),
@nombre varchar(45),
@proveedor varchar(25),
@descripcion varchar(50),
@preciocompra float,
@precioventa float,
@fvencimiento date
as
begin

insert medicamentos (id, nombre, proveedor, descripcion, preciocompra, precioventa, fvencimiento) values(@id, @nombre, @proveedor, @descripcion, @preciocompra, @precioventa, @fvencimiento)
end
