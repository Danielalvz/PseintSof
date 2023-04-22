Proceso tallerFuncionesArreglos3
	Definir limite Como Entero;
	
	limite<-1000;
	
	Escribir "Numeros primos entre 1 y ", limite;
	calcularNumerosPrimos(limite);
FinProceso

SubProceso calcularNumerosPrimos(limite)
	Definir i, num, contador Como Entero;
	
	Para i<- 1 Hasta limite Hacer
		num<-1;
		contador<-0;
		
		Mientras  num <= i Hacer
			Si i mod num == 0 Entonces
				contador<- contador+1;
			FinSi
			num<-num+1;
		FinMientras
		
		Si contador == 2 Entonces
			Escribir Sin Saltar i, " ";
		FinSi
	FinPara	
FinSubProceso
	