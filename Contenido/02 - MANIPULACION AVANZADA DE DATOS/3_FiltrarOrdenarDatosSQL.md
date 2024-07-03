# Filtrar y Ordenar Datos en SQL (LIKE)

## ¿Cómo filtrar nombres por la letra inicial en una tabla?

Para mostrar únicamente la información de los nombres que empiezan por la letra “C”, podemos usar la palabra reservada LIKE en SQL. Por ejemplo, si queremos ver los nombres que empiezan con “C”, la consulta sería:

```SQL
SELECT * FROM tabla WHERE nombre LIKE 'C%';
```

Esto mostrará todos los nombres que comienzan con “C”.

## ¿Cómo filtrar apellidos que terminan en una letra específica?

Para mostrar información de personas cuyo apellido termina en “O”, la consulta SQL sería:

```SQL
SELECT * FROM tabla WHERE apellido LIKE '%O';
```

Esto seleccionará todos los apellidos que terminan con la letra “O”.

## ¿Cómo buscar caracteres en cualquier parte del nombre?

Si necesitamos mostrar información de personas que tienen la letra “A” en cualquier parte de su nombre, la consulta sería:

```SQL
SELECT * FROM tabla WHERE nombre LIKE '%A%';
```

Esto seleccionará todos los nombres que contienen la letra “A” en cualquier posición.

## ¿Cómo filtrar datos utilizando el operador LIKE en SQL?

Para filtrar apellidos que terminan en “Z”, utilizamos la siguiente consulta:

```SQL
SELECT * FROM tabla WHERE apellido LIKE '%Z';
```

Por ejemplo, apellidos como Pérez, González, López, y Martínez serán seleccionados.

## ¿Cómo filtrar nombres que comienzan con una letra específica?

Para mostrar nombres que comienzan con la letra “J”, modificamos la consulta de la siguiente manera:

```SQL
SELECT * FROM tabla WHERE nombre LIKE 'J%';
```

Esto seleccionará nombres como Jiménez.

## ¿Es necesario mostrar todas las columnas en la consulta?

No es necesario. En consultas complejas o en análisis de Big Data, es mejor especificar solo las columnas necesarias. Por ejemplo, para mostrar solo el primer nombre y apellido de personas de 20 años, usamos:

```SQL
SELECT primer_nombre, apellido FROM tabla WHERE edad = 20;
```

Aunque no mostramos la edad en el SELECT, la utilizamos en la condición WHERE.

## ¿Cómo filtrar apellidos que contienen una letra específica?

Para mostrar personas cuyo apellido contiene la letra “O”, la consulta sería:

```SQL
SELECT * FROM tabla WHERE apellido LIKE '%O%';
```

Esto seleccionará apellidos como González, López, y Rodríguez.

## ¿Cómo combinar múltiples criterios en una consulta?

Si queremos ver nombres que comienzan con “M”, personas de 20 años y con apellidos que contienen “O”, la consulta sería:

```SQL
SELECT primer_nombre, apellido FROM tabla 
WHERE nombre LIKE 'M%' AND edad = 20 AND apellido LIKE '%O%';
```

Esto filtrará datos específicos basados en múltiples criterios, optimizando la consulta y mejorando el rendimiento del sistema.

Practicar estas consultas en diferentes tablas mejorará tus habilidades en SQL y optimizará tus consultas para análisis de datos más eficientes.