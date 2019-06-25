USE [ProyectoServiu]
GO
/****** Object:  Table [dbo].[Banco]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banco](
	[id_banco] [int] NOT NULL,
	[nombre_banco] [varchar](50) NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[id_banco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carga]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carga](
	[rut_carga_familiar] [int] NOT NULL,
	[nombre_carga] [varchar](50) NULL,
	[apellido_paterno] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
 CONSTRAINT [PK_Carga_Familiar] PRIMARY KEY CLUSTERED 
(
	[rut_carga_familiar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Certificado_Permanencia]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Certificado_Permanencia](
	[id_certificado] [int] IDENTITY(1,1) NOT NULL,
	[Detalle] [varchar](50) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_Certificado_Permanencia] PRIMARY KEY CLUSTERED 
(
	[id_certificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comuna]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comuna](
	[id_comuna] [int] NOT NULL,
	[nombre_comuna] [varchar](50) NULL,
	[id_region] [int] NOT NULL,
 CONSTRAINT [PK_Comuna] PRIMARY KEY CLUSTERED 
(
	[id_comuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Consultor]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Consultor](
	[rut_consultor] [int] NOT NULL,
	[nombre] [varchar](250) NULL,
	[apellido] [varchar](250) NULL,
	[email] [varchar](250) NULL,
	[telefono] [int] NULL,
 CONSTRAINT [PK_Consultor] PRIMARY KEY CLUSTERED 
(
	[rut_consultor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Conyuge]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Conyuge](
	[rut_conyuge] [int] NOT NULL,
	[nombre_conyuge] [varchar](50) NULL,
	[apellido_paterno] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[id_nacionalidad] [int] NULL,
 CONSTRAINT [PK_Conyuge] PRIMARY KEY CLUSTERED 
(
	[rut_conyuge] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cuenta](
	[id_cuenta] [int] NOT NULL,
	[nombre_cuenta] [varchar](50) NULL,
	[id_tipo_cuenta] [int] NOT NULL,
	[id_banco] [int] NOT NULL,
	[cantidad] [int] NULL,
 CONSTRAINT [PK_Cuenta Ahorro] PRIMARY KEY CLUSTERED 
(
	[id_cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Deposito]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposito](
	[id_deposito] [int] NOT NULL,
	[monto] [int] NULL,
 CONSTRAINT [PK_deposito] PRIMARY KEY CLUSTERED 
(
	[id_deposito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Deposito_Cuenta]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposito_Cuenta](
	[id_deposito_cuenta] [int] NOT NULL,
	[id_cuenta] [int] NULL,
	[id_deposito] [int] NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK_Deposito_Cuenta] PRIMARY KEY CLUSTERED 
(
	[id_deposito_cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Domicilio](
	[id_domicilio] [int] NOT NULL,
	[calle] [varchar](50) NULL,
	[numero] [varchar](50) NULL,
	[block] [varchar](50) NULL,
	[departamento] [varchar](50) NULL,
	[manzana] [varchar](50) NULL,
	[sitio] [varchar](50) NULL,
	[id_comuna] [int] NULL,
	[fecha] [date] NULL,
	[estado] [int] NULL,
	[poblacion_villa] [varchar](250) NULL,
	[referencias] [varchar](250) NULL,
 CONSTRAINT [PK_Domicilio] PRIMARY KEY CLUSTERED 
(
	[id_domicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado_Civil]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado_Civil](
	[id_estado_civil] [int] NOT NULL,
	[nombre_estado_civil] [varchar](50) NULL,
	[puntaje] [int] NULL,
 CONSTRAINT [PK_Estado Civil] PRIMARY KEY CLUSTERED 
(
	[id_estado_civil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Formulario_A]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formulario_A](
	[id_formularioA] [int] NOT NULL,
	[fecha_recepcion] [date] NULL,
	[nombre_receptor] [varchar](250) NULL,
	[rut_postulante] [int] NULL,
	[id_vivienda] [int] NULL,
 CONSTRAINT [PK_Formulario_A] PRIMARY KEY CLUSTERED 
(
	[id_formularioA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Informe_Tecnico]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informe_Tecnico](
	[id_folio_informe] [int] NOT NULL,
	[fecha_solicitud] [date] NULL,
	[fecha_inspeccion] [date] NULL,
	[id_formularioA] [int] NULL,
	[id_vivienda] [int] NULL,
	[rut_consultor] [int] NULL,
 CONSTRAINT [PK_Informe_Tecnico] PRIMARY KEY CLUSTERED 
(
	[id_folio_informe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nacionalidad]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nacionalidad](
	[id_nacionalidad] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Nacionalidad] PRIMARY KEY CLUSTERED 
(
	[id_nacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Postulante]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Postulante](
	[rut_postulante] [int] NOT NULL,
	[primer_nombre] [varchar](50) NULL,
	[segundo_nombre] [varchar](50) NULL,
	[apellido_paterno] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
	[telefono_trabajo] [int] NULL,
	[telefono_domicilio] [int] NULL,
	[telefono_movil] [int] NULL,
	[codigo_postal] [int] NULL,
	[email] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[id_nacionalidad] [int] NOT NULL,
	[id_estado_civil] [int] NOT NULL,
	[id_cuenta] [int] NOT NULL,
	[id_domicilio] [int] NOT NULL,
	[sueldo_liquido] [int] NULL,
	[id_pueblo_originario] [int] NULL,
	[id_titulo] [int] NULL,
	[id_certificado] [int] NULL,
 CONSTRAINT [PK_Postulante_1] PRIMARY KEY CLUSTERED 
(
	[rut_postulante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Postulante_Carga]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulante_Carga](
	[rut_postulante] [int] NULL,
	[rut_carga_familiar] [int] NULL,
	[fecha] [date] NULL,
	[estado] [int] NULL,
	[id_relacion] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Postulante_Conyuge]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulante_Conyuge](
	[rut_postulante] [int] NULL,
	[rut_conyuge] [int] NULL,
	[fecha] [date] NULL,
	[estado] [int] NULL,
	[id_postulante_conyugue] [int] NOT NULL,
 CONSTRAINT [PK_Postulante_Conyuge] PRIMARY KEY CLUSTERED 
(
	[id_postulante_conyugue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proceso]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proceso](
	[id_proceso] [int] IDENTITY(1,1) NOT NULL,
	[año] [varchar](250) NULL,
	[rut_postulante] [int] NULL,
	[puntaje_carga] [int] NULL,
	[cantidad_cargas] [int] NULL,
 CONSTRAINT [PK_Proceso] PRIMARY KEY CLUSTERED 
(
	[id_proceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Propietario]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Propietario](
	[rut_propietario] [int] NOT NULL,
	[nombres_propietario] [varchar](50) NULL,
	[apellido_paterno] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
	[telefono] [int] NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_Propietario] PRIMARY KEY CLUSTERED 
(
	[rut_propietario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pueblo_Originario]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pueblo_Originario](
	[id_pueblo_originario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NULL,
	[estado] [int] NULL,
	[puntaje] [int] NULL,
 CONSTRAINT [PK_Pueblo_Originario] PRIMARY KEY CLUSTERED 
(
	[id_pueblo_originario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Region](
	[id_region] [int] NOT NULL,
	[nombre_region] [varchar](50) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[id_region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[relacion_carga]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[relacion_carga](
	[id_relacion] [int] NOT NULL,
	[detalle] [varchar](250) NULL,
 CONSTRAINT [PK_relacion_carga] PRIMARY KEY CLUSTERED 
(
	[id_relacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_Cuenta]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Cuenta](
	[id_tipo_cuenta] [int] NOT NULL,
	[tipo_cuenta] [varchar](50) NULL,
 CONSTRAINT [PK_Tipo_Cuenta] PRIMARY KEY CLUSTERED 
(
	[id_tipo_cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_titulo]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_titulo](
	[id_tipo_titulo] [int] NOT NULL,
	[titulo] [varchar](250) NULL,
	[puntaje] [int] NULL,
 CONSTRAINT [PK_tipo_titulo] PRIMARY KEY CLUSTERED 
(
	[id_tipo_titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_vivienda]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_vivienda](
	[id_tipo_vivienda] [int] NOT NULL,
	[nombre_tipo_vivienda] [varchar](50) NULL,
 CONSTRAINT [PK_Tipo_vivienda] PRIMARY KEY CLUSTERED 
(
	[id_tipo_vivienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Titulo]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Titulo](
	[id_titulo] [int] NOT NULL,
	[nombre_titulo] [varchar](50) NULL,
	[estado] [int] NULL,
	[id_tipo_titulo] [int] NULL,
 CONSTRAINT [PK_Titulo] PRIMARY KEY CLUSTERED 
(
	[id_titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tramo_Ahorro]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tramo_Ahorro](
	[id_monto_ahorro] [int] NOT NULL,
	[minimo] [int] NULL,
	[maximo] [int] NULL,
	[puntaje] [int] NULL,
 CONSTRAINT [PK_Tramo_Ahorro] PRIMARY KEY CLUSTERED 
(
	[id_monto_ahorro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tramo_Carga_Familiar]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tramo_Carga_Familiar](
	[id_tramo_carga_familiar] [int] NOT NULL,
	[minimo] [int] NULL,
	[maximo] [int] NULL,
	[puntaje] [int] NULL,
 CONSTRAINT [PK_Tramo_Carga_Familiar] PRIMARY KEY CLUSTERED 
(
	[id_tramo_carga_familiar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tramo_Edad]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tramo_Edad](
	[id_tramo_edad] [int] NOT NULL,
	[minimo] [int] NULL,
	[maximo] [int] NULL,
	[puntaje] [int] NOT NULL,
 CONSTRAINT [PK_Tramo_Edad_1] PRIMARY KEY CLUSTERED 
(
	[id_tramo_edad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tramo_vivienda]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tramo_vivienda](
	[id_tramo] [int] NOT NULL,
	[Detalle_UF] [int] NULL,
 CONSTRAINT [PK_Tramo] PRIMARY KEY CLUSTERED 
(
	[id_tramo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UF]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UF](
	[id_uf] [int] NOT NULL,
	[valor_uf] [int] NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK_UF] PRIMARY KEY CLUSTERED 
(
	[id_uf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vivienda]    Script Date: 22-06-2019 12:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vivienda](
	[id_vivienda] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[precioUF] [int] NULL,
	[id_tipo_vivienda] [int] NOT NULL,
	[id_tramo] [int] NOT NULL,
	[rut_propietario] [int] NOT NULL,
	[id_domicilio] [int] NULL,
 CONSTRAINT [PK_Vivienda] PRIMARY KEY CLUSTERED 
(
	[id_vivienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Comuna]  WITH CHECK ADD  CONSTRAINT [FK_ID_REGION] FOREIGN KEY([id_region])
REFERENCES [dbo].[Region] ([id_region])
GO
ALTER TABLE [dbo].[Comuna] CHECK CONSTRAINT [FK_ID_REGION]
GO
ALTER TABLE [dbo].[Conyuge]  WITH CHECK ADD  CONSTRAINT [FK_Conyuge_Nacionalidad] FOREIGN KEY([id_nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([id_nacionalidad])
GO
ALTER TABLE [dbo].[Conyuge] CHECK CONSTRAINT [FK_Conyuge_Nacionalidad]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_BANCO] FOREIGN KEY([id_banco])
REFERENCES [dbo].[Banco] ([id_banco])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_BANCO]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_TIPO_CUENTA] FOREIGN KEY([id_tipo_cuenta])
REFERENCES [dbo].[Tipo_Cuenta] ([id_tipo_cuenta])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_TIPO_CUENTA]
GO
ALTER TABLE [dbo].[Deposito_Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Deposito_Cuenta_Cuenta] FOREIGN KEY([id_cuenta])
REFERENCES [dbo].[Cuenta] ([id_cuenta])
GO
ALTER TABLE [dbo].[Deposito_Cuenta] CHECK CONSTRAINT [FK_Deposito_Cuenta_Cuenta]
GO
ALTER TABLE [dbo].[Deposito_Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Deposito_Cuenta_deposito] FOREIGN KEY([id_deposito])
REFERENCES [dbo].[Deposito] ([id_deposito])
GO
ALTER TABLE [dbo].[Deposito_Cuenta] CHECK CONSTRAINT [FK_Deposito_Cuenta_deposito]
GO
ALTER TABLE [dbo].[Domicilio]  WITH CHECK ADD  CONSTRAINT [FK_ID_COMUNA] FOREIGN KEY([id_comuna])
REFERENCES [dbo].[Comuna] ([id_comuna])
GO
ALTER TABLE [dbo].[Domicilio] CHECK CONSTRAINT [FK_ID_COMUNA]
GO
ALTER TABLE [dbo].[Formulario_A]  WITH CHECK ADD  CONSTRAINT [FK_Formulario_A_Postulante] FOREIGN KEY([rut_postulante])
REFERENCES [dbo].[Postulante] ([rut_postulante])
GO
ALTER TABLE [dbo].[Formulario_A] CHECK CONSTRAINT [FK_Formulario_A_Postulante]
GO
ALTER TABLE [dbo].[Formulario_A]  WITH CHECK ADD  CONSTRAINT [FK_Formulario_A_Vivienda] FOREIGN KEY([id_vivienda])
REFERENCES [dbo].[Vivienda] ([id_vivienda])
GO
ALTER TABLE [dbo].[Formulario_A] CHECK CONSTRAINT [FK_Formulario_A_Vivienda]
GO
ALTER TABLE [dbo].[Informe_Tecnico]  WITH CHECK ADD  CONSTRAINT [FK_Informe_Tecnico_Consultor] FOREIGN KEY([rut_consultor])
REFERENCES [dbo].[Consultor] ([rut_consultor])
GO
ALTER TABLE [dbo].[Informe_Tecnico] CHECK CONSTRAINT [FK_Informe_Tecnico_Consultor]
GO
ALTER TABLE [dbo].[Informe_Tecnico]  WITH CHECK ADD  CONSTRAINT [FK_Informe_Tecnico_Formulario_A] FOREIGN KEY([id_formularioA])
REFERENCES [dbo].[Formulario_A] ([id_formularioA])
GO
ALTER TABLE [dbo].[Informe_Tecnico] CHECK CONSTRAINT [FK_Informe_Tecnico_Formulario_A]
GO
ALTER TABLE [dbo].[Informe_Tecnico]  WITH CHECK ADD  CONSTRAINT [FK_Informe_Tecnico_Vivienda] FOREIGN KEY([id_vivienda])
REFERENCES [dbo].[Vivienda] ([id_vivienda])
GO
ALTER TABLE [dbo].[Informe_Tecnico] CHECK CONSTRAINT [FK_Informe_Tecnico_Vivienda]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_ID_CUENTA] FOREIGN KEY([id_cuenta])
REFERENCES [dbo].[Cuenta] ([id_cuenta])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_ID_CUENTA]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_ID_DOMICILIO] FOREIGN KEY([id_domicilio])
REFERENCES [dbo].[Domicilio] ([id_domicilio])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_ID_DOMICILIO]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_ID_ESTADO_CIVIL] FOREIGN KEY([id_estado_civil])
REFERENCES [dbo].[Estado_Civil] ([id_estado_civil])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_ID_ESTADO_CIVIL]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_NACIONALIDAD] FOREIGN KEY([id_nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([id_nacionalidad])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_NACIONALIDAD]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Certificado_Permanencia] FOREIGN KEY([id_certificado])
REFERENCES [dbo].[Certificado_Permanencia] ([id_certificado])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_Postulante_Certificado_Permanencia]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Pueblo_Originario] FOREIGN KEY([id_pueblo_originario])
REFERENCES [dbo].[Pueblo_Originario] ([id_pueblo_originario])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_Postulante_Pueblo_Originario]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Titulo] FOREIGN KEY([id_titulo])
REFERENCES [dbo].[Titulo] ([id_titulo])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_Postulante_Titulo]
GO
ALTER TABLE [dbo].[Postulante_Carga]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Carga_relacion_carga] FOREIGN KEY([id_relacion])
REFERENCES [dbo].[relacion_carga] ([id_relacion])
GO
ALTER TABLE [dbo].[Postulante_Carga] CHECK CONSTRAINT [FK_Postulante_Carga_relacion_carga]
GO
ALTER TABLE [dbo].[Postulante_Carga]  WITH CHECK ADD  CONSTRAINT [FK_RUT_CARGA_FAMILIAR] FOREIGN KEY([rut_carga_familiar])
REFERENCES [dbo].[Carga] ([rut_carga_familiar])
GO
ALTER TABLE [dbo].[Postulante_Carga] CHECK CONSTRAINT [FK_RUT_CARGA_FAMILIAR]
GO
ALTER TABLE [dbo].[Postulante_Carga]  WITH CHECK ADD  CONSTRAINT [FK_RUT_POSTULANTE] FOREIGN KEY([rut_postulante])
REFERENCES [dbo].[Postulante] ([rut_postulante])
GO
ALTER TABLE [dbo].[Postulante_Carga] CHECK CONSTRAINT [FK_RUT_POSTULANTE]
GO
ALTER TABLE [dbo].[Postulante_Conyuge]  WITH CHECK ADD  CONSTRAINT [FK_RUT_CONYUGE] FOREIGN KEY([rut_conyuge])
REFERENCES [dbo].[Conyuge] ([rut_conyuge])
GO
ALTER TABLE [dbo].[Postulante_Conyuge] CHECK CONSTRAINT [FK_RUT_CONYUGE]
GO
ALTER TABLE [dbo].[Postulante_Conyuge]  WITH CHECK ADD  CONSTRAINT [FK_RUT_POSTULANT] FOREIGN KEY([rut_postulante])
REFERENCES [dbo].[Postulante] ([rut_postulante])
GO
ALTER TABLE [dbo].[Postulante_Conyuge] CHECK CONSTRAINT [FK_RUT_POSTULANT]
GO
ALTER TABLE [dbo].[Titulo]  WITH CHECK ADD  CONSTRAINT [FK_Titulo_tipo_titulo] FOREIGN KEY([id_tipo_titulo])
REFERENCES [dbo].[tipo_titulo] ([id_tipo_titulo])
GO
ALTER TABLE [dbo].[Titulo] CHECK CONSTRAINT [FK_Titulo_tipo_titulo]
GO
ALTER TABLE [dbo].[Vivienda]  WITH CHECK ADD  CONSTRAINT [FK_RUT_PROPIETARIO] FOREIGN KEY([rut_propietario])
REFERENCES [dbo].[Propietario] ([rut_propietario])
GO
ALTER TABLE [dbo].[Vivienda] CHECK CONSTRAINT [FK_RUT_PROPIETARIO]
GO
ALTER TABLE [dbo].[Vivienda]  WITH CHECK ADD  CONSTRAINT [FK_TIPO_VIVIENDA] FOREIGN KEY([id_tipo_vivienda])
REFERENCES [dbo].[Tipo_vivienda] ([id_tipo_vivienda])
GO
ALTER TABLE [dbo].[Vivienda] CHECK CONSTRAINT [FK_TIPO_VIVIENDA]
GO
ALTER TABLE [dbo].[Vivienda]  WITH CHECK ADD  CONSTRAINT [FK_TRAMO] FOREIGN KEY([id_tramo])
REFERENCES [dbo].[Tramo_vivienda] ([id_tramo])
GO
ALTER TABLE [dbo].[Vivienda] CHECK CONSTRAINT [FK_TRAMO]
GO
ALTER TABLE [dbo].[Vivienda]  WITH CHECK ADD  CONSTRAINT [FK_Vivienda_Domicilio] FOREIGN KEY([id_domicilio])
REFERENCES [dbo].[Domicilio] ([id_domicilio])
GO
ALTER TABLE [dbo].[Vivienda] CHECK CONSTRAINT [FK_Vivienda_Domicilio]
GO
