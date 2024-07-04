# Funciones de Aritmética Básica en SQL (MIN, MAX)

```SQL
-- Obtener el minimo y el maximo de edad
SELECT MIN(AGE) AS 'EDAD MINIMA', MAX(AGE) AS 'EDAD MAXIMA'
FROM STUDENTS;

-- Redondear
SELECT ROUND(AGE)
FROM STUDENTS;

-- Redondear
SELECT ROUND(SALARY) FROM INSTRUCTORS;
``` 