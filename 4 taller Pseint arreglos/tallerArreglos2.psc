Proceso tallerArreglos2
	Definir num Como Entero;
	
	Dimension num[20];
	
	Escribir "Numeros enteros de 20 posiciones, con numeros aleatorios de 1 a 100";
	inicializar(num);
	ordenAscendente(num);
	
	mostrarPares(num);
	mostrarImpares(num);

FinProceso

SubProceso inicializar(num)
	Definir i, j Como Entero;
	
	Para i<-0 Hasta 19 Hacer
		num[i] <- Aleatorio(1,100); //Inicializa
		Para j <- 0 hasta i-1 Hacer //Comprobacion para no repetir numeros, se hace hasta el numero anterior de la lista
			Mientras num[j] = num[i] Hacer
				num[i] <- Aleatorio(1,100);
				j <- 0; //Para volver a comparar el nuevo numero aleatorio, con los anteriores de la liesta
			FinMientras
		FinPara
	FinPara
FinSubProceso

SubProceso ordenAscendente(num)
	Definir i, j, temp Como Entero;
	Para i <- 0 hasta 19 Hacer
		Para j <- 0 hasta 18-i Hacer
			Si num[j] > num[j+1] Entonces
				temp <- num[j];
				num[j] <- num[j+1];
				num[j+1] <- temp;
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarPares(num)
	Definir j, a Como Entero;
	
	j<-0;
	a<-0;
	
	Escribir "Numeros pares: ";
	Mientras j < 20 Hacer
		a<-num[j];
		Si a mod 2 == 0 Entonces
			Escribir Sin Saltar a, " ";
		FinSi
		j<-j+1;
	FinMientras
FinSubProceso

SubProceso mostrarImpares(num)
	Definir j Como Entero;
	
	j<-0;
	Escribir "";
	Escribir "Numeros impares: ";
	Mientras j < 20 Hacer
		Si (num[j] % 2) <> 0 Entonces
			Escribir Sin Saltar num[j], " ";
		FinSi
		j<-j+1;
	FinMientras
FinSubProceso

