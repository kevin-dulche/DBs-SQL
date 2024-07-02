# Actualización de Datos con SQL (UPDATE)

La actualización de datos en una base de datos es esencial para mantener la precisión y la integridad de la información. Utilizar la sentencia UPDATE te permite corregir errores sin tener que eliminar y volver a insertar registros.

## ¿Cómo se utiliza la sentencia UPDATE en la base de datos?

La sentencia UPDATE es una herramienta poderosa que permite modificar la información en registros existentes dentro de una tabla. Por ejemplo, si un empleado, Julián, recibe incorrectamente un salario distinto al debido por un error en la inserción de datos, podemos solucionarlo con un simple comando.

## ¿Cuál es la estructura básica de la sentencia UPDATE?

La estructura para realizar un UPDATE en tu base de datos es la siguiente:

* Usas la palabra reservada UPDATE seguida del nombre de la tabla.
* Utilizas SET para especificar la columna que vas a modificar y el nuevo valor.
* Filtras la información con WHERE para evitar modificar todos los registros.

```SQL
UPDATE nombre_de_la_tabla
SET columna_a_modificar = 'nuevo_valor'
WHERE condición;
```

## ¿Cómo se evita modificar todos los registros al utilizar UPDATE?

Para evitar modificar todos los registros de la tabla, es crucial utilizar un filtro adecuado con WHERE. Por ejemplo, si deseas cambiar el primer nombre de Julián a Carolina, tu sentencia sería:

```SQL
UPDATE empleados
SET primer_nombre = 'Carolina'
WHERE primer_nombre = 'Julián';
```

## ¿Qué sucede si olvidamos el filtro WHERE?

Si olvidamos el filtro WHERE, todos los registros de la tabla se modificarán. Por ejemplo, si simplemente ejecutamos:

```SQL
UPDATE empleados
SET primer_nombre = 'Carolina';
```

Todos los registros tendrán el primer nombre Carolina, lo cual es un error grave.

## ¿Cómo verificar los cambios realizados con la sentencia UPDATE?

Después de realizar un UPDATE, es importante verificar que los cambios se hayan aplicado correctamente. Esto se puede hacer utilizando una sentencia SELECT para consultar la tabla.

```SQL
SELECT * FROM empleados WHERE primer_nombre = 'Carolina';
```

## ¿Cómo solucionar un error específico en la tabla de salarios?

Si el ingeniero de datos necesita corregir el salario de Julián a 5000 dólares, la sentencia sería:

```SQL
UPDATE empleados
SET salario = 5000
WHERE primer_nombre = 'Julián';
```

## ¿Cómo practicar con la sentencia UPDATE?

Para reforzar el conocimiento, practica modificando otros datos. Por ejemplo, cambia el nombre de un curso:

```SQL
UPDATE cursos
SET nombre_curso = 'Am I SQL?'
WHERE nombre_curso = 'Introducción a SQL';
```

Verifica los cambios con:

```SQL
SELECT * FROM cursos WHERE nombre_curso = 'Am I SQL?';
```

Comparte tus ideas sobre cómo solucionar errores en los comentarios y acepta los retos de práctica. ¡Sigue practicando para dominar el uso de la sentencia UPDATE!