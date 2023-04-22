Proceso tallerFuncionesArreglos1
	Definir vector, posicion, filas Como Entero;
	
	filas<-5;
	posicion<-0;
	
	Dimension vector[5];
	inicializar(vector, filas);
	
	posicion<-ingresarNumero(vector, filas);
	
	Limpiar Pantalla;
	
	mostrarNumeros(vector, posicion, filas);
	
FinProceso

SubProceso inicializar(vector, filas)
	Definir i Como Entero;
	
	Para i<-0 Hasta filas-1 Hacer
		vector[i] <- 0;
	FinPara
FinSubProceso

SubProceso posicion<-ingresarNumero(vector, filas)
	Definir posicion, num Como Entero;
	
	posicion<-0;
	
	Mientras posicion < filas Hacer
		Escribir "Posicion numero: ", posicion;
		Escribir "Ingrese un numero del 1 al 100: ";
		Leer num;
		
		Si num > 0 y num <= 100 Entonces
			vector[posicion] <- num;
		SiNo
			Escribir "El numero debe estar entre 1 y 100.";
			posicion<-posicion-1;
		FinSi
		posicion <- posicion+1;
	FinMientras
FinSubProceso

SubProceso mostrarNumeros(vector, posicion, filas)
	Definir j Como Entero;
	
	Si posicion = filas Entonces
		Escribir "Lista de numeros: ";
		Para j<-0 Hasta filas-1 Hacer
			Escribir "[", j, "] = ", vector[j];
		FinPara
	FinSi
FinSubProceso
	