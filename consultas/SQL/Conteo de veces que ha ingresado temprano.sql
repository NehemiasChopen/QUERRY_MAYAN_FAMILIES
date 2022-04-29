-- Conteo de veces que ha ingresado temprano
SELECT emp.cod_empleado,
    emp.nombre_empleado,
    emp.puesto_empleado,
    MIN(reg.hora_registro) AS 'hora_minima',
    MAX(reg.hora_registro) AS 'hora_maxima',
    COUNT(reg.hora_registro) AS 'entradas_temprano'
FROM tb_registro reg
    INNER JOIN tb_empleado emp ON emp.id_empleado = reg.id_empleado
WHERE reg.hora_registro BETWEEN '07:00' AND '09:05'
GROUP BY emp.cod_empleado