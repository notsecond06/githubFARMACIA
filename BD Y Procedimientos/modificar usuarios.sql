CREATE PROCEDURE _SP_MODIFICAR_USUARIO
@id integer,
@nombre varchar(45),
@usuario varchar(30),
@contrasena varchar(45),
@rol varchar(15)

as
begin
UPDATE usuarios set nombre=@nombre, usuario=@usuario, contrasena=@contrasena, rol=@rol where id=@id
end