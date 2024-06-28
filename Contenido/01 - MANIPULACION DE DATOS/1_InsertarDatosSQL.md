# Insertando Datos con SQL (INSERT)

## ¿Cómo se hace la inserción de datos en SQL?

Para insertar datos, utilizamos `INSERT INTO`, especificando el nombre de la tabla y los atributos. Por ejemplo, al insertar en las tablas de estudiantes y cursos, no necesitamos incluir valores por defecto como fechas de carga y actualización. Aquí un ejemplo práctico:

```SQL
INSERT INTO estudiantes (nombre, apellido, correo)
VALUES ('Carolina', 'Pérez', 'carolina@example.com');
```

## ¿Cómo insertamos datos en tablas con claves foráneas?

Cuando trabajamos con claves foráneas, primero identificamos los IDs relevantes. Supongamos que queremos matricular a Carolina en el curso de francés. Carolina tiene el ID 1 y el curso de francés es el curso 1. El insert sería:

```SQL
INSERT INTO relacion_estudiante_curso (estudiante_id, curso_id)
VALUES (1, 1);
```

## ¿Cómo validar los datos insertados?

Para validar que los datos se han insertado correctamente, utilizamos `SELECT * FROM` seguido del nombre de la tabla. Así verificamos que los registros están en su lugar.