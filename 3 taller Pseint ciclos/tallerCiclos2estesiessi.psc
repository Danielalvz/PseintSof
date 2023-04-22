Proceso tallerCiclos2
	
	Definir j, filas, h, i Como Entero;
	Escribir "";
	Escribir Sin Saltar "Ingrese cuantas filas desea: ";
	Leer filas;
	Escribir "";
	
	j<-0;

	Mientras j < filas Hacer
		i<-0;
		Mientras i < (filas-j) Hacer
			Escribir Sin Saltar " ";
			i<-i+1;
		FinMientras
		h<-0;
		Mientras h < j Hacer
			Escribir Sin Saltar "*";
			h<-h+1;
		FinMientras
		Escribir " ";
		j<-j+1;
	FinMientras
	

	
	
FinProceso
