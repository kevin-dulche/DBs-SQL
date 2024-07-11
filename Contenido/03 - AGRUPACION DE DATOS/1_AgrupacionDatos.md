# Agrupación de Datos en SQL: GROUP BY, HAVING y CASE para Análisis Avanzado

```SQL
SELECT * FROM student_course;

-- Muestra el estudiante y la cantidad de registros por cada estudiante
SELECT STUDENTID, COUNT(*)
FROM student_course
GROUP BY STUDENTID;

SELECT * FROM student_course;

-- Muestra el curso y la cantidad de registros por cada curso
SELECT courseid, COUNT(*)
FROM student_course
GROUP BY courseid;

-- Muestra el id del curso y cuantos registros tiene
SELECT COURSEID, COUNT(*)
FROM STUDENT_COURSE
GROUP BY COURSEID
HAVING COUNT(*) > 2;

SELECT * FROM STUDENTS;

SELECT AGE, CASE WHEN AGE BETWEEN 18 AND 25 THEN 'TEAM A' ELSE 'TEAM B' END
FROM STUDENTS
GROUP BY AGE;
```