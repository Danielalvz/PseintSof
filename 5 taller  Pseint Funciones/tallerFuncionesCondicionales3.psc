Proceso tallerFuncionesCondicionales3
	Definir edad Como Entero;
	
	edad <- verificarDatos();
	verificarEdad(edad);
FinProceso

SubProceso edad <- verificarDatos()
	Definir edad Como Entero;
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	
	Escribir "Ingrese su nombre";
	Leer nombre;
	Escribir "Tambien sus apellidos";
	Leer apellidos;
	Escribir "Ingrese su edad";
	Leer edad;
	
	Escribir nombre, " ", apellidos;
FinSubProceso

SubProceso verificarEdad(edad)
	Si (edad >= 18) Entonces
		Escribir "Usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	SiNo
		Escribir "Usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinSubProceso
