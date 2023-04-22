Proceso tallerArreglos1
	Definir vector, posicion, num, j Como Entero;
	
	posicion<-0;
	
	Dimension vector[5];
	inicializar(vector);
	
	Mientras posicion < 5 Hacer
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
	
	Limpiar Pantalla;
	
	Si posicion = 5 Entonces
		Escribir "Lista de numeros: ";
		Para j<-0 Hasta 4 Hacer
			Escribir "[", j, "] = ", vector[j];
		FinPara
	FinSi
	
FinProceso

SubProceso inicializar(vector)
	Definir i Como Entero;
	
	Para i<-0 Hasta 4 Hacer
		vector[i] <- 0;
	FinPara
FinSubProceso
	