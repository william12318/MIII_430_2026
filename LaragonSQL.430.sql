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

CREATE DATABASE Biblioteca;

USE Biblioteca;

CREATE TABLE libro(
NL INT,
Titulo VARCHAR(50),
Edicion VARCHAR(30),
fecha VARCHAR(30),
PRIMARY KEY (NL)
);

CREATE TABLE Autor(
NA INT,
Nombre VARCHAR(50),   
pais de origen VARCHAR(30),
genero VARCHAR(30),
PRIMARY KEY (NA)
);

CREATE DATABASE veterinaria;
USE veterinaria;

CREATE TABLE Mascotas(
Nombre VARCHAR(15) NULL DEFAULT NULL,
Dueño VARCHAR (15) NULL DEFAULT NULL,
Especie VARCHAR (10) NULL DEFAULT NULL,
Sexo VARCHAR (1) NULL DEFAULT NULL,
Nacimiento DATE NULL DEFAULT NULL,
Fallecimiento DATE NULL DEFAULT NULL
);

INSERT INTO mascotas (nombre,dueño,sexo,nacimiento) VALUES('puffball','Diane','f','1999-03-30');

INSERT INTO mascotas (dueño,sexo,nombre,nacimiento)
VALUES ('Diane','f','puffball','1999-03-30');

INSERT INTO mascotas 
VALUES ('Fluffy','Harold','cat','f','1993-02-04',NULL),
('Clawls','Gwen','cat','m','1994-03-17',NULL),
('Buffy','Harold','dog','f','1989-05-13',NULL),
('Fang','Benny','dog','f','1990-08-27',NULL),
('Bowser','Diane','dog','m','1979-08-31','1979-08-31'),
('Chirpy','Gwen','bird','f','1998-09-11',NULL),
('Whistler','Gwen','bird',NULL,'1997-12-09',NULL),
('Slim','Benny','Snake','m','1996-04-29',NULL);
SHOW TABLES 

SELECT * FROM mascotas

DESCRIBE mascotas 

UPDATE FROM mascotas SET dueño=CECyTEM WHERE nombre=Gwen

UPDATE FROM mascotas WHERE nombre='Buffy'

DELETE FROM mascotas WHERE nombre ='Buffy'

CREATE DATABASE biblioteca2;
USE biblioteca2;

CREATE TABLE libro(
ID_libro INT,
titulo VARCHAR(50),
PRIMARY KEY (ID_libro)
);

INSERT INTO libro (ID_libro,titulo)
VALUES (1,'The catcher in the Rye'),
		 (2,'Nine Stories'),
		 (3,'Franny and zooey'),
		 (4,'The great Gatsby'),
		 (5,'Tonder id thebiblioteca Night'),
		 (6,'pride and prejudice'),
		 (7,'Professional ASP.NET 4.5 in C# and VB');

CREATE TABLE Autores(
ID_autor INT,
Nombre VARCHAR(50),
Pais VARCHAR(20),
PRIMARY KEY (ID_autor)
);libros_autores

INSERT INTO autores(ID_autor,nombre,pais)
VALUES(1,'Jason N,Gaylor','USA'), 
(2,'Pranav Rastogi','USA'),
(3,'Scott Hanselman','USA'),
(4,'Todd Miranda','USA'),
(5,'F. Scott. Fitzgerald','USA'),
(6,'Jane Austen','UK'),
(7,'J.D Solinger','USA'),
(8,'Christian Wenz','USA');

CREATE TABLE Libros_Autores (
ID_libros_Autores INT AUTO_INCREMENT PRIMARY KEY,
ID_libro_FK INT,
ID_autor_FK INT,
UNIQUE (ID_libros_Autores),
FOREIGN KEY(ID_libro_FK) REFERENCES libro(ID_libro),
FOREIGN KEY(ID_autor_FK) REFERENCES autores(ID_autor)
);

INSERT INTO Libros_Autores(ID_libro_FK,ID_autor_FK)
VALUES (1,1),
		 (2,1),
		 (3,1),
		 (4,2),
		 (5,2),
		 (6,3),
		 (7,4),
		 (7,5),
		 (7,6),
		 (7,7),
		 (7,8);
		 
UPDATE libro SET titulo='sentido y sensibilidad'
WHERE ID_libro='6'

DELETE FROM libros_autores WHERE ID_autor_FK=8;
DELETE FROM autores WHERE nombre='Christian Wenz'
		 
		 
