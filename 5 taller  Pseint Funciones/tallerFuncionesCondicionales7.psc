Proceso tallerFuncionesCondicionales7
	Definir imc Como Real;
	
	saludo();
	
	imc<-datosPeso();
	
	Escribir "Su IMC es: ", imc;
	informacionPeso();
	resultadosImc(imc);
FinProceso

SubProceso saludo()
	Escribir "Bienvenido/a a La Secretar�a de Salud Municipal";
	Escribir "Aplicaci�n para calcular su IMC";
	Escribir "Podr� identificar si su peso es adecuado o si debe prestar atenci�n por su salud";	
FinSubProceso

SubProceso imc<-datosPeso()
	Definir peso, estatura, imc Como Real;
	
	Escribir "Digite su peso en kg";
	Leer peso;
	Escribir "Digite su estatura en metros";
	Leer estatura;
	
	imc<-peso/(estatura)^2;
FinSubProceso

SubProceso informacionPeso()
	Escribir "A continuaci�n tenga en cuenta esta informaci�n sobre su peso";
	Escribir  "Por debajo de 18.5 = Bajo peso";
	Escribir "Entre 18.5 - 24.9 = Normal";
	Escribir "Entre 25.0 - 29.9 = Sobrepeso";
	Escribir "Entre 30.0 o m�s = Obesidad";
FinSubProceso

SubProceso resultadosImc(imc)
	Si imc < 18 Entonces
		Escribir "Usted se encuentra Bajo de peso, por favor preste atenci�n a su salud y aumente su alimentaci�n en proteina";
	FinSi
	Si imc >= 18.5 Y imc < 25 Entonces
		Escribir "Su peso es normal, se encuentra en el nivel de peso adecuado.";
	FinSi
	Si imc >= 25 Y imc < 30 Entonces
		Escribir "Tenga cuidado, usted se encuentra en la linea de sobrepeso, se recomienda realizar ejercicio";
	SiNo
		Escribir "Se encuentra en el nivel de obesidad, por favor acuda con un medico para mejorar su dieta y realice ejercicio.";
	FinSi
FinSubProceso
	