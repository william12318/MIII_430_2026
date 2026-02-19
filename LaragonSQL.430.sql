CREATE DATABASE Panaderia;
CREATE DATABASE Escuela;
CREATE DATABASE Negocio;
CREATE DATABASE Jugueteria;
CREATE DATABASE Tienda;

USE Escuela;
 
CREATE TABLE Alumno(
NC VARCHAR(10),
Nombre VARCHAR(40),
APaterno VARCHAR(40),
AMaterno VARCHAR(40),
Semestre INT,
Grupo VARCHAR(1),
Direccion VARCHAR(50),
Telefono VARCHAR(15),
PRIMARY KEY(NC)
);