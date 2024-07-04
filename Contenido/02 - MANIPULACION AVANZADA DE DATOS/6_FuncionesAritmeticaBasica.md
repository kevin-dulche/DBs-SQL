# Funciones de Aritmética Básica en SQL (COUNT, SUM, AVG)

```SQL
-- Obtiene el número de estudiantes por curso
SELECT COURSEID, COUNT(*)
FROM student_course	
GROUP BY COURSEID;

SELECT * FROM student_course;

-- Obtiene el número de estudiantes por curso
SELECT COURSEID, COUNT(studentid)
FROM student_course	
GROUP BY COURSEID;

SELECT COURSEID, COUNT(STUDENTID) -- Selecciona el ID del curso y el conteo de IDs de estudiantes
FROM student_course
group by courseid -- Agrupa los resultados por el ID del curso
HAVING COUNT(studentid) > 1; -- Filtra los grupos teniendo más de un estudiante

SELECT * FROM INSTRUCTORS;

-- Total del salario pagado a los instructores
SELECT SUM(SALARY) AS 'Total Salario Pagado'
FROM INSTRUCTORS;

SELECT SUM(SALARY) AS 'TOTAL SALARIO PAGADO', AVG(SALARY) AS 'PROMEDIO'
FROM INSTRUCTORS;
```