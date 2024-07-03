# ¿Qué es la cláusula WHERE de SQL?

## ¿Cómo usar la sentencia WHERE para consultar datos?

La sentencia WHERE se usa en distintos contextos, como al modificar datos con UPDATE, eliminar datos con DELETE y en consultas con SELECT. Para comenzar, la sintaxis básica del WHERE incluye la palabra reservada, el nombre de la columna y los operadores lógicos. Por ejemplo, para consultar un instructor específico:

```SQL
SELECT * FROM instructores WHERE INSTRUCTORID = 1;
```

## ¿Cómo utilizar operadores lógicos en MySQL?

Puedes emplear varios operadores lógicos, como el símbolo igual (=) para igualdad y el símbolo de exclamación seguido de igual (!=) para diferencias. Por ejemplo, para excluir un instructor con ID específico:

```SQL
SELECT * FROM instructores WHERE INSTRUCTORID != 1;
```

## ¿Cómo filtrar datos de texto en MySQL?

Para filtrar datos de texto, utiliza comillas simples alrededor del valor. Por ejemplo, para encontrar un instructor llamado John:

```SQL
SELECT * FROM instructores WHERE nombre = 'John';
```

## ¿Cómo trabajar con datos numéricos en MySQL?

Los operadores para datos numéricos permiten comparaciones como mayor o menor que. Por ejemplo, para encontrar instructores con salario mayor a 5000 dólares:

```SQL
SELECT * FROM instructores WHERE salario > 5000;
```

## ¿Cómo utilizar el operador BETWEEN en MySQL?

El operador BETWEEN se usa para especificar un rango de valores. Por ejemplo, para encontrar instructores con salario entre 5000 y 9000 dólares:

```SQL
SELECT * FROM instructores WHERE salario BETWEEN 5000 AND 9000;
```

## ¿Cómo practicar estos operadores en MySQL?

Para practicar, intenta replicar estas consultas en tus propias tablas de la base de datos. Cambia los valores según sea necesario y observa los resultados. Utiliza el BETWEEN para rangos específicos y los operadores lógicos para filtrar datos de texto y números.