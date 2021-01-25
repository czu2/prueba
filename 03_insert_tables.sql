-- 3 Regiones
INSERT INTO regiones(id, nombre) VALUES 
    (13,'Región Metropolitana de Santiago'),
    (5,'Región de Valparaíso'),
    (6,'Región del Libertador Gral. Bernardo O’Higgins ')
;

-- 3 Comunas
INSERT INTO comunas(id,nombre) VALUES 
    (13101,'Santiago'),
    (13120,'Ñuñoa'),
    (13123,'Providencia')
;

-- 3 categorias
INSERT INTO categorias(id, nombre, descripcion) VALUES
    ('MU01','Sala de Estar','Muebles para Sala de Estar'),
    ('MU02','Dormitorio','Muebles para Dormitorio'),
    ('MU03','Terraza','Muebles para Terraza')
;

-- 8 Productos
INSERT INTO productos(nombre, descripcion, precio_unitario, id_categoria) VALUES
    ('Sofá','Sofá PU 3 Cuerpos',150000,'MU01'),
    ('Rack','Rack Multimedia Madera 2 Cajones',110000,'MU01'),
    ('Mesa de Centro','Mesa de Centro Vidrio 2 Niveles',50000,'MU01'),
    ('Cama','Cama Box Spring 2 Plazas', 200000,'MU02'),
    ('Velador','Velador 2 Cajones',40000,'MU02'),
    ('Cómoda','Comoda TV 4 Cajones',85000,'MU02'),
    ('Set Terraza','Set Terraza Mesa más 4 sillas ratán',120000,'MU03'),
    ('Parrilla','Parrilla a Gas 2 Quemadores',99000,'MU03')
;

-- 5 Direcciones
INSERT INTO direcciones_clientes(calle, numero, block_depto,id_comuna,id_region) VALUES
    ('Irarrázaval',420,'2003A',13120,13),
    ('Condell',1348,'910',13120,13),
    ('Curicó',234,'',13101,13),
    ('Santa Rosa',111,'1320',13101,13),
    ('Ricardo Lyon',432,'999',13123,13)
;

--  5 Clientes
INSERT INTO clientes(nombre,rut,id_direccion) VALUES
    ('Alan Turing','6667346-4',1),
    ('Steve Jobs','16887941-5',2),
    ('Steve Wozniak','17786044-1',3),
    ('Bill Gates','12870631-3',4),
    ('Linus Torvalds','24156862-8',5)
;

-- 10 Facturas
INSERT INTO facturas(fecha,subtotal,iva,total,id_cliente) VALUES
    ('2020-06-22',230000,43700,273700,1),
    ('2020-05-24',275000,52250,327250,1),
    ('2020-04-08',264000,50160,314160,2),
    ('2020-08-30',250000,47500,297500,2),
    ('2020-09-15',395000,75050,470050,2),
    ('2020-03-18',200000,38000,238000,3),
    ('2020-07-26',280000,53200,333200,4),
    ('2020-10-22',449000,85310,534310,4),
    ('2020-01-17',479000,91010,570010,4),
    ('2021-01-03',80000,15200,95200,4)
;

-- 24 Detalles Facturas
INSERT INTO detalle_facturas(nro_factura,id_producto,cantidad,total_producto) VALUES
    (1,1,1,150000),
    (1,5,2,80000),
    (2,2,1,110000),
    (2,5,2,80000),
    (2,6,1,85000),
    (3,6,1,85000),
    (3,5,2,80000),
    (3,8,1,99000),
    (4,3,1,50000),
    (4,4,1,200000),
    (5,2,1,110000),
    (5,4,1,200000),
    (5,6,1,85000),
    (6,4,1,200000),
    (7,4,1,200000),
    (7,5,2,80000),
    (8,1,1,150000),
    (8,8,1,99000),
    (8,4,1,200000),
    (9,1,1,150000),
    (9,2,1,110000),
    (9,7,1,120000),
    (9,8,1,99000),
    (10,5,2,80000)
;
