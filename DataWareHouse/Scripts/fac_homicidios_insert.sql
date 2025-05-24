INSERT INTO DataWareHouse.dbo.FAC_Homicidios 
(FechaHecho, CodMpio, IdZona, IdSexo, Cantidad)
SELECT FECHA_HECHO
	, COD_MUNI
	, (SELECT IdZona FROM DataWareHouse.dbo.DIM_Zonas WHERE NomZona = H.ZONA)
	, (SELECT IdSexo FROM DataWareHouse.dbo.DIM_Sexos WHERE NomSexo = H.SEXO)
	, CANTIDAD
FROM DataLake.dbo.DL_Homicidios AS H
