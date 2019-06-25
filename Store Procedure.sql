
use ProyectoServiu;


--Función para calcular la edad (N°1 en la tabla)
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
select dbo.fc_puntaje_carga2(5);

--Ver la tabla con parametros.
select * from Tramo_Carga_Familiar;




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
select dbo.fc_puntaje_tipo_titulo(2);

--Ver la tabla con parametros.
select * from tipo_titulo;
select * from dbo.Titulo;








--Store Procedure
USE ProyectoServiu;
GO
IF OBJECT_ID ('sp_serviu') IS NOT NULL
	DROP PROCEDURE sp_serviu;
GO


CREATE PROCEDURE sp_serviu @año int , @rutIngresado int AS
BEGIN
 Declare @total_carga int , @total_puntaje int;

set @total_carga = dbo.fc_count_carga(@rutIngresado);
set @total_puntaje = dbo.fc_puntaje_carga2(@total_carga);

insert into proceso (ano,rut_postulante,puntaje_carga,cantidad_cargas)values (@año,@rutIngresado,@total_puntaje,@total_carga);
END;



--Ejecutar storeprocedure
EXEC sp_serviu 2019,94737419;


--Consultar
select * from postulante;
select * from Proceso;







--Store Procedure (Prueba N° 2)
USE ProyectoServiu;
GO
IF OBJECT_ID ('sp_serviu2') IS NOT NULL
	DROP PROCEDURE sp_serviu2;
GO

CREATE PROCEDURE sp_serviu2 @año int, @rutIngresado int , @montoAhorroParametro int , @tituloParametro int
AS
BEGIN

Declare 
@edad int , @puntajeEdad int , 
@cantidad_cargas int , @puntajeCargas int , 
@estado_civilVarchar varchar(50), @estado_civilInt int ,@puntaje_estado_civil int ,
@pueblo_indigena varchar(50), @pueblo_indigenaInt int , @puntaje_pueblo_indigena int , 
@puntaje_monto_ahorro int , @puntaje_titulo int , @total_puntaje int
 
set @Edad   = dbo.fc_edad(@rutIngresado);
set @puntajeEdad   = dbo.fc_puntaje_edad(@Edad);

set @cantidad_cargas = dbo.fc_cantidad_carga(@rutIngresado);
set @puntajeCargas = dbo.fc_puntaje_carga2(@cantidad_cargas);

set @estado_civilVarchar = dbo.fc_estado_civil(@rutIngresado);
set @estado_civilInt = dbo.fc_estado_civilInt(@rutIngresado);
set @puntaje_estado_civil = dbo.fc_puntaje_estado_civil(@estado_civilInt);

set @pueblo_indigena = dbo.fc_pueblo_originario(@rutIngresado);
set @pueblo_indigenaInt = dbo.fc_pueblo_originarioInt(@rutIngresado);
set @puntaje_pueblo_indigena = dbo.fc_puntaje_pueblo_originario(@pueblo_indigenaInt);

set @puntaje_monto_ahorro = dbo.fc_puntaje_monto_ahorro(@montoAhorroParametro);
set @puntaje_titulo = dbo.fc_puntaje_tipo_titulo(@tituloParametro);
set @total_puntaje = SUM(@puntajeEdad + @puntajeCargas + @puntaje_estado_civil + @puntaje_pueblo_indigena + @puntaje_monto_ahorro + @puntaje_titulo );

insert into proceso (ano,rut_postulante,edad,puntaje_edad,cantidad_cargas,puntaje_carga,estado_civil,puntaje_estado_civil,pueblo_indigena,puntaje_pueblo_indigena,puntaje_monto_ahorro,puntaje_titulo,total_puntaje)
values (@año,@rutIngresado,@Edad,@puntajeEdad,@cantidad_cargas,@puntajeCargas,@estado_civilVarchar,@puntaje_estado_civil,@pueblo_indigena,@puntaje_pueblo_indigena,@puntaje_monto_ahorro,@puntaje_titulo,@total_puntaje);
END;


--Ejecutar storeprocedure y consultar
EXEC sp_serviu2 2019,12345,8001001,2;
GO
select * from Proceso;



--Vaciar las tablas
delete from Proceso;
go
truncate table Proceso;


select * from postulante;
select * from estado_civil;
select * from Pueblo_Originario;
select * from titulo;