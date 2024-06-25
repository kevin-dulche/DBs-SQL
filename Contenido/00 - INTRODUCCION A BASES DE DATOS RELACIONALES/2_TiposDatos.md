# Tipos de datos en SQL

Optimizar los procesos de datos y mejorar su calidad es posible gracias a la correcta definición de los tipos de datos. Estos son cruciales para especificar la clase de información que se insertará en columnas, variables y parámetros.

## ¿Qué son los tipos de datos?

Los tipos de datos se utilizan en columnas, variables y parámetros para definir la clase de información que se insertará en un objeto. Esto ayuda a identificar el tipo de contenido de una columna en una tabla, un parámetro en un procedimiento almacenado o una variable.

## ¿Cuáles son las categorías de tipos de datos?

Los tipos de datos se agrupan en tres categorías principales: numéricos, de texto y de fecha.

## ¿Qué tipos de datos numéricos existen?

* **Integer**: Se clasifica en tres tipos:
    * **Int**: 4 bytes de capacidad.
    * **Smallint**: 2 bytes de capacidad.
    * **Bigint**: 8 bytes de capacidad.
    * Usado en claves primarias y cantidades.
* **Decimal**: Especificado con "decimal" y dos valores en paréntesis.
    * Ejemplo: decimal(10, 2) para 10 digitos con 2 decimales.
* **Float**: Similar al decimal pero con presición ilimitada.

## ¿Qué tipos de datos de texto son más utilizados?

* **Char**: Se especifica con longitud fija.
    * Ejemplo: char(10).
    * Ocupa la longitud completa, independientemente del texto almacenado.
* **Varchar**: Longitud variable.
    * Ejemplo: varchar(10).
    * Solo ocupa el espacio del texto almacenado.
* **Text**: No tiene limitación de longitud.
    * Ideal para descripciones largas.

## ¿Cuáles son los tipos de datos de fecha?

* **Time**: Especifica la hora.
* **Date**: Especifica la fecha.
* **Datatime**: Combina fecha y hora.

## Conclusiones

Analizar y elegir el tipo de datos correcto es vital para evitar extensos procesos y transformación de datos.