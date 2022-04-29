-- Conteo de veces que ha venido un empleado a la oficina por mes
SELECT emp.cod_empleado,
    emp.nombre_empleado,
    emp.puesto_empleado,
    COUNT(reg.en_oficina) AS 'veces_en_oficina'
FROM tb_registro reg
    JOIN tb_empleado emp ON emp.id_empleado = reg.id_empleado
WHERE reg.fecha_registro BETWEEN '2022/04/01' AND '2022/04/30'
GROUP BY emp.cod_empleado