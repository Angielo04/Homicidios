-- Crear tabla dl_departamentos

--CREATE TABLE Datalake.dbo.dl_departamentos : Esto indica que se va a crear una tabla nueva llamada dl_departamentos dentro del esquema dbo de la base de datos Datalake.

-- Definición de las columnas en la tabla:

-- COD_DPTO tinyint NULL :
--1. tinyint es un tipo de dato que almacena números enteros pequeños desde 0 hasta 255, también cuando se colo null indica que permite que la columna nos tenga.

--NOM_DPTO nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL:
--1. nvarchar(60) define una columna de texto con un máximo de 60 caracteres.
--2. establece la ordenación y comparación de texto, asegurando que sea insensible a mayúsculas y acentos.

--LATITUD float NULL :
--1. float se usa para almacenar números decimales con precisión variable, en este caso, coordenadas geográficas.

--LONGITUD float NULL:
--1. Similar a LATITUD, almacena la longitud geográfica de cada departamento.

--[Geo Departamento] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL : 
--1. varchar(50) almacena una cadena de hasta 50 caracteres.
--2. Se usan corchetes [ ] alrededor del nombre porque contiene un espacio. Esto permite que el nombre de la columna tenga caracteres especiales sin errores.
--3. La ordenación COLLATE SQL_Latin1_General_CP1_CI_AS se mantiene igual para consistencia con NOM_DPTO.

--          Código SQL

CREATE TABLE Datalake.dbo.dl_departamentos (
	COD_DPTO tinyint NULL,
	NOM_DPTO nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LATITUD float NULL,
	LONGITUD float NULL,
	[Geo Departamento] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


