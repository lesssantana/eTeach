BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Estudiantes" (
	"id_estudiante"	INTEGER,
	"nombre"	TEXT NOT NULL,
	"apellido"	TEXT NOT NULL,
	"correo_electronico"	TEXT NOT NULL UNIQUE,
	"telefono"	TEXT NOT NULL,
	PRIMARY KEY("id_estudiante" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Profesores" (
	"id_profesor"	INTEGER,
	"nombre"	TEXT NOT NULL,
	"apellido"	TEXT NOT NULL,
	"correo_electronico"	TEXT NOT NULL UNIQUE,
	"telefono"	TEXT NOT NULL,
	PRIMARY KEY("id_profesor" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Cursos" (
	"id_curso"	INTEGER NOT NULL,
	"nombre"	TEXT NOT NULL,
	"descripcion"	TEXT NOT NULL,
	"fecha_inicio"	TEXT NOT NULL,
	"fecha_fin"	TEXT NOT NULL,
	"id_profesor"	INTEGER NOT NULL,
	PRIMARY KEY("id_curso" AUTOINCREMENT),
	FOREIGN KEY("id_profesor") REFERENCES "Profesores"("id_profesor")
);
CREATE TABLE IF NOT EXISTS "Lecciones" (
	"id_leccion"	INTEGER,
	"id_curso"	INTEGER NOT NULL,
	"titulo"	TEXT NOT NULL,
	"contenido"	TEXT,
	"orden"	INTEGER NOT NULL,
	PRIMARY KEY("id_leccion" AUTOINCREMENT),
	FOREIGN KEY("id_curso") REFERENCES "Cursos"("id_curso")
);
CREATE TABLE IF NOT EXISTS "Inscripciones" (
	"id_inscripcion"	INTEGER,
	"id_estudiante"	INTEGER NOT NULL,
	"id_curso"	INTEGER NOT NULL,
	"fecha_inscripcion"	TEXT NOT NULL,
	"estado"	TEXT NOT NULL,
	PRIMARY KEY("id_inscripcion" AUTOINCREMENT),
	FOREIGN KEY("id_estudiante") REFERENCES "Estudiantes"("id_estudiante"),
	FOREIGN KEY("id_curso") REFERENCES "Cursos"("id_curso")
);
INSERT INTO "Estudiantes" ("id_estudiante","nombre","apellido","correo_electronico","telefono") VALUES (1,'Alejandro','García','alejandro.garcia@e.teach','+1 (829) 156-7830'),
 (2,'Beatriz','Pérez','beatriz.perez@e.teach','+1 (849) 972-1548'),
 (3,'Camila','Torres','camila.torres@e.teach','+1 (809) 745-1236'),
 (4,'Daniel','Hernández','daniel.hernandez@e.teach','+1 (829) 589-3671'),
 (5,'Emma','Ramírez','emma.ramirez@e.teach','+1 (849) 473-2185'),
 (6,'Felipe','Rojas','felipe.rojas@e.teach','+1 (809) 861-9547'),
 (7,'Gabriela','Vargas','gabriela.vargas@e.teach','+1 (829) 348-5792'),
 (8,'Héctor','Mendoza','hector.mendoza@e.teach','+1 (849) 216-7324'),
 (9,'Iván','Guzmán','ivan.guzman@e.teach','+1 (809) 478-2453'),
 (10,'Jaime','Ruiz','jaime.ruiz@e.teach','+1 (829) 198-7532'),
 (11,'Karina','Morales','karina.morales@e.teach','+1 (849) 657-1983'),
 (12,'Laura','Ortega','laura.ortega@e.teach','+1 (809) 738-1629'),
 (13,'Miguel','Castillo','miguel.castillo@e.teach','+1 (829) 269-8715'),
 (14,'Natalia','Jiménez','natalia.jimenez@e.teach','+1 (849) 315-9478'),
 (15,'Óscar','González','oscar.gonzalez@e.teach','+1 (809) 486-1379'),
 (16,'Patricia','López','patricia.lopez@e.teach','+1 (829) 750-6129'),
 (17,'Raúl','Martínez','raul.martinez@e.teach','+1 (849) 641-3570'),
 (18,'Sofía','Cabrera','sofia.cabrera@e.teach','+1 (809) 893-2465'),
 (19,'Tomás','Peña','tomas.pena@e.teach','+1 (829) 735-1289'),
 (20,'Valentina','Guerrero','valentina.guerrero@e.teach','+1 (849) 927-8134'),
 (21,'Ximena','Soto','ximena.soto@e.teach','+1 (809) 571-9302'),
 (22,'Yolanda','Cordero','yolanda.cordero@e.teach','+1 (829) 782-6195'),
 (23,'Zacarías','Campos','zacarias.campos@e.teach','+1 (849) 309-7281'),
 (24,'Alicia','Rosales','alicia.rosales@e.teach','+1 (809) 154-2603'),
 (25,'Benito','Vega','benito.vega@e.teach','+1 (829) 409-7852'),
 (26,'Cecilia','Contreras','cecilia.contreras@e.teach','+1 (849) 597-8314'),
 (27,'Diana','Paredes','diana.paredes@e.teach','+1 (809) 823-1479'),
 (28,'Eduardo','Aguilar','eduardo.aguilar@e.teach','+1 (829) 796-2051'),
 (29,'Fabiola','Bernal','fabiola.bernal@e.teach','+1 (849) 514-9786'),
 (30,'Gustavo','Castañeda','gustavo.castaneda@e.teach','+1 (809) 725-6390'),
 (31,'Isabel','Delgado','isabel.delgado@e.teach','+1 (829) 904-7521'),
 (32,'Jorge','Escobar','jorge.escobar@e.teach','+1 (849) 698-0157'),
 (33,'Liliana','Fuentes','liliana.fuentes@e.teach','+1 (809) 413-7298'),
 (34,'Manuel','Gallardo','manuel.gallardo@e.teach','+1 (829) 568-8340'),
 (35,'Nadia','Herrera','nadia.herrera@e.teach','+1 (849) 259-7813'),
 (36,'Olga','Ibarra','olga.ibarra@e.teach','+1 (809) 671-9256'),
 (37,'Pedro','Juárez','pedro.juarez@e.teach','+1 (829) 742-6381'),
 (38,'Rebeca','León','rebeca.leon@e.teach','+1 (849) 850-1902'),
 (39,'Sergio','Méndez','sergio.mendez@e.teach','+1 (809) 973-2415'),
 (40,'Teresa','Navarro','teresa.navarro@e.teach','+1 (829) 694-3520'),
 (41,'Víctor','Ochoa','victor.ochoa@e.teach','+1 (849) 756-8934'),
 (42,'Wendy','Ponce','wendy.ponce@e.teach','+1 (809) 807-5741'),
 (43,'Aarón','Quiñones','aaron.quinones@e.teach','+1 (829) 918-2502'),
 (44,'Bárbara','Ríos','barbara.rios@e.teach','+1 (849) 765-1903'),
 (45,'Carlos','Salazar','carlos.salazar@e.teach','+1 (809) 312-9764'),
 (46,'Dolores','Tamayo','dolores.tamayo@e.teach','+1 (829) 401-2890'),
 (47,'Ernesto','Urbina','ernesto.urbina@e.teach','+1 (849) 654-3821'),
 (48,'Francisca','Valdez','francisca.valdez@e.teach','+1 (809) 937-1654'),
 (49,'Gloria','Wong','gloria.wong@e.teach','+1 (829) 428-7935'),
 (50,'Humberto','Ximénez','humberto.ximenez@e.teach','+1 (849) 215-9706'),
 (51,'Irene','Yáñez','irene.yanez@e.teach','+1 (809) 751-3487'),
 (52,'Joaquín','Zamora','joaquin.zamora@e.teach','+1 (829) 960-2319'),
 (53,'Karen','Arriaga','karen.arriaga@e.teach','+1 (849) 379-4820'),
 (54,'Lorenzo','Barrientos','lorenzo.barrientos@e.teach','+1 (809) 561-7932'),
 (55,'María','Cazares','maria.cazares@e.teach','+1 (829) 174-2643'),
 (56,'Néstor','Dávila','nestor.davila@e.teach','+1 (849) 983-1754'),
 (57,'Ofelia','Escalante','ofelia.escalante@e.teach','+1 (809) 892-5681'),
 (58,'Pablo','Franco','pablo.franco@e.teach','+1 (829) 305-9172'),
 (59,'Quetzalli','Gómez','quetzalli.gomez@e.teach','+1 (849) 741-3503'),
 (60,'Rosa','Hinojosa','rosa.hinojosa@e.teach','+1 (809) 424-9644'),
 (61,'Simón','Infante','simon.infante@e.teach','+1 (829) 537-2805'),
 (62,'Tania','Jacinto','tania.jacinto@e.teach','+1 (849) 872-1916'),
 (63,'Ursula','Kuri','ursula.kuri@e.teach','+1 (809) 953-2678'),
 (64,'Vanesa','Lara','vanesa.lara@e.teach','+1 (829) 619-8390'),
 (65,'Wilbert','Mata','wilbert.mata@e.teach','+1 (849) 196-3741');
INSERT INTO "Profesores" ("id_profesor","nombre","apellido","correo_electronico","telefono") VALUES (1,'Andrea','González','agonzalez@p.teach','+1 (809) 427-3022'),
 (2,'Carlos','Fernández','cfernandez@p.teach','+1 (829) 225-1875'),
 (3,'Berta','López','blopez@p.teach','+1 (849) 445-1077'),
 (4,'David','Martínez','dmartinez@p.teach','+1 (849) 485-3658'),
 (5,'Elena','Rodríguez','erodriguez@p.teach','+1 (809) 586-5586'),
 (6,'Fernando','Pérez','fperez@p.teach','+1 (829) 687-5898'),
 (7,'Gabriela','Sánchez','gsanchez@p.teach','+1 (829) 589-1433'),
 (8,'Hugo','Ramírez','hramirez@p.teach','+1 (809) 977-5245'),
 (9,'Irene','Morales','imorales@p.teach','+1 (849) 414-2311'),
 (10,'Javier','Ortiz','jortiz@p.teach','+1 (809) 425-4567'),
 (11,'Karla','Vargas','kvargas@p.teach','+1 (829) 256-4458'),
 (12,'Luis','Mendoza','lmendoza@p.teach','+1 (829) 445-6688');
INSERT INTO "Cursos" ("id_curso","nombre","descripcion","fecha_inicio","fecha_fin","id_profesor") VALUES (1,'Introducción a la Ingeniería Industrial','Fundamentos y conceptos básicos de la ingeniería industrial.','2023-05-02','2023-08-30',5),
 (2,'Gestión de Calidad','Técnicas y herramientas para el control y mejora de la calidad en procesos industriales.','2023-05-02','2023-08-30',1),
 (3,'Optimización de Procesos','Métodos y prácticas para mejorar la eficiencia de los sistemas de producción.','2023-05-02','2023-08-30',3),
 (4,'Ergonomía y Seguridad','Diseño de sistemas de trabajo y entornos laborales seguros y eficientes.','2023-05-02','2023-08-30',11),
 (5,'Ingeniería Económica','Evaluación y toma de decisiones económicas en proyectos de ingeniería.','2023-05-02','2023-08-30',7),
 (6,'Logística y Cadena de Suministro','Planificación y control de la cadena de suministro y distribución.','2023-05-02','2023-08-30',4),
 (7,'Ingeniería de Métodos','Diseño, mejora y medición de procesos productivos.','2023-05-02','2023-08-30',9),
 (8,'Producción y Operaciones','Gestión y control de sistemas de producción y servicios.','2023-05-02','2023-08-30',12),
 (9,'Control Estadístico de Procesos','Uso de técnicas estadísticas para mejorar la calidad de los procesos industriales.','2023-05-02','2023-08-30',6),
 (10,'Mantenimiento Industrial','Métodos y técnicas para el mantenimiento de sistemas y equipos industriales.','2023-05-02','2023-08-30',10),
 (11,'Simulación de Sistemas','Modelado y simulación de sistemas industriales para optimización y toma de decisiones.','2023-05-02','2023-08-30',2),
 (12,'Gestión de Proyectos','Técnicas y herramientas para la planificación y control de proyectos de ingeniería.','2023-05-02','2023-08-30',8),
 (13,'Investigación de Operaciones','Modelos matemáticos y algoritmos para la resolución de problemas industriales.','2023-05-02','2023-08-30',1),
 (14,'Sistemas de Manufactura Integrada','Tecnologías y sistemas para la automatización de procesos de producción.','2023-05-02','2023-08-30',3),
 (15,'Gestión Ambiental','Evaluación y control de impactos ambientales en la industria.','2023-05-02','2023-08-30',11),
 (16,'Diseño de Instalaciones','Planificación y diseño de instalaciones industriales y logísticas.','2023-05-02','2023-08-30',7),
 (17,'Gestión de la Innovación','Estrategias y herramientas para impulsar la innovación en la industria.','2023-05-02','2023-08-30',9),
 (18,'Sistemas de Información en la Industria','Aplicación de sistemas de información en la gestión industrial.','2023-05-02','2023-08-30',5),
 (19,'Planeación y Control de la Producción','Técnicas y herramientas para la planificación y control de la producción.','2023-05-02','2023-08-30',10);
INSERT INTO "Lecciones" ("id_leccion","id_curso","titulo","contenido","orden") VALUES (1,1,'Lección 1.1','Historia y evolución de la ingeniería industrial.',1),
 (2,1,'Lección 1.2','Conceptos y principios básicos de la ingeniería industrial.',2),
 (3,1,'Lección 1.3','Áreas de aplicación de la ingeniería industrial.',3),
 (4,1,'Lección 1.4','Habilidades y competencias del ingeniero industrial.',4),
 (5,1,'Lección 1.5','Perspectivas y tendencias en la ingeniería industrial.',5),
 (6,2,'Lección 2.1','Conceptos y fundamentos de la gestión de calidad.',1),
 (7,2,'Lección 2.2','Normas y estándares de calidad en la industria.',2),
 (8,2,'Lección 2.3','Herramientas y técnicas de gestión de calidad.',3),
 (9,2,'Lección 2.4','Sistemas de gestión de calidad.',4),
 (10,2,'Lección 2.5','Mejora continua de la calidad.',5),
 (11,3,'Lección 3.1','Introducción a la optimización de procesos.',1),
 (12,3,'Lección 3.2','Métodos de análisis y mejora de procesos.',2),
 (13,3,'Lección 3.3','Herramientas para la optimización de procesos.',3),
 (14,3,'Lección 3.4','Casos de estudio de optimización de procesos.',4),
 (15,3,'Lección 3.5','Perspectivas futuras de la optimización de procesos.',5),
 (16,4,'Lección 4.1','Conceptos básicos de ergonomía y seguridad.',1),
 (17,4,'Lección 4.2','Diseño ergonómico de puestos de trabajo.',2),
 (18,4,'Lección 4.3','Prevención de riesgos laborales y salud ocupacional.',3),
 (19,4,'Lección 4.4','Sistemas de gestión de la seguridad y salud laboral.',4),
 (20,4,'Lección 4.5','Perspectivas y tendencias en ergonomía y seguridad.',5),
 (21,5,'Lección 5.1','Conceptos y principios de la ingeniería económica.',1),
 (22,5,'Lección 5.2','Métodos de evaluación y selección de proyectos.',2),
 (23,5,'Lección 5.3','Análisis de costos y beneficios en proyectos de ingeniería.',3),
 (24,5,'Lección 5.4','Técnicas de financiamiento y gestión económica de proyectos.',4),
 (25,5,'Lección 5.5','Perspectivas y tendencias en la ingeniería económica.',5),
 (26,6,'Lección 6.1','Introducción a la logística y cadena de suministro.',1),
 (27,6,'Lección 6.2','Gestión de la cadena de suministro y distribución.',2),
 (28,6,'Lección 6.3','Planeación y control de inventarios.',3),
 (29,6,'Lección 6.4','Logística inversa y gestión ambiental en la cadena de suministro.',4),
 (30,6,'Lección 6.5','Perspectivas y tendencias en la logística y cadena de suministro.',5),
 (31,7,'Lección 7.1','Conceptos y fundamentos de la ingeniería de métodos.',1),
 (32,7,'Lección 7.2','Herramientas para el análisis y mejora de procesos.',2),
 (33,7,'Lección 7.3','Diseño de experimentos y control estadístico de procesos.',3),
 (34,7,'Lección 7.4','Casos de estudio de mejora de procesos.',4),
 (35,7,'Lección 7.5','Perspectivas y tendencias en la ingeniería de métodos.',5),
 (36,8,'Lección 8.1','Conceptos y fundamentos de la gestión de producción y operaciones.',1),
 (37,8,'Lección 8.2','Planificación y control de la producción.',2),
 (38,8,'Lección 8.3','Diseño de procesos y layout de planta.',3),
 (39,8,'Lección 8.4','Mejora continua y calidad en la producción.',4),
 (40,8,'Lección 8.5','Perspectivas y tendencias en producción y operaciones.',5),
 (41,9,'Lección 9.1','Conceptos y fundamentos del control estadístico de procesos.',1),
 (42,9,'Lección 9.2','Herramientas para el control estadístico de procesos.',2),
 (43,9,'Lección 9.3','Capacidad de proceso y análisis de capacidad.',3),
 (44,9,'Lección 9.4','Cartas de control y seguimiento de procesos.',4),
 (45,9,'Lección 9.5','Perspectivas y tendencias en el control estadístico de procesos.',5),
 (46,10,'Lección 10.1','Introducción al mantenimiento industrial.',1),
 (47,10,'Lección 10.2','Mantenimiento correctivo y preventivo.',2),
 (48,10,'Lección 10.3','Mantenimiento predictivo y proactivo.',3),
 (49,10,'Lección 10.4','Organización y gestión del mantenimiento.',4),
 (50,10,'Lección 10.5','Perspectivas y tendencias en el mantenimiento industrial.',5),
 (51,11,'Lección 11.1','Conceptos y fundamentos de la simulación de sistemas.',1),
 (52,11,'Lección 11.2','Modelado y simulación de sistemas dinámicos.',2),
 (53,11,'Lección 11.3','Validación y verificación de modelos de simulación.',3),
 (54,11,'Lección 11.4','Análisis de resultados y toma de decisiones.',4),
 (55,11,'Lección 11.5','Perspectivas y tendencias en la simulación de sistemas.',5),
 (56,12,'Lección 12.1','Conceptos y fundamentos de la gestión de proyectos.',1),
 (57,12,'Lección 12.2','Planificación y programación de proyectos.',2),
 (58,12,'Lección 12.3','Control y seguimiento de proyectos.',3),
 (59,12,'Lección 12.4','Gestión de riesgos y calidad en proyectos.',4),
 (60,12,'Lección 12.5','Perspectivas y tendencias en la gestión de proyectos.',5),
 (61,13,'Lección 13.1','Conceptos y fundamentos de la investigación de operaciones.',1),
 (62,13,'Lección 13.2','Programación lineal y sus aplicaciones.',2),
 (63,13,'Lección 13.3','Modelos de transporte y asignación.',3),
 (64,13,'Lección 13.4','Modelos de inventarios y pronóstico de demanda.',4),
 (65,13,'Lección 13.5','Perspectivas y tendencias en la investigación de operaciones.',5),
 (66,14,'Lección 14.1','Conceptos y fundamentos de los sistemas de manufactura integrada.',1),
 (67,14,'Lección 14.2','Planificación y programación de la producción.',2),
 (68,14,'Lección 14.3','Sistemas de control y monitoreo de la producción.',3),
 (69,14,'Lección 14.4','Automatización y robótica en la manufactura.',4),
 (70,14,'Lección 14.5','Perspectivas y tendencias en los sistemas de manufactura integrada.',5),
 (71,15,'Lección 15.1','Conceptos y fundamentos de la gestión ambiental en la industria.',1),
 (72,15,'Lección 15.2','Evaluación y control de impactos ambientales.',2),
 (73,15,'Lección 15.3','Normas y regulaciones ambientales en la industria.',3),
 (74,15,'Lección 15.4','Técnicas y herramientas para la gestión ambiental.',4),
 (75,15,'Lección 15.5','Perspectivas y tendencias en la gestión ambiental en la industria.',5),
 (76,16,'Lección 16.1','Conceptos y fundamentos del diseño de instalaciones.',1),
 (77,16,'Lección 16.2','Diseño de la distribución de planta.',2),
 (78,16,'Lección 16.3','Diseño de sistemas de manejo de materiales y logística.',3),
 (79,16,'Lección 16.4','Diseño de sistemas de servicios y soporte.',4),
 (80,16,'Lección 16.5','Perspectivas y tendencias en el diseño de instalaciones.',5),
 (81,17,'Lección 17.1','Conceptos y fundamentos de la gestión de la innovación.',1),
 (82,17,'Lección 17.2','Estrategias y modelos de innovación.',2),
 (83,17,'Lección 17.3','Gestión de la innovación en la empresa.',3),
 (84,17,'Lección 17.4','Innovación abierta y colaboración.',4),
 (85,17,'Lección 17.5','Perspectivas y tendencias en la gestión de la innovación.',5),
 (86,18,'Lección 18.1','Conceptos y fundamentos de los sistemas de información en la industria.',1),
 (87,18,'Lección 18.2','Tecnologías y herramientas para la gestión de la información en la industria.',2),
 (88,18,'Lección 18.3','Sistemas de información para la gestión de la producción y la cadena de suministro.',3),
 (89,18,'Lección 18.4','Sistemas de información para la gestión de la calidad y el mantenimiento.',4),
 (90,18,'Lección 18.5','Perspectivas y tendencias en los sistemas de información en la industria.',5),
 (91,19,'Lección 19.1','Conceptos y fundamentos de la planeación y control de la producción.',1),
 (92,19,'Lección 19.2','Técnicas y herramientas para la planificación y programación de la producción.',2),
 (93,19,'Lección 19.3','Sistemas de control y monitoreo de la producción.',3),
 (94,19,'Lección 19.4','Optimización de la producción y la gestión de la demanda.',4),
 (95,19,'Lección 19.5','Perspectivas y tendencias en la planeación y control de la producción.',5);
INSERT INTO "Inscripciones" ("id_inscripcion","id_estudiante","id_curso","fecha_inscripcion","estado") VALUES (1,1,16,'2023-04-27','inscrito'),
 (2,2,13,'2023-04-25','inscrito'),
 (3,3,4,'2023-04-29','inscrito'),
 (4,4,11,'2023-04-24','inscrito'),
 (5,5,9,'2023-04-30','inscrito'),
 (6,6,6,'2023-04-28','inscrito'),
 (7,7,19,'2023-04-26','inscrito'),
 (8,8,7,'2023-04-24','inscrito'),
 (9,9,3,'2023-04-29','inscrito'),
 (10,10,1,'2023-04-27','inscrito'),
 (11,11,12,'2023-04-30','inscrito'),
 (12,12,15,'2023-04-24','inscrito'),
 (13,13,17,'2023-04-26','inscrito'),
 (14,14,5,'2023-04-24','inscrito'),
 (15,15,2,'2023-04-26','inscrito'),
 (16,16,19,'2023-04-27','inscrito'),
 (17,17,9,'2023-04-26','inscrito'),
 (18,18,18,'2023-04-24','inscrito'),
 (19,19,4,'2023-04-28','inscrito'),
 (20,20,11,'2023-04-27','inscrito'),
 (21,21,3,'2023-04-24','inscrito'),
 (22,22,8,'2023-04-24','inscrito'),
 (23,23,14,'2023-04-26','inscrito'),
 (24,24,6,'2023-04-29','inscrito'),
 (25,25,10,'2023-04-25','inscrito'),
 (26,26,7,'2023-04-27','inscrito'),
 (27,27,2,'2023-04-24','inscrito'),
 (28,28,12,'2023-04-25','inscrito'),
 (29,29,18,'2023-04-26','inscrito'),
 (30,30,15,'2023-04-28','inscrito'),
 (31,31,16,'2023-04-27','inscrito'),
 (32,32,8,'2023-04-24','inscrito'),
 (33,33,1,'2023-04-29','inscrito'),
 (34,34,14,'2023-04-25','inscrito'),
 (35,35,5,'2023-04-30','inscrito'),
 (36,36,13,'2023-04-26','inscrito'),
 (37,37,8,'2023-04-26','inscrito'),
 (38,38,1,'2023-04-24','inscrito'),
 (39,39,7,'2023-04-24','inscrito'),
 (40,40,15,'2023-04-28','inscrito'),
 (41,41,13,'2023-04-29','inscrito'),
 (42,42,14,'2023-04-25','inscrito'),
 (43,43,18,'2023-04-24','inscrito'),
 (44,44,5,'2023-04-28','inscrito'),
 (45,45,6,'2023-04-30','inscrito'),
 (46,46,3,'2023-04-29','inscrito'),
 (47,47,10,'2023-04-25','inscrito'),
 (48,48,16,'2023-04-24','inscrito'),
 (49,49,19,'2023-04-24','inscrito'),
 (50,50,12,'2023-04-29','inscrito'),
 (51,51,2,'2023-04-30','inscrito'),
 (52,52,9,'2023-04-28','inscrito'),
 (53,53,1,'2023-04-25','inscrito'),
 (54,54,14,'2023-04-26','inscrito'),
 (55,55,8,'2023-04-24','inscrito'),
 (56,56,4,'2023-04-24','inscrito'),
 (57,57,19,'2023-04-25','inscrito'),
 (58,58,3,'2023-04-27','inscrito'),
 (59,59,11,'2023-04-28','inscrito'),
 (60,60,5,'2023-04-28','inscrito'),
 (61,61,2,'2023-04-30','inscrito'),
 (62,62,6,'2023-04-25','inscrito'),
 (63,63,17,'2023-04-24','inscrito'),
 (64,64,10,'2023-04-29','inscrito');
COMMIT;
