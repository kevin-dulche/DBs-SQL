# Cláusulas de Comparación Textual en SQL (AND, NULL, IN, NOT)

El uso de operadores lógicos es esencial en el análisis de datos para refinar las consultas y obtener resultados precisos. Al mezclar estos operadores, podemos aplicar múltiples criterios simultáneamente, lo cual es una práctica común para los ingenieros de datos en procedimientos almacenados y vistas.

## ¿Cómo utilizamos los operadores lógicos en una consulta?

Para ilustrar el uso de operadores lógicos, tomemos la tabla de instructores y apliquemos varios criterios. Primero, podemos filtrar los instructores cuyo salario sea mayor a 50 mil dólares. Luego, añadimos el operador **`AND`** para especificar que el primer nombre debe empezar con la letra J. Observamos que los resultados disminuyen ya que los criterios se están anidando.

```SQL
SELECT * FROM INSTRUCTORS WHERE SALARY > 50000 AND FIRSTNAME LIKE 'J%';
```

## ¿Qué hacemos si queremos criterios excluyentes?

Si queremos criterios excluyentes, utilizamos el operador **`OR`**. Por ejemplo, podemos mostrar instructores con un salario mayor a 50 mil dólares o cuyo primer nombre comience con J. Los resultados aumentan porque cualquiera de las dos condiciones puede cumplirse.

```SQL
SELECT * FROM INSTRUCTORS WHERE SALARY > 50000 OR FIRSTNAME LIKE 'J%';
```

## ¿Cómo añadimos múltiples condiciones?

Podemos añadir más condiciones para refinar aún más nuestra consulta. Por ejemplo, si además queremos incluir nombres que comiencen con D, combinamos los operadores lógicos. Así, obtenemos una lista más extensa que incluye nombres como Jessica, Jane, Daniel y James.

```SQL
SELECT * FROM INSTRUCTORS WHERE SALARY > 50000 AND FIRSTNAME LIKE 'J%' OR FIRSTNAME LIKE 'D%';
```

## ¿Cómo manejamos valores nulos?

En el día a día de un ingeniero de datos, los valores nulos son cruciales. Utilizamos la cláusula WHERE con IS NOT NULL para obtener registros donde el primer nombre no sea nulo. Si queremos la información de registros con nombres nulos, cambiamos a IS NULL. Esto nos permite manejar datos incompletos de manera efectiva.

```SQL
-- No sea nulo
SELECT * FROM STUDENTS WHERE FIRSTNAME IS NOT NULL;
-- Sea nulo
SELECT * FROM STUDENTS WHERE FIRSTNAME IS NULL;
```

## ¿Cómo excluimos ciertos valores?

Para excluir valores específicos, usamos el operador NOT IN. Por ejemplo, si no queremos ver estudiantes de 20 años, utilizamos NOT IN (20). Así, obtenemos todos los estudiantes excepto los que tienen 20 años.

```SQL
SELECT * FROM STUDENTS WHERE AGE NOT IN (20);
```

Estas técnicas permiten a los ingenieros de datos manipular y consultar información de manera efectiva. ¿Sabes cómo consultar información de dos tablas a la vez aplicando condiciones? Deja tu respuesta en los comentarios y comparte tus conocimientos con tus compañeros.