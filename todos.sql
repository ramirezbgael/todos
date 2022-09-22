CREATE TABLE "todos" (
  "id" serial PRIMARY KEY,
  "name" varchar(20) NOT NULL,
  "is_completed" bool DEFAULT false,
  "deadline" date,
  "description" varchar
);

-- Todos con deadline y el completed por defecto falso
insert into todos (name, deadline, description) values (
	'Lavar platos',
	'2022-09-23',
	'Gael tiene que lavar los platos si quiere salir el viernes'
),
(	
	'Lavar coche',
	'2022-09-25',
	'El carro tiene que estar listo para el domingo'
);

-- Todo sin deadline, sin description y completado 
insert into todos (name, is_completed, deadline) values (
	'Hacer tarea',
	true,
	'2022-09-21'
);

-- Obtener todos
select * from todos;

-- Obtener solo finalizados
select is_completed = true from todos;