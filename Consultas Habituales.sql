
use ProyectoServiu;

select * from postulante;


select pc.rut_postulante,p.primer_nombre,p.apellido_paterno,c.rut_carga_familiar,c.nombre_carga,c.apellido_paterno , rc.detalle
from Postulante_Carga as pc
join Carga as c
on pc.rut_carga_familiar = c.rut_carga_familiar
join relacion_carga as rc
on rc.id_relacion = pc.id_relacion
join postulante as p
on p.rut_postulante = pc.rut_postulante;


select * from Postulante_Carga;

select * from Carga;

select * from error;

