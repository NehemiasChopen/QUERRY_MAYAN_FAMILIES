-- Consulta de horas en oficina por mes
SELECT 
em.cod_empleado,
em.nombre_empleado,
em.puesto_empleado,
MIN(reg.fecha_registro) AS 'desde',
MAX(reg.fecha_salida) as 'hasta',

-- CALCULO DE HORAS EN OFICINA AL MES
SUBTIME(SEG_TO_TIME(SUM(TIME_TO_SEC(reg.hora_salida))), SEC_TO_TIME(SUM(TIME_TO_SEC(reg.hora_registro)))) AS 'horas_en_oficina'

FROM tb_registro AS reg
INNER JOIN tb_empleado AS em ON em.id_empleado = reg.id_empleado
WHERE reg.en_oficina = 1 
AND reg.fecha_registro AND reg.fecha_salida BETWEEN '2022-04-01' AND '2022-04-30' -- rango
GROUP BY em.cod_empleado
