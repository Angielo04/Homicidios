-- DataWareHouse.dbo.DIM_Sexos definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Sexos;

CREATE TABLE DataWareHouse.dbo.DIM_Sexos (
	IdSexo tinyint IDENTITY(1,1) NOT NULL,
	NomSexo nvarchar(20) NOT NULL,
	CONSTRAINT DIM_Sexos_PK PRIMARY KEY (IdSexo)
);
