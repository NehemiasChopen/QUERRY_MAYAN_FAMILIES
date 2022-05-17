-- Consulta de registros por empleado
SELECT emp.cod_empleado,
    emp.nombre_empleado,
    reg.fecha_registro,
    reg.hora_registro,
    reg.motivo_registro,
    reg.en_oficina,
    reg.fecha_salida,
    reg.hora_salida
FROM tb_registro reg
    JOIN tb_empleado emp ON emp.id_empleado = emp.id_empleado
WHERE a.id_empleado = 1;