//en primer lugar creamos nuestra base de datos, para ellos abrimos una consulta con el script
create database estudiantes
	//ubi de la base de datos
	// tamaño, max de tamaño y progresion de tamaño
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\mi primera vez.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )

use [mi primera vez];

go 
create table estudiantes (
	id int identity(1,1) primary key,
	nombre NVARCHAR (50) NOT NULL,
	apellido nvarchar (50) not null,
	carrera nvarchar (100) not null,
	id_carrera int not null 
	constraint Fk_estudiantes_carrera foreign key (id_carrera) references carrera(id)
);
// creacion de 2da tabla para tener una clave foranea
CREATE TABLE carreras (
    id_carrera INT PRIMARY KEY,
    nombre_carrera NVARCHAR(100) NOT NULL
);
select * from estudiantes

delete from estudiantes 
where id= 2
//solucionar en sql server porque no compila
//nombres con J
USE [mi primera vez]
	go
SELECT * FROM estudiantes
WHERE Nombre LIKE 'J%';
//cuando id este dentro de 20 y 30
SELECT * FROM estudiantes
WHERE id BETWEEN 20 AND 30;

//clasificara a los estudiantes
USE [mi primera vez]
go
SELECT Nombre,
id,
	CASE
		WHEN id <10 THEN 'primeros puestos'
		WHEN id BETWEEN 10 AND 40 THEN 'Medio'
	ELSE 'ultimos'
	END AS CategoriaEstudiantes
FROM estudiantes;

//mostrara carreras con mas de 2 estudiantes
SELECT carrera, COUNT(*) AS NumeroEstudiantes
FROM Estudiantes
GROUP BY carrera
HAVING COUNT(*) > 2;
//logica de tres valores
USE [mi primera vez]
go
SELECT * 
FROM Estudiantes
WHERE carrera = 'Ingeniería' OR carrera IS NULL;



