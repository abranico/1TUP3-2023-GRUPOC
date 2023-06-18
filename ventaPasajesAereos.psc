
Proceso ventaPasajesAereos
	Definir opcionMenu, opcionMenu4, opcionMenu5, listaVuelos Como Texto
	definir eleccionVuelo, plazasDsiponibles1, plazasDsiponibles2, plazasDsiponibles3, plazasDsiponibles4, i, j, plazasTotales como Entero
	
	Definir  numPasajero, numAsiento Como Entero
	definir costoPasaje, costo Como Real
	Definir validacion, valido, validarEquipaje, dniValido, telValido Como Logico
	
	Dimension listaVuelos[4,3]
	cargaVuelos(listaVuelos)
	
	Definir listaPasajeros como Texto
	Dimension listaPasajeros[120,8]

	
	validacion = Falso
	plazasTotales = 0
	plazasDsiponibles1 = 0
	plazasDsiponibles2 = 0
	plazasDsiponibles3 = 0
	plazasDsiponibles4 = 0
	
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
					Escribir "1. ", listaVuelos[0,0]
					Escribir "2. ", listaVuelos[1,0]
					Escribir "3. ", listaVuelos[2,0]
					Escribir "4. ", listaVuelos[3,0]
					Leer eleccionVuelo
					
					Segun eleccionVuelo Hacer
						1:
							plazasTotales = plazasTotales + 1
							plazasDsiponibles1 = plazasDsiponibles1+1
							valido = validarPlaza(plazasDsiponibles1, listaVuelos[0,1])
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles1, listaVuelos[0,2], eleccionVuelo)
								cargarPasajeros(listaVuelos[0,0], costo, plazasDsiponibles1, listaPasajeros, plazasTotales)
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						2:
							plazasTotales = plazasTotales + 1
							plazasDsiponibles2 = plazasDsiponibles2+1
							valido = validarPlaza(plazasDsiponibles2, listaVuelos[1,1])
						 Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles2, listaVuelos[1,2], eleccionVuelo)
								cargarPasajeros(listaVuelos[1,0], costo, plazasDsiponibles2, listaPasajeros, plazasTotales)
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						3:
							plazasTotales = plazasTotales + 1
							plazasDsiponibles3 = plazasDsiponibles3 + 1
							valido = validarPlaza(plazasDsiponibles3, listaVuelos[2,1])
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles3, listaVuelos[2,2], eleccionVuelo)
								cargarPasajeros(listaVuelos[2,0], costo, plazasDsiponibles3, listaPasajeros, plazasTotales)
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						4:
							plazasTotales = plazasTotales + 1
							plazasDsiponibles4 = plazasDsiponibles4+1
							valido = validarPlaza(plazasDsiponibles4, listaVuelos[3,1])
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles4, listaVuelos[3,2], eleccionVuelo)
								cargarPasajeros(listaVuelos[3,0], costo, plazasDsiponibles4, listaPasajeros, plazasTotales)
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						De Otro Modo:
							Escribir "Opción inexistente."
					Fin Segun
				Hasta Que eleccionVuelo = 1 O eleccionVuelo = 2 O eleccionVuelo = 3 O eleccionVuelo = 4
			 
				
			"2":
				// PARA PROBAR Y VER COMO QUEDA LA LISTA (DESPUES HAY QUE CAMBIARLO)
				Para i=0 Hasta plazasTotales-1 Con Paso 1 Hacer
					Para j=0 Hasta 7 Con Paso 1 Hacer
						Escribir Sin Saltar listaPasajeros[i, j], " | "
					Fin Para
					Escribir " "
				Fin Para
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

SubProceso cargarlistaPasajeros(vuelo, nombrePasajero, apellidoPasajero, dniPasajero, telPasajeros, validarEquipaje, numPasajero, asiento, costoFinal, lista, plazasTotales)
	Definir listaPasajeros como Texto
	Dimension listaPasajeros[120,8]
	
	Definir nombreYApellido como texto
	nombreYApellido = Concatenar(nombrePasajero," ")
	nombreYApellido = Concatenar(nombreYApellido, apellidoPasajero)
	
	

	
	lista[plazasTotales-1,0]= vuelo
	lista[plazasTotales-1,1]=nombreYApellido
	lista[plazasTotales-1,2]= dniPasajero
	lista[plazasTotales-1,3]= telPasajeros
	lista[plazasTotales-1,4]= validarEquipaje
	lista[plazasTotales-1,5]=numPasajero
	lista[plazasTotales-1,6]=asiento
	lista[plazasTotales-1,7]=costoFinal
FinSubProceso

SubProceso cargarPasajeros(vuelo, costo, plazaNro, lista, plazasTotales)
	
	Definir nombrePasajero, apellidoPasajero, dniPasajero, telPasajero, resumenPasajero  Como Texto
	definir nroPasajeroFrecuente Como texto
	definir costoFinal como real
	Definir costoPasajero, validarEquipaje, numPasajero, asiento como Texto
	definir telValido, dniValido Como Logico
	costoFinal=costo
	asiento = ConvertirATexto(plazaNro)
	
	Escribir "Ingresar nombre del pasajero."
	Leer nombrePasajero
	
	Escribir "Ingresar apellido del pasajero."
	Leer apellidoPasajero
	
	Repetir
		Escribir "Ingresar teléfono del pasajero. (indicar codigo de area)"
		Leer telPasajero
		telValido = validarTel(telPasajero)
	Hasta Que telValido == Verdadero
	
	Repetir
		Escribir "Ingresar DNI del pasajero."
		Leer dniPasajero
		dniValido = validarDNI(dniPasajero)
	Hasta Que dniValido == Verdadero
	
	
	Repetir
		Escribir "Validar si lleva equipaje en la bodega. [V/F]"
		Leer validarEquipaje
		validarEquipaje = Mayusculas(validarEquipaje)
		Si validarEquipaje == "V" Entonces
			costoFinal=costoFinal*1.5
		Fin Si
	Mientras Que validarEquipaje <> "F" Y validarEquipaje <> "V"
	
	Repetir
		Escribir "Ingresar el y número pasajero frecuente. (4 digitos)"
		Leer numPasajero
	Mientras Que Longitud(numPasajero)<>4
	
	Escribir "El numero de asiento es: ", asiento
	Escribir "El costo final es de: ", costoFinal
	costoPasajero=ConvertirATexto(costoFinal)
	cargarListaPasajeros(vuelo, nombrePasajero, apellidoPasajero, dniPasajero, telPasajero, validarEquipaje, numPasajero, asiento, costoPasajero, lista, plazasTotales)
	
FinSubProceso


Funcion validacion <- validarPlaza(dato, vuelo)
	Definir validacion Como Logico
	
	
	Si  dato < ConvertirANumero(vuelo)Entonces
		validacion = Verdadero
	SiNo
		validacion = Falso
	Fin Si
FinFuncion

Funcion costoFinal <- costoPasaje1(dato, precio, menu)
	definir costoFinal Como Real
	costoFinal = ConvertirANumero(precio)
	Segun menu Hacer
		1:
			Si dato>20 y dato<=60 Entonces
				costoFinal=costoFinal+(costoFinal*0.10)
			SiNo
				Si dato > 60 Entonces
					costoFinal=180000
				Fin Si
			Fin Si
		2:
			Si dato>20 y dato<=60 Entonces
				costoFinal=costoFinal+(costoFinal*0.10)
			SiNo
				Si dato > 60 Entonces
					costoFinal=150000
				Fin Si
			Fin Si
		3:
			Si dato>10 y dato<=40 Entonces
				costoFinal=costoFinal+(costoFinal*0.15)
			SiNo
				Si dato > 40 Entonces
					costoFinal=95000
				Fin Si
			Fin Si
		4:
			Si dato>10 y dato<=40 Entonces
				costoFinal=costoFinal+(costoFinal*0.15)
			SiNo
				Si dato > 40 Entonces
					costoFinal=125000
				Fin Si
			Fin Si
	Fin Segun
	
FinFuncion

Funcion telValido <- validarTel(tel)
	Definir telValido Como Logico
	Definir contador, i Como Entero
	Definir prefijo como Texto
	prefijo = Subcadena(tel, 0, 0)
	contador = 0
	
	Si Longitud(tel) >= 10 Y prefijo == "+" Entonces
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



