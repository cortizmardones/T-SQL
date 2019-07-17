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

CREATE PROCEDURE sp_serviu2 @año int, @rutIngresado int
AS
BEGIN

Declare 
@edad int , @puntajeEdad int , 
@cantidad_cargas int , @puntajeCargas int , 
@estado_civilVarchar varchar(50), @estado_civilInt int ,@puntaje_estado_civil int ,
@pueblo_indigena varchar(50), @pueblo_indigenaInt int , @puntaje_pueblo_indigena int,
@monto int, @puntaje_monto_ahorro int,
@tipo_titulo int , @puntaje_titulo int,
@total_puntaje int
 
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

set @monto = dbo.fc_monto_ahorro(@rutIngresado);
set @puntaje_monto_ahorro = dbo.fc_puntaje_monto_ahorro(@monto);

set @tipo_titulo = dbo.fc_tipo_titulo(@rutIngresado);
set @puntaje_titulo = dbo.fc_puntaje_tipo_titulo(@tipo_titulo);

set @total_puntaje = SUM(@puntajeEdad + @puntajeCargas + @puntaje_estado_civil + @puntaje_pueblo_indigena + @puntaje_monto_ahorro + @puntaje_titulo );

insert into proceso (ano,rut_postulante,edad,puntaje_edad,cantidad_cargas,puntaje_carga,estado_civil,puntaje_estado_civil,pueblo_indigena,puntaje_pueblo_indigena,monto_ahorro,puntaje_monto_ahorro,puntaje_titulo,total_puntaje)
values(@año,@rutIngresado,@Edad,@puntajeEdad,@cantidad_cargas,@puntajeCargas,@estado_civilVarchar,@puntaje_estado_civil,@pueblo_indigena,@puntaje_pueblo_indigena,@monto,@puntaje_monto_ahorro,@puntaje_titulo,@total_puntaje);
END;


--Ejecutar storeprocedure y consultar
EXEC sp_serviu2 2019,171302838;
GO
select * from Proceso;



--Vaciar las tablas
delete from Proceso;
go
truncate table Proceso;


select * from postulante order by rut_postulante;
select * from postulante order by created_at;
select * from cuenta order by id_cuenta;



























--Procedimiento con cursores.
USE ProyectoServiu;
GO
IF OBJECT_ID ('sp_serviu3') IS NOT NULL
	DROP PROCEDURE sp_serviu3;
GO
create procedure sp_serviu3
as

declare @rutCursor int, @año int,
@edad int , @puntajeEdad int, 
@cantidad_cargas int , @puntajeCargas int , 
@estado_civilVarchar varchar(50), @estado_civilInt int ,@puntaje_estado_civil int ,
@pueblo_indigena varchar(50), @pueblo_indigenaInt int , @puntaje_pueblo_indigena int,
@monto int, @puntaje_monto_ahorro int,
@tipo_titulo int , @puntaje_titulo int,
@total_puntaje int

declare MICURSOR cursor

	for select rut_postulante from postulante

open MICURSOR

	fetch next from MICURSOR into @rutCursor

while @@FETCH_STATUS=0
begin

	set @año = '2019';

	set @Edad   = dbo.fc_edad(@rutCursor);
	set @puntajeEdad   = dbo.fc_puntaje_edad(@Edad);

	set @cantidad_cargas = dbo.fc_cantidad_carga(@rutCursor);
	set @puntajeCargas = dbo.fc_puntaje_carga2(@cantidad_cargas);

	set @estado_civilVarchar = dbo.fc_estado_civil(@rutCursor);
	set @estado_civilInt = dbo.fc_estado_civilInt(@rutCursor);
	set @puntaje_estado_civil = dbo.fc_puntaje_estado_civil(@estado_civilInt);

	set @pueblo_indigena = dbo.fc_pueblo_originario(@rutCursor);
	set @pueblo_indigenaInt = dbo.fc_pueblo_originarioInt(@rutCursor);
	set @puntaje_pueblo_indigena = dbo.fc_puntaje_pueblo_originario(@pueblo_indigenaInt);

	set @monto = dbo.fc_monto_ahorro(@rutCursor);
	set @puntaje_monto_ahorro = dbo.fc_puntaje_monto_ahorro(@monto);

	set @tipo_titulo = dbo.fc_tipo_titulo(@rutCursor);
	set @puntaje_titulo = dbo.fc_puntaje_tipo_titulo(@tipo_titulo);

	set @total_puntaje = SUM(@puntajeEdad + @puntajeCargas + @puntaje_estado_civil + @puntaje_pueblo_indigena + @puntaje_monto_ahorro + @puntaje_titulo );
		insert into proceso (ano,rut_postulante,edad,puntaje_edad,cantidad_cargas,puntaje_carga,estado_civil,puntaje_estado_civil,pueblo_indigena,puntaje_pueblo_indigena,monto_ahorro,puntaje_monto_ahorro,puntaje_titulo,total_puntaje)
		values(@año,@rutCursor,@Edad,@puntajeEdad,@cantidad_cargas,@puntajeCargas,@estado_civilVarchar,@puntaje_estado_civil,@pueblo_indigena,@puntaje_pueblo_indigena,@monto,@puntaje_monto_ahorro,@puntaje_titulo,@total_puntaje);

	fetch next from MICURSOR into @rutCursor

end

close MICURSOR
deallocate MICURSOR;


--Ejecutar storeprocedure y consultar
EXEC sp_serviu3;
GO
select * from Proceso;



--Vaciar las tablas
delete from Proceso;
go
truncate table Proceso;


--Consultar la tabla postulante
select * from postulante;