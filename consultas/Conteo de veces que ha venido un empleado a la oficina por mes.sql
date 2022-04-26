SELECT 
em.cod_empleado AS 'CODIGO EMPLEADO',
em.nombre_empleado AS 'NOMBRE EMPLEADO',
em.puesto_empleado AS 'PUESTO',
COUNT(reg.en_oficina) AS 'EN OFICINA'
FROM tb_registro AS reg
INNER JOIN tb_empleado AS em ON em.id_empleado = reg.id_empleado
WHERE reg.fecha_registro BETWEEN '2022/04/01' AND '2022/04/30'
GROUP BY em.cod_empleado