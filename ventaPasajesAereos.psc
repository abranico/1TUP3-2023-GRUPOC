Proceso ventaPasajesAereos
	Definir opcionMenu, opcionMenu4, opcionMenu5, listaVuelos Como Texto
	definir opcionMenu1, plazasDsiponibles1, plazasDsiponibles2, plazasDsiponibles3, plazasDsiponibles4 como Entero
	Definir  numPasajero, numAsiento, asiento Como Entero
	definir costoPasaje, costo Como Real
	Definir validacion, valido, validarEquipaje, dniValido, telValido Como Logico
	Dimension listaVuelos[4,3]
	dimension resumenPasajero[8,2]
	cargaVuelos(listaVuelos)
	validacion = Falso
	plazasDsiponibles1 = 0
	plazasDsiponibles2 = 0
	plazasDsiponibles3 = 0
	plazasDsiponibles4 = 0
	asiento=0
	
	Escribir "Bienvenido al sistema de venta de pasajes aéreos."
	
	Repetir
		Escribir "Seleccione una opción para continuar o escriba SALIR."
		Escribir "1. Venta pasaje."
		Escribir "2. Buscar pasaje vendido."
		Escribir "3. Buscar pasajero."
		Escribir "4. Ordenar y mostrar lista pasajeros."
		Escribir "5. Listado/s."
		Leer opcionMenu
		opcionMenu = Mayusculas(opcionMenu)
		
		Segun opcionMenu Hacer
			"1":
				Escribir "Las rutas aéreas disponibles a la venta son: "
				
				Repetir
					Escribir "1: ", listaVuelos[0,0]
					Escribir "2: ", listaVuelos[1,0]
					Escribir "3: ", listaVuelos[2,0]
					Escribir "4: ", listaVuelos[3,0]
					Leer opcionMenu1
					
					Segun opcionMenu1 Hacer
						1:
							plazasDsiponibles1 = plazasDsiponibles1+1
							asiento=asiento+1
							valido = validarPlaza(plazasDsiponibles1, listaVuelos[0,1])
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles1, listaVuelos[0,2], opcionMenu1)
								cargarPasajeros(listaVuelos[0,0], costo, asiento)
								
								
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						2:
							plazasDsiponibles2 = plazasDsiponibles2+1
							asiento=asiento+1
							valido = validarPlaza(plazasDsiponibles2, listaVuelos[1,1])
						 Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles2, listaVuelos[1,2], opcionMenu1)
							 
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
							
						3:
							plazasDsiponibles3 = plazasDsiponibles3 + 1
							asiento=asiento+1
							valido = validarPlaza(plazasDsiponibles3, listaVuelos[2,1])
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles3, listaVuelos[2,2], opcionMenu1)
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
							
						4:
							plazasDsiponibles4 = plazasDsiponibles4+1
							asiento=asiento+1
							valido = validarPlaza(plazasDsiponibles4, listaVuelos[3,1])
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles4, listaVuelos[3,2], opcionMenu1)
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						De Otro Modo:
							Escribir "Opción inexistente."
					Fin Segun
				Hasta Que opcionMenu1 = 1 O opcionMenu1 = 2 O opcionMenu1 = 3 O opcionMenu1 = 4
			 
				
			"2":
				
			"3":
				
			"4":
				Repetir
					Escribir "a. Por número de asiento Ascendente."
					Escribir "b. Por número de asiento Descendente."
					Leer opcionMenu4
					opcionMenu4 = Mayusculas(opcionMenu4)
					Segun opcionMenu4 Hacer
						"A":
							
						"B":
							
						De Otro Modo:
							Escribir "Opción inválida."
					Fin Segun
				Mientras Que opcionMenu4 <> "A" Y opcionMenu4 <> "B"
			"5":
				Repetir
					Escribir "a. Cantidad de pasajes vendido por ruta aérea."
					Escribir "b. Porcentaje de ventas por ruta aérea."
					Leer opcionMenu5
					opcionMenu5 = Mayusculas(opcionMenu5)
					Segun opcionMenu5 Hacer
						"A":
							
						"B":
							
						De Otro Modo:
							Escribir "Opción inválida."
					Fin Segun
				Mientras Que opcionMenu5 <> "A" Y opcionMenu5 <> "B"
			"SALIR": 
				Escribir "Saliendo..."
			De Otro Modo:
				Escribir "Opción inválida."
		Fin Segun
	Mientras Que opcionMenu <> "SALIR"
FinProceso


SubProceso cargaVuelos(listaVuelos)
	listaVuelos[0,0] = "Buenos Aires - Bariloche "
	listaVuelos[1,0] = "Buenos Aires - Salta"
	listaVuelos[2,0] = "Rosario - Buenos Aires"
	listaVuelos[3,0] = "Mar Del Plata - Mendoza"
	listaVuelos[0,1]= "120"
	listaVuelos[1,1]="120"
	listaVuelos[2,1]="80"
	listaVuelos[3,1]="80"
	listaVuelos[0,2]="150000"
	listaVuelos[1,2]="120000"
	listaVuelos[2,2]="70000"
	listaVuelos[3,2]="95000"
FinSubProceso

SubProceso listaPasajeros(resumenPasajero, vuelo, nombrePasajero, apellidoPasajero, dniPasajero, telPasajeros, validarEquipaje, numPasajero, asiento,costoFinal)
	definir nombreYapellido como texto
	 nombreYapellido=nombrePasajero, " " , apellidoPasajero
	resumenPasajero[0,0]="Ruta: "
	resumenPasajero[0,1]= vuelo
	resumenPasajero[1,0]="Nombre y Apellido: "
	resumenPasajero[1,1]=nombreYapellido
	resumenPasajero[2,0]="Dni: "
	resumenPasajero[2,1]= dniPasajero
	resumenPasajero[3,0]="Teléfono: "
	resumenPasajero[3,1]= telPasajeros
	resumenPasajero[4,0]="Equipaje en bodega: "
	resumenPasajero[4,1]= validarEquipaje
	resumenPasajero[5,0]="Numero pasajero frecuente: "
	resumenPasajero[5,1]=numPasajero
	resumenPasajero[6,0]="Asiento: "
	resumenPasajero[6,1]=asiento
	resumenPasajero[7,0]="Costo final Pasaje: "
	resumenPasajero[7,1]=costoFinal
	
	
	
	
FinSubProceso

SubProceso cargarPasajeros(vuelo, costo, asiento)
	
	Definir nombrePasajero, apellidoPasajero, dniPasajero, telPasajero, resumenPasajero  Como Texto
	definir nroPasajeroFrecuente, asiento Como texto
	definir costoFinal como real
	definir validarEquipaje Como Logico
	definir asiento Como Entero
	costoFinal=costo
	
	Escribir "Ingresar nombre del pasajero."
	Leer nombrePasajero
	Escribir "Ingresar apellido del pasajero."
	Leer apellidoPasajero	
	Repetir
		Escribir "Ingresar teléfono del pasajero."
		Leer telPasajero
		telValido = validarTel(telPasajero)
	Hasta Que telValido == Verdadero
	
	Repetir
		Escribir "Ingresar DNI del pasajero."
		Leer dniPasajero
		dniValido = validarDNI(dniPasajero)
	Hasta Que dniValido == Verdadero
	
	Escribir "Validar si lleva equipaje en la bodega. (verdadero (V) o falso (F))"
	Leer validarEquipaje
	Si validarEquipaje==Verdadero Entonces
		costoFinal=costoFinal*1.5
	Fin Si
	Repetir
		Escribir "Ingresar el y número pasajero frecuente."
		Leer numPasajero
	Mientras Que Longitud(numPasajero)=4
	Escribir "El numero de asiento es: ", asiento
	Escribir "El costo final es de: ", costoFinal
	costoFinal=ConvertirATexto(costoFinal)
	listaPasajeros(vuelo, opcionMenu1, nombrePasajero, apellidoPasajero, dniPasajero, telPasajeros, validarEquipaje, numPasajero, asiento,costoFinal)
	
FinSubProceso


Funcion validacion <- validarPlaza(dato, vuelo)
	Definir validacion Como Logico
	
	
	Si  dato < ConvertirANumero(vuelo)Entonces
		validacion = Verdadero
	SiNo
		validacion = Falso
	Fin Si
FinFuncion

Funcion costos<- costoPasaje1(dato, precio, menu)
	definir costoFinal Como Real
	Segun menu Hacer
		1:
			Si dato<=20 Entonces
				costoFinal=ConvertirANumero(precio)
			Fin Si
			Si dato>20 y dato<=60 Entonces
				costoFinal=costoFinal+(costoFinal*0.10)
			SiNo
				costoFinal=180000
			Fin Si
		2:
			Si dato<=20 Entonces
				costoFinal=ConvertirANumero(precio)
			Fin Si
			Si dato>20 y dato<=60 Entonces
				costoFinal=costoFinal+(costoFinal*0.10)
			SiNo
				costoFinal=150000
			Fin Si
		3:
			Si dato<=10 Entonces
				costoFinal=ConvertirANumero(precio)
			Fin Si
			Si dato>10 y dato<=40 Entonces
				costoFinal=costoFinal+(costoFinal*0.15)
			SiNo
				costoFinal=95000
			Fin Si
		4:
			Si dato<=10 Entonces
				costoFinal=ConvertirANumero(precio)
			Fin Si
			Si dato>10 y dato<=40 Entonces
				costoFinal=costoFinal+(costoFinal*0.15)
			SiNo
				costoFinal=125000
			Fin Si
	Fin Segun
	
FinFuncion

Funcion telValido <- validarTel(tel)
	Definir telValido Como Logico
	Definir contador, i Como Entero
	contador = 0
	
	Si Longitud(tel) = 13 Entonces
		Para i <- 1 Hasta Longitud(tel) Con Paso 1 Hacer
			Si (Subcadena(tel, i, i)) >= "0" Y (Subcadena(tel, i, i)) <= "9" Entonces
				contador = contador + 1
			FinSi
		Fin Para
		si contador > 10 Entonces
			Escribir "Teléfono valido."
			telValido = Verdadero
		SiNo
			Escribir "Teléfono inválido."
			telValido = Falso
		FinSi
	SiNo
		Escribir "Teléfono inválido."
		telValido = Falso
	FinSi
FinFuncion


Funcion dniValido <- validarDNI(dni)
	Definir dniValido Como Logico
	Definir contador, i Como Entero
	
	Si Longitud(dni) < 9 Y Longitud(dni) > 6 Entonces
		Para i <- 1 Hasta Longitud(dni) Con Paso 1 Hacer
			Si (Subcadena(dni, i, i)) >= "0" Y (Subcadena(dni, i, i)) <= "9" Entonces
				contador = contador + 1
			FinSi
		Fin Para
		Si contador < 9 Y contador > 6 Entonces
			Escribir "DNI valido."
			dniValido = Verdadero
		SiNo
			Escribir "DNI inválido."
			dniValido = Falso
		FinSi
	SiNo
		Escribir "DNI inválido."
		dniValido = Falso
	FinSi
FinFuncion



