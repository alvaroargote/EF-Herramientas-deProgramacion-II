USE [master]
GO
/****** Object:  Database [ClinicaVeterinaria]    Script Date: 23/12/2023 12:53:53
Scaffold-DbContext "Data Source=DESKTOP-6EGJLK4\SQLEXPRESS01;Initial Catalog=TiendaVirtualDB;TrustServerCertificate=True; User ID=sa;Password=Dni09128614;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models
******/
CREATE DATABASE [ClinicaVeterinaria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClinicaVeterinaria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\ClinicaVeterinaria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ClinicaVeterinaria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\ClinicaVeterinaria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
/* WITH CATALOG_COLLATION = DATABASE_DEFAULT*/
GO
ALTER DATABASE [ClinicaVeterinaria] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClinicaVeterinaria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClinicaVeterinaria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ClinicaVeterinaria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClinicaVeterinaria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClinicaVeterinaria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ClinicaVeterinaria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClinicaVeterinaria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClinicaVeterinaria] SET  MULTI_USER 
GO
ALTER DATABASE [ClinicaVeterinaria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClinicaVeterinaria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClinicaVeterinaria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClinicaVeterinaria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ClinicaVeterinaria] SET DELAYED_DURABILITY = DISABLED 
GO
/*ALTER DATABASE [ClinicaVeterinaria] SET ACCELERATED_DATABASE_RECOVERY = OFF  */
GO
ALTER DATABASE [ClinicaVeterinaria] SET QUERY_STORE = OFF
GO
USE [ClinicaVeterinaria]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 23/12/2023 12:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[CitaID] [int] NOT NULL,
	[MascotaID] [int] NULL,
	[FechaHora] [datetime] NULL,
	[MotivoConsulta] [varchar](100) NULL,
	[Observaciones] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[CitaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 23/12/2023 12:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Telefono] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialMedico]    Script Date: 23/12/2023 12:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialMedico](
	[HistorialID] [int] NOT NULL,
	[MascotaID] [int] NULL,
	[ServicioID] [int] NULL,
	[FechaServicio] [date] NULL,
	[Diagnostico] [text] NULL,
	[Receta] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[HistorialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mascotas]    Script Date: 23/12/2023 12:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascotas](
	[MascotaID] [int] NOT NULL,
	[NombreMascota] [varchar](50) NULL,
	[ClienteID] [int] NULL,
	[Especie] [varchar](50) NULL,
	[Edad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MascotaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 23/12/2023 12:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[ServicioID] [int] NOT NULL,
	[NombreServicio] [varchar](50) NULL,
	[Costo] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ServicioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD FOREIGN KEY([MascotaID])
REFERENCES [dbo].[Mascotas] ([MascotaID])
GO
ALTER TABLE [dbo].[HistorialMedico]  WITH CHECK ADD FOREIGN KEY([MascotaID])
REFERENCES [dbo].[Mascotas] ([MascotaID])
GO
ALTER TABLE [dbo].[HistorialMedico]  WITH CHECK ADD FOREIGN KEY([ServicioID])
REFERENCES [dbo].[Servicios] ([ServicioID])
GO
ALTER TABLE [dbo].[Mascotas]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
USE [master]
GO
ALTER DATABASE [ClinicaVeterinaria] SET  READ_WRITE 
GO
