-- DataWareHouse.dbo.DIM_Municipios definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Municipios;

CREATE TABLE DataWareHouse.dbo.DIM_Municipios (
	CodMpio int NOT NULL,
	CodDpto tinyint NOT NULL,	
	NomMpio nvarchar(30) NOT NULL,
	Latitud float NOT NULL,
	Longitud float NOT NULL,
	CONSTRAINT DIM_Municipios_PK PRIMARY KEY (CodMpio),
	CONSTRAINT DIM_Municipios_DIM_Departamentos_FK FOREIGN KEY (CodDpto) REFERENCES DataWareHouse.dbo.DIM_Departamentos(CodDpto)
);
