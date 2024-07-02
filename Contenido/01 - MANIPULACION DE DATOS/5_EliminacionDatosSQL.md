# Eliminación de Datos con SQL (DELETE)

Evitar errores en producción es crucial en SQL. Las historias de ingenieros que borran datos por omitir una cláusula WHERE son comunes y prevenibles. Aquí, aprenderemos a usar DELETE correctamente para evitar estos errores.

## ¿Cómo evitar errores críticos al usar DELETE en SQL?

Para evitar borrar toda la información de una tabla accidentalmente, siempre debemos utilizar la cláusula WHERE en nuestras sentencias DELETE. La estructura básica es:

* DELETE FROM `nombre_tabla`
* WHERE `condición`

Omitir el WHERE eliminará todos los registros de la tabla, causando posibles desastres en producción.

## ¿Cuál es la sintaxis correcta para DELETE?

La sintaxis básica incluye:

* DELETE FROM `nombre_tabla`
* WHERE `condición`

Antes de ejecutar DELETE, es importante verificar el contenido de la tabla. Por ejemplo, si queremos eliminar un registro específico:

* Consultar la tabla para ver los registros
* Utilizar la clave primaria para especificar el registro a eliminar

## ¿Cómo ejecutar DELETE correctamente?

Imaginemos una tabla que relaciona estudiantes con sus cursos. Queremos eliminar al estudiante con ID 2:

1. Consultar la tabla para ver los registros.
2. Ejecutar:

    * DELETE FROM `relacion_estudiantes_cursos`
    * WHERE `id_estudiante` = 2

Verificar que el registro ha sido eliminado correctamente.

## ¿Qué errores comunes debemos evitar?

Un error común es ejecutar DELETE sin WHERE. Esto elimina todos los registros:

* DELETE FROM `relacion_estudiantes_cursos`

Identificar este error es crucial para mantener la integridad de los datos. Analizar siempre la sintaxis antes de ejecutarla es vital.

## ¿Qué otras sentencias SQL son esenciales?

### SELECT

* Sintaxis básica: SELECT `campos` FROM `tabla`
* Utilizar * para todos los campos o especificar los campos necesarios.
* Puede combinarse con WHERE, GROUP BY, ORDER BY, etc.

### UPDATE

* Sintaxis: UPDATE `tabla` SET `campo` = `valor` WHERE `condición`
* IMPORTANTE: Siempre usar WHERE para evitar actualizar todos los registros.

### CREATE DATABASE y CREATE TABLE

* CREATE DATABASE `nombre_base_de_datos`
* CREATE TABLE `nombre_tabla` ( `campo` `tipo_dato` `restricciones`, …)
* Definir claramente los tipos de datos y restricciones es fundamental para la estructura de la base de datos.

## ¿Qué buenas prácticas debemos seguir?

* Uso constante de la cláusula WHERE
* Verificar tipos de datos y restricciones
* Nombramiento claro y consistente de tablas y bases de datos

Estas prácticas optimizan el trabajo, mejoran el rendimiento y aseguran una manipulación de datos precisa y segura.