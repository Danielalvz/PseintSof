Proceso tallerFuncionesCiclos8
	Definir usuarios, identificacion Como Caracter;
	Definir opcion, a, filas, columnas Como Entero;
	Definir calificaciones Como Real;
	
	opcion<-0;
	a<-0;
	
	Dimension usuarios[8,2];
	Dimension calificaciones[8];
	filas<-8;
	columnas<-2;
	inicializar(usuarios, calificaciones, filas, columnas);
	
	Escribir "Bienvenido a la escuela automovilística El Maestro!";
	Escribir "Con nuestros cursos, logrará conseguir su licencia de conducción.";
	Mientras opcion <> 5 Hacer
		opcion<-imprimirMenu();
		
		Segun opcion Hacer
			1: //Registrar usuario
				Escribir "Tenemos capacidad para 8 estudiantes.";
				Escribir "Estamos con el registro del estudiante no.: ", a+1;
				Si a < filas Entonces		
					Si usuarios[a,0] = "0" Entonces
						guardarUsuario(usuarios, calificaciones, a);
					FinSi		
					a<-a+1;
				FinSi
				
				Si a > filas-1 Entonces
					Escribir "Lo siento, no tenemos mas cupos";
				FinSi
				
			2: //Consultar un usuario
				Escribir "Ingrese el numero de identificacion del usuario que desea consultar: ";
				Leer identificacion;
				consultarUsuario(usuarios, identificacion, filas);
			3: //Consultar resultados
				Escribir "Ingrese el numero de identificacion del usuario que desea consultar para conocer su resultado: ";
				Leer identificacion;
				consultarNotas(usuarios, calificaciones, identificacion, filas);
			4: //Listar todos los usuarios
				Escribir "Lista de los usuarios registrados";
				listarUsuarios(usuarios, filas);
			5:
				Escribir "Gracias por preferirnos!";
				Escribir "Esta saliendo del programa...";
		FinSegun
	FinMientras
FinProceso

SubProceso inicializar(usuarios, calificaciones, filas, columnas)
	Definir i, j, k Como Entero;
	
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer
		Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
			usuarios[i,j] <- "0";
		FinPara
	FinPara
	
	Para k<-0 Hasta filas-1 Con Paso 1 Hacer
		calificaciones[k] <- 0;
	FinPara
FinSubProceso

SubProceso opcion<-imprimirMenu()
	Definir opcion Como Entero;
	
	Escribir "Ingrese la opción que desee: ";
	Escribir "1 para registrar un usuario en el curso";
	Escribir "2 para consultar un usuario";
	Escribir "3 para consulta de resultados";
	Escribir "4 para listar todos los usuarios";
	Escribir "5 para salir del sistema";
	Leer opcion;
	Limpiar Pantalla;
FinSubProceso

SubProceso guardarUsuario(usuarios, calificaciones, i)
	Definir nombre, identificacion Como Caracter;
	Definir resultado Como Real;
	Definir bandera Como Logico;
	bandera<-Verdadero;
	
	Escribir "Posicion actual = ", i;
	Escribir "Ingrese el nombre de usuario: ";
	Leer nombre;
	usuarios[i, 0] <- nombre;
	Escribir "Ingrese numero de identificacion: ";
	Leer identificacion;
	usuarios[i, 1] <- identificacion;
	
	Mientras bandera Hacer
		Escribir "Ingrese el resultado obtenido ";
		Escribir "Si se encuentra en curso, digite 0 ";
		Leer resultado;
		Si resultado <= 100 Entonces
			calificaciones[i] <- resultado;
			bandera<-Falso;
		SiNo
			Escribir "La calificación es de 1 a 100, y 0 cuando esta cursando, es decir, aun no hay calificación.";
		FinSi
	FinMientras
FinSubProceso

SubProceso listarUsuarios(usuarios, filas)
	Definir m Como Entero;
	
	Para m<-0 hasta filas-1 Con Paso 1 Hacer
		Escribir "Usuario no. ", m;
		Escribir "Nombre: ", usuarios[m, 0];
		Escribir "Identificación: ", usuarios[m, 1];
	FinPara	
FinSubProceso

SubProceso consultarUsuario(usuarios, identificacion, filas)
	Definir k Como Entero;
	Definir encontrado Como Logico;
	
	k<-0;
	encontrado<-Verdadero;
	
	Mientras encontrado y k < filas Hacer
		Si usuarios[k, 1] = identificacion Entonces
			Escribir "Usuario matriculado";
			Escribir "Nombre: ", usuarios[k, 0];
			Escribir "Identificacion: ", usuarios[k, 1];
			encontrado<-Falso;
		SiNo Si k >= filas-1 Entonces
				Escribir "Lo siento, el usuario no se encuentra registrado.";
			FinSi
		FinSi
		k<-k+1;
	FinMientras
FinSubProceso

SubProceso consultarNotas(usuarios, calificaciones, identificacion, filas)
	Definir j Como Entero;
	Definir encontrado Como Logico;
	
	j<-0;
	encontrado<-Verdadero;
	
	Mientras encontrado y j < filas Hacer
		Si usuarios[j, 1] = identificacion Entonces
			Escribir "Usuario matriculado";
			Escribir "Nombre: ", usuarios[j, 0];
			Escribir "Identificacion: ", usuarios[j, 1];
			Escribir "Resultado: ", calificaciones[j];
			Si calificaciones[j] = 0 Entonces
				Escribir "El usuario se encuentra en progreso, aun no cuenta con calificación final.";
				Escribir "Resultado: EN PROGRESO";
			FinSi
			Si calificaciones[j] > 0 Y calificaciones[j] < 80 Entonces
				Escribir "Lo lamentamos, debes repetir el curso, ya que no se alcanzó el resultado esperado.";
				Escribir "Resultado: NO APROBADO";	
			FinSi
			Si calificaciones[j] >= 80 Entonces
				Escribir "Felicitaciones! terminó el curso y APROBÓ.";
				Escribir "Resultado: APROBADO";
			FinSi
			encontrado<-Falso;
		SiNo Si j >= filas-1 Entonces
				Escribir "Usuario no encontrado.";
			FinSi
		FinSi
		j<-j+1;
	FinMientras
FinSubProceso

