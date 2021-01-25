---Crear db
CREATE DATABASE prueba;

--Conectar a DB
\c prueba;

-- Tablas
CREATE TABLE regiones(
    id SMALLINT UNIQUE NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE comunas(
    id SMALLINT UNIQUE NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE categorias(
    id VARCHAR(6) UNIQUE NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE direcciones_clientes(
    id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    calle VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    block_depto VARCHAR(5),
    id_comuna INT NOT NULL REFERENCES comunas(id),
    id_region INT NOT NULL REFERENCES regiones(id)
);

CREATE TABLE clientes(
    id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    rut VARCHAR(12) UNIQUE NOT NULL,
    id_direccion INT NOT NULL REFERENCES direcciones_clientes(id)
);

CREATE TABLE productos(
    id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    precio_unitario INT NOT NULL,
    id_categoria VARCHAR(6) NOT NULL REFERENCES categorias(id)
);

CREATE TABLE facturas(
    numero SERIAL UNIQUE NOT NULL PRIMARY KEY,
    fecha TIMESTAMP NOT NULL,
    subtotal INT NOT NULL,
    iva INT NOT NULL,
    total INT NOT NULL,
    id_cliente INT NOT NULL REFERENCES clientes(id)
);

CREATE TABLE detalle_facturas(
    nro_factura INT NOT NULL REFERENCES facturas(numero),
    id_producto INT NOT NULL REFERENCES productos(id),
    cantidad INT NOT NULL,
    total_producto INT NOT NULL
);
