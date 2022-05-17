-- Consulta de minutos tarde de un empleado por rango de fechas
SELECT 
em.cod_empleado,
em.nombre_empleado,
em.puesto_empleado,
MIN(reg.fecha_registro) AS 'desde',
MAX(reg.fecha_salida) AS 'hasta',

-- CÁLCULO DE MINUTOS TARDE
SUBTIME(SEC_TO_TIME(SUM(TIME_TO_SEC(reg.hora_registro))), SEC_TO_TIME(COUNT(reg.hora_registro) * 32760)) AS 'tiempo_tarde' -- 32760 es 09:06 en segundos
 
FROM tb_registro AS reg
INNER JOIN tb_empleado AS em ON em.id_empleado = reg.id_empleado
WHERE reg.hora_registro BETWEEN '09:06' AND '12:00' -- rango de hora tarde
AND reg.fecha_registro AND reg.fecha_salida BETWEEN '2022-04-07' AND '2022-04-30' -- rango de fecha a buscar
GROUP BY em.cod_empleado
