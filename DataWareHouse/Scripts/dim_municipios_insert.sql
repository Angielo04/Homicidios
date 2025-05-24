INSERT INTO DataWareHouse.dbo.DIM_Municipios 
(CodMpio, CodDpto, NomMpio, Latitud, Longitud)
SELECT COD_MPIO, COD_DPTO, NOM_MPIO, LATITUD, LONGITUD
FROM DataLake.dbo.DL_Municipios
