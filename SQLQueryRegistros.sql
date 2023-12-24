INSERT into Clientes (ClienteID, Nombre,Apellido,Telefono,Email)
	VALUES (1,'Gonzalo','de los Rios','666666666 ','gdelosr@gmail.com');
INSERT into Clientes (ClienteID, Nombre,Apellido,Telefono,Email)
	VALUES (2,'Rolando','Ababa','923456789 ','roliar@gmail.com');
INSERT into Clientes (ClienteID, Nombre,Apellido,Telefono,Email)
	VALUES (3,'Tallitos','Ayote','987654321','tallos@gmail.com');

INSERT into Mascotas (MascotaID, NombreMascota,ClienteID,Especie,Edad)
	VALUES (1,'Pigui',0,'Pihuicho',5);
INSERT into Mascotas (MascotaID, NombreMascota,ClienteID,Especie,Edad)
	VALUES (2,'Balin',1,'Perro Collie',8);
INSERT into Mascotas (MascotaID, NombreMascota,ClienteID,Especie,Edad)
	VALUES (3,'Briseida',1,'Perro comun',11);
INSERT into Mascotas (MascotaID, NombreMascota,ClienteID,Especie,Edad)
	VALUES (4,'Bizco',3,'Mono Leoncillo',6);

INSERT into Servicios (ServicioID, NombreServicio,Costo)
	VALUES (1,'Consulta veterinaria',50);
INSERT into Servicios (ServicioID, NombreServicio,Costo)
	VALUES (2,'Desparasitacion',30);
INSERT into Servicios (ServicioID, NombreServicio,Costo)
	VALUES (3,'Baño',30);
INSERT into Servicios (ServicioID, NombreServicio,Costo)
	VALUES (4,'Corte de uñas',20);

INSERT into Citas (CitaID, MascotaID,FechaHora, Observaciones)
	VALUES (1,1,'10/12/23 17:00', 'Cliente frecuente');
INSERT into Citas (CitaID, MascotaID,FechaHora, Observaciones)
	VALUES (2,3,'15/12/23 17:00', 'Primera vez');

INSERT into HistorialMedico (HistorialID, MascotaID, ServicioID,FechaServicio, Diagnostico,Receta)
	VALUES (1,1,1,'10/12/23 17:00', 'Parasitos', 'Racumin 1 pastilla con las comidas');
INSERT into HistorialMedico (HistorialID, MascotaID, ServicioID,FechaServicio, Diagnostico,Receta)
	VALUES (2,3,1,'15/12/23 17:00', 'Distemper', 'Campeon 50 ml');

select * from HistorialMedico