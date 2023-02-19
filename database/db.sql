---- CREAR TABLA USUARIOS
CREATE DATABASE database_orders;
USE database_orders;
CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    companyname VARCHAR(100) NULL,
    companyrif VARCHAR(100) NULL,
    companyaddress VARCHAR(100) NULL,
    companyphone VARCHAR(100) NULL,
    companyemail VARCHAR(100) NULL,
    companylogo VARCHAR(250) NULL
)

USE database_orders;
ALTER TABLE users
ADD PRIMARY KEY (id);

USE database_orders;
ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;

USE database_orders;
DESCRIBE users;


---- CREAR TABLA PRODUCTOS
USE database_orders;
CREATE TABLE products(
    id INT(11) NOT NULL,
    productname VARCHAR(100) NOT NULL,
    productcod VARCHAR(100) NOT NULL,
    productprice VARCHAR(100) NOT NULL,
    productimg VARCHAR(300) NOT NULL,
)

USE database_orders;
ALTER TABLE products
ADD PRIMARY KEY (id);

USE database_orders;
ALTER TABLE products
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;

USE database_orders;
DESCRIBE products;

---- CREAR CORRELATIVO DE PEDIDOS PARA USUARIOS
ALTER TABLE `users` ADD `idorder` INT NOT NULL AFTER `companylogo`;


---- CREAR TABLA PEDIDOS
USE database_orders;
CREATE TABLE orders(
    id INT(11) NOT NULL,
    companyid INT(11) NOT NULL,
    pedido VARCHAR(1000) NOT NULL,
    procesado BOOLEAN NULL,
    enviado BOOLEAN NULL,
)

USE database_orders;
ALTER TABLE orders
ADD PRIMARY KEY (id);

USE database_orders;
ALTER TABLE orders
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;

USE database_orders;
DESCRIBE orders;

---- CURRENT TIMESTAMP EN TABLA ORDENES
ALTER TABLE `orders` ADD `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `enviado`;
---- CREAR CORRELATIVO DE PEDIDOS PARA USUARIOS
ALTER TABLE `orders` CHANGE `companyid` `idcorrelativo` INT(11) NOT NULL;
---- AUMENTAR TAMAÑO DE CARACTERES SOPORTADOS POR COLUMA PEDIDO
ALTER TABLE `orders` CHANGE `pedido` `pedido` VARCHAR(3001) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;

---- CREAR TABLA LINKS

CREATE TABLE links (
    id INT(11) NOT NULL,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT(11),
    created_at timeStamp NOT NULL DEFAULT current_timestamp
);

ALTER TABLE links
    ADD PRIMARY KEY (id);

ALTER TABLE links 
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;