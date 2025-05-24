-- DataWareHouse.dbo.DIM_Trimestres definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Trimestres;

CREATE TABLE DataWareHouse.dbo.DIM_Trimestres (
	Trimestre tinyint IDENTITY(1,1) NOT NULL,
	NomTrimestre nvarchar(15) NOT NULL,
	NomCortoTrimestre char(6) NOT NULL,
	CONSTRAINT DIM_Trimestres_PK PRIMARY KEY (Trimestre)
);
