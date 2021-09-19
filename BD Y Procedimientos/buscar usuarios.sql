CREATE PROCEDURE SP_BUSCAR_USUARIO

@id integer

AS

BEGIN

select nombre, usuario, contrasena, rol  from usuarios where id=@id
end