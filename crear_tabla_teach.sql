

/*Crear tabla Estudiantes*/

CREATE TABLE Estudiantes (
    id_estudiante INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    apellido TEXT NOT NULL,
    correo_electronico TEXT UNIQUE NOT NULL,
    telefono TEXT NOT NULL
);

/*Crear tabla Profesores */
CREATE TABLE Profesores (
    id_profesor INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    apellido TEXT NOT NULL,
    correo_electronico TEXT UNIQUE NOT NULL,
    telefono TEXT NOT NULL
);

/*Crear tabla Cursos*/
CREATE TABLE "Cursos" (
	"id_curso"	INTEGER NOT NULL,
	"nombre"	TEXT NOT NULL,
	"descripcion"	TEXT NOT NULL,
	"fecha_inicio"	TEXT NOT NULL,
	"fecha_fin"	TEXT NOT NULL,
	"id_profesor"	INTEGER NOT NULL,
	FOREIGN KEY("id_profesor") REFERENCES Profesores (id_profesor),
	PRIMARY KEY("id_curso" AUTOINCREMENT)
);


/*Crear tabla Lecciones */

CREATE TABLE "Lecciones" (
	"id_leccion"	INTEGER,
	"id_curso"	INTEGER NOT NULL,
	"titulo"	TEXT NOT NULL,
	"contenido"	TEXT,
	"orden"	INTEGER NOT NULL,
	PRIMARY KEY("id_leccion" AUTOINCREMENT),
	FOREIGN KEY("id_curso") REFERENCES "Cursos"("id_curso")
);

/*Crear tabla Inscripciones */
CREATE TABLE "Inscripciones" (
	"id_inscripcion"	INTEGER,
	"id_estudiante"	INTEGER NOT NULL,
	"id_curso"	INTEGER NOT NULL,
	"fecha_inscripcion"	TEXT NOT NULL,
	"estado"	TEXT NOT NULL,
	PRIMARY KEY("id_inscripcion" AUTOINCREMENT),
	FOREIGN KEY("id_estudiante") REFERENCES "Estudiantes"("id_estudiante"),
	FOREIGN KEY("id_curso") REFERENCES "Cursos"("id_curso")
);
