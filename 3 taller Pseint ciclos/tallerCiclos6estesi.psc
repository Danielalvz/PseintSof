Proceso tallerCiclos6
	Definir contactos, persona, telefono, organizacion, busqueda, confirmacion Como Caracter;
	Definir opcion, fila, columna, i, j, k Como Entero;
	Definir encontrado Como Logico;
	
	opcion<-0;
	encontrado <- Falso;
	
	Dimension contactos[3,3]; 
	contactos[0,0] <- ""; 
	contactos[0,1] <- ""; 
	contactos[0,2] <- ""; 
	contactos[1,0] <- ""; 
	contactos[1,1] <- ""; 
	contactos[1,2] <- ""; 
	contactos[2,0] <- ""; 
	contactos[2,1] <- ""; 
	contactos[2,2] <- ""; 
	
	Mientras opcion <> 5 Hacer
		Escribir "-------------------";
        Escribir "1. Añadir contacto";
        Escribir "2. Buscar contacto";
		Escribir "3. Listar contactos";
        Escribir "4. Eliminar contacto";
        Escribir "5. Salir";
        Escribir "-------------------";
        Escribir "Seleccione una opción: ";
        Leer opcion;
		
		Segun opcion Hacer
			1: 
				Para fila<-0 Hasta 2 Con Paso 1 Hacer
					Escribir "FILA: ", fila;
					Escribir "Contacto numero ", fila+1;
					columna<-0;
					Para k<-0 Hasta 0 Con Paso 1 Hacer
						Escribir "K: ", k;
						Escribir "COLUMNA: ", columna;
						Escribir "Ingrese el nombre de su contacto";
						Leer persona;
						contactos[fila, columna] <- persona;
						Escribir contactos[fila, columna];
						
						Escribir "Ingrese el telefono de su contacto: ";
						Leer telefono;
						contactos[fila, columna+1] <- telefono;
						Escribir contactos[fila, columna];
						Escribir contactos[fila, columna+1];
						
						Para i <- 0 Hasta 1 Con Paso 1 Hacer
							Si i <> fila Entonces
								Si contactos[i, columna+1] = telefono Entonces
									Escribir "El teléfono ingresado ya está en la lista de contactos.";
									Escribir "Ingrese el telefono de su contacto de nuevo: ";
									Leer telefono;
									contactos[fila, columna+1] <- telefono;
								FinSi
							FinSi	
						FinPara
						
						
						Escribir "Ingrese la organizacion de su contacto: ";
						Leer organizacion;
						contactos[fila, columna+2] <- organizacion;
						Escribir contactos[fila, columna];
						Escribir contactos[fila, columna+1];
						Escribir contactos[fila, columna+2];
						
					FinPara
				FinPara
				
				Escribir "Lista de contactos ";
				Para j<-0 Hasta 2 Con Paso 1 Hacer
					Escribir "Contacto numero ", j+1;
					Para i<-0 Hasta 2 Con Paso 1 Hacer
						Escribir contactos[j,i];
					FinPara
				FinPara
			2:
				Escribir "Buscar contacto";
				Escribir "Escriba el nombre o telefono que desea buscar: ";
				Leer busqueda;
				
				Para fila <- 0 Hasta 2 Con Paso 1 Hacer
					Si contactos[fila, 0] = busqueda O contactos[fila, 1] = busqueda Entonces
						Escribir "Contacto encontrado:";
						Escribir "Nombre: ", contactos[fila, 0];
						Escribir "Teléfono: ", contactos[fila, 1];
						Escribir "Organización: ", contactos[fila, 2];
						fila<-2;
					SiNo 
						Escribir "No se encontró ningún contacto con ese nombre o teléfono.";
						//fila<-2;
					FinSi
				FinPara
			3:
				Escribir "Lista de contactos ";
				Para j<-0 Hasta 2 Con Paso 1 Hacer
					Escribir "Contacto numero ", j+1;
					Para i<-0 Hasta 2 Con Paso 1 Hacer
						Escribir contactos[j,i];
					FinPara
				FinPara

			4:
				Escribir "Eliminar contacto";
				Escribir "Escriba el contacto que desea elminar ";
				Leer busqueda;
				
				Para fila <- 0 Hasta 2 Con Paso 1 Hacer
					Si contactos[fila, 0] = busqueda O contactos[fila, 1] = busqueda Entonces
						Escribir "Contacto encontrado:";
						Escribir "Nombre: ", contactos[fila, 0];
						Escribir "Teléfono: ", contactos[fila, 1];
						Escribir "Organización: ", contactos[fila, 2];
						
						confirmacion <- "";
						Mientras confirmacion <> "S" Y confirmacion <> "N" Hacer
							Escribir "¿Está seguro que desea eliminar este contacto? (S/N)";
							Leer confirmacion;
							confirmacion<-Mayusculas(confirmacion);
						FinMientras
						
						Si confirmacion = "S" Entonces
							Para i <- 0 Hasta 2 Con Paso 1 Hacer
								contactos[fila, i] <- "";
							FinPara
							Escribir "Contacto eliminado.";
						Sino
							Escribir "Eliminación de contacto cancelada.";
						FinSi
						fila<-2;
					SiNo 
						Escribir "No se encontró ningún contacto con ese nombre o teléfono.";
						//fila<-2;
					FinSi
				FinPara
		FinSegun
	FinMientras
FinProceso
