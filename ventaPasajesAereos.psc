Proceso ventaPasajesAereos
	Definir opcionMenu, opcionMenu4, opcionMenu5, listaVuelos Como Texto
	Definir nombrePasajero, apellidoPasajero, dniPasajero, telPasajero Como Texto
	definir opcionMenu1, plazasDsiponibles1, plazasDsiponibles2, plazasDsiponibles3, plazasDsiponibles4 Como Entero
	Definir numPasajero, numAsiento Como Entero
	Definir costoPasaje Como Real
	Definir validacion, valido, validarEquipaje, dniValido, telValido Como Logico
	Dimension listaVuelos[4,3]
	cargaVuelos(listaVuelos)
	validacion = Falso
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
					Escribir "1: ", listaVuelos[0,0]
					Escribir "2: ", listaVuelos[1,0]
					Escribir "3: ", listaVuelos[2,0]
					Escribir "4: ", listaVuelos[3,0]
					Leer opcionMenu1
					
					Segun opcionMenu1 Hacer
						1:
							plazasDsiponibles1 = plazasDsiponibles1+1
							valido = validarPlaza(plazasDsiponibles1)
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
								
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						2:
							plazasDsiponibles2 = plazasDsiponibles2+1
							valido = validarPlaza(plazasDsiponibles2)
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
							
						3:
							plazasDsiponibles3 = plazasDsiponibles3 + 1
							valido = validarPlaza2(plazasDsiponibles3)
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
							
						4:
							plazasDsiponibles4 = plazasDsiponibles4+1
							valido = validarPlaza2(plazasDsiponibles4)
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si

						De Otro Modo:
							Escribir "Opción inexistente."
					Fin Segun
				Hasta Que opcionMenu1 = 1 O opcionMenu1 = 2 O opcionMenu1 = 3 O opcionMenu1 = 4
				
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
				
				Escribir "Validar si lleva equipaje en la bodega."
				Leer validarEquipaje
				Escribir "Ingresar el y número pasajero frecuente."
				Leer numPasajero
				
				
				Escribir "Ruta: " ,opcionMenu1
				Escribir "Nombre y Apellido: " ,nombrePasajero, apellidoPasajero
				Escribir "DNI: " ,dniPasajero
				Escribir "Teléfono: " ,telPasajero
				Escribir "Equipaje en bodega: " ,validarEquipaje
				Escribir "Número pasajero frecuente: " ,numPasajero
				Escribir "Asiento: " ,numAsiento
				Escribir "Costo pasaje: " ,costoPasaje
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
	listaVuelos[0,0] = "Buenos Aires - Bariloche"
	listaVuelos[1,0] = "Buenos Aires - Salta"
	listaVuelos[2,0] = "Rosario - Buenos Aires"
	listaVuelos[3,0] = "Mar Del Plata - Mendoza"
FinSubProceso


Funcion validacion <- validarPlaza(dato)
	Definir validacion Como Logico
	
	Si dato > 0 Y dato < 121 Entonces
		validacion = Verdadero
	SiNo
		validacion = Falso
	Fin Si
FinFuncion


Funcion validacion <- validarPlaza2(dato)
	Definir validacion Como Logico
	
	Si dato > 0 Y dato < 81 Entonces
		validacion = Verdadero
	SiNo
		validacion = Falso
	Fin Si
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



