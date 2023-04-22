Proceso tallerFuncionesArreglos4
	Definir matriz, num, number, filas, columnas Como Entero;
	
	Dimension num[4,5];
	Dimension number[4,5];
	filas<-4;
	columnas<-5;
	
	Dimension matriz[4,5];
	matriz[0,0] <- 01;
    matriz[0,1] <- 02;
    matriz[0,2] <- 03;
    matriz[0,3] <- 04;
    matriz[0,4] <- 05;
    matriz[1,0] <- 06;
    matriz[1,1] <- 07;
    matriz[1,2] <- 08;
    matriz[1,3] <- 09;
    matriz[1,4] <- 10;
    matriz[2,0] <- 11;
    matriz[2,1] <- 12;
    matriz[2,2] <- 13;
    matriz[2,3] <- 14;
    matriz[2,4] <- 15;
    matriz[3,0] <- 16;
    matriz[3,1] <- 17;
    matriz[3,2] <- 18;
    matriz[3,3] <- 19;
    matriz[3,4] <- 20;
	
	Escribir "Primer matriz, codigo quemado";
    mostrarMatrizQuemada(matriz, filas, columnas);
	
	Escribir "";
	Escribir "Segunda matriz automatica";
	inicializar(num, filas, columnas);
	
	Escribir "";
	Escribir "Segunda matriz menos quemada";
	inicializaMatriz(number, filas, columnas);
FinProceso

SubProceso mostrarMatrizQuemada(matriz, filas, columnas)
	Definir i, j Como Entero;
	
	Para i <- 0 Hasta filas-1 Con Paso 1 Hacer
        Para j <- 0 Hasta columnas-1 Con Paso 1 Hacer
			mostrarMatriz(matriz, i, j);
        FinPara
        Escribir "";
    FinPara
FinSubProceso

SubProceso inicializar(num, filas, columnas)
	Definir i, j, contador, disminuye, aumenta, retrocede Como Entero;
	contador<-1;
	disminuye<-10;
	aumenta<-11;
	retrocede<-20;
	
	Para i <- 0 Hasta filas-1 Con Paso 1 Hacer
        Para j <- 0 Hasta columnas-1 Con Paso 1 Hacer
			Si i = 0 Entonces
				num[0,j] <- contador;
				contador<-contador+1;
			FinSi
			Si i = 1 Entonces
				num[1,j] <- disminuye;
				disminuye<-disminuye-1;
			FinSi
			Si i = 2 Entonces
				num[2,j] <- aumenta;
				aumenta<-aumenta+1;
			FinSi
			Si i = 3 Entonces
				num[3,j] <- retrocede;
				retrocede<-retrocede-1;
			FinSi
			mostrarMatriz(num,i,j);
        FinPara
        Escribir "";
    FinPara
FinSubProceso

SubProceso mostrarMatriz(num, i, j)
	Si num[i,j] < 10 Entonces
		Escribir Sin saltar "0", num[i,j], " ";
	SiNo
		Escribir Sin Saltar num[i,j], " ";
	FinSi 
FinSubProceso

SubProceso inicializaMatriz(number, filas, columnas)
	Definir i, j Como Entero;
	
	Para i <- 0 Hasta filas-1 Con Paso 1 Hacer
        Para j <- 0 Hasta columnas-1 Con Paso 1 Hacer
            Si i Mod 2 = 0 Entonces //Filas pares
                number[i,j] <- i* 5+ j + 1;
            Sino
                number[i,j] <- i*5 + 5 - j; //Filas impares
            FinSi
			mostrarMatriz(number,i,j);
        FinPara
		Escribir "";
    FinPara
FinSubProceso
