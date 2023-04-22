Proceso tallerFuncionesCondicionales6
	Definir opcion, i, j, filasIngresos, columnasIngresos, filasSalidas, columnasSalidas Como Entero;
	Definir placa, ingresos, salidas Como Caracter;
	
	i<-0;
	j<-0;
	opcion<-0;
	
	Dimension ingresos[5,3];
	filasIngresos <- 5;
	columnasIngresos <- 3;
	inicializarMatriz(ingresos, filasIngresos, columnasIngresos);
	
	Dimension salidas[5,4];
	filasSalidas <- 5;
	columnasSalidas <- 4;
	inicializarMatriz(salidas, filasSalidas, columnasSalidas);
	
	saludo();
	
	Mientras opcion < 3 Hacer
		opcion <- mostrarMenu();
		
		si opcion = 1 Entonces
			Si i < filasIngresos Entonces
				registroUsuario(ingresos, i);
				i<-i+1;
			FinSi
			Si i >= filasIngresos Entonces
				Escribir "El parqueadero esta lleno";
			FinSi
		FinSi
		
		Si opcion = 2 Entonces
			Si j < filasSalidas Entonces
				placa<-salidaUsuario(salidas, j);
				sacarPlacaDelRegistro(salidas, ingresos, filasSalidas, placa);
				i<-i-1; //Hace que se libere un espacio para poder registrar un nuevo vehiculo
				j<-j+1;
			FinSi
		FinSi
		
		Si opcion = 3 Entonces
			Escribir "Esta saliendo del programa, que tenga un buen dia";
		FinSi
		
		Si opcion > 3 O opcion < 1 Entonces
			Escribir "Opción invalida";
		FinSi
	FinMientras
FinProceso

SubProceso saludo()
	Escribir "Bienvenido a la apicación taller de motos El Maquinista.";
	Escribir "Somos los mejores en revisiones para motocicletas de alto cilindraje.";
FinSubProceso

SubProceso opcion <- mostrarMenu()
	Definir opcion Como Entero;
	
	Escribir "Se encuentra en el menu de opciones, digite la opción que desee realizar: ";
	Escribir "1 para registrar un servicio.";
	Escribir "2 para registrar salida de motocicleta.";
	Escribir "3 para salir del programa.";
	Leer opcion;
FinSubProceso

SubProceso inicializarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero;
	
	Para i<-0 Hasta filas-1 Hacer
		Para j<-0 Hasta columnas-1 Hacer
			matriz[i,j] <- "0";
		FinPara
	FinPara
FinSubProceso

SubProceso registroUsuario(ingresos, filasIngresos)
	Definir fecha, placa, nota Como Caracter;
	
	Escribir "Ingrese la fecha de registro con el formato fecha dd/mm/aaaa).";
	Leer fecha;
	ingresos[filasIngresos, 0] <- fecha;
	Escribir "Ingrese el numero de placa de la motocicleta para el registro: ";
	Leer placa;
	ingresos[filasIngresos, 1] <- placa;
	Escribir "Escriba las anotaciones que dejó el cliente";
	Leer nota;
	ingresos[filasIngresos, 2] <- nota;
FinSubProceso

SubProceso placa<-salidaUsuario(salidas, filasSalidas)
	Definir salida, placa, novedades, arreglos Como Caracter;
	
	Escribir "Ingrese la fecha de salida de la motocicleta (dd/mm/aaaa): ";
	Leer salida;
	salidas[filasSalidas,0] <- salida;
	Escribir "Ingrese el numero de placa de la motocicleta para el registro: ";
	Leer placa;
	salidas[filasSalidas,1] <- placa;
	Escribir "Ingrese las novedades presentadas: ";
	Leer novedades;
	salidas[filasSalidas,2] <- novedades;
	Escribir "Ingrese los arreglos hechos por el mecánico: ";
	Leer arreglos;
	salidas[filasSalidas,3] <- arreglos;
	
	Escribir "Salida registrada exitosamente.";
	Escribir "Los arreglos realizados fueron: ", arreglos;
	Escribir "Se presentaron las siguientes novedades: ", novedades;	
FinSubProceso

SubProceso sacarPlacaDelRegistro(salidas, ingresos, fila, placa)
	Definir i, j Como Entero;
	
	Para i<-0 Hasta fila-1 Hacer
		Si salidas[i,1] = ingresos[i,1] Entonces
			ingresos[i,0] <- "";
			ingresos[i,1] <- "";
			ingresos[i,2] <- "";
		FinSi
	FinPara
FinSubProceso
	