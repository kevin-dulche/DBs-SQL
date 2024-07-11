# Tipos de JOIN en SQL

* Inner Join: Sirve para buscar las coincidencias entre dos tablas.

* Left Join: Muestra toda la información de la tabla posicionada al lado izquierdo en la consulta, y adicionalmente trae las coincidencias que encuentre en la tabla posicionada al lado derecho.

* Right Join: Muestra toda la información de la tabla posicionada al lado derecho en la consulta, y únicamente la información que cumpla la coincidencia con la tabla del lado izquierdo.

* Full Outer Join: Sirve para consultar los resultados de ambas tablas.

* Cross Join: Relaciona dos tablas cuyo resultado es un producto cartesiano haciendo todas las posibles combinaciones de los elementos entre dos tablas.

```SQL
SELECT * FROM marcas;

SELECT * FROM productos;

SELECT *
FROM PRODUCTOS
INNER JOIN MARCAS ON PRODUCTOS.marca_id = MARCAS.marca_id;

SELECT *
FROM PRODUCTOS
RIGHT JOIN MARCAS ON PRODUCTOS.marca_id = MARCAS.marca_id;

SELECT *
FROM PRODUCTOS
LEFT JOIN MARCAS ON PRODUCTOS.marca_id = MARCAS.marca_id;
```