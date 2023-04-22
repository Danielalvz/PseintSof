Proceso tallerFuncionesCondicionales10
	Definir opcion Como Entero;
	Definir saldo, ingreso, retiro Como Real;
	
	saldo<-0;
	
	Escribir "Bienvenido a Su banco fiel.";
	Repetir
		opcion<-imprimirMenu();
		
		Si opcion = 1 Entonces
			saldo<-ingresarDinero();
		FinSi
		Si opcion = 2 Entonces
			saldo<-retirarDinero(saldo);
		FinSi
		Si opcion = 3 Entonces
			Escribir "Consulta de saldo, su saldo actual es de $", saldo, " pesos.";
		FinSi
	Hasta Que opcion = 4;
	Escribir "Gracias por usar nuestra aplicación bancaria.";
FinProceso

SubProceso opcion<-imprimirMenu()
	Definir opcion Como Entero;
	
	Escribir "Digite la opción que desea realizar: ";
	Escribir "1 realizar ingreso a su cuenta";
	Escribir "2 retirar dinero de su cuenta";
	Escribir "3 consultar su saldo";
	Escribir "4 salir del programa";
	Leer opcion;	
FinSubProceso

SubProceso saldo<-ingresarDinero()
	Definir saldo, ingreso Como Real;
	
	saldo<-0;
	
	Escribir "Digite la cantidad que desea ingresar: ";
	Leer ingreso;
	
	Si ingreso < 1 Entonces
		Escribir "No puede realizar esta transacción, digite un número positivo en pesos.";
	SiNo
		saldo <- saldo + ingreso;
		Escribir "Registro ingresado con exito!";
	FinSi
FinSubProceso

SubProceso saldo<-retirarDinero(saldos)
	Definir saldo, retiro Como Real;
	
	Escribir "Digite la cantidad que desea retirar: ";
	Leer retiro;
	
	Si saldos > retiro Entonces
		saldo <- saldos - retiro;
		Escribir "Retiro exitoso.", " Acaba de retirar $", retiro, " pesos";
	SiNo
		Escribir "Saldo insuficiente para su retiro.";
		saldo<-saldos;
	FinSi	
FinSubProceso
	