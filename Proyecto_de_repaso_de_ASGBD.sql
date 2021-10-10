create table canales(
    id_canal    number(2)       constraint  canales_pk  primary key,
    nombre      varchar2(10)    constraint  canales_nn1  not null
                                constraint  canales_uk1  unique
);

create table programas(
    id_programas    number(2)       constraint programas_pk primary key,
    nombre          varchar2(250)    constraint programas_nn1 not null
                                    constraint programas_uk1 unique
);

create table episodio(
    n_episodio      number(4),
    id_programas    number(2)       constraint episodios_fk1    references programas,
    nombre          varchar2(30)    constraint episodios_nn2    not null,
    hora_inicio     timestamp,
    hora_fin        timestamp,
    constraint      episodio_pk primary key (n_episodio,id_programas)
);

create table retransmision(
    id_canal                        number(2)       constraint retransmision_fk1 references canales,
    n_episodio                      number(4),
    id_programas                    number(2),
    fecha                           timestamp,
    edad                            number(2)       constraint retransmision_nn not null,
    descripcion                     varchar2(250),
    programa_independiente          char(3),
    constraint retransmision_pk     primary key (id_canal,id_programas,n_episodio,fecha),
    constraint retransmision_fk2    foreign key (n_episodio,id_programas)   references episodio
);

insert into canales values (1,'La 1');
insert into canales values (2,'La 2');

insert into programas values (1,'Telediario Matinal');
insert into programas values (2,'La hora de la 1');
insert into programas values (3,'Mejor Contigo');
insert into programas values (4,'Informativo Territorial');
insert into programas values (5,'Telediario 1');
insert into programas values (6,'El Tiempo');
insert into programas values (7,'Dos Vidas');
insert into programas values (8,'Servir y Proteger');
insert into programas values (9,'El Cazador');
insert into programas values (10,'España Directo');
insert into programas values (11,'Futbol UEFA Nation league');
insert into programas values (12,'Lazos de Sangre');
insert into programas values (13,'Cine El Secuestro de Anabel');
insert into programas values (14,'La Noche en 24H');
insert into programas values (15,'Noticias 24H');
insert into programas values (16,'Cine Cuestion de Justicia');
insert into programas values (17,'Españoles en el mundo');

insert into programas values (18,'La Aventura del saber');
insert into programas values (19,'Documental Pequeños universos-El Universo escondido');
insert into programas values (20,'De seda y hierro');
insert into programas values (21,'Ingles en TVE');
insert into programas values (22,'La 2 Express');
insert into programas values (23,'Documental El Caribe salvaje. Los ritmos de la vida');
insert into programas values (24,'Diario de un nomada. La ruta del ambar por europa');
insert into programas values (25,'Aqui hay trabajo');
insert into programas values (26,'Documenta2 Mundos prehistoricos');
insert into programas values (27,'Documental Tierras extremas');
insert into programas values (28,'Mañanas de cine Tierra sagrada');
insert into programas values (29,'Documental Las aventuras ineditas de Joanna Lumley');
insert into programas values (30,'Documental Apulia, Las raices de Italia');
insert into programas values (31,'Saber y ganar');
insert into programas values (32,'Grandes Documentales Los reinos de los depredadores de Africa');
insert into programas values (33,'Grandes Documentales Sonidos de la naturaleza');
insert into programas values (34,'Documenta2 1968: El año que cambio la historia');
insert into programas values (35,'Documental Exploradores del sabor');
insert into programas values (36,'Escala humana');
insert into programas values (37,'Documental la aventura de Joanna Lumley en la ruta de al S');
insert into programas values (38,'Documental Grandes diseños de vuelta');
insert into programas values (39,'Documaster historias de nuestro cine');
insert into programas values (40,'En portada');
insert into programas values (41,'Documental Susana y el sexo');
insert into programas values (42,'Conciertos Radio 3');
insert into programas values (43,'Zoom tendencias');
insert into programas values (44,'Pueblo de Dios');
insert into programas values (45,'Documenta2 Los tesoros hundidos del Vistula');
insert into programas values (46,'Mañananas de cine Un hombre llamado Noon');
insert into programas values (47,'Documental Metropolis');
insert into programas values (48,'Documental Suiza, El corazon de los Alpes');
insert into programas values (49,'Grandes documentales Las maravillosas montañas de Portugal');
insert into programas values (50,'Atencion obras');
insert into programas values (51,'Los bastardos de Pizzofalcone');
insert into programas values (52,'Documental El horo de Hitler');
insert into programas values (53,'Documental Espiando en la manada');

insert into episodio values (161,1,'Capitulo 161',to_date('6/10/2021 06:00','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 08:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (368,2,'Capitulo 368',to_date('6/10/2021 06:00','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 10:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (430,2,'Capitulo 430',to_date('6/10/2021 10:00','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 12:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (18,3,'Capitulo 18',to_date('6/10/2021 12:30','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 14:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,4,'Capitulo 1',to_date('6/10/2021 14:00','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 14:20','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (279,5,'Capitulo 279',to_date('6/10/2021 14:20','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 15:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (2,4,'Capitulo 2',to_date('6/10/2021 15:00','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 15:55','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (645,5,'Capitulo 645',to_date('6/10/2021 15:55','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 16:15','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (171,7,'Capitulo 171',to_date('6/10/2021 16:15','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 16:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (263,8,'Capitulo 263',to_date('6/10/2021 17:25','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 18:25','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (413,9,'Capitulo 413',to_date('6/10/2021 18:25','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 19:20','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (4,10,'Capitulo 4',to_date('6/10/2021 19:20','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 20:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,11,'Capitulo 1',to_date('6/10/2021 20:00','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 22:35','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (48,12,'Capitulo 48',to_date('6/10/2021 22:35','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 23:40','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (30,12,'Capitulo 30',to_date('6/10/2021 23:40','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 01:15','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,13,'Capitulo 30',to_date('7/10/2021 01:15','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 02:45','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (729,14,'Capitulo 729',to_date('7/10/2021 02:45','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 04:35','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (279,15,'Capitulo 279',to_date('7/10/2021 04:35','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 06:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (162,1,'Capitulo 162',to_date('7/10/2021 06:00','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 08:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (369,2,'Capitulo 369',to_date('7/10/2021 08:30','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 10:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (431,2,'Capitulo 431',to_date('7/10/2021 10:00','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 12:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (19,3,'Capitulo 19',to_date('7/10/2021 12:30','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 14:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (280,5,'Capitulo 280',to_date('7/10/2021 15:00','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 15:55','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (646,6,'Capitulo 646',to_date('7/10/2021 16:15','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 16:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (172,7,'Capitulo 172',to_date('7/10/2021 16:30','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 17:25','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (264,8,'Capitulo 264',to_date('7/10/2021 17:25','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 18:25','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (356,9,'Capitulo 356',to_date('7/10/2021 18:25','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 19:20','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (5,10,'Capitulo 5',to_date('7/10/2021 19:20','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 20:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (2,11,'Capitulo 2',to_date('7/10/2021 20:30','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 22:35','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,16,'Capitulo 1',to_date('7/10/2021 22:35','fmdd/mm/yyyy hh24:mi'),to_date('8/10/2021 00:40','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (91,17,'ISRAEL',to_date('8/10/2021 00:40','fmdd/mm/yyyy hh24:mi'),to_date('8/10/2021 01:31','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (18,17,'NUEVA ZELANDA, ISLA NORTENO',to_date('8/10/2021 01:31','fmdd/mm/yyyy hh24:mi'),to_date('8/10/2021 02:21','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (20,17,'IRLANDA ATLÁNTICANO',to_date('8/10/2021 02:21','fmdd/mm/yyyy hh24:mi'),to_date('8/10/2021 03:15','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (730,14,'Capitulo 730',to_date('8/10/2021 03:15','fmdd/mm/yyyy hh24:mi'),to_date('8/10/2021 05:05','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (280,15,'Capitulo 280',to_date('8/10/2021 05:05','fmdd/mm/yyyy hh24:mi'),to_date('8/10/2021 06:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (569,18,'Capitulo 1',to_date('6/10/2021 06:00','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 06:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,19,'Capitulo 1',to_date('6/10/2021 06:30','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 07:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (27,20,'Capitulo 27',to_date('6/10/2021 07:00','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 07:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (403,21,'Capitulo 403',to_date('6/10/2021 07:30','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 07:55','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,22,'Capitulo 1',to_date('6/10/2021 07:55','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 08:05','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,23,'Capitulo 1',to_date('6/10/2021 08:05','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 08:55','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,24,'Capitulo 1',to_date('6/10/2021 08:55','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 09:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,25,'Capitulo 1',to_date('6/10/2021 09:30','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 09:55','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (570,18,'Capitulo 570',to_date('6/10/2021 09:55','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 10:50','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,26,'Capitulo 1',to_date('6/10/2021 10:50','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 11:45','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (5,27,'Capitulo 5',to_date('6/10/2021 11:45','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 12:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,28,'Capitulo 1',to_date('6/10/2021 12:30','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 14:05','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,29,'Capitulo 1',to_date('6/10/2021 14:05','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 14:50','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,30,'Capitulo 1',to_date('6/10/2021 14:50','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 15:45','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (189,31,'Capitulo 189',to_date('6/10/2021 15:45','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 16:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (4,32,'Capitulo 4',to_date('6/10/2021 16:30','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 17:20','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,33,'Capitulo 1',to_date('6/10/2021 17:20','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 18:10','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (3,34,'Capitulo 3',to_date('6/10/2021 18:10','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 18:50','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (3,35,'Capitulo 3',to_date('6/10/2021 18:50','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 19:45','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (40,36,'Capitulo 40',to_date('6/10/2021 19:45','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 20:15','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (2,37,'Capitulo 2',to_date('6/10/2021 20:25','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 21:10','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (2,38,'Capitulo 2',to_date('6/10/2021 21:10','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 22:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,39,'Capitulo 1',to_date('6/10/2021 22:00','fmdd/mm/yyyy hh24:mi'),to_date('6/10/2021 23:55','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (148,40,'Capitulo 148',to_date('6/10/2021 23:55','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 00:40','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,41,'Capitulo 1',to_date('7/10/2021 00:40','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 01:35','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (519,42,'Capitulo 519',to_date('7/10/2021 01:35','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 02:05','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (2,34,'Capitulo 2',to_date('7/10/2021 02:05','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 02:50','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (2,35,'Capitulo 2',to_date('7/10/2021 02:50','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 03:35','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (3,32,'Capitulo 3',to_date('7/10/2021 03:35','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 04:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (567,22,'Capitulo 567',to_date('7/10/2021 05:30','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 06:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (571,18,'Capitulo 571',to_date('7/10/2021 06:00','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 06:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (13,19,'Capitulo 13',to_date('7/10/2021 06:30','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 06:55','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (164,43,'Capitulo 164',to_date('7/10/2021 06:55','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 07:25','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (404,22,'Capitulo 404',to_date('7/10/2021 07:30','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 07:55','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (2,23,'Capitulo 2',to_date('7/10/2021 08:05','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 09:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (153,44,'Capitulo 153',to_date('7/10/2021 09:00','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 09:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (486,25,'Capitulo 486',to_date('7/10/2021 09:30','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 09:55','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,45,'Capitulo 1',to_date('7/10/2021 11:00','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 12:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (6,27,'Capitulo 6',to_date('7/10/2021 12:00','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 12:45','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,46,'Capitulo 1',to_date('7/10/2021 12:45','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 14:15','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (5,47,'Capitulo 5',to_date('7/10/2021 14:15','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 14:50','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,48,'Capitulo 1',to_date('7/10/2021 14:50','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 15:45','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (190,31,'Capitulo 190',to_date('7/10/2021 15:45','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 16:30','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (5,32,'Capitulo 190',to_date('7/10/2021 16:30','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 17:20','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (1,49,'Capitulo 1',to_date('7/10/2021 17:20','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 18:10','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (4,34,'Capitulo 4',to_date('7/10/2021 18:10','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 18:50','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (4,35,'Capitulo 4',to_date('7/10/2021 18:50','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 19:45','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (157,50,'Capitulo 157',to_date('7/10/2021 19:45','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 20:15','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (3,37,'Capitulo 3',to_date('7/10/2021 20:25','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 21:10','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (3,50,'Capitulo 3',to_date('7/10/2021 21:10','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 22:00','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (6,51,'Capitulo 6',to_date('7/10/2021 22:00','fmdd/mm/yyyy hh24:mi'),to_date('7/10/2021 23:40','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (3,52,'Capitulo 3',to_date('7/10/2021 23:40','fmdd/mm/yyyy hh24:mi'),to_date('8/10/2021 00:25','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (4,52,'Capitulo 4',to_date('8/10/2021 00:25','fmdd/mm/yyyy hh24:mi'),to_date('8/10/2021 01:10','fmdd/mm/yyyy hh24:mi'));
insert into episodio values (494,42,'Capitulo 494',to_date('8/10/2021 01:10','fmdd/mm/yyyy hh24:mi'),to_date('8/10/2021 01:35','fmdd/mm/yyyy hh24:mi'));

insert into retransmision values (1,161,1,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,162,1,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,368,2,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,430,2,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,369,2,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,431,2,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,18,3,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,19,3,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,1,4,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,2,4,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,279,5,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,645,5,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,280,5,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,646,6,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,171,7,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,172,7,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,263,8,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,264,8,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,413,9,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,356,9,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,4,10,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,5,10,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,1,11,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,2,11,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,48,12,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,30,12,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,1,13,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,729,14,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,730,14,to_date('8/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,279,15,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,280,15,to_date('8/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (1,1,16,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,91,17,to_date('8/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,18,17,to_date('8/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,20,17,to_date('8/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,569,18,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,570,18,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,571,18,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,19,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,13,19,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,27,20,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,403,21,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,22,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,567,22,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,567,22,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,404,22,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,23,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,2,23,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,24,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,1,25,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,486,25,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,26,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,5,27,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,6,27,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,28,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,1,29,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,1,30,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,189,31,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,190,31,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,4,32,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,3,32,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,5,32,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,33,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,3,34,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,2,34,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,4,34,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,3,35,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,2,35,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,4,35,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,40,36,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,2,37,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,3,37,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,2,38,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,39,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,148,40,to_date('6/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,41,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,519,42,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,494,42,to_date('8/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,164,43,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,153,44,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,45,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,1,46,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,5,47,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,1,48,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,1,49,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','SI');
insert into retransmision values (2,157,50,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,3,50,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,6,51,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,3,52,to_date('7/10/2021','fmdd/mm/yyyy'),0,' ','NO');
insert into retransmision values (2,4,52,to_date('8/10/2021','fmdd/mm/yyyy'),0,' ','NO');

create view vista1 as select to_char(fecha,'fmdd/mm/yyyy') as dia, id_canal as canal,p.nombre,to_char(hora_inicio,'fmhh24:mm') as inicio,to_char(hora_fin,'fmhh24:mm') as fin, e.n_episodio as episodio, e.nombre titulo
from retransmision
join episodio e on retransmision.n_episodio = e.n_episodio and retransmision.id_programas = e.id_programas
join programas p on e.id_programas = p.id_programas;

create view vista2 as select p.nombre nombre, e.n_episodio as episodio, e.nombre titulo, edad,descripcion,to_char(hora_inicio,'fmhh24:mm') as inicio,to_char(hora_fin,'fmhh24:mm') as fin
from retransmision
join episodio e on retransmision.n_episodio = e.n_episodio and retransmision.id_programas = e.id_programas
join programas p on e.id_programas = p.id_programas
where id_canal like '1';

create view vista3 as select p.nombre,to_char(fecha,'fmdd/mm/yyyy') as dias,to_char(hora_inicio,'fmhh24:mm') as inicio
from retransmision
join episodio e on retransmision.n_episodio = e.n_episodio and retransmision.id_programas = e.id_programas
join programas p on e.id_programas = p.id_programas
where p.nombre like 'La hora de la 1';

create view vista4 as select count(distinct p.nombre) programas, to_char(fecha,'fmday dd/mm/yyyy') fecha, c2.nombre
from programas p
join episodio e on p.id_programas = e.id_programas
join retransmision r on e.n_episodio = r.n_episodio and e.id_programas = r.id_programas
join canales c2 on r.id_canal = c2.id_canal
group by fecha,c2.nombre;