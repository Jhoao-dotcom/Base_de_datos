use [mi primera vez];
go 
create table estudiantes (
	id int identity(1,1) primary key,
	nombre NVARCHAR (50) NOT NULL,
	apellido nvarchar (50) not null,
	carrera nvarchar (100) not null
);
