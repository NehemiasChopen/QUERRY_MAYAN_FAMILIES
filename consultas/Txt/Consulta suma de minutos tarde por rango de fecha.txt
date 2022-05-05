-- Consulta de minutos tarde de un empleado por rango de fechas
SELECT 
em.cod_empleado AS 'CODIGO EMPLEADO',
em.nombre_empleado AS 'NOMBRE EMPLEADO',
em.puesto_empleado AS 'PUESTO',
MIN(reg.fecha_registro) AS 'DESDE',
MAX(reg.fecha_salida) AS 'HASTA',

-- CALCULO DE MINUTOS TARDE
SUM(REPLACE(reg.hora_registro,':','')) - (COUNT(reg.hora_registro) * 906)  AS 'MINUTOS TARDE'
 
FROM tb_registro AS reg
INNER JOIN tb_empleado AS em ON em.id_empleado = reg.id_empleado
WHERE reg.hora_registro BETWEEN '09:06' AND '12:00' -- rango de hora tarde
AND reg.fecha_registro AND reg.fecha_salida BETWEEN '2022-04-07' AND '2022-04-30' -- rango de fecha a buscar
GROUP BY em.cod_empleado