Proceso  tallerCondicionales4
	
	Definir opcion Como Entero;
	Definir pelicula Como Caracter;
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	definir direccion Como Caracter;
	Definir telefono Como Caracter;
	
	
	Escribir "Bienvenido a la video Tienda Barrio el Porvenir!";
	Escribir "Estamos a su servicio para el alquiler de todo tipo de peliculas";
	Escribir "Digite la opción del menú que desee";
	Escribir "1 para alquilar pelicula";
	Escribir "2 para consultar peliculas disponibles";
	Escribir "3 recibir pelicula en la video tienda";
	Escribir "4 para salir del menu.";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Digite el nombre de la pelicula que desea alquilar";
			Leer pelicula;
			
			Escribir "Digite sus datos para el alquiler.";
			Escribir "Ingrese su nombre: ";
			Leer nombre;
			Escribir "Y sus apellidos: ";
			Leer apellidos;
			Escribir "Ingrese la direccion donde se realizará el alquiler de la pelicula. ";
			Leer direccion;
			
			Escribir "Cliente ", nombre, " ", apellidos;
			Escribir "Su alquiler es para ", direccion;
			Escribir "Y usted alquilará la pelicula: ", pelicula;
			Escribir "Su alquiler será enviado con un dia habil.";
		2:
			Escribir "Bienvenido, a continuación encontrará nuestras peliculas disponibles. ";
			Escribir "Ultimos estrenos: ";
			Escribir "Aftersun.", "The Menu.", "El Gato con Botas.", "Triangle of Sadness.";
			Escribir "Mas vistas: ";
			Escribir "Avatar.", "Topgun.", "Turning Red.", "Jurassic World.";
		3:
			Escribir "Esta en la opción de recibir la pelicula directamente en la tienda.";
			Escribir "Digite el nombre de la pelicula que desea encargar, y lo contactaremos cuando este disponible.";
			Leer pelicula;
			Escribir "Ingrese sus datos para contactarlo y reservar su pelicula.";
			Escribir "Ingrese su nombre ";
			Leer nombre;
			Escribir  "Y sus apellidos ";
			Leer apellidos;
			Escribir "Por ultimo digite su numero de telefono, donde nos pondremos en contacto.";
			Leer telefono;
		4:
			Escribir "Esta saliendo del menú de nuestra Video Tienda..";
			Escribir "Es un gusto atenderlo, que tenga buen día.";
		De Otro Modo:
			Escribir "Digite una opción valida para poder atender su solicitud.";
			
	FinSegun
	
	
	Escribir "Por ultimo, tenga en cuenta las siguientes anotaciones.";
	Escribir "Al hacer uso de alquiler de peliculas, se compromete a devolverla en perfecto estado, tal y como se entrega.";
	Escribir "Ante cualquier posible daño, se recurrirá a una multa segun corresponda.";
	Escribir "Se reservan los derechos de autor, no se pueden realizar copias.";
	
	Escribir "Gracias por prefereir nuestra Video Tienda.";
	Escribir "Es un placer servirle.";
	
FinProceso

