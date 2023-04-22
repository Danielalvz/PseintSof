Proceso tallerCondicionales6
	
	Definir opcion Como Entero;
	Definir fecha, salida, placa, nota, novedades, arreglos Como Caracter;
	
	Escribir "Bienvenido a la apicación taller de motos El Maquinista.";
	Escribir "Somos los mejores en revisiones para motocicletas de alto cilindraje.";
	
	Escribir "Se encuentra en el menu de opciones, digite la opción que desee realizar: ";
	Escribir "1 para registrar un servicio.";
	Escribir "2 para registrar salida de motocicleta.";
	Escribir "3 para salir del programa.";
	Leer opcion;
	
	si opcion = 1 Entonces
		Escribir "Ingrese la fecha de registro con el formato fecha dd/mm/aaaa).";
		Leer fecha;
		Escribir "Ingrese el numero de placa de la motocicleta para el registro: ";
		Leer placa;
		Escribir "Escriba las anotaciones que dejó el cliente";
		Leer nota;
	FinSi
		
	Si opcion = 2 Entonces
		Escribir "Ingrese la fecha de salida de la motocicleta (dd/mm/aaaa): ";
		Leer salida;
		Escribir "Ingrese el numero de placa de la motocicleta para el registro: ";
		Leer placa;
		Escribir "Ingrese las novedades presentadas: ";
		Leer novedades;
		Escribir "Ingrese los arreglos hechos por el mecánico: ";
		Leer arreglos;
		Escribir "Registro de servicio completado exitosamente.";
		Escribir "Los arreglos realizados fueron: ", arreglos;
		Escribir "Se presentaron las siguientes novedades: ", novedades;	
	FinSi

	Si opcion = 3 Entonces
		Escribir "Esta saliendo del programa, que tenga un buen dia";
	FinSi
	
	Si opcion > 3 O opcion < 1 Entonces
		Escribir "Opción invalida";
	FinSi
	
FinProceso
