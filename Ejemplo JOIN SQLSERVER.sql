
use Prueba_tecnica;

select * from Clientes;

select * from Facturas;

--lista de clientes ordenados por nombre , indicando cantidad de facturas para cada uno.
--Recordar que todos los campos que no esten con alguna agrupacion (ejemplo : count() ) deben estar escritos en el group by
select c.id_cliente ,c.nombre , c.direccion , count(f.id_factura) as cantidad_facturas
from Clientes as c 
inner join Facturas as f
on c.id_cliente = f.id_cliente
group by c.id_cliente,c.nombre,c.direccion
order by c.nombre;




--Ejemplo con más de una tabla.
select pc.rut_postulante, c.rut_carga_familiar,c.nombre_carga,c.apellido_paterno , rc.detalle
from Postulante_Carga as pc
join Carga as c
on pc.rut_carga_familiar = c.rut_carga_familiar
join relacion_carga as rc
on rc.id_relacion = pc.id_relacion;

