Proceso tallerCondicionales5
	
	Definir opcion, opcionCompra, respuestaCompra, cantidad Como Entero;
	Definir producto, respuesta Como Caracter;
	Definir precio, total Como Real;
	
	precio<-0;
	opcionCompra<-0;
	
	Escribir "Bienvenido a la aplicación de facturación Droguería Mi Salud";
	Escribir "Estamos ubicados en la localidad de Suba para brindarle el mejor servicio";
	Escribir "Escoja la opción que desea realizar con nosotros: ";
	Escribir "1 para registrar compra de productos";
	Escribir "2 para consulta de precios por producto";
	Escribir "3 para devoluciones";
	Escribir "4 para salir del sistema";
	Leer opcion;
	
	//MENU
	Segun opcion Hacer
		1:
			Escribir "Para compra de productos digite la opción que desea segun la categoria.";
		2: 
			Escribir "Para consultar el precio del producto digite el numero correspondiente segun la categoria que desea buscar.";
		3:
			Escribir "Bienvenido a las devoluciones";
			Escribir "Para devolución de un producto digite la categoria por favor";
		4: 
			Escribir "Esta saliendo del programa, gracias por preferirnos.";
	FinSegun
	//Condicional para ingresar a categorias de productos
	Si opcion > 0 Y opcion < 4 Entonces
		Escribir "1 para aseo";
		Escribir "2 para medicamentos";
		Leer opcionCompra;
	FinSi
	//Condicional para cada categoria 1 aseo y 2 medicamentos
	Si opcionCompra = 1 Entonces
		Escribir "Estos son los productos de aseo disponibles: ";
		Escribir "123 Desodorante rexona mujer";
		Escribir "1234 Desodorante Axe hombre";
		Escribir "12345 Crema dental colgate";
		Escribir "123456 Crema Ponds S";	
	FinSi
	
	Si opcionCompra = 2 Entonces
		Escribir "Estos son los medicamentos disponibles: ";
		Escribir "234 Acetaminofem";
		Escribir "2345 Dolex gripa";
		Escribir "23456 Noxpirin";
		Escribir "234567 Noraver gripa pastas";
		Escribir "2345678 Noraver garganta";
		Escribir "23456789 Vick Vaporub";
	FinSi
	
	Si opcionCompra < 0 O opcionCompra > 2 Entonces
		Escribir "Esta opcion no esta disponible";
	FinSi
	//Condicional para el detalle de cada producto
	Si opcionCompra = 1 O opcionCompra = 2 Entonces
		Escribir "Desea conocer el detalle de algun producto? escriba si o no segun su preferencia.";
		Leer respuesta;
		respuesta <- Minusculas(respuesta);
		
		Si respuesta = "si" Entonces
			Escribir "Escriba el producto, por codigo o nombre, que desea adquirir o conocer su precio";
			Leer producto;
			producto <- Minusculas(producto);
			
			Si producto = "desodorante rexona mujer" O producto = "123" Entonces
				precio<-18900;
				Escribir "Desodorante rexona mujer: $", precio;
			FinSi
			Si producto = "desodorante axe hombre" O producto = "1234" Entonces
				precio<-22800;
				Escribir "Desodorante Axe hombre: $", precio;
			FinSi
			Si producto = "crema dental colgate" O producto = "12345" Entonces
				precio<-3800;
				Escribir "Crema dental colgate: $", precio;
			FinSi
			Si producto = "crema ponds s" O producto = "123456" Entonces
				precio<-11300;
				Escribir "Crema Ponds S: $", precio;
			FinSi
			
			Si producto = "acetaminofem" O producto = "234" Entonces
				precio<-1200;
				Escribir "Acetaminofem 500gr tira de 10: $", precio;
			FinSi
			Si producto = "dolex gripa" O producto = "2345" Entonces
				precio<-1900;
				Escribir "Dolex gripa: $", precio;
			FinSi
			Si producto = "noxpirin" O producto = "23456" Entonces
				precio<-1700;
				Escribir "Noxpirin unidad: $", precio;
			FinSi
			Si producto = "noraver gripa pastas" O producto = "234567" Entonces
				precio<-5900;
				Escribir "Noraver gripa pastas x 4und: $", precio;
			FinSi
			Si producto = "noraver garganta" O producto = "2345678" Entonces
				precio<-1800;
				Escribir "Noraver garganta x und: $", precio;
			FinSi
			Si producto = "vick vaporub" O producto = "23456789" Entonces
				precio<-4200;
				Escribir "Vick Vaporub: $", precio;
			FinSi
			
			Escribir "Que cantidad desea del producto?";
			Leer cantidad;
			Si cantidad > 0 Entonces
				total<-precio * cantidad;
			FinSi
			Si cantidad = 0 Entonces
				total<-precio;
			FinSi
			
			Escribir "En total es: ", total;
			
			Escribir "Si desea continuar con la compra y realizar la factura digite 1, si desea realizar devolución digite 2, si desea salir digite 3";
			Leer respuestaCompra;
			
			Si respuestaCompra = 1 Entonces
				Escribir "Se ha añadido ", producto, " al carrito de compras. Con un valor total de ", total;
				Escribir "Gracias por preferirnos";
			FinSi
			Si respuestaCompra = 2 Entonces
				Escribir "El producto se restara del total.";
				total<-total - precio;
				Escribir "Ahora tiene un valor de ", total;
			FinSi
			Si respuestaCompra = 3 Entonces
				Escribir "Gracias por su visita, esperamos servirle en lo que necesite.";
			FinSi
			Si respuestaCompra < 1 O respuestaCompra > 3 Entonces
				Escribir "Esta opción no existe, recuerde que las opciones disponibles son 1, 2 y 3";
			FinSi
		SiNo
			Escribir "Esta saliendo de la opción de consulta de productos.";
		FinSi
	FinSi
	
FinProceso