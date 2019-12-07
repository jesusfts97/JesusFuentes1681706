USE [practica_8]
GO
/****** Object:  Trigger [Trigger_Registro_INSERT]    Script Date: 04/12/2019 3:11:56 ******/
DROP TRIGGER [dbo].[Trigger_Registro_INSERT]
GO
/****** Object:  Trigger [trigger_2]    Script Date: 04/12/2019 3:11:56 ******/
DROP TRIGGER [dbo].[trigger_2]
GO
/****** Object:  StoredProcedure [dbo].[V_8]    Script Date: 04/12/2019 3:11:56 ******/
DROP PROCEDURE [dbo].[V_8]
GO
/****** Object:  StoredProcedure [dbo].[V_7]    Script Date: 04/12/2019 3:11:56 ******/
DROP PROCEDURE [dbo].[V_7]
GO
/****** Object:  StoredProcedure [dbo].[V_6]    Script Date: 04/12/2019 3:11:56 ******/
DROP PROCEDURE [dbo].[V_6]
GO
/****** Object:  StoredProcedure [dbo].[V_5]    Script Date: 04/12/2019 3:11:56 ******/
DROP PROCEDURE [dbo].[V_5]
GO
/****** Object:  StoredProcedure [dbo].[V_4]    Script Date: 04/12/2019 3:11:56 ******/
DROP PROCEDURE [dbo].[V_4]
GO
/****** Object:  StoredProcedure [dbo].[V_3]    Script Date: 04/12/2019 3:11:56 ******/
DROP PROCEDURE [dbo].[V_3]
GO
/****** Object:  StoredProcedure [dbo].[V_2]    Script Date: 04/12/2019 3:11:56 ******/
DROP PROCEDURE [dbo].[V_2]
GO
/****** Object:  StoredProcedure [dbo].[V_1]    Script Date: 04/12/2019 3:11:56 ******/
DROP PROCEDURE [dbo].[V_1]
GO
/****** Object:  View [dbo].[Tutor]    Script Date: 04/12/2019 3:11:56 ******/
DROP VIEW [dbo].[Tutor]
GO
/****** Object:  View [dbo].[Resultados]    Script Date: 04/12/2019 3:11:56 ******/
DROP VIEW [dbo].[Resultados]
GO
/****** Object:  View [dbo].[horario]    Script Date: 04/12/2019 3:11:56 ******/
DROP VIEW [dbo].[horario]
GO
/****** Object:  View [dbo].[Empleados_con_Bono]    Script Date: 04/12/2019 3:11:56 ******/
DROP VIEW [dbo].[Empleados_con_Bono]
GO
/****** Object:  View [dbo].[ClaseAsignada]    Script Date: 04/12/2019 3:11:56 ******/
DROP VIEW [dbo].[ClaseAsignada]
GO
/****** Object:  View [dbo].[AsignacionBecarios]    Script Date: 04/12/2019 3:11:56 ******/
DROP VIEW [dbo].[AsignacionBecarios]
GO
/****** Object:  View [dbo].[Alumnos_Reprobados]    Script Date: 04/12/2019 3:11:56 ******/
DROP VIEW [dbo].[Alumnos_Reprobados]
GO
/****** Object:  View [dbo].[Alumnos_Aprobados]    Script Date: 04/12/2019 3:11:56 ******/
DROP VIEW [dbo].[Alumnos_Aprobados]
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Registro]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Grupo]
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Facultad]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Departamento]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Calificacion]
GO
/****** Object:  Table [dbo].[Becarios]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Becarios]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 04/12/2019 3:11:56 ******/
DROP TABLE [dbo].[Alumnos]
GO
USE [master]
GO
/****** Object:  Database [practica_8]    Script Date: 04/12/2019 3:11:56 ******/
DROP DATABASE [practica_8]
GO
/****** Object:  Database [practica_8]    Script Date: 04/12/2019 3:11:56 ******/
CREATE DATABASE [practica_8]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'practica_8', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVIDOR\MSSQL\DATA\practica_8.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'practica_8_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVIDOR\MSSQL\DATA\practica_8_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [practica_8] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [practica_8].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [practica_8] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [practica_8] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [practica_8] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [practica_8] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [practica_8] SET ARITHABORT OFF 
GO
ALTER DATABASE [practica_8] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [practica_8] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [practica_8] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [practica_8] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [practica_8] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [practica_8] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [practica_8] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [practica_8] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [practica_8] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [practica_8] SET  ENABLE_BROKER 
GO
ALTER DATABASE [practica_8] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [practica_8] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [practica_8] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [practica_8] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [practica_8] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [practica_8] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [practica_8] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [practica_8] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [practica_8] SET  MULTI_USER 
GO
ALTER DATABASE [practica_8] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practica_8] SET DB_CHAINING OFF 
GO
ALTER DATABASE [practica_8] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [practica_8] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [practica_8] SET DELAYED_DURABILITY = DISABLED 
GO
USE [practica_8]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[id_alumnos] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Becarios]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Becarios](
	[id_becario] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[id_calificacion] [int] NOT NULL,
	[parcial_1] [int] NULL,
	[parcial_2] [int] NULL,
	[promedio]  AS (([parcial_1]+[parcial_2])/(2))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[id_carrera] [int] NOT NULL,
	[nombre_carrera] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[id_departamento] [int] NOT NULL,
	[nombre_departamento] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL,
	[fecha_ingreso] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facultad](
	[id_facultad] [int] NOT NULL,
	[nombre_facultad] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[id_grupo] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maestro](
	[id_maestro] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[apellido_paterno])+' ')+[apellido_materno])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[id_materia] [int] NOT NULL,
	[nombre_materia] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registro](
	[id] [int] NOT NULL,
	[Registro] [varchar](50) NULL,
	[fecha] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Alumnos_Aprobados]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Alumnos_Aprobados]
as select id_alumnos, apellido_paterno, apellido_materno, nombre, promedio
from Alumnos, Calificacion
where promedio > 70 and id_alumnos = id_calificacion 
GO
/****** Object:  View [dbo].[Alumnos_Reprobados]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Alumnos_Reprobados]
as select id_alumnos, apellido_paterno, apellido_materno, nombre, promedio
from Alumnos, Calificacion
where promedio < 70 and id_alumnos = id_calificacion 
GO
/****** Object:  View [dbo].[AsignacionBecarios]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[AsignacionBecarios]
as select apellido_paterno, apellido_materno, nombre, nombre_departamento
from Becarios, Departamento
where id_becario = '2' and id_departamento = '5'
GO
/****** Object:  View [dbo].[ClaseAsignada]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[ClaseAsignada]
as select apellido_paterno, apellido_materno, nombre, nombre_materia,id_grupo, nombre_carrera
from Maestro, Materia, Carrera, Grupo
where id_maestro = '2' and id_materia= '1' and id_carrera = '1' and id_grupo = '5'

GO
/****** Object:  View [dbo].[Empleados_con_Bono]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create view [dbo].[Empleados_con_Bono]
as select id_empleado, nombre
from Empleado
where fecha_ingreso between '01/01/2012' and '31/12/2015'
GO
/****** Object:  View [dbo].[horario]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[horario]
as select id_alumnos, nombre, id_grupo, nombre_materia
from Alumnos, Grupo, Materia
where id_alumnos = '1669625' and id_grupo = '1' and nombre_materia = 'Algebra'
GO
/****** Object:  View [dbo].[Resultados]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Resultados]
as select id_alumnos, nombre, apellido_paterno, apellido_materno, promedio
from Alumnos, Calificacion
where id_alumnos = id_calificacion
GO
/****** Object:  View [dbo].[Tutor]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Tutor]
as select nombre_completo, id_grupo
from Maestro, Grupo
where id_maestro = '4' and id_grupo = '5'
GO
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (1681706, N'Jesus', N'Fuentes', N'Hernandez')
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (2, N'Carlos', N'Hernandez', N'Perez')
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (3, N'Brayan', N'Fernandez', N'Flores')
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (4, N'Blanca', N'Peña', N'Ruiz')
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (5, N'Reyna', N'Alanis', N'Gomez')
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (6, N'Veronica', N'Castro', N'Trujillo')
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (7, N'Everardo', N'Ruiz', N'Castellan')
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (8, N'Brandon', N'Rivas', N'Cordoba')
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (9, N'Javier', N'Hernandez', N'Snow')
INSERT [dbo].[Alumnos] ([id_alumnos], [nombre], [apellido_paterno], [apellido_materno]) VALUES (10, N'Anastacio', N'Figueroa', N'Targaryen')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (1, N'Andres', N'Hernandez', N'Sanchez')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (2, N'Carlos', N'Hernandez', N'Flores')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (3, N'Brayan', N'Fernandez', N'Gomez')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (4, N'Blanca', N'Peña', N'Herrera')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (5, N'Reyna', N'Alanis', N'Leon')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (6, N'Veronica', N'Castro', N'Lennin')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (7, N'Everardo', N'Ruis', N'Stalin')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (8, N'Brandon', N'Rivas', N'Stark')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (9, N'Javier', N'Hernandez', N'Flores')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (10, N'Anastacio', N'Figueroa', N'Figueroa')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (11, N'Paulo', N'Flores', N'Havok')
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (1, 100, 78)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (2, 80, 80)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (3, 75, 100)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (4, 96, 50)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (5, 70, 41)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (6, 80, 65)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (7, 90, 77)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (8, 95, 45)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (9, 65, 50)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (10, 80, 65)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (11, 75, 50)
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (1, N'Licenciatura en Matemáticas')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (2, N'Licenciatura en Fisica')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (3, N'Licenciatura en Economia')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (4, N'Licenciatura en Artes Visuales')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (5, N'Licenciatura en Acturia')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (6, N'Licenciatura en Ciencias Computacionales')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (7, N'Licenciatura en Agronomia')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (8, N'Licenciatura en Derecho')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (9, N'Licenciatura en Criminologia')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (10, N'Licenciatura en Diseño Industrial')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (11, N'Ingeniero Civil')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (1, N'Becas')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (2, N'Escolar')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (3, N'Tesoreria')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (4, N'Soporte Tecnico')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (5, N'Limpieza')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (6, N'Sub Direccion')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (7, N'Direccion')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (8, N'Coordinacion Academica')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (9, N'Deportes')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (10, N'Sociedad de Alumnos')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (11, N'Desarrollo Sustentable')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (1, N'Juan', N'Perez', N'Cerda', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (2, N'Eber', N'Hernandez', N'Magaña', CAST(N'2015-12-20' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (3, N'Eduardo', N'Herrera', N'Rey', CAST(N'2014-03-30' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (4, N'Sergio', N'Perez', N'Hernandez', CAST(N'2015-07-16' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (5, N'Luis', N'Perez', N'Herrera', CAST(N'2017-08-16' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (6, N'Raul', N'Gomez', N'Monsivaes', CAST(N'2012-04-14' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (7, N'Miguel', N'Bose', N'Reyna', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (8, N'Felipe', N'Reina', N'Canseco', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (9, N'Juan', N'Manuel', N'Perez', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (10, N'Andres', N'Hernandez', N'Lopez', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (11, N'Jesus', N'Padilla', N'Saul', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (1, N'Facultad de ciencias fisico matematicas')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (2, N'Facultad de musica')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (3, N'Facultad de medicina')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (4, N'Facultad de derecho')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (5, N'Facultad de arquitectura')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (6, N'Facultad de artes visuales')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (7, N'Facultad de ingenieria civil')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (8, N'Facultad de agronomia')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (9, N'Facultad de ciencias quimicas')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (10, N'Facultad de ciencias biologicas')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (11, N'Facultad de economia')
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (1)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (2)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (3)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (4)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (5)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (6)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (7)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (8)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (9)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (10)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (11)
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (5685457, N'Pepe', N'Hernandez', N'Oroña')
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (2, N'Miguel', N'Fernandez', N'Nieto')
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (3, N'Raul', N'Perez', N'Fox')
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (4, N'Hector', N'Silva', N'Salinas')
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (5, N'Brandon', N'Davila', N'Rios')
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (6, N'Pablo', N'Hernandez', N'Reyes')
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (7, N'Juan', N'Hernandez', N'Hernandez')
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (8, N'Saul', N'Seanz', N'Cerda')
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (9, N'Laura', N'Yañez', N'Flores')
INSERT [dbo].[Maestro] ([id_maestro], [nombre], [apellido_paterno], [apellido_materno]) VALUES (10, N'Sofia', N'Guzman', N'Lopez')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (1, N'Algebra')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (2, N'Calculo Diferencias')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (3, N'Fisica')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (4, N'Competencia Comunicativa')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (5, N'Programacion orientada a objetos')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (6, N'Ambiente y Sustentabilidad')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (7, N'Base de Datos')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (8, N'Telecomunicaciones')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (9, N'Calculo Integral')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (10, N'Algebra Lineal')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (11, N'Derecho Informatico')
INSERT [dbo].[Registro] ([id], [Registro], [fecha]) VALUES (1, N'Se agregó el ID        13', N'May  4 2019  3:10AM')
INSERT [dbo].[Registro] ([id], [Registro], [fecha]) VALUES (2, N'Se elimino el ID        13', N'May  4 2019  3:10AM')
/****** Object:  StoredProcedure [dbo].[V_1]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_1]
AS
SELECT * FROM horario
GO
/****** Object:  StoredProcedure [dbo].[V_2]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_2]
AS
SELECT * FROM Resultados
GO
/****** Object:  StoredProcedure [dbo].[V_3]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_3]
AS
SELECT * FROM ClaseAsignada
GO
/****** Object:  StoredProcedure [dbo].[V_4]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_4]
AS
SELECT * FROM Alumnos_Aprobados
GO
/****** Object:  StoredProcedure [dbo].[V_5]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_5]
AS
SELECT * FROM Alumnos_Reprobados
GO
/****** Object:  StoredProcedure [dbo].[V_6]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_6]
AS
SELECT * FROM AsignacionBecarios
GO
/****** Object:  StoredProcedure [dbo].[V_7]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[V_7]
AS
SELECT * FROM Tutor
GO
/****** Object:  StoredProcedure [dbo].[V_8]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[V_8]
AS
SELECT * FROM Empleados_con_Bono
GO
/****** Object:  Trigger [dbo].[trigger_2]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trigger_2] ON [dbo].[Alumnos]
	for delete 
    AS
    BEGIN
		INSERT INTO Registro VALUES((SELECT COUNT(*) FROM Registro) + 1,'Se elimino el ID' + STR((SELECT id_alumnos FROM deleted)),GETDATE());
    END
GO
/****** Object:  Trigger [dbo].[Trigger_Registro_INSERT]    Script Date: 04/12/2019 3:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE TRIGGER [dbo].[Trigger_Registro_INSERT] ON [dbo].[Alumnos]
    for INSERT
    AS
    BEGIN
		INSERT INTO Registro VALUES((SELECT COUNT(*) FROM Registro) + 1,'Se agregó el ID' + STR((SELECT id_alumnos FROM inserted)),GETDATE());
    END
GO
USE [master]
GO
ALTER DATABASE [practica_8] SET  READ_WRITE 
GO
