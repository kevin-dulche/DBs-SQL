-- Escribe tu código aquí 👇
SELECT *
FROM COURSES
WHERE n_reviews >= 1;

SELECT *
FROM COURSES
WHERE n_reviews BETWEEN 1 and 100;

SELECT name
FROM COURSES
WHERE name LIKE "%SQL%";