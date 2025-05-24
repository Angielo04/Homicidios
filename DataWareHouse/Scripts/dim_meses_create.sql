-- DataWareHouse.dbo.DIM_Meses definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Meses;

CREATE TABLE DataWareHouse.dbo.DIM_Meses (
	Mes tinyint IDENTITY(1,1) NOT NULL,
	NomMes nvarchar(10) NOT NULL,
	NomCortoMes char(3) NOT NULL,
	CONSTRAINT DIM_Meses_PK PRIMARY KEY (Mes)
);
