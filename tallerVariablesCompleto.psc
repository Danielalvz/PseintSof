Proceso  tallerVariablesCompleto
	Definir nombre, apellido, nombreMadre, apellidoMadre, nombrePadre, apellidoPadre, ciudad, pais, nombreMascota, tipoMascota, respuestaMascota Como Caracter;
	Definir edad, edadMascota Como Entero;
	Definir  estatura Como Real;
	
	//Parte 1
	Escribir "Indique su nombre";
	Leer nombre;
	
	Escribir "Indique su apellido";
	Leer apellido;
	Limpiar Pantalla;
	
	//Parte 2
	Escribir "Indique su edad";
	Leer edad;
	
	Escribir "Indique su estatura";
	Leer estatura;
	Limpiar Pantalla;
	
	//Parte 3
	Escribir "Cual es el nombre de su madre?";
	Leer nombreMadre;
	
	Escribir "Indique tambien sus apellidos";
	Leer apellidoMadre;
	
	Escribir "Cual es el nombre de su padre?";
	Leer nombrePadre;
	
	Escribir "Indique tambien sus apellidos";
	Leer apellidoPadre;
	
	Escribir "Yo ", nombre, " ", apellido, " soy hijo/a de ", nombreMadre," ", apellidoMadre, " y de ", nombrePadre, " ", apellidoPadre;
	
	//Parte 4
	Escribir "Indique el nombre de una ciudad capital: ";
	Leer ciudad;
	
	Escribir "Ahora ingrese el país correspondiente a dicha ciudad: ";
	Leer pais;
	
	Escribir "La ciudad de ", ciudad, " es la capital del país ", pais;
	
	//Parte 5
	Escribir "Usted tiene mascotas?";
	Leer respuestaMascota;
	respuestaMascota <- Minusculas(respuestaMascota);
	Limpiar Pantalla;
	
	Si (respuestaMascota == 'si') Entonces
		Escribir "Cual es el nombre de su mascota?";
		Leer nombreMascota;
		
		Escribir "Indique la edad de su mascota";
		Leer edadMascota;
		
		Escribir "De que tipo de animal o raza es su mascota?";
		Leer tipoMascota;
		
		Escribir "Su mascota: ", nombreMascota, " es un/a ", tipoMascota, " el/la cual tiene ", edadMascota, " años de edad. ";
		Escribir "Y ", nombre, " ", apellido, " es actualmente su dueño.";
	
	SiNo
		Escribir "Usted no tiene mascota, este campo no aplica, gracias por su tiempo.";
	FinSi
FinProceso

