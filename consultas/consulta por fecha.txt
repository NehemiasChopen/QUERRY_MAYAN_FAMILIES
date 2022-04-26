SELECT tb_empleado.cod_empleado, 
tb_empleado.nombre_empleado, 
tb_registro.fecha_registro, 
tb_registro.hora_registro,
tb_registro.motivo_registro, 
tb_registro.en_oficina, 
tb_registro.fecha_salida, 
tb_registro.hora_salida 
FROM tb_registro
INNER JOIN tb_empleado ON tb_empleado.id_empleado = tb_registro.id_empleado
WHERE tb_registro.fecha_registro OR tb_registro.fecha_salida BETWEEN '2022-04-01' AND '2022-04-09'  
ORDER BY `tb_registro`.`fecha_registro`  ASC