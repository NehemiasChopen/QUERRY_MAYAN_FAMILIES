-- Consulta de promedio de hora de ingreso
SELECT
    emp.cod_empleado,
    emp.nombre_empleado,
    emp.puesto_empleado,
    AVG(reg.hora_registro) AS 'promedio_hora_ingreso'
FROM
    tb_registro reg
    JOIN tb_empleado emp ON emp.id_empleado = reg.id_empleado
WHERE
    reg.hora_registro
GROUP BY
    emp.cod_empleado