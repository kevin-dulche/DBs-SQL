# Buenas prácticas de bases de datos con SQL

La normalización de bases de datos es esencial para garantizar la integridad de los datos, organizarlos adecuadamente y gestionar las relaciones entre tablas. Este proceso se puede comparar con organizar una mudanza: clasificar elementos de la cocina, habitación, etc., y asegurarse de que cada cosa esté en su lugar correcto. Esto mismo aplica a las tablas y datos en una base de datos.

## ¿Qué es la primera forma normal?
La primera forma normal (**1NF**) se basa en tres pasos fundamentales:

* **Datos atómicos**: La información debe ser indivisible.
* **Clave primaria**: Un identificador único para cada registro.
* **Centralización de datos por columna**: No separar información por comas, salvo descripciones.

Un **mal ejemplo** sería tener un estudiante, Marco, con cursos listados en una sola columna. La solución correcta es crear un registro individual por curso y estudiante, asegurando que cada curso esté debidamente referenciado.

| idstudent | Name | Courses |
|-----------|------|---------|
|1|Marco|A,B,C|
|2|Carolina|B,D,E|
|3|Carolina|F,Z|

Como aplicariamos esto de manera correcta:

1er error: Tenemos un identificador diferente para el estudiante Carolina.
2do error: La manera correcta de tener el registro sería id 1 Marco con curso A, id 1 Marco con curso B, id 1 Marco con curso C, y este mismo caso aplica con Carolina.

## ¿Cómo se aplica la segunda forma normal?

La segunda forma normal (**2NF**) requiere que **todos los atributos no claves dependan de la clave primaria**. Para cumplir con **2NF**, primero hay que satisfacer los requisitos de **1NF**. Esto implica **separar información en tablas adicionales y usar claves foráneas para establecer relaciones**. Por ejemplo, crear una tabla de cursos separada y referenciarla desde la tabla de estudiantes mediante una clave foránea.

Una **clave foranea** hace referencia al **primary key** de la tabla que queremos relacionar.

En ese caso la columna cursos no cumple con esta situación, por lo que se tendría que hacer otra tabla.

| idstudent | Name | Courses |
|-----------|------|---------|
|1|Marco|
|2|Carolina|
|3|Carolina|

|idcourse|name|
|--------|----|
|1|A|
|2|B|
|3|C|

## ¿Qué implica la tercera forma normal?

La tercera forma normal (**3NF**) añade que **todos los atributos no clave deben ser independientes entre sí** y cumplir con las dos formas anteriores. **Se debe eliminar cualquier redundancia y dependencia innecesaria**. En este caso, una tabla intermedia entre estudiantes y cursos puede ayudar a mantener la independencia de los atributos, relacionando estudiantes y cursos mediante identificadores únicos.

| idstudent | Name |
|-----------|------|
|1|Marco|
|2|Carolina|
|3|Carolina|

| idstudent | idcorse |
|-----------|---------|
|1|1|
|2|2|
|2|1|

|idcourse|name|
|--------|----|
|1|A|
|2|B|
|3|C|

## ¿Cuáles son otros ejemplos de normalización?

Un ejemplo común es el de direcciones. Un registro de dirección puede ser más atómico si se divide en tablas separadas para países, ciudades y departamentos. Aunque algunas empresas prefieren una tabla única de direcciones, el proceso de normalización busca siempre la estructura más eficiente y organizada.

Entender estas formas de normalización y aplicarlas correctamente mejora la calidad y gestión de los datos en cualquier base de datos.