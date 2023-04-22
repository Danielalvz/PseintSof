Proceso tallerArreglos5
	Definir tabla, base, i, j, fila, resultados Como Entero;
	
	fila<-1;

	Dimension tabla[10,10];
	Dimension base[10];
	Dimension resultados[10,10];
	inicializar(tabla);
	iniciaLista(base);
	
	//Inserta numero de columnas de la matriz 
	mostrarColumnas(base, 10);
	
	//Se recorre la matriz
	Para i<-0 Hasta 9 Hacer 
		
		//Filas a la izquierda
		imprimeFilas(fila);
		
		//Muestra la tabla y la base con la que se multiplica
		Para j<-0 Hasta 9 Hacer 
			Si base[i] >= 10 Entonces //Si el numero tiene dos digitos, se ajusta el espacio
				Escribir Sin Saltar tabla[i,j], " x ", base[i], "    ";
			SiNo
				Escribir Sin Saltar tabla[i,j], " x ", base[i], "     ";
			FinSi
		FinPara
		Escribir ""; //salto de fila
		fila <- fila + 1;
	FinPara
	
	Escribir "";
	multiplica(tabla, base);
	
	matrizRespuestas(resultados, tabla, base);
	Escribir "";
	Escribir "Multiplicacion con resultados de matriz bidimensional: ";
	resultadosMatriz(resultados, tabla, base);
FinProceso

//-------------------------FUNCIONES-----------------------------

//Matriz tabla
SubProceso inicializar(tabla) 
	Definir i, j, contador Como Entero;

	Para i<-0 Hasta 9 Hacer
		contador<-1;
		Para j<-0 Hasta 9 Hacer
			tabla[i,j] <- contador;
			contador<-contador+1;
		FinPara
	FinPara
FinSubProceso

//Numeros del 1 a 10 con los que se multiplicará los numeros de la matriz
SubProceso iniciaLista(base) 
	Definir k, contador Como Entero;
	contador<-1;
	
	Para k<-0 Hasta 9 Hacer
		base[k] <- contador;
		contador<- contador+1;
	FinPara
FinSubProceso

//Muestra el numero de columnas en las matrices, en horizontal
SubProceso mostrarColumnas(base, cantidadColumnas) 
	Definir columna Como Entero;
	Escribir "                                              COLUMNAS";
	
	Para columna<-0 Hasta cantidadColumnas-1 Hacer
		Escribir Sin Saltar "    ", base[columna], "     ";
	FinPara
	Escribir "";
FinSubProceso

//Imprime el numero de filas en vertical
SubProceso imprimeFilas(fila)
	Si fila >= 10 Entonces //Filas
		Escribir Sin Saltar fila, " ";
	SiNo
		Escribir Sin Saltar fila, "  ";
	FinSi
FinSubProceso

SubProceso multiplica(tabla, base) //Multiplicación de los numeros de la matriz
	Definir fila, columna, a, b, respuesta Como Entero;
	Escribir "Digite la fila que desea conocer el resultado: ";
	Leer fila;
	Escribir "Adicionalmente, elija la columna que necesita, teniendo en cuenta su fila anterior, para conocer la casilla que desea: ";
	Leer columna;
	
	a <- tabla[fila-1,columna-1];
	b <- base[fila-1];
	respuesta <- a * b;
	
	Escribir a, " x ", b, " = ", respuesta;
FinSubProceso

SubProceso matrizRespuestas(resultados, tabla, base) //Creacion de matriz de respuestas
	Definir i, j, fila, columna Como Entero;
	fila<-1;
	
	//Numero de columnas
	mostrarColumnas(base, 10);
	
	Para i<-0 Hasta 9 Hacer
		//Numero de filas
		imprimeFilas(fila);
		Para j<-0 Hasta 9 Hacer
			resultados[i,j] <- tabla[i,j] * base[i];
			//Comprobacion resultados con dos digitos para ajustar espacio
			Si resultados[i,j] >= 10 Entonces
				Escribir Sin Saltar "  ", resultados[i,j], "      ";
			SiNo
				Escribir Sin Saltar "  ", resultados[i,j], "       ";
			FinSi
		FinPara
		fila<-fila+1;
		Escribir "";
	FinPara
FinSubProceso

SubProceso resultadosMatriz(resultados, tabla, base) //Muestra resultado especifo por cada celda
	Definir fila, columna Como Entero;
	Repetir
		Escribir "Digite la fila que desea conocer el resultado: ";
		Leer fila;
		Escribir "Adicionalmente, elija la columna que necesita, teniendo en cuenta su fila anterior, para conocer la casilla que desea: ";
		Leer columna;
		
		Escribir tabla[fila-1,columna-1], " x ", base[fila-1], " = ", resultados[fila-1,columna-1];
	Hasta Que fila < 10 Y columna < 10;
FinSubProceso
	