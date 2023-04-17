/*Obtener Estudiantes con su curso, profesor y fechas*/
SELECT e.nombre||' '||e.apellido AS Estudiante,
       e.telefono AS Teléfono,
       c.nombre AS Curso,
       p.nombre||' '||p.apellido AS Profesor,
       i.fecha_inscripcion AS 'Inscrito en',
       c.fecha_inicio AS 'Inicia en'
FROM Estudiantes e
INNER JOIN Inscripciones i ON e.id_estudiante = i.id_estudiante
INNER JOIN Cursos c ON i.id_curso = c.id_curso
INNER JOIN Profesores p ON c.id_profesor = p.id_profesor
GROUP BY e.id_estudiante, c.id_curso;


/* Obtener cursos con su profesor y lecciones*/
SELECT c.nombre AS Curso,
       c.descripcion AS Descripción,
       p.nombre||' '||p.apellido AS Profesor,
       JSON_GROUP_ARRAY(l.titulo) AS lecciones
FROM Cursos c
INNER JOIN Profesores p ON c.id_profesor = p.id_profesor
INNER JOIN Lecciones l ON c.id_curso = l.id_curso
GROUP BY c.id_curso;
