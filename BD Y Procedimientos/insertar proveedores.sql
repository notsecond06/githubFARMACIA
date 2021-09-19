CREATE PROCEDURE SP_INSERTAR_PROVEEDOREs

@id varchar(25),
@nombre varchar(45),
@contacto  varchar(45),
@licencia  varchar(45),
@fecha_venc date,
@direccion  varchar(45)

as
begin

insert proveedores (id, nombre, contacto, licencia, fecha_venc, direccion) values(@id, @nombre, @contacto, @licencia, @fecha_venc, @direccion)
end
