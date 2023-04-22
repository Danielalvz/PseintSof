Proceso tallerCiclos5
	Definir opcion Como Entero;
	Definir bandera, nombreCapturado Como Logico;
	Definir nombre Como Caracter;
	
	bandera<- Verdadero;
	nombreCapturado<-Falso;
	
	Escribir "Bienvenido al Menu de usuario.";
	Repetir
		Escribir "Digite la opción que desea realizar: ";
		Escribir "1. Captura nombre";
		Escribir "2. Saludar persona";
		Escribir "3 Salir del sistema";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Cual es su nombre? ";
				Leer nombre;
				nombreCapturado <- Verdadero;
			2:
				Si nombreCapturado = Verdadero Entonces
					Escribir "Hola ", nombre;
				SiNo
					Escribir "Hola, aun no sabemos tu nombre, eres bienvenido, y estas invitado a  escribir tu nombre con la opción 1.";
				FinSi
			3:
				Escribir "Estas saliendo del programa.";
				bandera<-Falso;
			De Otro Modo:
				Escribir "Esta opción no esta disponible";
		FinSegun
	Hasta Que bandera = Falso;	
FinProceso
