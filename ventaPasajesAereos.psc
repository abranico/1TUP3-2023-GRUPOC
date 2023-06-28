Proceso ventaPasajesAereos
	Definir opcionMenu, opcionMenu4, opcionMenu5, nombreBusqueda, apellidoBusqueda, nombreYApellidoBusqueda Como Texto
	Definir eleccionVuelo, plazasDsiponibles1, plazasDsiponibles2, plazasDsiponibles3, plazasDsiponibles4, i, j, plazasTotales Como Entero
	Definir  numPasajero, numAsiento Como Entero
	definir costoPasaje, costo, porcentajeVentasRuta1, porcentajeVentasRuta2, porcentajeVentasRuta3, porcentajeVentasRuta4 Como Real
	
	Definir validacion, valido, validarEquipaje, dniValido, telValido Como Logico
	
	// ----- Rutas aéreas disponibles a la venta -----
	Definir listaVuelos como Texto
	Dimension listaVuelos[4,3] 
	cargaVuelos(listaVuelos)
	
	// ----- Lista de pasajeros con todos los datos -----
	Definir listaPasajeros como Texto
	Dimension listaPasajeros[400,8]

	// ----- Inicializacion de variables -----
	validacion = Falso
	plazasTotales = 0
	plazasDsiponibles1 = 0
	plazasDsiponibles2 = 0
	plazasDsiponibles3 = 0
	plazasDsiponibles4 = 0
	
	
	// ----- MENU -----
	
	Escribir "Bienvenido al sistema de venta de pasajes aéreos."
	Repetir
		Escribir ""
		Escribir "Seleccione una opción para continuar o escriba SALIR."
		Escribir "1. Venta pasaje."
		Escribir "2. Buscar pasaje vendido."
		Escribir "3. Buscar pasajero."
		Escribir "4. Ordenar y mostrar lista pasajeros."
		Escribir "5. Listado/s."
		Leer opcionMenu
		Escribir ""	
		opcionMenu = Mayusculas(opcionMenu)
		
		Segun opcionMenu Hacer
			"1":
				// ----- VENTA DE PASAJE -----
				Escribir "Ingrese la ruta aerea: "
				Repetir
					Escribir "1. ", listaVuelos[0,0] // Buenos Aires - Bariloche
					Escribir "2. ", listaVuelos[1,0] // Buenos Aires - Salta
					Escribir "3. ", listaVuelos[2,0] // Rosario - Buenos Aires
					Escribir "4. ", listaVuelos[3,0] // Mar Del Plata - Mendoza
					Leer eleccionVuelo
					Segun eleccionVuelo Hacer
						1:
							// Venta de pasaje a Buenos Aires - Bariloche
							plazasTotales = plazasTotales + 1
							plazasDsiponibles1 = plazasDsiponibles1+1
							valido = validarPlaza(plazasDsiponibles1, listaVuelos[0,1]) // Sumamos la plaza y la validamos
							
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								costo = costoPasaje1(plazasDsiponibles1, listaVuelos[0,2], eleccionVuelo) // Generamos el costo del pasaje
								cargarPasajeros(listaVuelos[0,0], costo, plazasDsiponibles1, listaPasajeros, plazasTotales) // Cargamos los datos del pasajero y mostramos RESUMEN
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						2:
							// Venta de pasaje a Buenos Aires - Salta
							plazasTotales = plazasTotales + 1
							plazasDsiponibles2 = plazasDsiponibles2+1
							valido = validarPlaza(plazasDsiponibles2, listaVuelos[1,1]) // Sumamos la plaza y la validamos
							
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								costo = costoPasaje1(plazasDsiponibles2, listaVuelos[1,2], eleccionVuelo) // Generamos el costo del pasaje
								cargarPasajeros(listaVuelos[1,0], costo, plazasDsiponibles2, listaPasajeros, plazasTotales) // Cargamos los datos del pasajero y mostramos RESUMEN
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						3:
							// Venta de pasaje a Rosario - Buenos Aires
							plazasTotales = plazasTotales + 1
							plazasDsiponibles3 = plazasDsiponibles3 + 1
							valido = validarPlaza(plazasDsiponibles3, listaVuelos[2,1]) // Sumamos la plaza y la validamos
							
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles3, listaVuelos[2,2], eleccionVuelo) // Generamos el costo del pasaje
								cargarPasajeros(listaVuelos[2,0], costo, plazasDsiponibles3, listaPasajeros, plazasTotales) // Cargamos los datos del pasajero y mostramos RESUMEN
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
						4:
							// Venta de pasaje a Mar Del Plata - Mendoza
							plazasTotales = plazasTotales + 1
							plazasDsiponibles4 = plazasDsiponibles4+1
							valido = validarPlaza(plazasDsiponibles4, listaVuelos[3,1]) // Sumamos la plaza y la validamos
							
							
							Si valido = Verdadero Entonces
								Escribir "Plaza disponible."
								costo=costoPasaje1(plazasDsiponibles4, listaVuelos[3,2], eleccionVuelo) // Generamos el costo del pasaje
								cargarPasajeros(listaVuelos[3,0], costo, plazasDsiponibles4, listaPasajeros, plazasTotales) // Cargamos los datos del pasajero y mostramos RESUMEN
							SiNo
								Escribir "No hay plazas disponibles."
							Fin Si
							
						De Otro Modo:
							Escribir "Opción inexistente."
					Fin Segun
				Hasta Que eleccionVuelo = 1 O eleccionVuelo = 2 O eleccionVuelo = 3 O eleccionVuelo = 4
				// ----- FIN VENTA DE PASAJE -----
			"2":
				// ----- BUSCAR PASAJE VENDIDO POR ASIENTO -----
				Repetir
					Escribir "Ingrese el vuelo en el que desea buscar:"
					Escribir "1. ", listaVuelos[0,0] // Buenos Aires - Bariloche
					Escribir "2. ", listaVuelos[1,0] // Buenos Aires - Salta
					Escribir "3. ", listaVuelos[2,0] // Rosario - Buenos Aires
					Escribir "4. ", listaVuelos[3,0] // Mar Del Plata - Mendoza
					Leer eleccionVuelo
					Segun eleccionVuelo Hacer
						1:
							// Buscar en la ruta Buenos Aires - Bariloche
							buscarPasajeroAsiento(listaPasajeros, eleccionVuelo, plazasTotales, plazasDsiponibles1)
						2:
							// Buscar en la ruta Buenos Aires - Salta
							buscarPasajeroAsiento(listaPasajeros, eleccionVuelo, plazasTotales, plazasDsiponibles2)
						3:
							// Buscar en la ruta Rosario - Buenos Aires
							buscarPasajeroAsiento(listaPasajeros, eleccionVuelo, plazasTotales, plazasDsiponibles3)
						4:
							// Buscar en la ruta Mar Del Plata - Mendoza
							buscarPasajeroAsiento(listaPasajeros, eleccionVuelo, plazasTotales, plazasDsiponibles4)
							
						De Otro Modo:
							Escribir "Opción inexistente."
					Fin Segun
				Hasta Que eleccionVuelo = 1 O eleccionVuelo = 2 O eleccionVuelo = 3 O eleccionVuelo = 4
				// ----- FIN BUSCAR PASAJE VENDIDO POR ASIENTO -----
			"3":
				// ----- BUSCAR PASAJE VENDIDO POR NOMBRE Y APELLIDO -----
				Escribir "Ingresar el nombre del pasajero que desea buscar: "
				Leer nombreBusqueda
				Escribir "Ingrese el apellido del pasajero: "
				Leer apellidoBusqueda
				nombreYApellidoBusqueda = Concatenar(nombreBusqueda," ")
				nombreYApellidoBusqueda = Concatenar(nombreYapellidoBusqueda, apellidoBusqueda)
				buscarPasajeroNombre(listaPasajeros, plazasTotales, nombreYApellidoBusqueda)
				// ----- FIN BUSCAR PASAJE VENDIDO POR NOMBRE Y APELLIDO -----
			"4":
				// ----- ORDENAR PASAJE POR ASIENTO -----
				Repetir
					Escribir "a. Por número de asiento Ascendente."
					Escribir "b. Por número de asiento Descendente."
					Leer opcionMenu4
					opcionMenu4 = Mayusculas(opcionMenu4)
					Si opcionMenu4 <> "A" Y opcionMenu4 <> "B" Entonces
						Escribir "Opcion invalida"
					Fin Si
				Mientras Que opcionMenu4 <> "A" Y opcionMenu4 <> "B"
				
				Repetir
					Escribir "Ingrese el vuelo que desea ordenar:"
						Escribir "1. ", listaVuelos[0,0] // Buenos Aires - Bariloche
						Escribir "2. ", listaVuelos[1,0] // Buenos Aires - Salta
						Escribir "3. ", listaVuelos[2,0] // Rosario - Buenos Aires
						Escribir "4. ", listaVuelos[3,0] // Mar Del Plata - Mendoza
						
						Leer eleccionVuelo
						Segun eleccionVuelo Hacer
							1:
								// Ordenar Buenos Aires - Bariloche
								ordenarPorAsiento(listaPasajeros, eleccionVuelo, plazasTotales, plazasDsiponibles1, opcionMenu4)
							2:
								// Ordenar Buenos Aires - Salta
								ordenarPorAsiento(listaPasajeros, eleccionVuelo, plazasTotales, plazasDsiponibles2, opcionMenu4)
							3:
								// Brdenar Rosario - Buenos Aires
								ordenarPorAsiento(listaPasajeros, eleccionVuelo, plazasTotales, plazasDsiponibles3, opcionMenu4)
							4:
								// Ordenar Mar Del Plata - Mendoza
								ordenarPorAsiento(listaPasajeros, eleccionVuelo, plazasTotales, plazasDsiponibles4, opcionMenu4)
								
							De Otro Modo:
								Escribir "Opción inexistente."
						Fin Segun
					Hasta Que eleccionVuelo = 1 O eleccionVuelo = 2 O eleccionVuelo = 3 O eleccionVuelo = 4
				
				// ----- FIN ORDENAR PASAJE POR ASIENTO -----
			"5":
				Repetir
					Escribir "a. Cantidad de pasajes vendido por ruta aérea."
					Escribir "b. Porcentaje de ventas por ruta aérea."
					Leer opcionMenu5
					opcionMenu5 = Mayusculas(opcionMenu5)
					Segun opcionMenu5 Hacer
						"A": 
							Escribir "Cantidad de pasajes vendido en ruta 1:  " ,  plazasDsiponibles1
							Escribir "Cantidad de pasajes vendido en ruta 2:  " ,  plazasDsiponibles2
							Escribir "Cantidad de pasajes vendido en ruta 3:  " ,  plazasDsiponibles3
							Escribir "Cantidad de pasajes vendido en ruta 4:  " ,  plazasDsiponibles4
						"B":
							porcentajeVentasRuta1 = (plazasDsiponibles1/120) * 100;
							Escribir "El porcentaje de ventas de la ruta 1 es: " , porcentajeVentasRuta1 "%"
							porcentajeVentasRuta2 = (plazasDsiponibles2/120) * 100;
							Escribir "El porcentaje de ventas de la ruta 2 es: " , porcentajeVentasRuta2 "%"
							porcentajeVentasRuta3 = (plazasDsiponibles3/80) * 100;
							Escribir "El porcentaje de ventas de la ruta 3 es: " , porcentajeVentasRuta3 "%"
							porcentajeVentasRuta4 = (plazasDsiponibles4/80) * 100;
							Escribir "El porcentaje de ventas de la ruta 4 es: " , porcentajeVentasRuta4 "%"
							
							
							
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
	// ----- FIN MENU -----
FinProceso

// ----- FUNCIONES Y SUBPROCESOS: -----

SubProceso cargaVuelos(listaVuelos) // RUTA - PLAZAS DISPONIBLES - PRECIO
	listaVuelos[0,0] = "Buenos Aires - Bariloche"
	listaVuelos[0,1] = "120"
	listaVuelos[0,2] = "150000"
	
	listaVuelos[1,0] = "Buenos Aires - Salta"
	listaVuelos[1,1] = "120"
	listaVuelos[1,2] = "120000"
	
	listaVuelos[2,0] = "Rosario - Buenos Aires"
	listaVuelos[2,1] = "80"
	listaVuelos[2,2] = "70000"
	
	listaVuelos[3,0] = "Mar Del Plata - Mendoza"
	listaVuelos[3,1] = "80"
	listaVuelos[3,2] = "95000"
FinSubProceso

SubProceso cargarPasajeros(vuelo, costo, plazaNro, lista, plazasTotales)
	Definir nombrePasajero, apellidoPasajero, nombreYApellido, dniPasajero, telPasajero, resumenPasajero  Como Texto
	Definir nroPasajeroFrecuente Como Texto
	Definir costoFinal Como Real
	Definir costoPasajero, validarEquipaje, numPasajero, asiento como Texto
	Definir telValido, dniValido, cadenaValido Como Logico
	
	costoFinal=costo
	
	// ----- Carga de NOMBRE y APELLIDO -----
	Repetir
		Escribir "Ingresar nombre del pasajero."
		Leer nombrePasajero
		cadenaValido <- validarCadena(nombrePasajero)
		Si cadenaValido == Falso Entonces
			Escribir "Nombre invalido"
		Fin Si
	Mientras Que cadenaValido == Falso
	
	Repetir
		Escribir "Ingresar apellido del pasajero."
		Leer apellidoPasajero
		cadenaValido <- validarCadena(apellidoPasajero)
		Si cadenaValido == Falso Entonces
			Escribir "Apellido invalido"
		Fin Si
	Mientras Que cadenaValido == Falso
	
	nombreYApellido = Concatenar(nombrePasajero," ")
	nombreYApellido = Concatenar(nombreYApellido, apellidoPasajero)
	
	// Carga del TELEFONO
	Repetir
		Escribir "Ingresar teléfono del pasajero. (indicar codigo de area (+) )"
		Leer telPasajero
		telValido = validarTel(telPasajero) // Validacion del telefono
	Hasta Que telValido == Verdadero
	
	// ----- Carga del DNI -----
	Repetir
		Escribir "Ingresar DNI del pasajero."
		Leer dniPasajero
		dniValido = validarDNI(dniPasajero)
	Hasta Que dniValido == Verdadero
	
	// ----- Carga de validacion del equipaje en la bodega -----
	Repetir
		Escribir "Validar si lleva equipaje en la bodega. [V/F]"
		Leer validarEquipaje
		validarEquipaje = Mayusculas(validarEquipaje)
	Mientras Que validarEquipaje <> "F" Y validarEquipaje <> "V"
	Si validarEquipaje == "V" Entonces
		costoFinal = costoFinal + (costoFinal*0.05) // Costo adicional por equipaje en la bodega
		validarEquipaje = "Verdadero"
	SiNo
		validarEquipaje = "Falso"
	Fin Si
	
	// ----- Carga del numero de pasajero frecuente -----
	Repetir
		Escribir "Ingresar el número pasajero frecuente. (4 digitos)"
		Leer numPasajero
	Mientras Que Longitud(numPasajero)<>4
	
	// ----- Carga del ASIENTO -----
	asiento = ConvertirATexto(plazaNro) // Se utiliza la plaza disponible para asignar el asiento
	
	costoPasajero=ConvertirATexto(costoFinal)
	
	// Cargamos los datos al array	
	lista[plazasTotales-1,0] = vuelo
	lista[plazasTotales-1,1] = nombreYApellido
	lista[plazasTotales-1,2] = dniPasajero
	lista[plazasTotales-1,3] = telPasajero
	lista[plazasTotales-1,4] = validarEquipaje
	lista[plazasTotales-1,5] = numPasajero
	lista[plazasTotales-1,6] = asiento
	lista[plazasTotales-1,7] = costoPasajero
	
	// ----- RESUMEN -----
	Escribir ""
	Escribir "========== RESUMEN =========="
	Escribir "Ruta: ", vuelo
	Escribir "Nombre y Apellido: ", nombreYApellido
	Escribir "DNI: ", dniPasajero
	Escribir "Teléfono: ", telPasajero
	Escribir "Equipaje en bodega: ", validarEquipaje
	Escribir "Número pasajero frecuente: ", numPasajero
	Escribir "Asiento: ", asiento
	Escribir "Costo pasaje: $", costoFinal
	Escribir "============================="
FinSubProceso

// ----- VALIDAR PLAZA -----
Funcion validacion <- validarPlaza(dato, vuelo) 
	Definir validacion Como Logico
	Si  dato < ConvertirANumero(vuelo)Entonces
		validacion = Verdadero
	SiNo
		validacion = Falso
	Fin Si
FinFuncion

// ----- GENERAR COSTO DE LA VENTA -----
Funcion costoFinal <- costoPasaje1(dato, precio, menu)
	Definir costoFinal Como Real
	costoFinal = ConvertirANumero(precio)
	Segun menu Hacer
		1:
			
			Si dato > 20 Y dato <= 60 Entonces
				costoFinal = costoFinal + (costoFinal * 0.10)
			SiNo
				Si dato > 60 Entonces
					costoFinal = 180000
				Fin Si
			Fin Si
		2:
			Si dato > 20 Y dato <= 60 Entonces
				costoFinal = costoFinal + (costoFinal * 0.10)
			SiNo
				Si dato > 60 Entonces
					costoFinal = 150000
				Fin Si
			Fin Si
		3:
			Si dato > 10 Y dato <= 40 Entonces
				costoFinal = costoFinal + (costoFinal * 0.15)
			SiNo
				Si dato > 40 Entonces
					costoFinal = 95000
				Fin Si
			Fin Si
		4:
			Si dato > 10 Y dato <= 40 Entonces
				costoFinal = costoFinal + (costoFinal * 0.15)
			SiNo
				Si dato > 40 Entonces
					costoFinal = 125000
				Fin Si
			Fin Si
	Fin Segun
	
FinFuncion


// ----- VALIDAR TELÉFONO -----
Funcion telValido <- validarTel(tel)
	Definir telValido Como Logico
	Definir contador, i Como Entero
	Definir prefijo como Texto
	prefijo = Subcadena(tel, 0, 0)
	contador = 0
	
	
	
	Si Longitud(tel) >= 10 Y prefijo == "+" Entonces
		definir digito como texto
		
		Para i <- 1 Hasta Longitud(tel) Con Paso 1 Hacer
			digito=Subcadena(tel,i,i)
			Si digito <> "0" y digito <> "1" y digito <> "2" y digito <> "3" y digito <> "4" y digito <> "5" y digito <> "6" y digito <> "7" y digito <> "8" y digito <> "9" y digito <>"+" Entonces
				contador = contador - 1
			SiNo
				contador=contador+1
			FinSi
			
		Fin Para
		si contador > 10 y contador<14 Entonces
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

Funcion cadenaValido <- validarCadena(cadna)
	Definir i Como Entero
	Definir cadenaValido Como Logico
	Definir caracterCadena Como Caracter
	
		cadenaValido = Verdadero
		
		Para i=0 Hasta Longitud(cadna) Hacer
			caracterCadena = SubCadena(cadna, i, i)
			Si caracterCadena == "0" O caracterCadena == "1" O caracterCadena == "2" O caracterCadena == "3" O caracterCadena == "4" O caracterCadena == "5" O caracterCadena == "6" O caracterCadena == "7" O caracterCadena == "8" O caracterCadena == "9" Entonces
				cadenaValido = Falso
			Fin Si
		Fin Para
FinFuncion


// ----- VALIDAR DNI -----
Funcion dniValido <- validarDNI(dni)
	Definir dniValido Como Logico
	Definir contador, i Como Entero
	
	Si Longitud(dni) < 9 Y Longitud(dni) > 6 Entonces
		Para i <- 1 Hasta Longitud(dni) Con Paso 1 Hacer
			Si Subcadena(dni, i, i) = "0" O Subcadena(dni, i, i) = "1" O Subcadena(dni, i, i) = "2" O Subcadena(dni, i, i) = "3" O Subcadena(dni, i, i) = "4" O Subcadena(dni, i, i) = "5" O Subcadena(dni, i, i) = "6" O Subcadena(dni, i, i) = "7" O Subcadena(dni, i, i) = "8" O Subcadena(dni, i, i) = "9" Entonces
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


SubProceso buscarPasajeroAsiento(listaPasajeros, ruta, plazasTotales, plazasDisponibles)
	Definir asiento, i, j Como Entero
	Definir encontrado como Logico 
	Definir array como Texto
	encontrado = Falso
	// Creacion de un nuevo array para guardar los datos del vuelo a buscar
	
	Si plazasDisponibles <= 0 Entonces
		Escribir "No hay pasajes vendidos en esta ruta."
	SiNo
		Dimension array[plazasDisponibles,8]
		Segun ruta Hacer
			1:
				Para i=0 Hasta plazasTotales-1 Hacer
					Para j=0 Hasta 7 Con Paso 1 Hacer
						Si listaPasajeros[i,0] == "Buenos Aires - Bariloche" Entonces
							array[i,j] = listaPasajeros[i,j]
						Fin Si
					Fin Para
				Fin Para
			2:
				Para i=0 Hasta plazasTotales-1 Hacer
					Para j=0 Hasta 7 Con Paso 1 Hacer
						Si listaPasajeros[i,0] == " Bueno Aires - Salta" Entonces
							array[i,j] = listaPasajeros[i,j]
						Fin Si
					Fin Para
				Fin Para
			3:
				Para i=0 Hasta plazasTotales-1 Hacer
					Para j=0 Hasta 7 Con Paso 1 Hacer
						Si listaPasajeros[i,0] == "Rosario - Buenos Aires" Entonces
							array[i,j] = listaPasajeros[i,j]
						Fin Si
					Fin Para
				Fin Para
			4:
				Para i=0 Hasta plazasTotales-1 Hacer
					Para j=0 Hasta 7 Con Paso 1 Hacer
						Si listaPasajeros[i,0] == "Mar Del Plata - Mendoza" Entonces
							array[i,j] = listaPasajeros[i,j]
						Fin Si
					Fin Para
				Fin Para
		Fin Segun
		
		// Busqueda
		Escribir "Ingrese el asiento del pasajero a buscar:"
		Leer asiento
		i=0
		
		Mientras i < plazasDisponibles Hacer
			Si array[i,6] == ConvertirATexto(asiento) Entonces
				Escribir "============================="
				Escribir "Nombre y Apellido: ", array[i,1]
				Escribir "Ruta: ", array[i,0]
				Escribir "DNI: ", array[i,2]
				Escribir "============================="
				encontrado = Verdadero
				i = plazasDisponibles
			Fin Si
			i = i + 1
		Fin Mientras
		
		Si encontrado = Falso Entonces
			Escribir "Asiento no encontrado."
		Fin Si
	Fin Si
FinSubProceso


SubProceso buscarPasajeroNombre(lista, plazasTotales, nombreYApellido)
	Definir i Como Entero
	Definir encontrado como Logico 
	encontrado = Falso
	i=0
	
	Mientras i < plazasTotales Hacer
		Si Mayusculas(nombreYapellido) == Mayusculas(lista[i,1]) Entonces
			Escribir "Nombre y Apellido: ", lista[i,1]
			Escribir "Ruta: ", lista[i,0]
			Escribir "DNI: ", lista[i,2]
			encontrado = Verdadero
			i = plazasTotales
		Fin Si
		i = i + 1
	FinMientras
	Si encontrado = Falso Entonces
		Escribir "Persona no encontrada."
	Fin Si
FinSubProceso

SubProceso ordenarPorAsiento(listaPasajeros, ruta, plazasTotales, plazasDisponibles, ordenarpor)
	Definir array como Texto
	Definir i, j Como Entero
	Definir auxNombre, AuxDni, auxTel, auxEquipaje, auxNumPasajero, auxAsiento, auxCosto Como Caracter
	Definir posMenor Como Entero
	
	
	// Creacion de un nuevo array para guardar los datos del vuelo a ordenar
	
	Si plazasDisponibles <= 0 Entonces
		Escribir "No hay pasajes vendidos en esta ruta."
	SiNo
		Dimension array[plazasDisponibles,8]
		Segun ruta Hacer
			1:
				Para i=0 Hasta plazasTotales-1 Hacer
					Para j=0 Hasta 7 Con Paso 1 Hacer
						Si listaPasajeros[i,0] == "Buenos Aires - Bariloche" Entonces
							array[i,j] = listaPasajeros[i,j]
						Fin Si
					Fin Para
				Fin Para
			2:
				Para i=0 Hasta plazasTotales-1 Hacer
					Para j=0 Hasta 7 Con Paso 1 Hacer
						Si listaPasajeros[i,0] == " Bueno Aires - Salta" Entonces
							array[i,j] = listaPasajeros[i,j]
						Fin Si
					Fin Para
				Fin Para
			3:
				Para i=0 Hasta plazasTotales-1 Hacer
					Para j=0 Hasta 7 Con Paso 1 Hacer
						Si listaPasajeros[i,0] == "Rosario - Buenos Aires" Entonces
							array[i,j] = listaPasajeros[i,j]
						Fin Si
					Fin Para
				Fin Para
			4:
				Para i=0 Hasta plazasTotales-1 Hacer
					Para j=0 Hasta 7 Con Paso 1 Hacer
						Si listaPasajeros[i,0] == "Mar Del Plata - Mendoza" Entonces
							array[i,j] = listaPasajeros[i,j]
						Fin Si
					Fin Para
				Fin Para
		Fin Segun
		
		// ORDENAMIENTO
		
		Si ordenarpor == "A" Entonces
			// ORDEN ASCENDENTE
			Para i <- 0 Hasta plazasDisponibles-2
				posMenor = i
				Para j <- i+1 Hasta plazasDisponibles-1
					Si array[posMenor,6] > array[j,6] Entonces
						posMenor = j
					Fin Si
				Fin Para
				auxNombre = array[i, 1]
				AuxDni = array[i, 2]
				auxTel = array[i, 3]
				auxEquipaje = array[i, 4]
				auxNumPasajero = array[i, 5]
				auxAsiento = array[i, 6]
				auxCosto = array[i, 7]
				
				array[i, 1] = array[posMenor, 1]
				array[i, 2] = array[posMenor, 2]
				array[i, 3] = array[posMenor, 3]
				array[i, 4] = array[posMenor, 4]
				array[i, 5] = array[posMenor, 5]
				array[i, 6] = array[posMenor, 6]
				array[i, 7] = array[posMenor, 7]
				
				array[posMenor, 1] = auxNombre
				array[posMenor, 2] = AuxDni
				array[posMenor, 3] = auxTel
				array[posMenor, 4] = auxEquipaje
				array[posMenor, 5] = auxNumPasajero
				array[posMenor, 6] = auxAsiento
				array[posMenor, 7] = auxCosto
			FinPara
		SiNo
			// ORDEN DESCENDENTE
			Para i <- 0 Hasta plazasDisponibles-2
				posMenor = i
				Para j <- i+1 Hasta plazasDisponibles-1
					Si array[posMenor,6] < array[j,6] Entonces
						posMenor = j
					Fin Si
				Fin Para
				auxNombre = array[i, 1]
				AuxDni = array[i, 2]
				auxTel = array[i, 3]
				auxEquipaje = array[i, 4]
				auxNumPasajero = array[i, 5]
				auxAsiento = array[i, 6]
				auxCosto = array[i, 7]
				
				array[i, 1] = array[posMenor, 1]
				array[i, 2] = array[posMenor, 2]
				array[i, 3] = array[posMenor, 3]
				array[i, 4] = array[posMenor, 4]
				array[i, 5] = array[posMenor, 5]
				array[i, 6] = array[posMenor, 6]
				array[i, 7] = array[posMenor, 7]
				
				array[posMenor, 1] = auxNombre
				array[posMenor, 2] = AuxDni
				array[posMenor, 3] = auxTel
				array[posMenor, 4] = auxEquipaje
				array[posMenor, 5] = auxNumPasajero
				array[posMenor, 6] = auxAsiento
				array[posMenor, 7] = auxCosto
			FinPara
		Fin Si
		
		// Mostrando la lista ordenada
		Escribir ""
		Para i=0 Hasta plazasDisponibles-1 Hacer
			Para j=0 Hasta 7 Con Paso 1 Hacer
				Escribir Sin Saltar array[i, j], " | "
			Fin Para
			Escribir ""
		Fin Para
		Escribir ""
	FinSi	
FinSubProceso


