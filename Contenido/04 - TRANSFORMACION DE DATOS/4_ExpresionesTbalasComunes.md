# Expresiones de Tablas Comunes (CTE)

Las Expresiones de Tablas Comunes (**CTE**) en MySQL son una herramienta poderosa para modularizar y reutilizar consultas complejas dentro de una sola consulta. Permiten definir conjuntos de resultados temporales con nombre, que pueden ser utilizados como si fueran tablas reales dentro de la misma consulta o en otras consultas anidadas.

## ¿Cómo funcionan las **CTE**?

Las **CTE** se definen utilizando la palabra clave **WITH** seguida del nombre de la **CTE** y la consulta que
define el conjunto de resultados.

## ¿Cuáles son las ventajas de usar **CTE**?

Las **CTE** ofrecen varias ventajas al trabajar con consultas complejas en MySQL:

**Modularidad**: Permiten dividir una consulta compleja en partes más pequeñas y manejables, mejorando la lesibilidad y el mantenimiento del código SQL.

**Reutilización**: Se pueden utilizar varias veces dentro de la misma consulta o en otras consultas anidadas, evitando la repetición de código y mejorando la eficiencia.

**Encapsulación**: Permiten ocultar la complejidad de las subconsultas o joins internos, simplificando la consulta principal.

**Lecturabilidad**: Mejoran la claridad y la comprensión de las consultas complejas al agrupar la lógica relacionada en secciones definidas.

Ejemplo de uso de **CTE**:

Supongamos que tenemos una tabla Empleados y una tabla Departamentos. Queremos obtener una lista de todos los empleados de cada departamento, junto con el nombre del departamento.

Consulta sin **CTE**:
```SQL
SELECT e.nombre, e.apellido, d.nombre_departamento
FROM Empleados e
JOIN Departamentos d
ON e.departamento_id = d.departamento_id;
```

Consultas con **CTE**:

```SQL
WITH empleados_por_departamento AS (
SELECT e.nombre, e.apellido, d.nombre_departamento
FROM Empleados e
JOIN Departamentos d
ON e.departamento_id = d.departamento_id
)
SELECT * FROM empleados_por_departamento;
```

En este ejemplo, la **CTE** empleados_por_departamento define un conjunto de resultados temporal que contiene los datos de los empleados y sus departamentos. La consulta principal selecciona todos los datos de la **CTE** como si fuera una tabla real.