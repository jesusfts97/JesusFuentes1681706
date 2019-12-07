USE [practica_5]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Grupo]
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Facultad]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Departamento]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Calificacion]
GO
/****** Object:  Table [dbo].[Becarios]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Becarios]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 29/11/2019 11:50:09 ******/
DROP TABLE [dbo].[Alumnos]
GO
USE [master]
GO
/****** Object:  Database [practica_5]    Script Date: 29/11/2019 11:50:09 ******/
DROP DATABASE [practica_5]
GO
/****** Object:  Database [practica_5]    Script Date: 29/11/2019 11:50:09 ******/
CREATE DATABASE [practica_5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'practica_5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVIDOR\MSSQL\DATA\practica_5.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'practica_5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SERVIDOR\MSSQL\DATA\practica_5_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [practica_5] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [practica_5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [practica_5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [practica_5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [practica_5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [practica_5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [practica_5] SET ARITHABORT OFF 
GO
ALTER DATABASE [practica_5] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [practica_5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [practica_5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [practica_5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [practica_5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [practica_5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [practica_5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [practica_5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [practica_5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [practica_5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [practica_5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [practica_5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [practica_5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [practica_5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [practica_5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [practica_5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [practica_5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [practica_5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [practica_5] SET  MULTI_USER 
GO
ALTER DATABASE [practica_5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practica_5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [practica_5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [practica_5] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [practica_5] SET DELAYED_DURABILITY = DISABLED 
GO
USE [practica_5]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 29/11/2019 11:50:09 ******/
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
/****** Object:  Table [dbo].[Becarios]    Script Date: 29/11/2019 11:50:09 ******/
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
/****** Object:  Table [dbo].[Calificacion]    Script Date: 29/11/2019 11:50:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[id_calificacion] [int] NOT NULL,
	[parcial_1] [int] NULL,
	[parcial_2] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 29/11/2019 11:50:09 ******/
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
/****** Object:  Table [dbo].[Departamento]    Script Date: 29/11/2019 11:50:09 ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/11/2019 11:50:09 ******/
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
/****** Object:  Table [dbo].[Facultad]    Script Date: 29/11/2019 11:50:09 ******/
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
/****** Object:  Table [dbo].[Grupo]    Script Date: 29/11/2019 11:50:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[id_grupo] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 29/11/2019 11:50:09 ******/
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
	[apellido_materno] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 29/11/2019 11:50:09 ******/
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
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (20265, N'Andres', N'Hernandez', N'Sanchez')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (2, N'Carlos', N'Hernandez', N'Flores')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (3, N'Brayan', N'Fernandez', N'Gomez')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (4, N'Blanca', N'Peña', N'Herrera')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (5, N'Reyna', N'Alanis', N'Leon')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (6, N'Veronica', N'Castro', N'Lennin')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (7, N'Everardo', N'Ruis', N'Stalin')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (8, N'Brandon', N'Rivas', N'Stark')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (9, N'Javier', N'Hernandez', N'Flores')
INSERT [dbo].[Becarios] ([id_becario], [nombre], [apellido_paterno], [apellido_materno]) VALUES (10, N'Anastacio', N'Figueroa', N'Figueroa')
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (1, 100, 78)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (2, 80, 80)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (3, 75, 100)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (4, 96, 50)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (5, 70, 70)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (6, 80, 65)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (7, 90, 77)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (8, 95, 45)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (9, 65, 50)
INSERT [dbo].[Calificacion] ([id_calificacion], [parcial_1], [parcial_2]) VALUES (10, 80, 65)
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (15214, N'Licenciatura en Matemáticas')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (2, N'Licenciatura en Fisica')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (3, N'Licenciatura en Economia')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (4, N'Licenciatura en Artes Visuales')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (5, N'Licenciatura en Acturia')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (6, N'Licenciatura en Ciencias Computacionales')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (7, N'Licenciatura en Agronomia')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (8, N'Licenciatura en Derecho')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (9, N'Licenciatura en Criminologia')
INSERT [dbo].[Carrera] ([id_carrera], [nombre_carrera]) VALUES (10, N'Licenciatura en Diseño Industrial')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (526, N'Becas')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (2, N'Escolar')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (3, N'Tesoreria')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (4, N'Soporte Tecnico')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (5, N'Limpieza')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (6, N'Sub Direccion')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (7, N'Direccion')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (8, N'Coordinacion Academica')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (9, N'Deportes')
INSERT [dbo].[Departamento] ([id_departamento], [nombre_departamento]) VALUES (10, N'Sociedad de Alumnos')
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (525454, N'Juan', N'Perez', N'Cerda', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (2, N'Eber', N'Hernandez', N'Magaña', CAST(N'2015-12-20' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (3, N'Eduardo', N'Herrera', N'Rey', CAST(N'2014-03-30' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (4, N'Sergio', N'Perez', N'Hernandez', CAST(N'2015-07-16' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (5, N'Luis', N'Perez', N'Herrera', CAST(N'2017-08-16' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (6, N'Raul', N'Gomez', N'Monsivaes', CAST(N'2012-04-14' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (7, N'Miguel', N'Bose', N'Reyna', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (8, N'Felipe', N'Reina', N'Canseco', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (9, N'Juan', N'Manuel', N'Perez', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso]) VALUES (10, N'Andres', N'Hernandez', N'Lopez', CAST(N'2017-02-10' AS Date))
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (656454, N'Facultad de ciencias fisico matematicas')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (2, N'Facultad de musica')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (3, N'Facultad de medicina')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (4, N'Facultad de derecho')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (5, N'Facultad de arquitectura')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (6, N'Facultad de artes visuales')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (7, N'Facultad de ingenieria civil')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (8, N'Facultad de agronomia')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (9, N'Facultad de ciencias quimicas')
INSERT [dbo].[Facultad] ([id_facultad], [nombre_facultad]) VALUES (10, N'Facultad de ciencias biologicas')
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (1)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (2)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (3)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (4)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (5)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (6)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (7)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (8)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (9)
INSERT [dbo].[Grupo] ([id_grupo]) VALUES (7)
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
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (52648, N'Algebra')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (2, N'Calculo Diferencias')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (3, N'Fisica')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (4, N'Competencia Comunicativa')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (5, N'Programacion orientada a objetos')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (6, N'Ambiente y Sustentabilidad')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (7, N'Base de Datos')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (8, N'Telecomunicaciones')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (9, N'Calculo Integral')
INSERT [dbo].[Materia] ([id_materia], [nombre_materia]) VALUES (10, N'Algebra Lineal')
USE [master]
GO
ALTER DATABASE [practica_5] SET  READ_WRITE 
GO
