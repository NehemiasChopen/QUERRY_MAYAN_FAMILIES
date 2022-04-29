-- Consulta de promedio de hora de ingreso
SELECT emp.cod_empleado AS 'CODIGO EMPLEADO',
    emp.nombre_empleado AS 'NOMBRE EMPLEADO',
    emp.puesto_empleado AS 'PUESTO',
    AVG(reg.hora_registro) AS 'PROMEDIO HORA INGRESO'
FROM tb_registro reg
    INNER JOIN tb_empleado emp ON emp.id_empleado = reg.id_empleado
WHERE reg.hora_registro
GROUP BY emp.cod_empleado