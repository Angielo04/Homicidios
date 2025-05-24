-- DataWareHouse.dbo.FAC_Homicidios definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.FAC_Homicidios;

CREATE TABLE DataWareHouse.dbo.FAC_Homicidios (
	IdHomicidio int IDENTITY(1,1) NOT NULL,
	FechaHecho date NOT NULL,
	CodMpio int NOT NULL,
	IdZona tinyint NOT NULL,
	IdSexo tinyint NOT NULL,
	Cantidad tinyint NOT NULL,
	CONSTRAINT FAC_Homicidios_PK PRIMARY KEY (IdHomicidio),
	CONSTRAINT FAC_Homicidios_DIM_Fechas_FK FOREIGN KEY (FechaHecho) REFERENCES DataWareHouse.dbo.DIM_Fechas(FechaHecho),
	CONSTRAINT FAC_Homicidios_DIM_Municipios_FK FOREIGN KEY (CodMpio) REFERENCES DataWareHouse.dbo.DIM_Municipios(CodMpio),
	CONSTRAINT FAC_Homicidios_DIM_Sexos_FK FOREIGN KEY (IdSexo) REFERENCES DataWareHouse.dbo.DIM_Sexos(IdSexo),
	CONSTRAINT FAC_Homicidios_DIM_Zonas_FK FOREIGN KEY (IdZona) REFERENCES DataWareHouse.dbo.DIM_Zonas(IdZona)
);
