-- Conteo de veces que ha ingresado tarde
SELECT emp.cod_empleado,
    emp.nombre_empleado,
    emp.puesto_empleado,
    MIN(reg.hora_registro) AS 'hora_minima',
    MAX(reg.hora_registro) AS 'hora_maxima',
    COUNT(reg.hora_registro) AS 'entradas_tarde'
FROM tb_registro reg
    JOIN tb_empleado emp ON emp.id_empleado = reg.id_empleado
WHERE reg.hora_registro BETWEEN '09:06' AND '11:00'
GROUP BY emp.cod_empleado