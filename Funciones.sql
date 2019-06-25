
use ProyectoServiu;

--Función para que devuelva la edad por el rut (N°1 en la tabla)
IF object_id('fc_edad') IS NOT NULL
   DROP FUNCTION fc_edad;
GO

Create function fc_edad (@rut int) Returns int
AS
BEGIN

select @rut=edad
from Postulante
where rut_postulante = @rut;

 Return @rut;
END;
GO

--Ejecutar la función que devuelve la edad por el rut
select dbo.fc_edad(134567891);

--Ver la tabla con parametros.
select * from Tramo_Edad;

select * from Postulante;




--Función para calcular el puntaje por la edad (N°1 en la tabla)
IF object_id('fc_puntaje_edad') IS NOT NULL
   DROP FUNCTION fc_puntaje_edad;
GO

Create function fc_puntaje_edad (@total_puntaje_edad int) Returns int
AS
BEGIN

select @total_puntaje_edad=puntaje
from Tramo_Edad
where @total_puntaje_edad between minimo and maximo;

 Return @total_puntaje_edad;
END;
GO


--Ejecutar la función que calcula el puntaje por la edad
select dbo.fc_puntaje_edad(21);

--Ver la tabla con parametros.
select * from Tramo_Edad;
















--Función para calcular la cantidad de cargas familiares (N°2 en la tabla)
IF object_id('fc_cantidad_carga') IS NOT NULL
   DROP FUNCTION fc_cantidad_carga;
GO

Create function fc_cantidad_carga (@rutIngresado int) Returns int
AS
BEGIN
DECLARE @Numero_carga int;
SELECT @rutIngresado=COUNT(*)
FROM dbo.Postulante_Carga
WHERE rut_postulante=@rutIngresado;

 Return @rutIngresado;
END;
GO

--Ejecutar la función que calcula el puntaje por la cantidad de cargas.
select dbo.fc_cantidad_carga(94737419);

--Ver la tabla con parametros.
select * from Postulante_Carga;






--Función para calcular el puntaje por la cantidad de cargas (N°2 en la tabla)
IF object_id('fc_puntaje_carga2') IS NOT NULL
   DROP FUNCTION fc_puntaje_carga2;
GO

Create function fc_puntaje_carga2 (@total_carga int) Returns int
AS
BEGIN

select @total_carga=puntaje
from Tramo_Carga_Familiar
where @total_carga between minimo and maximo;

 Return @total_carga;
END;
GO

--Ejecutar la función que calcula el puntaje por la cantidad de cargas.
select dbo.fc_puntaje_carga2(1);

--Ver la tabla con parametros.
select * from Tramo_Carga_Familiar;















use ProyectoServiu;

--Función para que devuelve el estado civil (VARCHAR) por el rut (N°3 en la tabla)
IF object_id('fc_estado_civil') IS NOT NULL
   DROP FUNCTION fc_estado_civil;
GO

Create function fc_estado_civil (@rut int) Returns varchar(50)
AS
BEGIN

Declare @estado_civil varchar(50)

select @estado_civil = e.nombre_estado_civil
from Postulante as p join estado_civil as e
on p.id_estado_civil = e.id_estado_civil
where p.rut_postulante = @rut;

 Return @estado_civil;
END;
GO


--Ejecutar la función que devuelve la edad por el rut
select dbo.fc_estado_civil(167746322);

--Ver la tabla con parametros.
select * from Postulante;
select * from estado_civil;





use ProyectoServiu;

--Función para que devuelve el estado civil (VARCHAR) por el rut (N°3 en la tabla)
IF object_id('fc_estado_civilInt') IS NOT NULL
   DROP FUNCTION fc_estado_civilInt;
GO

Create function fc_estado_civilInt (@rut int) Returns varchar(50)
AS
BEGIN

Declare @estado_civil varchar(50)

select @estado_civil = e.id_estado_civil
from Postulante as p join estado_civil as e
on p.id_estado_civil = e.id_estado_civil
where p.rut_postulante = @rut;

 Return @estado_civil;
END;
GO


--Ejecutar la función que devuelve la edad por el rut
select dbo.fc_estado_civilInt(167746322);

--Ver la tabla con parametros.
select * from Postulante;
select * from estado_civil;





--Función para calcular puntaje por el estado civil (N°3 en la tabla)
IF object_id('fc_puntaje_estado_civil') IS NOT NULL
   DROP FUNCTION fc_puntaje_estado_civil;
GO

Create function fc_puntaje_estado_civil (@id_estado_civil int) Returns int
AS
BEGIN

select @id_estado_civil=puntaje
from Estado_Civil
where id_estado_civil = @id_estado_civil;

 Return @id_estado_civil;
END;
GO


--Ejecutar la función que calcula el puntaje por el estado civil (Ojo que es por NUMERO no por la palabra ejemplo  = soltero)
select dbo.fc_puntaje_estado_civil(4);

--Ver la tabla con parametros.
select * from Estado_Civil;










use ProyectoServiu;

--Función para que devuelve el pueblooriginario (VARCHAR) por el rut (N°4 en la tabla)
IF object_id('fc_pueblo_originario') IS NOT NULL
   DROP FUNCTION fc_pueblo_originario;
GO

Create function fc_pueblo_originario (@rut int) Returns varchar(50)
AS
BEGIN

Declare @pueblo_originario varchar(50)

select @pueblo_originario = po.nombre
from Postulante as p join Pueblo_Originario as po
on p.id_pueblo_originario = po.id_pueblo_originario
where p.rut_postulante = @rut;

 Return @pueblo_originario;
END;
GO


--Ejecutar la función que devuelve la edad por el rut
select dbo.fc_pueblo_originario(167746322);

--Ver la tabla con parametros.
select * from Postulante;
select * from Pueblo_Originario;




use ProyectoServiu;

--Función para que devuelve el pueblooriginario (VARCHAR) por el rut (N°4 en la tabla)
IF object_id('fc_pueblo_originarioInt') IS NOT NULL
   DROP FUNCTION fc_pueblo_originarioInt;
GO

Create function fc_pueblo_originarioInt (@rut int) Returns int
AS
BEGIN

Declare @pueblo_originario int

select @pueblo_originario = po.id_pueblo_originario
from Postulante as p join Pueblo_Originario as po
on p.id_pueblo_originario = po.id_pueblo_originario
where p.rut_postulante = @rut;

 Return @pueblo_originario;
END;
GO


--Ejecutar la función que devuelve la edad por el rut
select dbo.fc_pueblo_originarioInt(167746322);

--Ver la tabla con parametros.
select * from Postulante;
select * from Pueblo_Originario;





--Función para calcular el puntaje por pertenecer a algun pueblo indigena (N°4 en la tabla)
IF object_id('fc_puntaje_pueblo_originario') IS NOT NULL
   DROP FUNCTION fc_puntaje_pueblo_originario;
GO

Create function fc_puntaje_pueblo_originario (@id_puntaje_prueblo_originario int) Returns int
AS
BEGIN

select @id_puntaje_prueblo_originario=puntaje
from Pueblo_Originario
where id_pueblo_originario = @id_puntaje_prueblo_originario;

 Return @id_puntaje_prueblo_originario;
END;
GO


--Ejecutar la función que calcula el puntaje por portenecer a algun pueblo originario (Ojo que es por NUMERO no por la palabra ejemplo  = Aymara)
select dbo.fc_puntaje_pueblo_originario(2);

--Ver la tabla con parametros.
select * from Pueblo_Originario;
















--Función para calcular el puntaje por la cantidad ahorrada (N°5 en la tabla)
IF object_id('fc_puntaje_monto_ahorro') IS NOT NULL
   DROP FUNCTION fc_puntaje_monto_ahorro;
GO

Create function fc_puntaje_monto_ahorro (@id_puntaje_monto_ahorro int) Returns int
AS
BEGIN

select @id_puntaje_monto_ahorro=puntaje
from Tramo_Ahorro
where @id_puntaje_monto_ahorro between minimo and maximo;
;

 Return @id_puntaje_monto_ahorro;
END;
GO


--Ejecutar la función que calcula el puntaje por portenecer el tipo de titulo (Ojo que es por NUMERO no por la palabra ejemplo  = profesional)
select dbo.fc_puntaje_monto_ahorro(8001001);

--Ver la tabla con parametros.
select * from Cuenta; --(campo cantidad)

select * from Tramo_Ahorro;







--Función para calcular el puntaje por el tipo de titulo (N°6 en la tabla)
IF object_id('fc_puntaje_tipo_titulo') IS NOT NULL
   DROP FUNCTION fc_puntaje_tipo_titulo;
GO

Create function fc_puntaje_tipo_titulo (@id_puntaje_tipo_titulo int) Returns int
AS
BEGIN

select @id_puntaje_tipo_titulo=puntaje
from tipo_titulo
where id_tipo_titulo = @id_puntaje_tipo_titulo;

 Return @id_puntaje_tipo_titulo;
END;
GO


--Ejecutar la función que calcula el puntaje por portenecer el tipo de titulo (Ojo que es por NUMERO no por la palabra ejemplo  = profesional)
select dbo.fc_puntaje_tipo_titulo(3);

--Ver la tabla con parametros.
select * from tipo_titulo;
select * from dbo.Titulo;

