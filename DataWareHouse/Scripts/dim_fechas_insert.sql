SET DATEFIRST 1;

INSERT INTO DataWareHouse.dbo.DIM_Fechas 
(FechaHecho, Annio, Mes, Dia, DiaSemana, Semana, Trimestre)
SELECT DISTINCT FECHA_HECHO, YEAR(FECHA_HECHO), MONTH(FECHA_HECHO), DAY(FECHA_HECHO), DATEPART(WEEKDAY, FECHA_HECHO), DATEPART(WEEK, FECHA_HECHO) , DATEPART(QUARTER, FECHA_HECHO) 
FROM DataLake.dbo.DL_Homicidios
ORDER BY FECHA_HECHO;
