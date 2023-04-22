Proceso tallerCiclos3
	Definir j, filas, h, i, k, l, m Como Entero;
	Escribir "";
	Escribir Sin Saltar "Ingrese cuantas filas desea: ";
	Leer filas;
	Escribir "";
	
	j<-0;
	k<-0;
	//Arbol
	Repetir
		i<-0;
		Repetir
			Escribir Sin Saltar " ";
			i<-i+1;
		Hasta Que i > filas-j;
		h<-0;
		Repetir
			Escribir Sin Saltar "*", " ";
			h<-h+1;
		Hasta Que h > j;
		Escribir " ";
		j<-j+1;
	Hasta Que j > filas;
	
	//Palito
	Si filas = 10 Entonces
		Escribir "          ***";
	FinSi
	Repetir
		l<-0;
		Repetir
			Escribir Sin Saltar " ";
			l<-l+1;
		Hasta Que l > (filas-k)-1;
		m<-0;
		Repetir
			Escribir Sin Saltar "**";
			m<-m+1;
		Hasta Que m > k;
		Escribir Sin Saltar "*";
		Escribir " ";
		k<-k+1;
	Hasta Que k > 2;
FinProceso