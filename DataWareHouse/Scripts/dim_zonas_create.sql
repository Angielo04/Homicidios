-- DataWareHouse.dbo.DIM_Zonas definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Zonas;

CREATE TABLE DataWareHouse.dbo.DIM_Zonas (
	IdZona tinyint IDENTITY(1,1) NOT NULL,
  	NomZona nvarchar(10) NOT NULL,	
	CONSTRAINT DIM_Zonas_PK PRIMARY KEY (IdZona)
);
