USE [master]
GO
/****** Object:  Database [practica_2]    Script Date: 06/12/2019 05:10:03 p. m. ******/
CREATE DATABASE [practica_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'practica_2', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\practica_2.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'practica_2_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\practica_2_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [practica_2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [practica_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [practica_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [practica_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [practica_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [practica_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [practica_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [practica_2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [practica_2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [practica_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [practica_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [practica_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [practica_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [practica_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [practica_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [practica_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [practica_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [practica_2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [practica_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [practica_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [practica_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [practica_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [practica_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [practica_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [practica_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [practica_2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [practica_2] SET  MULTI_USER 
GO
ALTER DATABASE [practica_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practica_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [practica_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [practica_2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [practica_2]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 06/12/2019 05:10:03 p. m. ******/
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
/****** Object:  Table [dbo].[Becarios]    Script Date: 06/12/2019 05:10:03 p. m. ******/
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
/****** Object:  Table [dbo].[Calificacion]    Script Date: 06/12/2019 05:10:03 p. m. ******/
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
/****** Object:  Table [dbo].[Carrera]    Script Date: 06/12/2019 05:10:03 p. m. ******/
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
/****** Object:  Table [dbo].[Departamento]    Script Date: 06/12/2019 05:10:03 p. m. ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 06/12/2019 05:10:03 p. m. ******/
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
/****** Object:  Table [dbo].[Facultad]    Script Date: 06/12/2019 05:10:03 p. m. ******/
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
/****** Object:  Table [dbo].[Grupo]    Script Date: 06/12/2019 05:10:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[id_grupo] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 06/12/2019 05:10:03 p. m. ******/
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
/****** Object:  Table [dbo].[Materia]    Script Date: 06/12/2019 05:10:03 p. m. ******/
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
USE [master]
GO
ALTER DATABASE [practica_2] SET  READ_WRITE 
GO
