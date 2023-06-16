Proceso ventaPasajesAereos
	Definir opcionMenu, opcionMenu4, opcionMenu5, listaVuelos Como Texto
	Definir nombrePasajero, apellidoPasajero, dniPasajero, resumenPasajero como Texto
	definir opcionMenu1, plazasDsiponibles1, plazasDsiponibles2, plazasDsiponibles3, plazasDsiponibles4 como Entero
	Definir  telPasajero, numPasajero, numAsiento Como Entero
	definir costoPasaje, costo Como Real
	definir validacion, valido, validarEquipaje, dniValido Como Logico
	Dimension listaVuelos[4,3]
	dimension resumenPasajero[]
	cargaVuelos(listaVuelos)
	validacion = Falso
	plazasDsiponibles1 = 0
	plazasDsiponibles2 = 0
	plazasDsiponibles3 = 0
	plazasDsiponibles4 = 0
	
	
	Escribir "Bienvenido al sistema de venta de pasajes a�reos."
	
	Repetir
		Escribir "Seleccione una opcion para continuar o escriba SALIR."
		Escribir "1. Venta pasaje."
		Escribir "2. Buscar pasaje vendido."
		Escribir "3. Buscar pasajero."
		Escribir "4. Ordenar y mostrar lista pasajeros."
		Escribir "5. Listado/s."
		Leer opcionMenu
		opcionMenu = Mayusculas(opcionMenu)
		
		Segun opcionMenu Hacer
			"1":
				escribir"Las rutas a�reas disponibles a la venta son: "
				
				Repetir
					
					Escribir "1:", listaVuelos[0,0]
					Escribir "2:", listaVuelos[1,0]
					Escribir "3:", listaVuelos[2,0]
					Escribir "4:", listaVuelos[3,0]
					leer opcionMenu1
					
					Segun opcionMenu1 Hacer
						1:
							plazasDsiponibles1 = plazasDsiponibles1+1
							valido = validarPlaza(plazasDsiponibles1)
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles1)
								
							SiNo
								escribir "No hay plazas disponibles."
							Fin Si
						2:
							plazasDsiponibles2 = plazasDsiponibles2+1
							valido = validarPlaza(plazasDsiponibles2)
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								costo= costoPasaje2(plazasDisponibles2)
							 
								
							SiNo
								escribir "No hay plazas disponibles."
							Fin Si
							
						3:
							plazasDsiponibles3 = plazasDsiponibles3 + 1
							valido = validarPlaza2(plazasDsiponibles3)
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
							SiNo
								escribir "No hay plazas disponibles."
							Fin Si
							
						4:
							plazasDsiponibles4 = plazasDsiponibles4+1
							valido = validarPlaza2(plazasDsiponibles4)
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
							SiNo
								escribir "No hay plazas disponibles."
							Fin Si

						De Otro Modo:
							escribir"opcion inexistente."
					Fin Segun
				Hasta Que opcionMenu1=1 o opcionMenu1=2 o opcionMenu1=3 o opcionMenu1=4
				
				Escribir "Ingresar nombre del pasajero."
				leer nombrePasajero
				Escribir "Ingresar apellido del pasajero."
				leer apellidoPasajero
				Escribir "Ingresar telefono del pasajero."
				leer telPasajero
				
				Repetir
					Escribir "Ingresar DNI del pasajero."
					Leer dniPasajero
					dniValido = validarDNI(dniPasajero)
				Hasta Que dniValido == Verdadero
				
				Escribir "Validar si lleva equipaje en la bodega."
				Leer validarEquipaje
				Escribir "Ingresar el y n�mero pasajero frecuente."
				Leer numPasajero
				
				
				Escribir "Ruta: " ,opcionMenu1
				Escribir "Nombre y Apellido: " ,nombrePasajero, apellidoPasajero
				Escribir "DNI: " ,dniPasajero
				Escribir "Tel�fono: " ,telPasajero
				Escribir "Equipaje en bodega: " ,validarEquipaje
				Escribir "N�mero pasajero frecuente: " ,numPasajero
				Escribir "Asiento: " ,numAsiento
				Escribir "Costo pasaje: " ,costoPasaje
				
			"2":
				
			"3":
				
			"4":
				Repetir
					Escribir "a. Por n�mero de asiento Ascendente"
					Escribir "b. Por n�mero de asiento Descendente"
					Leer opcionMenu4
					opcionMenu4 = Mayusculas(opcionMenu4)
					Segun opcionMenu4 Hacer
						"A":
							
						"B":
							
						De Otro Modo:
							Escribir "Opcion invalida"
					Fin Segun
				Mientras Que opcionMenu4 <> "A" Y opcionMenu4 <> "B"
			"5":
				Repetir
					Escribir "a. Cantidad de pasajes vendido por ruta a�rea"
					Escribir "b. Porcentaje de ventas por ruta a�rea"
					Leer opcionMenu5
					opcionMenu5 = Mayusculas(opcionMenu5)
					Segun opcionMenu5 Hacer
						"A":
							
						"B":
							
						De Otro Modo:
							Escribir "Opcion invalida"
					Fin Segun
				Mientras Que opcionMenu5 <> "A" Y opcionMenu5 <> "B"
			"SALIR": 
				Escribir "Saliendo..."
			De Otro Modo:
				Escribir "Opcion invalida"
		Fin Segun
	Mientras Que opcionMenu <> "SALIR"
	
FinProceso

SubProceso cargaVuelos(listaVuelos)
	listaVuelos[0,0]= "Buenos Aires - Bariloche"
	listaVuelos[1,0]= "Buenos Aires - Salta"
	listaVuelos[2,0]= "Rosario - Buenos Aires"
	listaVuelos[3,0]= "Mar Del Plata - Mendoza"
FinSubProceso

Funcion  validacion <- validarPlaza(dato)
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
Funcion costos<- costoPasaje1(dato)
	definir costoFinal Como Real
	Si dato<=20 Entonces
		costoFinal=150000
	Fin Si
	Si dato>20 y dato<=60 Entonces
		costoFinal=costoFinal+(costoFinal*0.10)
	SiNo
		costoFinal=180.000
	Fin Si
	
FinFuncion

Funcion costos<- costoPasaje2(dato)
	definir costoFinal Como Real
	Si dato<=20 Entonces
		costoFinal=120000
	Fin Si
	Si dato>20 y dato<=60 Entonces
		costoFinal=costoFinal+(costoFinal*0.10)
	SiNo
		costoFinal=150000
	Fin Si
	


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
			Escribir "DNI invalido."
			dniValido = Falso
		FinSi
	SiNo
		Escribir "DNI invalido."
		dniValido = Falso
	FinSi
FinFuncion



