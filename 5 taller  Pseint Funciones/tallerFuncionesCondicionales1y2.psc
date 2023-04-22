Proceso tallerFuncionesCondicionales1y2
	indicadorAdultez();
FinProceso

SubProceso indicadorAdultez()
	Definir edad Como Entero;
	
	Escribir "Ingrese su edad";
	Leer edad;
	
	Si (edad >= 18) Entonces
		Escribir "Usted es mayor de edad";
	SiNo
		Escribir "Usted aún es un niño(a).";
	FinSi
	
	Escribir  "Usted tiene ", edad, " años.";
FinSubProceso

