# ¿Cómo crear una base de datos en SQL?

Crear una base de datos y diseñar tablas relacionadas es fundamental para un ingeniero de datos. Es crucial seguir buenas prácticas para garantizar la eficiencia y el rendimiento.

## ¿Cuáles son las buenas prácticas para crear bases de datos relacionales?

* **Normalización**: Aplica las tres reglas de normalización para evitar redundancias.
* **Claves**: Comprende las primary keys, foreign keys, claves de negocios y subrogadas.
* **Tipos de datos**: Identifica correctamente los tipos de datos para cada atributo.

## ¿Cómo crear una base de datos y tablas en SQL?

* **Sintaxis de creación**: Usa `CREATE DATABASE nombre_base_de_datos;` para la base de datos y `CREATE TABLE nombre_tabla (atributos);` para las tablas.
* **Consistencia en nnombres**: Mantén un formato uniforme (mayúsculas o minúsculas) para nombres de tablas y atributos.

## ¿Qué considerar al definir atributos de una tabla?

* **Primary key**: Elige una clave única, como un ID autoincremental.
* **Atributos de  negocio**: Utiliza claves de negocio para identificación externa.
* **Tipos de datos**: Selecciona tipos adecuados, como `INTEGER` para `IDs` y `VARCHAR` para textos.

## ¿Por qué es importante registrar fechas en las tablas?

* **Trazabilidad**: Incluye `fecha_de_carga` y `fecha_de_modificación` para monitorear cambios y soportar decisiones basadas en datos.
* **Cumplimiento**: Asegura que los datos están actualizados y documentados.

## ¿Cómo relacionar tablas mediante claves foráneas?

* **Foreign key**: Define la relación entre tablas usando `FOREIGN KEY` apuntando a la primary key de otra tabla.
* `Ejemplo`: Relacionar estudiantes y cursos con una tabla intermedia que contenga las claves foráneas id_estudiante e id_curso.

Al seguir estas prácticas, lograrás bases de datos eficientes, bien estructuradas y fáciles de mantener.