Proceso tallerCondicionales8
	Definir nombre, sabor, decoraciones, fechaPedido, fechaEntrega Como Caracter;
	Definir cantidad, porciones, opcion, disponible Como Entero;
	Definir precio, total, ventaDiaria Como Real;
	
	precio<-0;
	disponible<-10;
	ventaDiaria<-0;

	Escribir "Aplicación de registro de pasteles, propiedad del mejor pastelero Don Carlos";
	Escribir "Bienvenido a la pasteleria Don Carlos!";
	
	Repetir
		//Menu de opciones
		Escribir "Digite la opción que desee realizar";
		Escribir "1 para registrar pedido";
		Escribir "2 para revisar tortas disponibles";
		Escribir "3 para revisar ventas diarias";
		Escribir "4 para salir del programa";
		Leer opcion;
		
		Si opcion = 1 Entonces
			//Datos de variables
			Escribir "Para registrar pedidos de algun cliente, registre los siguientes datos.";
			Escribir "Nombre de su cliente";
			Leer nombre;
			Escribir "Registre la fecha de hoy realizado el pedido, en formato fecha (dd/mm/aaaa)";
			Leer fechaPedido;
			Escribir "Registre la fecha en la que debe ser entregado en formato fecha dd/mm/aaaa)";
			Leer fechaEntrega;
			Escribir "Sabor de torta que desea";
			Leer  sabor;
			Escribir "Que tipo de decoración quiere para la torta";
			Leer decoraciones;
			Escribir "Tamaño de la torta en porciones";
			Leer porciones;
			Escribir "Cantidad de tortas a realizar";
			Leer cantidad;
			
			//Condicional de precios segun porciones de torta, tamaño
			Si porciones > 3 Y porciones < 9 Entonces
				precio <- 18000;
			FinSi
			Si porciones > 8 Y porciones <= 16 Entonces
				precio <- 32000;
			FinSi
			Si porciones > 16 Y porciones <= 32 Entonces
				precio <- 48000;
			FinSi
			Si porciones < 4 O porciones > 32 Entonces
				Escribir "No tenemos disponible este tamaño, el mas grande es de 32 porciones y el mas pequeño de 4.";
				precio<-0;
				cantidad<-cantidad- cantidad; //Para que no se reste la disponibilidad de tortas, ya que esta no se puede realizar.
			FinSi
			
			total <- precio * cantidad;
			
			//Si se requiere una torta valida, se realizará el proceso
			Si cantidad >= 1 Entonces
				Escribir "Su pedido se realizó el dia ", fechaPedido;
				Escribir "Registrado para el cliente ", nombre;
				Escribir "Caracteristicas: torta de ", sabor, " con decoración de ", decoraciones;
				Escribir "Pedido hecho por un total de ", cantidad, " tortas.", " De ", porciones, " porciones.";
				Escribir "Precio de la torta por unidad: ", precio;
				Escribir "El precio total del pedido es: ", total;
				
				Si disponible >= cantidad Entonces
					disponible <- disponible - cantidad;
					ventaDiaria <- ventaDiaria + total;
					Escribir "Pedido registrado exitosamente";
				Sino
					Escribir "No hay suficientes tortas disponibles para realizar el pedido, se deben empezar a hacer";
				FinSi
			FinSi
		FinSi
		
		Si opcion = 2 Entonces
			Escribir "Las tortas disponibles son: ", disponible;
		FinSi
		Si opcion = 3 Entonces
			Escribir "Las ventas registradas el dia de hoy suman en total: ", ventaDiaria;
		FinSi
		Si opcion = 4 Entonces
			Escribir "Gracias por visitar la pastelería Don Carlos";
		FinSi
		Si opcion < 1 O opcion > 4 Entonces
			Escribir "Opción invalida, por favor digite un número de 1 a 4 según la opción.";
		FinSi
	Hasta Que opcion = 4;
	
FinProceso
