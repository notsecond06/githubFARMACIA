CREATE PROCEDURE SP_INSERTAR_USUARIO

@id integer,
@nombre varchar(45),
@usuario varchar(30),
@contrasena varchar(45),
@rol varchar(15)

as
begin

insert usuarios (id, nombre, usuario, contrasena, rol) values(@id, @nombre, @usuario, @contrasena, @rol)
end
