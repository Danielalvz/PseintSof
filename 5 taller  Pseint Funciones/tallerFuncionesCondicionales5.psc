Proceso tallerFuncionesCondicionales5
	Definir opcion, cantidad, filasAseo, columnasAseo, filasMedicamentos, columnasMedicamentos Como Entero;
	Definir producto, productosAseo, medicamentos Como Caracter;
	Definir precio, total, totalCompra, preciosAseo, preciosMedicamentos Como Real;
	
	precio<-0;
	opcion<-0;
	totalCompra<-0;
	
	Dimension productosAseo[4,3];
	Dimension medicamentos[6,3];
	Dimension preciosAseo[4];
	Dimension preciosMedicamentos[6];
	
	filasAseo<-4;
	columnasAseo<-3;
	filasMedicamentos<-6;
	columnasMedicamentos<-3;
	
	inicializarProductosAseo(productosAseo, preciosAseo);
	inicializarMedicamentos(medicamentos, preciosMedicamentos);
	
	Escribir "Bienvenido a la aplicación de facturación Droguería Mi Salud";
	Escribir "Estamos ubicados en la localidad de Suba para brindarle el mejor servicio";
	
	Mientras opcion <> 5 Hacer
		Escribir "Escoja la opción que desea realizar con nosotros: ";
		Escribir "1 para registrar compra de productos";
		Escribir "2 para consulta de precios por producto";
		Escribir "3 para revisar el inventario de productos";
		Escribir "4 para devoluciones";
		Escribir "5 para salir del sistema";
		Leer opcion;
		
		total<-0;
		//MENU
		Segun opcion Hacer
			1:
				Escribir "Para compra de productos digite la opción que desea segun la categoria.";
				Escribir "Escriba el producto, por codigo o nombre, que desea adquirir: ";
				Leer producto;
				producto <- Minusculas(producto);
				
				buscarProducto(productosAseo, filasAseo, columnasAseo, producto);
				buscarProducto(medicamentos, filasMedicamentos, columnasMedicamentos, producto);
				
				precio<-buscarPrecio(productosAseo, filasAseo, columnasAseo, medicamentos, filasMedicamentos, columnasMedicamentos, producto);
				
				Escribir "Que cantidad desea del producto?";
				Leer cantidad;
				Si cantidad > 0 Entonces
					total<- (precio * cantidad);
					totalCompra<- totalCompra + total;
				FinSi
				Si cantidad = 0 Entonces
					total<-total;
					totalCompra<- totalCompra + total;
				FinSi
				
				Escribir "En total es: ", total;
				Escribir "Sus compras acumuladas son: ", totalCompra;
			2: 
				Escribir "Para consultar el precio del producto digite el codigo o nombre del producto que desea consultar.";
				Leer producto;
				producto <- Minusculas(producto);
				
				buscarProducto(productosAseo, filasAseo, columnasAseo, producto);
				buscarProducto(medicamentos, filasMedicamentos, columnasMedicamentos, producto);
			3:
				Escribir "Este es el inventario de productos en la farmacia";
				Escribir "Productos de aseo: ";
				mostrarMatriz(productosAseo, filasAseo, columnasAseo);
				Escribir "Medicamentos: ";
				mostrarMatriz(medicamentos, filasMedicamentos, columnasMedicamentos);
			4: 
				Escribir "Bienvenido a las devoluciones";
				Escribir "Para devolución de un producto digite el código o nombre: ";
				Leer producto;
				producto <- Minusculas(producto);
				
				buscarProducto(productosAseo, filasAseo, columnasAseo, producto);
				buscarProducto(medicamentos, filasMedicamentos, columnasMedicamentos, producto);
				
				precio<-buscarPrecio(productosAseo, filasAseo, columnasAseo, medicamentos, filasMedicamentos, columnasMedicamentos, producto);
				
				Si totalCompra = 0 o precio > totalCompra  Entonces
					Escribir "El saldo actual es de ", totalCompra, " pesos, no se puede hacer devolución, ya que no se ha registrado el producto.";
				FinSi
				Si totalCompra > 0 y precio < totalCompra Entonces
					Escribir "Que cantidad desea del producto?";
					Leer cantidad;
					Si cantidad > 0 Entonces
						total<- (precio * cantidad);
						totalCompra<- totalCompra - total;
					FinSi
					Si cantidad = 0 Entonces
						total<-total;
						totalCompra<- totalCompra - total;
					FinSi
					Escribir "El producto se restara del total.";
					Escribir "Su devolución tiene un valor total de: ", total;
					Escribir "El total de su compra acumulada es de: ", totalCompra;
				FinSi
			5:
				Escribir "Esta saliendo del programa, gracias por preferirnos.";
		FinSegun
	FinMientras
FinProceso

SubProceso inicializarPreciosAseo(preciosAseo)
	preciosAseo[0] <- 18900;
	preciosAseo[1] <- 22800;
	preciosAseo[2] <- 3800;
	preciosAseo[3] <- 11300;
FinSubProceso

SubProceso inicializarProductosAseo(productosAseo, preciosAseo)
	inicializarPreciosAseo(preciosAseo);
	Definir i Como Entero;
	
	Para i<-0 Hasta 3 Hacer
		productosAseo[i,2] <- ConvertirATexto(preciosAseo[i]);
	FinPara
	
	productosAseo[0,0] <- "123";
	productosAseo[0,1] <- "Desodorante rexona mujer";
	productosAseo[1,0] <- "1234";
	productosAseo[1,1] <- "Desodorante Axe hombre";
	productosAseo[2,0] <- "12345";
	productosAseo[2,1] <- "Crema dental colgate";
	productosAseo[3,0] <- "123456";
	productosAseo[3,1] <- "Crema Ponds S";
FinSubProceso

SubProceso inicializarPreciosMedicamentos(preciosMedicamentos)
	preciosMedicamentos[0] <- 1200;
	preciosMedicamentos[1] <- 1900;
	preciosMedicamentos[2] <- 1700;
	preciosMedicamentos[3] <- 5900;
	preciosMedicamentos[4] <- 1800;
	preciosMedicamentos[5] <- 4200;
FinSubProceso

SubProceso inicializarMedicamentos(medicamentos, preciosMedicamentos)
	inicializarPreciosMedicamentos(preciosMedicamentos);
	Definir j Como Entero;
	
	Para j<-0 Hasta 5 Hacer
		medicamentos[j,2] <- ConvertirATexto(preciosMedicamentos[j]);
	FinPara
	
	medicamentos[0,0] <- "234";
	medicamentos[0,1] <- "Acetaminofem";
	medicamentos[1,0] <- "2345";
	medicamentos[1,1] <- "Dolex gripa";
	medicamentos[2,0] <- "23456";
	medicamentos[2,1] <- "Noxpirin";
	medicamentos[3,0] <- "234567";
	medicamentos[3,1] <- "Noraver gripa pastas";
	medicamentos[4,0] <- "2345678";
	medicamentos[4,1] <- "Noraver garganta";
	medicamentos[5,0] <- "23456789";
	medicamentos[5,1] <- "Vick Vaporub";
FinSubProceso

SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero;
	
	Para i<-0 Hasta filas-1 Hacer
		Para j<-0 Hasta columnas-1 Hacer
			Si j = 0 Entonces
				Escribir Sin Saltar "Codigo: ";
				Escribir Sin Saltar matriz[i,j];
			FinSi
			Si j = 1 Entonces
				Escribir Sin Saltar " Producto: ";
				Escribir Sin Saltar matriz[i,j];
			FinSi
		FinPara
		Escribir "";
	FinPara
FinSubProceso

SubProceso buscarProducto(matriz, filas, columnas, producto)
	Definir i, j Como Entero;
	Definir bandera Como Logico;
	bandera<-Verdadero;

	Para i<-0 Hasta filas-1 Hacer
		Para j<-0 Hasta columnas-1 Hacer
			Si producto = matriz[i,j] Entonces
				Escribir "Producto encontrado: ";
				Escribir "Codigo: ", matriz[i,0] ;
				Escribir "Producto: ", matriz[i,1] ;
				Escribir "Precio: ", matriz[i,2];
			FinSi
		FinPara
		Si producto <> matriz[i,0] Y producto <> matriz[i,1] Entonces
			bandera<-falso;
		FinSi
	FinPara

	Si bandera = Falso Entonces
		Escribir "Producto no encontrado ";
	FinSi
FinSubProceso

SubProceso precio<-buscarPrecio(productosAseo, filasAseo, columnasAseo, medicamentos, filasMedicamentos, columnasMedicamentos, producto)
	Definir precio Como Real;
	Definir i,j, k, m Como Entero;
	
	Para i<-0 Hasta filasAseo-1 Hacer
		Para j<-0 Hasta columnasAseo-1 Hacer
			Si producto = productosAseo[i,j] Entonces
				precio <- ConvertirANumero(productosAseo[i,2]) ;
			FinSi
		FinPara
	FinPara
	
	Para k<-0 Hasta filasMedicamentos-1 Hacer
		Para m<-0 Hasta columnasMedicamentos-1 Hacer
			Si producto = medicamentos[k,m] Entonces
				precio <- ConvertirANumero(medicamentos[k,2]) ;
			FinSi
		FinPara
	FinPara
FinSubProceso
