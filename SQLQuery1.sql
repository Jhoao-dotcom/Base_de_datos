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


