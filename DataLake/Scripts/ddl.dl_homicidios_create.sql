-- Crear tabla dl_homicidios

--CREATE TABLE Datalake.dbo.dl_homicidios :  Se está creando una tabla llamada dl_homicidios en el esquema dbo de la base de datos Datalake.

-- Definición de las columnas en la tabla:

-- FECHA_HECHO date NULL: 
--1. Almacena la fecha en que ocurrió el hecho.
--2. Usa el tipo date, que solo guarda el año, mes y día.
--3. Se permite NULL, lo que significa que el campo puede quedar vacío

-- COD_DEPTO tinyint NULL: 
--1. Código numérico del departamento donde ocurrió el hecho.
--2. tinyint almacena números pequeños (de 0 a 255).

-- DEPARTAMENTO nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL:
--1. nvarchar(60) permite texto de hasta 60 caracteres y admite múltiples idiomas.
--2. La ordenación COLLATE SQL_Latin1_General_CP1_CI_AS hace que la comparación de texto sea insensible a mayúsculas y acentos.

-- COD_MUNI int NULL:
--1. Código numérico del municipio donde ocurrió el hecho.
--2. int se usa para valores numéricos más grandes.

-- MUNICIPIO nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL:
--1. nvarchar(30) permite nombres con hasta 30 caracteres.

-- ZONA nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL:
--1. Tipo de zona donde ocurrió el hecho (ejemplo: "Urbano", "Rural").
--2. nvarchar(10) permite valores cortos de hasta 10 caracteres.

-- SEXO nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL:
--1.Género de la persona involucrada.
--2.Puede almacenar valores como "Masculino" o "Femenino".


-- CANTIDAD tinyint NULL:
--1.Número de homicidios ocurridos en la fecha y lugar registrados.
--2 tinyint es adecuado si los valores no superan 255.


--          Código SQL


CREATE TABLE Datalake.dbo.dl_homicidios (
	FECHA_HECHO date NULL,
	COD_DEPTO tinyint NULL,
	DEPARTAMENTO nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	COD_MUNI int NULL,
	MUNICIPIO nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ZONA nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SEXO nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CANTIDAD tinyint NULL
);