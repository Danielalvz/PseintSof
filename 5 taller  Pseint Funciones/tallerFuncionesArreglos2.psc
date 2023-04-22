Proceso tallerFuncionesArreglos2
	Definir num, filas Como Entero;
	
	Dimension num[20];
	filas<-20;
	
	Escribir "Numeros enteros de 20 posiciones, con numeros aleatorios de 1 a 100";
	inicializar(num, filas);
	ordenAscendente(num, filas);
	
	mostrarPares(num, filas);
	mostrarImpares(num, filas);
	
FinProceso

SubProceso inicializar(num, filas)
	Definir i, j Como Entero;
	
	Para i<-0 Hasta filas-1 Hacer
		num[i] <- Aleatorio(1,100); //Inicializa
		Para j <- 0 hasta i-1 Hacer //Comprobacion para no repetir numeros, se hace hasta el numero anterior de la lista
			Mientras num[j] = num[i] Hacer
				num[i] <- Aleatorio(1,100);
				j <- 0; //Para volver a comparar el nuevo numero aleatorio, con los anteriores de la liesta
			FinMientras
		FinPara
	FinPara
FinSubProceso

SubProceso ordenAscendente(num, filas)
	Definir i, j, temp Como Entero;
	Para i <- 0 hasta filas-1 Hacer
		Para j <- 0 hasta filas-2-i Hacer
			Si num[j] > num[j+1] Entonces
				temp <- num[j];
				num[j] <- num[j+1];
				num[j+1] <- temp;
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarPares(num, filas)
	Definir j, a Como Entero;
	
	j<-0;
	a<-0;
	
	Escribir "Numeros pares: ";
	Mientras j < filas Hacer
		a<-num[j];
		Si a mod 2 == 0 Entonces
			Escribir Sin Saltar a, " ";
		FinSi
		j<-j+1;
	FinMientras
FinSubProceso

SubProceso mostrarImpares(num, filas)
	Definir j Como Entero;
	
	j<-0;
	Escribir "";
	Escribir "Numeros impares: ";
	Mientras j < filas Hacer
		Si (num[j] % 2) <> 0 Entonces
			Escribir Sin Saltar num[j], " ";
		FinSi
		j<-j+1;
	FinMientras
FinSubProceso
