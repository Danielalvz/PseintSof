Proceso tallerCondicionales9
	Definir figura Como Caracter;
	Definir opcion Como Entero;
	Definir area, base, baseLado, altura Como Real;
	
	Escribir "Bienvenidos al calculador de área de diferentes figuras.";

	Repetir
		Escribir "Digite 1 para consultar áreas y 2 para salir del programa.";
		Leer opcion;
		Si opcion = 1 Entonces
			Escribir "Para iniciar, escriba que tipo de figura desea conocer su área: rectángulo, triángulo o trapecio.";
			Leer figura;
			figura<-Minusculas(figura);
			
			Si figura <> "rectangulo" Y figura <> "rectángulo" Y figura <> "triángulo" Y figura <> "triangulo" Y figura <> "trapecio" Entonces
				Escribir "No tenemos disponible esta figura para poder hallar su área, lo sentimos.";
				area<-0;
			SiNo
				Escribir "Para hallar el área de un ", figura, " por favor digite la base o el ancho de este: ";
				Leer base;
				Escribir "Támbien digite su altura, o el largo del del ", figura, ": ";
				Leer altura;
			FinSi
			
			Si figura = "rectángulo" O figura = "rectangulo" Entonces
				area<-base*altura;
			FinSi
			Si figura = "triángulo" O figura = "triangulo" Entonces
				area<-(base*altura)/2;
			FinSi
			Si figura = "trapecio" Entonces
				Escribir "Digite el otro lado o base de su trapecio: ";
				Leer baseLado;
				area<-((base+baseLado)*altura)/2;
			FinSi
			
			Escribir "El área del ", figura, " es de: ", area;
		FinSi
		
	Hasta Que opcion = 2;
	
	Escribir "Gracias por usar nuestro programa!";
FinProceso
