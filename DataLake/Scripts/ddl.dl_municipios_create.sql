-- Crear tabla dl_municipios

--CREATE TABLE Datalake.dbo.dl_municipios : Esto indica que se va a crear una tabla nueva llamada dl_municipios dentro del esquema dbo de la base de datos Datalake.

-- Definición de las columnas en la tabla:

-- - COD_DPTO tinyint NULL: 
--1. tinyint almacena números pequeños (de 0 a 255).
--2. Se permite NULL, lo que significa que puede no contener datos.

-- NOM_DPTO nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL:
--1. nvarchar(60) permite hasta 60 caracteres y admite caracteres especiales.
--2. La opción COLLATE SQL_Latin1_General_CP1_CI_AS asegura que la comparación de texto sea insensible a mayúsculas y acentos.

-- COD_MPIO int NULL:
--1. Usa int, adecuado para almacenar números más grandes.
--2. Código numérico del municipio.

-- NOM_MPIO nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
--1. nvarchar(30) permite hasta 30 caracteres para almacenar el nombre del municipio.

-- TIPO varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
--1. Tipo de municipio, por ejemplo, "Cabecera" o "Área rural".
--2. varchar(25) permite texto corto de hasta 25 caracteres.

-- LATITUD float NULL
-- Coordenada de latitud del municipio.
-- float almacena valores numéricos decimales.

-- LONGITUD float NULL
-- 1. Coordenada de longitud del municipio.
-- 2.También usa float para valores decimales.

-- [Geo Municipio] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
--1.Información geográfica del municipio
--2.varchar(50) permite cadenas de texto hasta 50 caracteres.
--3.Se usan corchetes [ ] alrededor del nombre porque contiene un espacio.


--          Código SQL

CREATE TABLE Datalake.dbo.dl_municipios (
	COD_DPTO tinyint NULL,
	NOM_DPTO nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	COD_MPIO int NULL,
	NOM_MPIO nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TIPO varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LATITUD float NULL,
	LONGITUD float NULL,
	[Geo Municipio] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);