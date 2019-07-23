Use ProyectoServiu;

go

insert into dbo.Banco values (1,'Banco Estado');
insert into dbo.Banco values (2,'Banco Chile');
insert into dbo.Banco values (3,'Banco BCI');
insert into dbo.Banco values (4,'Banco CorpBanca');
insert into dbo.Banco values (5,'Banco Santander');
insert into dbo.Banco values (6,'Banco Falabella');
insert into dbo.Banco values (7,'Banco Ita�');
insert into dbo.Banco values (8,'Banco Security');
insert into dbo.Banco values (9,'Banco Bice');
insert into dbo.Banco values (10,'Banco Penta');

go

insert into dbo.Nacionalidad values (1,'Chileno');
insert into dbo.Nacionalidad values (2,'Extranjero');
insert into dbo.Nacionalidad values (3,'NN');

go

insert into dbo.UF values (1,27592,'11-05-2019');
insert into dbo.UF values (2,27600,'12-05-2019');
insert into dbo.UF values (3,27603,'13-05-2019');
insert into dbo.UF values (4,27604,'14-05-2019');
insert into dbo.UF values (5,27660,'15-05-2019');
insert into dbo.UF values (6,27670,'16-05-2019');
insert into dbo.UF values (7,27675,'17-05-2019');
insert into dbo.UF values (8,27678,'18-05-2019');
insert into dbo.UF values (9,27700,'19-05-2019');
insert into dbo.UF values (10,27705,'20-05-2019');

go

insert into dbo.Region values (1,'Tarapaca');
insert into dbo.Region values (2,'Antofagasta');
insert into dbo.Region values (3,'Atacama');
insert into dbo.Region values (4,'Coquimbo');
insert into dbo.Region values (5,'Valparaiso');
insert into dbo.Region values (6,'Libertador General Bernardo O�Higgins');
insert into dbo.Region values (7,'Maule');
insert into dbo.Region values (8,'Concepci�n');
insert into dbo.Region values (9,'Araucania');
insert into dbo.Region values (10,'Los Lagos');
insert into dbo.Region values (11,'Ays�n del General Carlos Iba�ez del Campo');
insert into dbo.Region values (12,'Magallanes y de la Ant�rtica Chilena')
insert into dbo.Region values (13,'Metropolitana de Santiago')
insert into dbo.Region values (14,'De los Rios')
insert into dbo.Region values (15,'Arica y Parinacota')
insert into dbo.Region values (16,'�uble')

go

insert into dbo.Comuna values (1,'Alto Hospicio',1);
insert into dbo.Comuna values (2,'Iquique',1);
insert into dbo.Comuna values (3,'Colchane',1);
insert into dbo.Comuna values (4,'TalTal',2);
insert into dbo.Comuna values (5,'Calama',2);
insert into dbo.Comuna values (6,'Ollague',2);
insert into dbo.Comuna values (7,'San Pedro de atacama',2);
insert into dbo.Comuna values (8,'Diego de almagro',3);
insert into dbo.Comuna values (9,'Caldera',3);
insert into dbo.Comuna values (10,'Tierra Amarilla',3);
insert into dbo.Comuna values (11,'Andacollo',4);
insert into dbo.Comuna values (12,'Ovalle',4);
insert into dbo.Comuna values (13,'MontePatria',4);
insert into dbo.Comuna values (14,'Quintero',5);
insert into dbo.Comuna values (15,'Puchuncavi',5);
insert into dbo.Comuna values (16,'Juan Fernandez',5);
insert into dbo.Comuna values (17,'Colchagua',6);
insert into dbo.Comuna values (18,'Cachapoal',6);
insert into dbo.Comuna values (19,'Cardenal Caro',6);
insert into dbo.Comuna values (20,'Curepto',7);
insert into dbo.Comuna values (21,'Pelarco',7);
insert into dbo.Comuna values (22,'San Clemente',7);
insert into dbo.Comuna values (23,'Coronel',8);
insert into dbo.Comuna values (23,'Tome',8);
insert into dbo.Comuna values (25,'Talcahuano',8);
insert into dbo.Comuna values (26,'Angol',9);
insert into dbo.Comuna values (27,'Collipulli',9);
insert into dbo.Comuna values (28,'Curacautin',9);
insert into dbo.Comuna values (29,'Puerto Varas',10);
insert into dbo.Comuna values (30,'Osorno',10);
insert into dbo.Comuna values (31,'Purranque',10);
insert into dbo.Comuna values (32,'Chile Chico',11);
insert into dbo.Comuna values (33,'Lago Verde',11);
insert into dbo.Comuna values (34,'Tortel',11);
insert into dbo.Comuna values (35,'Laguna Blanca',12);
insert into dbo.Comuna values (36,'Punta Arenas',12);
insert into dbo.Comuna values (37,'Rio Verde',12);
insert into dbo.Comuna values (38,'Santiago',13);
insert into dbo.Comuna values (39,'San Bernardo',13);
insert into dbo.Comuna values (40,'Puente Alto',13);
insert into dbo.Comuna values (41,'Nu�oa',13);
insert into dbo.Comuna values (42,'Santiago',13);
insert into dbo.Comuna values (43,'Providencia',13);
insert into dbo.Comuna values (44,'Maipu',13);
insert into dbo.Comuna values (45,'Macul',13);
insert into dbo.Comuna values (46,'Las Condes',13);
insert into dbo.Comuna values (47,'Vitacura',13);
insert into dbo.Comuna values (48,'La Pintana',13);
insert into dbo.Comuna values (49,'La Florida',13);
insert into dbo.Comuna values (50,'Renca',13);
insert into dbo.Comuna values (51,'Lo Prado',13);
insert into dbo.Comuna values (52,'Conchali',13);
insert into dbo.Comuna values (53,'Quilicura',13);
insert into dbo.Comuna values (54,'Quinta Normal',13);
insert into dbo.Comuna values (55,'Lo Espejo',13);
insert into dbo.Comuna values (56,'Estacion Central',13);
insert into dbo.Comuna values (57,'El Bosque',13);
insert into dbo.Comuna values (58,'Valdivia',14);
insert into dbo.Comuna values (59,'La union',14);
insert into dbo.Comuna values (60,'Lago Ranco',14);
insert into dbo.Comuna values (61,'Arica',15);
insert into dbo.Comuna values (62,'Putre',15);
insert into dbo.Comuna values (63,'Camarones',15);

go

insert into dbo.Propietario values (169199957,'Carlos','Ortiz','Mardones',958586705,'cortizmardones@gmail.com');
insert into dbo.Propietario values (184997142,'Ricardo','Soto','Gomez',995875633,'gomez.soto.ricardo@gmail.com');
insert into dbo.Propietario values (163002957,'Gloria','Mora','Crema',992243213,'crema.mora.gloria@gmail.com');
insert into dbo.Propietario values (219684886,'Javier','Santaolalla','Marin',925817396,'javier_santamarin@gmail.com');
insert into dbo.Propietario values (178569465,'Mercedes','Sosa','Romero',982574891,'mer_romero_sosa@gmail.com');

go

insert into dbo.Tramo_vivienda values (1,'1800');
insert into dbo.Tramo_vivienda values (2,'2400');
insert into dbo.Tramo_vivienda values (3,'2800');

go

insert into dbo.Tipo_Cuenta values (1,'Cuenta Corriente');
insert into dbo.Tipo_Cuenta values (2,'Cuenta Vista');
insert into dbo.Tipo_Cuenta values (3,'Cuenta Ahorro');

go

insert into dbo.Pueblo_Originario values ('No pertenece',0,0);
insert into dbo.Pueblo_Originario values ('Aymara',1,500);
insert into dbo.Pueblo_Originario values ('Quechua',1,500);
insert into dbo.Pueblo_Originario values ('Atacame�o',1,500);
insert into dbo.Pueblo_Originario values ('kolla',1,500);
insert into dbo.Pueblo_Originario values ('Diaguita',1,500);
insert into dbo.Pueblo_Originario values ('Rapanui',1,500);
insert into dbo.Pueblo_Originario values ('Mapuche',1,500);
insert into dbo.Pueblo_Originario values ('Yag�n',1,500);
insert into dbo.Pueblo_Originario values ('Chango',1,500);
insert into dbo.Pueblo_Originario values ('Picunche',1,500);
insert into dbo.Pueblo_Originario values ('Cunco',1,500);
insert into dbo.Pueblo_Originario values ('Chono',1,500);


select * from Certificado_permanencia; --Cree la tabla con identy

insert into Certificado_permanencia values ('Sin certificado',0);
insert into Certificado_permanencia values ('Con certificado',1);


select * from relacion_carga;

insert into relacion_carga values (1,'Conyuge');
insert into relacion_carga values (2,'Hijo - Hija');
insert into relacion_carga values (3,'Nieto - Nieta');
insert into relacion_carga values (4,'Otro');


select * from Conyuge;
select * from Nacionalidad;

insert into dbo.Conyuge values (171487965,'Camila','Sanchez','Somoza','19880322',1);
insert into dbo.Conyuge values (139943317,'Claudio','Angulo','Briones','19600718',1);
insert into dbo.Conyuge values (117236125,'German','Torres','Carrasco','19850410',2);
insert into dbo.Conyuge values (105432881,'Carla','Mardones','Quilodran','19550508',2);
insert into dbo.Conyuge values (208334721,'Venancio','Castro','Soto','20001001',1);


select * from Carga;

insert into Carga values (240224932,'Esteban','Paredes','Gonzales','20190322');
insert into Carga values (265803175,'Ricardo','Milos','Ugarte','20190512');
insert into Carga values (206683183,'Maria','Estanford','Maluenda','20150712');
insert into Carga values (208956723,'Isabel','Mardones','Picaporte','20150902');
insert into Carga values (192239378,'Diego','Llanquin','Astroza','20131101');


select * from Consultor;

insert into dbo.Consultor values (105395949,'Emilio','Sanhueza','esanhueza@minvu.cl',958586705);
insert into dbo.Consultor values (206595302,'Estefanie','Milan','emilan@minvu.cl',93578143);
insert into dbo.Consultor values (148956723,'Nevenka','Malloa','nmalloa@minvu.cl',972148931);
insert into dbo.Consultor values (210276580,'Raul','Pardo','rpardo@minvu.cl',930246705);
insert into dbo.Consultor values (55461066,'Jose','Collio','jcollio@minvu.cl',915667188);


select * from Cuenta;
select * from Banco;
select * from dbo.Tipo_Cuenta;

insert into cuenta values (221476,'AHORRO VIVIENDA',3,1,8500000,null,null);
insert into cuenta values (327195,'AHORRO VIVIENDA',3,10,9275833,null,null);
insert into cuenta values (167284,'AHORRO VIVIENDA',3,6,17500423,null,null);
insert into cuenta values (102871,'AHORRO VIVIENDA',3,8,12799000,null,null);
insert into cuenta values (897726,'AHORRO VIVIENDA',3,4,233000,null,null);

select * from dbo.Deposito;

insert into dbo.Deposito values (1,8500000);
insert into dbo.Deposito values (2,9275833);
insert into dbo.Deposito values (3,17500423);
insert into dbo.Deposito values (4,12799000);
insert into dbo.Deposito values (5,233000);

select * from dbo.Deposito_Cuenta;

insert into dbo.Deposito_Cuenta values (1,221476,1,'20180801');
insert into dbo.Deposito_Cuenta values (2,327195,2,'20181019');
insert into dbo.Deposito_Cuenta values (3,167284,3,'20170315');
insert into dbo.Deposito_Cuenta values (4,102871,4,'20161224');
insert into dbo.Deposito_Cuenta values (5,897726,5,'20190113');


select * from Domicilio;
select * from Comuna;

insert into dbo.Domicilio values (1,'El concretero','01798','','','','',1,'19800501',1,'San Jose de la Construcci�n','Cordillera',null,null);
insert into dbo.Domicilio values (2,'Avenida Ejercito Libertador','215','C','33','','',1,'19720422',1,'Los Alerces','Santiago Centro',null,null);
insert into dbo.Domicilio values (3,'Bron Sur','2520','','77B','','',1,'20141117',51,'Santa Julia','Frente al consultorio',null,null);
insert into dbo.Domicilio values (4,'Callejon Capturi','77193','','','','',1,'19720422',9,'Peninsula de fuego','A un costado del estadio municipal',null,null);
insert into dbo.Domicilio values (5,'Travesia Baratem','01644','','','','',1,'19720422',40,'Catemito Norte','Cerca del terminal rodoviario',null,null);


select * from Tipo_vivienda;

insert into Tipo_vivienda values (1,'Casa');
insert into Tipo_vivienda values (2,'Departamento');

select * from Vivienda;
select * from Tramo_vivienda;
select * from Domicilio;
select * from Propietario;
select * from Comuna;

insert into Vivienda values (1,'Casa Viena',2600,1, 3,163002957,1);
insert into Vivienda values (2,'Casa Londres',2000,1,2,169199957,2);
insert into Vivienda values (3,'Casa Niza',1450,1,1,178569465,3);
insert into Vivienda values (4,'Departamento Sevilla',2799,2,3,184997142,4);
insert into Vivienda values (5,'Casa Mil�n',2100,1,2,219684886,5);




select * from Postulante_Conyuge;
select * from Postulante;

insert into Postulante_Conyuge values (94737419,105432881,'20190401',1,1);
insert into Postulante_Conyuge values (155106514,117236125,'20190415',1,2);
insert into Postulante_Conyuge values (167746322,139943317,'20190522',1,3);
insert into Postulante_Conyuge values (171302838,171487965,'20190413',1,4);
insert into Postulante_Conyuge values (222872707,208334721,'20190501',1,5);

select * from carga;
select * from Postulante;
select * from relacion_carga;

select * from Postulante_Carga;

insert into Postulante_Carga values (167746322,192239378,'20190401',1,1);
insert into Postulante_Carga values (155106514,206683183,'20190415',1,2);
insert into Postulante_Carga values (171302838,208956723,'20190522',1,3);
insert into Postulante_Carga values (94737419,240224932,'20190413',1,4);
insert into Postulante_Carga values (222872707,265803175,'20190501',1,1);


select * from dbo.informe_tecnico;

insert into dbo.informe_tecnico values (8081,'20190401','20190411',8081,1,55461066);
insert into dbo.informe_tecnico values (8082,'20190415','20190425',8082,2,105395949);
insert into dbo.informe_tecnico values (8083,'20190522','20190602',8083,3,148956723);
insert into dbo.informe_tecnico values (8084,'20190413','20190423',8084,4,206595302);
insert into dbo.informe_tecnico values (8085,'20190501','20190511',8085,5,210276580);

select * from Formulario_A;

insert into Formulario_A values (8081,'20190401','Ernesto Perez',167746322,1);
insert into Formulario_A values (8082,'20190415','Ernesto Perez',155106514,2);
insert into Formulario_A values (8083,'20190522','Fabiola Tapia',171302838,3);
insert into Formulario_A values (8084,'20190413','Ernesto Perez',94737419,4);
insert into Formulario_A values (8085,'20190501','Ernesto Perez',222872707,5);

select * from Postulante;

insert into Postulante values (167746322,'Jose','Miguel','Vi�uela','Moreno',2557036,91234567,91234567,0140000,'walter.white@gmail.com','19850701',1,2,102871,1,1350000,8,2,1);
insert into Postulante values (155106514,'Romina','Alejandra','Jara','Romero',2557127,92569871,920897451,8320000,'romina.jara@gmail.com','19911121',2,5,167284,2,1750000,2,5,2);
insert into Postulante values (171302838,'Francisco','Orlando','Bernales','Ortiz',26567762,982634572,983266942,8320000,'francisco.bernales@gmail.com','19850701',1,4,221476,3,2100000,2,1,1);
insert into Postulante values (94737419,'Nicole','Andrea','Mardones','Quilodran',26567763,982547612,921456172,2340000,'nicole.mardones@gmail.com','19911121',2,3,327195,4,1999000,2,4,1);
insert into Postulante values (222872707,'Claudio','Andres','Sandoval','Matus',26567766,963415782,993628876,4030000,'claudio.sandoval@gmail.com','19850701',1,1,897726,5,1192540,4,6,1);

--Me faltan las tablas:  (PROCESO - Se llena con un procedimiento de almacenado)







--Mantenedores de puntajes
select * from Tramo_Edad;

insert into Tramo_Edad values (1,18,29,200);
insert into Tramo_Edad values (2,30,39,150);
insert into Tramo_Edad values (3,40,50,100);

select * from Tramo_Carga_Familiar;

insert into Tramo_Carga_Familiar values (1,5,11,200);
insert into Tramo_Carga_Familiar values (2,2,4,100);
insert into Tramo_Carga_Familiar values (3,0,1,50);

select * from Estado_Civil; --(Ya cargado los puntajes en la tabla)

insert into dbo.[Estado_Civil] values (1,'Soltero',60);
insert into dbo.[Estado_Civil] values (2,'Casado',100);
insert into dbo.[Estado_Civil] values (3,'Viudo',20);
insert into dbo.[Estado_Civil] values (4,'Conviviente Civil',80);
insert into dbo.[Estado_Civil] values (5,'Divorciado',40);


--Para calcular puntajes.
select * from tipo_titulo;

insert into tipo_titulo values (1,'T�tulo Profesional',200);
insert into tipo_titulo values (2,'T�tulo T�cnico',100);
insert into tipo_titulo values (3,'Sin titulo',0);

select * from Titulo;

insert into Titulo values (1,'Sin Titulo',0,3);
insert into Titulo values (2,'Ingeniero en Informatica',1,1);
insert into Titulo values (3,'Analista Programador Computacional',1,2);
insert into Titulo values (4,'Arquitecto de Software',1,1);
insert into Titulo values (5,'Asistente de soporte',1,2);
insert into Titulo values (6,'Ingeniero en redes y telecomunicaciones',1,1);


select * from Tramo_Ahorro;

insert into Tramo_Ahorro values(1,10000000,99000000,500);
insert into Tramo_Ahorro values(2,9000000,9999999,400);
insert into Tramo_Ahorro values(3,8000000,8999999,200);


select * from error;

insert into error values(1,'El Rut ingresado ya existe en la BDD');
insert into error values(2,'La cuenta bancaria ya existe en la BDD');
insert into error values(3,'El rut consultado no se encuentra en la BDD');