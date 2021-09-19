CREATE PROCEDURE SP_LOGIN

@usuario  varchar(30),
@contrasena varchar(45)

AS
BEGIN

select usuario,contrasena from usuarios where usuario=@usuario and contrasena=@contrasena
end




