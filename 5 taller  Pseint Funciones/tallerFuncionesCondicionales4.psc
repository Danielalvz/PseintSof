Proceso tallerFuncionesCondicionales4
	Definir opcion, filas Como Entero;
	Definir pelicula, peliculas Como Caracter;

	opcion<-0;
	filas<-8;
	
	Dimension peliculas[8];
	inicializarPeliculas(peliculas);
	
	saludo();
	Mientras opcion <> 4 Hacer
		opcion <- imprimirMenu();
		Segun opcion Hacer
			1:
				pelicula <- alquilerPelicula();
				buscarPelicula(peliculas, filas, pelicula);
				datosUsuario();
			2:
				Escribir "Bienvenido, a continuación encontrará nuestras peliculas disponibles. ";
				peliculasDisponibles(peliculas, filas);
			3:
				Escribir "Esta en la opción de recibir la pelicula directamente en la tienda.";
				pelicula<- alquilerPelicula();
				buscarPelicula(peliculas, filas, pelicula);
				Escribir "Le contactaremos cuando la pelicula ", pelicula, " este disponible.";
				datosUsuario();
			4:
				Escribir "Esta saliendo del menú de nuestra Video Tienda..";
				Escribir "Es un gusto atenderlo, que tenga buen día.";
				Escribir "----------------------------------------------------";
				recomendaciones();
				despedida();
			De Otro Modo:
				Escribir "Digite una opción valida para poder atender su solicitud.";
		FinSegun
	FinMientras
FinProceso

SubProceso saludo()
	Escribir "Bienvenido a la video Tienda Barrio el Porvenir!";
	Escribir "Estamos a su servicio para el alquiler de todo tipo de peliculas";
FinSubProceso

SubProceso opcion <- imprimirMenu()
	Definir opcion Como Entero;
	
	Escribir "________________________________________";
	Escribir "Digite la opción del menú que desee";
	Escribir "1 para alquilar pelicula";
	Escribir "2 para consultar peliculas disponibles";
	Escribir "3 recibir pelicula en la video tienda";
	Escribir "4 para salir del menu.";
	Escribir "----------------------------------------";
	Leer opcion;
FinSubProceso

SubProceso datosUsuario()
	Definir nombre, apellidos, direccion, telefono Como Caracter;
	
	Escribir "Digite sus datos para el alquiler.";
	Escribir "Ingrese su nombre: ";
	Leer nombre;
	Escribir "Y sus apellidos: ";
	Leer apellidos;
	Escribir "Ingrese la direccion donde se realizará el alquiler de la pelicula. ";
	Leer direccion;
	Escribir "Por ultimo digite su numero de telefono, donde nos pondremos en contacto.";
	Leer telefono;
	
	Escribir "Cliente ", nombre, " ", apellidos;
	Escribir "Su alquiler es para ", direccion;
FinSubProceso

SubProceso pelicula <- alquilerPelicula()
	Definir pelicula Como Caracter;
	
	Escribir "Digite el nombre de la pelicula que desea alquilar";
	Leer pelicula;
	pelicula<-Minusculas(pelicula);
FinSubProceso

SubProceso inicializarPeliculas(peliculas)
	peliculas[0] <- "Aftersun";
	peliculas[1] <- "The Menu";
	peliculas[2] <- "El Gato con Botas 2";
	peliculas[3] <- "Triangle of Sadness";
	peliculas[4] <- "Avatar";
	peliculas[5] <- "Topgun";
	peliculas[6] <- "Turning Red";
	peliculas[7] <- "Jurassic World";
FinSubProceso

SubProceso peliculasDisponibles(peliculas, filas)
	Definir i Como Entero;
	
	Para i<-0 Hasta filas-1 Hacer
		Escribir peliculas[i];
	FinPara
FinSubProceso

SubProceso buscarPelicula(peliculas, filas, pelicula)
	Definir i Como Entero;
	Definir bandera Como Logico;
	
	bandera<-Falso;
	
	Para i<-0 Hasta filas-1 Hacer
		Si pelicula = Minusculas(peliculas[i]) Entonces
			Escribir "Pelicula disponible";
			Escribir "Y usted alquilará la pelicula: ", pelicula;
			Escribir "Su alquiler será enviado con un dia habil.";
			bandera<-Falso;
			i<-filas-1;
		SiNo
			bandera<-Verdadero;
		FinSi
	FinPara
	
	Si bandera = Verdadero Entonces
		Escribir "Pelicula no disponible, comuniquese con nosotros para consultar proxima disponibilidad";
	FinSi
FinSubProceso

SubProceso recomendaciones()
	Escribir "Por ultimo, tenga en cuenta las siguientes anotaciones.";
	Escribir "Al hacer uso de alquiler de peliculas, se compromete a devolverla en perfecto estado, tal y como se entrega.";
	Escribir "Ante cualquier posible daño, se recurrirá a una multa segun corresponda.";
	Escribir "Se reservan los derechos de autor, no se pueden realizar copias.";
FinSubProceso

SubProceso despedida()
	Escribir "Gracias por preferir nuestra Video Tienda.";
	Escribir "Es un placer servirle.";
FinSubProceso

