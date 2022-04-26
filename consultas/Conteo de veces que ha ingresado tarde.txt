SELECT 
em.cod_empleado AS 'CODIGO EMPLEADO',
em.nombre_empleado AS 'NOMBRE EMPLEADO',
em.puesto_empleado AS 'PUESTO',
MIN(reg.hora_registro) AS 'HORA MINIMA',
MAX(reg.hora_registro) AS 'HORA MAXIMA',
COUNT(reg.hora_registro) AS 'ENTRADAS TARDE'
FROM tb_registro AS reg
INNER JOIN tb_empleado AS em ON em.id_empleado = reg.id_empleado
WHERE reg.hora_registro BETWEEN '09:06' AND '11:00'
GROUP BY em.cod_empleado