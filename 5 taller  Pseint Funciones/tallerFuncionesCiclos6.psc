Proceso tallerFuncionesCiclos6
	Definir contactos, busqueda Como Caracter;
	Definir opcion, fila, columna, i, filasContactos, columnasContactos Como Entero;
	
	opcion<-0;
	fila<-0;

	Dimension contactos[3,3]; 
	filasContactos<-3;
	columnasContactos<-3;
	inicializarContactos(contactos, filasContactos, columnasContactos);
	
	Mientras opcion <> 5 Hacer
		opcion<-imprimirMenu();
		
		Segun opcion Hacer
			1: 
				Si fila < filasContactos Entonces
					Escribir "Contacto numero ", fila+1;
					columna<-0;

					agregarContacto(contactos,fila, columna);
					
					fila<-fila+1;
				FinSi
				
				Si fila >= filasContactos Entonces
					Para i<-0 Hasta filasContactos-1 Hacer
						Si contactos[i,0] = "0" O contactos[i,0] = "" Entonces
							agregarContacto(contactos,i,columna);
						FinSi
					FinPara
				FinSi
				
				Si fila = filasContactos Entonces
					Escribir "Lista de contactos llena";
				FinSi
			2:
				Escribir "Buscar contacto";
				Escribir "Escriba el nombre o telefono que desea buscar: ";
				Leer busqueda;
				
				buscarContacto(contactos, busqueda, filasContactos);
			3:
				listarContactos(contactos, filasContactos, columnasContactos);
			4:
				Escribir "Eliminar contacto";
				Escribir "Escriba el contacto que desea elminar ";
				Leer busqueda;
				
				eliminarContacto(contactos, filasContactos, columnasContactos, busqueda);
			5:
				Escribir "Esta saliendo del sistema";
		FinSegun
	FinMientras
FinProceso

SubProceso inicializarContactos(contactos, filas, columnas)
	Definir i, j Como Entero;
	
	Para i<-0 Hasta filas-1 Hacer
		Para j<-0 Hasta columnas-1 Hacer
			contactos[i,j] <- "";
		FinPara
	FinPara
FinSubProceso

SubProceso opcion<-imprimirMenu()
	Definir opcion Como Entero;
	
	Escribir "-------------------";
	Escribir "1. Añadir contacto";
	Escribir "2. Buscar contacto";
	Escribir "3. Listar contactos";
	Escribir "4. Eliminar contacto";
	Escribir "5. Salir";
	Escribir "-------------------";
	Escribir "Seleccione una opción: ";
	Leer opcion;
FinSubProceso

SubProceso agregarContacto(contactos,fila,columna)
	Definir persona, telefono, organizacion Como Caracter;
	
	Escribir "Ingrese el nombre de su contacto";
	Leer persona;
	contactos[fila, columna] <- persona;
	
	Escribir "Ingrese el telefono de su contacto: ";
	Leer telefono;
	contactos[fila, columna+1] <- telefono;
	
	comprobarNumero(contactos, fila, columna, telefono);
	
	Escribir "Ingrese la organizacion de su contacto: ";
	Leer organizacion;
	contactos[fila, columna+2] <- organizacion;
FinSubProceso

SubProceso comprobarNumero(contactos, fila, columna, telefono)
	Definir i Como Entero;
	
	Para i <- 0 Hasta 1 Con Paso 1 Hacer
		Si i <> fila Entonces
			Mientras contactos[i, columna+1] = telefono Hacer
				Escribir "El teléfono ingresado ya está en la lista de contactos.";
				Escribir "Ingrese el telefono de su contacto de nuevo: ";
				Leer telefono;
				contactos[fila, columna+1] <- telefono;
			FinMientras
		FinSi	
	FinPara
FinSubProceso

SubProceso buscarContacto(contactos, busqueda, filasContactos)
	Definir fila Como Entero;
	Definir bandera Como Logico;
	
	bandera<-Falso;
	
	Para fila <- 0 Hasta filasContactos-1 Con Paso 1 Hacer
		Si contactos[fila, 0] = busqueda O contactos[fila, 1] = busqueda Entonces
			Escribir "Contacto encontrado:";
			Escribir "Nombre: ", contactos[fila, 0];
			Escribir "Teléfono: ", contactos[fila, 1];
			Escribir "Organización: ", contactos[fila, 2];
			bandera<-Verdadero;
			fila<-2;
		FinSi
	FinPara
	
	Si fila >= filasContactos-1 Y bandera = Falso Entonces
		Escribir "No se encontró ningún contacto con ese nombre o teléfono.";
	FinSi
FinSubProceso

SubProceso listarContactos(contactos, filasContactos, columnasContactos)
	Definir i, j Como Entero;
	
	Escribir "Lista de contactos ";
	Para j<-0 Hasta filasContactos-1 Con Paso 1 Hacer
		Escribir "Contacto numero ", j+1;
		Para i<-0 Hasta columnasContactos-1 Con Paso 1 Hacer
			Escribir contactos[j,i];
		FinPara
	FinPara	
FinSubProceso

SubProceso eliminarContacto(contactos, filasContactos, columnasContactos, busqueda)
	Definir m, i Como Entero;
	Definir bandera Como Logico;
	Definir confirmacion Como Caracter;
	
	bandera<-Falso;
	
	Para m <- 0 Hasta filasContactos-1 Con Paso 1 Hacer
		Si contactos[m, 0] = busqueda O contactos[m, 1] = busqueda Entonces
			Escribir "Contacto encontrado:";
			Escribir "Nombre: ", contactos[m, 0];
			Escribir "Teléfono: ", contactos[m, 1];
			Escribir "Organización: ", contactos[m, 2];
			bandera<-Verdadero;
			
			confirmacion <- "";
			Mientras confirmacion <> "S" Y confirmacion <> "N" Hacer
				Escribir "¿Está seguro que desea eliminar este contacto? (S/N)";
				Leer confirmacion;
				confirmacion<-Mayusculas(confirmacion);
			FinMientras
			
			Si confirmacion = "S" Entonces
				Para i <- 0 Hasta columnasContactos-1 Con Paso 1 Hacer
					contactos[m, i] <- "";
				FinPara
				Escribir "Contacto eliminado.";
			Sino
				Escribir "Eliminación de contacto cancelada.";
				m<-2;
			FinSi
		FinSi
	FinPara
	
	si m >= filasContactos-1 Y bandera = Falso Entonces
		Escribir "No se encontró ningún contacto con ese nombre o teléfono.";
	FinSi
FinSubProceso
	