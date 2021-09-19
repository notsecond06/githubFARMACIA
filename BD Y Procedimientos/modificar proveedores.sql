CREATE PROCEDURE _SP_MODIFICAR_PROVEEDORES
@id varchar(25),
@nombre varchar(45),
@contacto  varchar(45),
@licencia  varchar(45),
@fecha_venc date,
@direccion  varchar(45)

as
begin
UPDATE proveedores set nombre=@nombre, contacto=@contacto, licencia=@licencia, fecha_venc=@fecha_venc, direccion=@direccion where id=@id
end