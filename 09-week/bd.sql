DROP DATABASE IF EXISTS carrito;

CREATE DATABASE carrito;
USE carrito;

/*
 id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(20) NOT NULL
*/
CREATE TABLE persona(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    correo VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL 
);

/*
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(255) NOT NULL
*/
CREATE TABLE rol(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(255) NOT NULL
);

/*
    id INT AUTO_INCREMENT PRIMARY KEY,
    user VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    persona_id INT NOT NULL UNIQUE,
    rol_id INT NOT NULL,
    FOREIGN KEY (persona_id) REFERENCES persona(id),
    FOREIGN KEY (rol_id) REFERENCES rol(id)
*/
CREATE TABLE usuario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL,
    persona_id INT NOT NULL,
    rol_id INT NOT NULL,
    FOREIGN KEY (persona_id) REFERENCES persona(id),  
    FOREIGN KEY (rol_id) REFERENCES rol(id)
);

iNSERT INTO rol (nombre, descripcion) VALUES 
('Cliente', 'Cliente de la tienda'), 
('Vendedor', 'Vendedor de la tienda'),
('Administrador', 'Administrador de la tienda');

INSERT INTO persona (nombre, apellido, fecha_nacimiento, correo, direccion, telefono) VALUES
('Juan', 'Perez', '1990-05-15', 'juan.perez@example.com', 'Calle 123, Ciudad', '123456789'),
('Maria', 'Gomez', '1985-08-20', 'maria.gomez@example.com', 'Avenida 456, Ciudad', '987654321'),
('Carlos', 'Lopez', '1992-11-10', 'carlos.lopez@example.com', 'Calle 789, Ciudad', '456123789'),
('Ana', 'Martinez', '1995-03-25', 'ana.martinez@example.com', 'Avenida 101, Ciudad', '789456123'),
('Luis', 'Garcia', '1988-07-30', 'luis.garcia@example.com', 'Calle 202, Ciudad', '321654987'),
('Sofia', 'Hernandez', '1993-12-05', 'sofia.hernandez@example.com', 'Avenida 303, Ciudad', '654987321'),
('Miguel', 'Torres', '1991-09-18', 'miguel.torres@example.com', 'Calle 404, Ciudad', '987321654'),
('Laura', 'Ramirez', '1987-06-12', 'laura.ramirez@example.com', 'Avenida 505, Ciudad', '123789456'),
('Jorge', 'Diaz', '1994-01-22', 'jorge.diaz@example.com', 'Calle 606, Ciudad', '456987123'),
('Elena', 'Fernandez', '1996-04-08', 'elena.fernandez@example.com', 'Avenida 707, Ciudad', '789123654');


INSERT INTO usuario (usuario, contrasena, persona_id, rol_id) VALUES
('juan.perez', 'password123', 1, 1),
('maria.gomez', 'password123', 2, 2),
('carlos.lopez', 'password123', 3, 3),
('ana.martinez', 'password123', 4, 1),
('luis.garcia', 'password123', 5, 2),
('sofia.hernandez', 'password123', 6, 3),
('miguel.torres', 'password123', 7, 1),
('laura.ramirez', 'password123', 8, 2),
('jorge.diaz', 'password123', 9, 3),
('elena.fernandez', 'password123', 10, 1);