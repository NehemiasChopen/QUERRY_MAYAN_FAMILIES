-- Consultas por fecha
SELECT emp.cod_empleado,
    emp.nombre_empleado,
    reg.fecha_registro,
    reg.hora_registro,
    reg.motivo_registro,
    reg.en_oficina,
    reg.fecha_salida,
    reg.hora_salida
FROM tb_registro reg
    JOIN tb_empleado emp ON emp.id_empleado = reg.id_empleado
WHERE reg.fecha_registro BETWEEN '2022-04-01' AND '2022-04-09'
    AND reg.fecha_salida BETWEEN '2022-04-01' AND '2022-04-09'
ORDER BY reg.fecha_registro ASC