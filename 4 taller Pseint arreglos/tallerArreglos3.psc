Proceso tallerArreglos3
	Definir num, i, contador Como Entero;
	
	Escribir "Numeros primos: ";
	Para i<- 1 Hasta 1000 Hacer
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
	
	
FinProceso
