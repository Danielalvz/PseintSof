Proceso tallerCiclos7
	Definir vehiculos, placa Como Caracter;
	Definir opcion, a, d Como Entero;
	
	opcion<-0;
	a<-0;
	
	Dimension vehiculos[5,4];
	inicializar(vehiculos);
	
	Mientras opcion <> 5 Hacer
		Escribir "Bienvenido al parqueadero El guardián";
		Escribir "Digite la opción que desee realizar:";
		Escribir "1 para ingresar un vehiculo";
		Escribir "2 para retirar vehiculo del parqueadero";
		Escribir "3 para consultar vehiculo";
		Escribir "4 muestra todos los vehiculos";
		Escribir "5 para salir del sistema";
		Leer opcion;

		Segun opcion Hacer
			1:
				Escribir "A al inicio: ", a;
				Si a < 5 Entonces		
					Si vehiculos[a,0] = "0" Entonces
						guardarCliente(vehiculos, a);
					FinSi		
					a<-a+1;
				FinSi
				Escribir "a= ", a;
				
				Si a > 4 Entonces
					Para d<-0 Hasta 4 Con Paso 1 Hacer
						Si vehiculos[d,0] = "0" Entonces
							Escribir "d", d;
							guardarCliente(vehiculos, d);
						FinSi
					FinPara
					Escribir "Valor de a:", a;
					Escribir "Valor de d:", d;
				FinSi
				
				Si a > 4  Entonces
					Escribir "Lo siento, el parqueadero está lleno";
				FinSi
			2:
				Escribir "Ingrese la placa del vehículo que desea retirar: ";
				Leer placa;
				eliminarCliente(vehiculos, placa);
				Si a = 0 Entonces
					a<-0;
				SiNo
					a<-a-1;
				FinSi	
			3:
				Escribir "Ingrese la placa del vehículo que desea consultar: ";
				Leer placa;
				consultarCliente(vehiculos, placa);
			4:
				Escribir "Todos los vehiculos:";
				verClientes(vehiculos);
			5:
				Escribir "¡Gracias por utilizar el Parqueadero El guardián!";
				opcion <- 5;
			De Otro Modo:
				Escribir "Opción inválida, por favor seleccione otra opción";
		FinSegun
	FinMientras
FinProceso

SubProceso inicializar(vehiculos)
	Definir i, j Como Entero;
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			vehiculos[i,j] <- "0";
		FinPara
	FinPara
FinSubProceso

SubProceso guardarCliente(vehiculos, i)
	Definir placa, marca, nombre, telefono Como Caracter;
	Definir bandera Como Logico;
	bandera<-Verdadero;
	
	Escribir "Posicion actual = ", i;
	Escribir "Ingrese la placa del vehículo: ";
	Leer placa;
	vehiculos[i, 0] <- placa;
	Escribir "Ingrese la marca del vehículo: ";
	Leer marca;
	vehiculos[i, 1] <- marca;
	Escribir "Ingrese el nombre completo del cliente: ";
	Leer nombre;
	vehiculos[i, 2] <- nombre;
	
	Mientras bandera Hacer
		Escribir "Ingrese el número de teléfono del cliente: ";
		Leer telefono;
		Si Longitud(telefono) = 10 Entonces
			vehiculos[i, 3] <- telefono;	
			bandera<-Falso;
		SiNo
			Escribir "Numero no valido. El numero debe ser de 10 digitos.";
		FinSi
	FinMientras
FinSubProceso

SubProceso verClientes(vehiculos)
	Definir m Como Entero;
	
	Para m<-0 hasta 4 Con Paso 1 Hacer
		Escribir "Vehiculo en posicion no. ", m;
		Escribir "Placa: ", vehiculos[m, 0];
		Escribir "Marca: ", vehiculos[m, 1];
		Escribir "Nombre: ", vehiculos[m, 2];
		Escribir "Telefono: ", vehiculos[m, 3];
	FinPara	
FinSubProceso

SubProceso consultarCliente(vehiculos, placa)
	Definir k Como Entero;
	Definir encontrado Como Logico;
	
	k<-0;
	encontrado<-Verdadero;
	
	Mientras encontrado y k < 5 Hacer
		Si vehiculos[k, 0] = placa Entonces
			Escribir "El vehículo se encuentra en el parqueadero";
			Escribir "Placa: ", vehiculos[k, 0];
			Escribir "Marca: ", vehiculos[k, 1];
			Escribir "Nombre: ", vehiculos[k, 2];
			Escribir "Telefono: ", vehiculos[k, 3];
			encontrado<-Falso;
		SiNo Si k >= 4 Entonces
				Escribir "Lo siento, el vehículo no se encuentra en el parqueadero";
			FinSi
		FinSi
		k<-k+1;
	FinMientras
FinSubProceso

SubProceso eliminarCliente(vehiculos, placa)
	Definir j Como Entero;
	Definir encontrado Como Logico;
	
	j<-0;
	encontrado<-Verdadero;

	Mientras encontrado Y j < 5 Hacer
		Si vehiculos[j, 0] = placa Entonces
			vehiculos[j, 0] <- "0";
			vehiculos[j, 1] <- "0";
			vehiculos[j, 2] <- "0";
			vehiculos[j, 3] <- "0";
			Escribir "Vehículo retirado correctamente";
			encontrado<-Falso;
		SiNo Si j >= 4 Entonces
				Escribir "Lo siento, el vehículo no se encuentra en el parqueadero";
			FinSi
		FinSi
		j<-j+1;
	FinMientras
FinSubProceso
