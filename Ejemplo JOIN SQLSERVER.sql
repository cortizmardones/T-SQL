
use Prueba_tecnica;

select * from Clientes;

select * from Facturas;

--lista de clientes ordenados por nombre , indicando cantidad de facturas para cada uno.
select c.id_cliente ,c.nombre , c.direccion , count(f.id_factura) as cantidad_facturas
from Clientes as c 
inner join Facturas as f
on c.id_cliente = f.id_cliente
group by c.id_cliente,c.nombre,c.direccion
order by c.nombre;


