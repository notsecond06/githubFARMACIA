USE [pro1]
GO
/****** Object:  Table [dbo].[medicamentos]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicamentos](
	[id] [varchar](25) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
	[proveedor] [varchar](25) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[preciocompra] [float] NOT NULL,
	[precioventa] [float] NOT NULL,
	[fvencimiento] [date] NOT NULL,
 CONSTRAINT [medicamentos_id_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[id] [varchar](25) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
	[contacto] [varchar](45) NOT NULL,
	[licencia] [varchar](45) NULL,
	[fecha_venc] [date] NULL,
	[direccion] [varchar](45) NOT NULL,
 CONSTRAINT [proveedores_id_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [int] NOT NULL,
	[nombre] [varchar](45) NOT NULL,
	[usuario] [varchar](30) NOT NULL,
	[contrasena] [varchar](45) NOT NULL,
	[rol] [varchar](15) NOT NULL,
 CONSTRAINT [usuarios_id_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'1', N'Cefalexina 500mg cápsula o comprimido', N'MEDICEL S.A.', N'receta', 0.7, 0.75, CAST(N'2020-05-20' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'10', N'Paracetamol', N'HALGAM S.A.', N'receta', 0.5, 0.1, CAST(N'2020-06-30' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'11', N'Paracetamol 500mg  cápsula o comprimido', N'HALGAM S.A.', N'receta', 0.5, 0.1, CAST(N'2020-06-30' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'2', N'Ciprofloxacina, 500mg tableta', N'MERCOPAN', N'receta', 0.75, 0.85, CAST(N'2020-06-12' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'3', N'Fluoxetina 20mg tableta o comprimido', N'TAGAROPULOS S.A.', N'receta', 0.5, 0.55, CAST(N'2020-04-15' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'4', N'Quetiapina Fumarato 100mg tableta ', N'NITROKEMIA', N'receta', 1.5, 1.65, CAST(N'2020-08-25' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'5', N'Amlodipina 5 mg tableta ', N'GS MEDICAL', N'receta', 0.5, 0.6, CAST(N'2020-09-18' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'6', N'Enalapril 20mg tableta', N'QUIMIFAR S. A.', N'receta', 0.2, 0.25, CAST(N'2020-10-15' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'7', N'Irbesartán 300 mg Tableta', N'UNIPHARM S. A.', N'receta', 0.65, 0.75, CAST(N'2020-12-15' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'8', N'Diclofenaco 9mg/5ml suspensión, 120 ml', N'MEDIMEX S.A.', N'receta', 6.25, 6.65, CAST(N'2020-07-14' AS Date))
INSERT [dbo].[medicamentos] ([id], [nombre], [proveedor], [descripcion], [preciocompra], [precioventa], [fvencimiento]) VALUES (N'9', N'Ibuprofeno 400mg gragea o comprimido', N'TECNO FARMA S.A.', N'receta', 0.15, 0.2, CAST(N'2020-09-16' AS Date))
INSERT [dbo].[proveedores] ([id], [nombre], [contacto], [licencia], [fecha_venc], [direccion]) VALUES (N'1', N'NITROKEMIA', N'Juan Perez', N'8-441 A/DNFD', CAST(N'2020-07-06' AS Date), N'Panama, Bella Vista')
INSERT [dbo].[proveedores] ([id], [nombre], [contacto], [licencia], [fecha_venc], [direccion]) VALUES (N'2', N'GS MEDICAL', N'Luis Mora', N'8-275 A/DNFD', CAST(N'2020-09-25' AS Date), N'Panama, Pueblo Nuevo')
INSERT [dbo].[proveedores] ([id], [nombre], [contacto], [licencia], [fecha_venc], [direccion]) VALUES (N'3', N'MEDIMEX S.A.', N'Ana Ruiz', N'8-044 A/DNFD', CAST(N'2020-03-08' AS Date), N'Panama, Costa del Este')
INSERT [dbo].[proveedores] ([id], [nombre], [contacto], [licencia], [fecha_venc], [direccion]) VALUES (N'4', N'TECNO FARMA S.A.', N'Carlos Almanza', N'8-305 A/DNFD', CAST(N'2020-12-13' AS Date), N'Panama, Los Andes')
INSERT [dbo].[proveedores] ([id], [nombre], [contacto], [licencia], [fecha_venc], [direccion]) VALUES (N'5', N'QUIMIFAR S. A.', N'Ruben Rodriguez', N'8-050 A/DNFD', CAST(N'2020-03-12' AS Date), N'Panama, Bella Vista')
INSERT [dbo].[proveedores] ([id], [nombre], [contacto], [licencia], [fecha_venc], [direccion]) VALUES (N'6', N'UNIPHARM S. A.', N'Carmen Carrasco', N'8-373 A/DNFD', CAST(N'2020-05-04' AS Date), N'Panama, Chanis')
INSERT [dbo].[proveedores] ([id], [nombre], [contacto], [licencia], [fecha_venc], [direccion]) VALUES (N'7', N'MEDICEL S.A.', N'Juan Perez', N'8-984 A/DNFD', CAST(N'2020-12-12' AS Date), N'Panama, Los Andes')
INSERT [dbo].[proveedores] ([id], [nombre], [contacto], [licencia], [fecha_venc], [direccion]) VALUES (N'8', N'HALGAM S.A.', N'Claudia Barros', N'8-090 A/DNFD', CAST(N'2020-10-08' AS Date), N'Panama, Costa del Este')
INSERT [dbo].[proveedores] ([id], [nombre], [contacto], [licencia], [fecha_venc], [direccion]) VALUES (N'9', N'MERCOPAN', N'Alina Carvalo	', N'8-1032 A/DNFD', CAST(N'2020-07-08' AS Date), N'Panama, Bella Vista')
INSERT [dbo].[usuarios] ([id], [nombre], [usuario], [contrasena], [rol]) VALUES (1, N'Deyvi Morales', N'deyvi.morales', N'deyvi', N'Administrador')
INSERT [dbo].[usuarios] ([id], [nombre], [usuario], [contrasena], [rol]) VALUES (2, N'A', N'a', N'a', N'Administrador')
INSERT [dbo].[usuarios] ([id], [nombre], [usuario], [contrasena], [rol]) VALUES (3, N'Ana', N'ana', N'ana', N'Colaborador')
INSERT [dbo].[usuarios] ([id], [nombre], [usuario], [contrasena], [rol]) VALUES (5, N'SEGUNDO VASQUEZ', N'Second123', N'second', N'Administrador')
INSERT [dbo].[usuarios] ([id], [nombre], [usuario], [contrasena], [rol]) VALUES (235, N'Juan', N'juan', N'juan', N'Colaborador')
INSERT [dbo].[usuarios] ([id], [nombre], [usuario], [contrasena], [rol]) VALUES (236, N'Carlos', N'carlos', N'carlos', N'Colaborador')
INSERT [dbo].[usuarios] ([id], [nombre], [usuario], [contrasena], [rol]) VALUES (237, N'235', N'Juan abrego', N'juan', N'juan')
INSERT [dbo].[usuarios] ([id], [nombre], [usuario], [contrasena], [rol]) VALUES (2345, N'Lina Arias', N'lina', N'lina', N'Colaborador')
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [licencia]
GO
ALTER TABLE [dbo].[proveedores] ADD  DEFAULT (NULL) FOR [fecha_venc]
GO
/****** Object:  StoredProcedure [dbo].[_SP_MODIFICAR_MEDICAMENTO]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[_SP_MODIFICAR_MEDICAMENTO]
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
GO
/****** Object:  StoredProcedure [dbo].[_SP_MODIFICAR_PROVEEDORES]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[_SP_MODIFICAR_PROVEEDORES]
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
GO
/****** Object:  StoredProcedure [dbo].[_SP_MODIFICAR_USUARIO]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[_SP_MODIFICAR_USUARIO]
@id integer,
@nombre varchar(45),
@usuario varchar(30),
@contrasena varchar(45),
@rol varchar(15)

as
begin
UPDATE usuarios set nombre=@nombre, usuario=@usuario, contrasena=@contrasena, rol=@rol where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_MEDICAMENTO]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BUSCAR_MEDICAMENTO]

@id varchar(25)

AS

BEGIN

select nombre, proveedor, descripcion, preciocompra, precioventa, fvencimiento  from medicamentos where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_PROVEEDORES]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BUSCAR_PROVEEDORES]

@id varchar(25)

AS

BEGIN

select nombre, contacto, licencia, fecha_venc, direccion  from proveedores where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_USUARIO]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BUSCAR_USUARIO]

@id integer

AS

BEGIN

select nombre, usuario, contrasena, rol  from usuarios where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_MEDICAMENTO]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINAR_MEDICAMENTO]

@id varchar(25)

as
begin

delete from medicamentos where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_PROVEEDORES]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINAR_PROVEEDORES]

@id varchar(25)

as
begin

delete from proveedores where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_USUARIO]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINAR_USUARIO]

@id integer

as
begin

delete from usuarios where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_MEDICAMENTO]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_MEDICAMENTO]

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
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_PROVEEDORES]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_PROVEEDORES]

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
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_USUARIO]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_USUARIO]

@id integer,
@nombre varchar(45),
@usuario varchar(30),
@contrasena varchar(45),
@rol varchar(15)

as
begin

insert usuarios (id, nombre, usuario, contrasena, rol) values(@id, @nombre, @usuario, @contrasena, @rol)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 14/12/2019 22:00:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LOGIN]

@usuario  varchar(30),
@contrasena varchar(45)

AS
BEGIN

select usuario,contrasena from usuarios where usuario=@usuario and contrasena=@contrasena
end
GO
