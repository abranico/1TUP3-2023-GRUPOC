Proceso ventaPasajesAereos
	Definir opcionMenu, opcionMenu4, opcionMenu5, listaVuelos Como Texto
	definir opcionMenu1, plazasDsiponibles1, plazasDsiponibles2, plazasDsiponibles3, plazasDsiponibles4 como entero
	definir validacion, valido Como Logico
	Dimension listaVuelos[4,3]
	cargaVuelos(listaVuelos)
	
	validacion=Falso
	plazasDsiponibles1=0
	plazasDsiponibles2=0
	plazasDsiponibles3=0
	plazasDsiponibles4=0
	
	
	Escribir "Bienvenido al sistema de venta de pasajes aéreos"
	
	Repetir
		Escribir "Seleccione una opcion para continuar o escriba SALIR"
		Escribir "1. Venta pasaje"
		Escribir "2. Buscar pasaje vendido"
		Escribir "3. Buscar pasajero"
		Escribir "4. Ordenar y mostrar lista pasajeros"
		Escribir "5. Listado/s"
		Leer opcionMenu
		opcionMenu = Mayusculas(opcionMenu)
		
		Segun opcionMenu Hacer
			"1":
				escribir"Las rutas aéreas disponibles a la venta son: "
				
				Repetir
					
					Escribir "1:", listaVuelos[0,0]
					Escribir "2:", listaVuelos[1,0]
					Escribir "3:", listaVuelos[2,0]
					Escribir "4:", listaVuelos[3,0]
					leer opcionMenu1
					Segun opcionMenu1 Hacer
						1:
							plazasDsiponibles1=plazasDsiponibles1+1
							valido= validarPlaza(plazasDsiponibles1)
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								
							SiNo
								escribir "No hay plazas disponibles."
							Fin Si
						2:
							plazasDsiponibles2=plazasDsiponibles2+1
							valido= validarPlaza(plazasDsiponibles2)
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								
								
							SiNo
								escribir "No hay plazas disponibles."
							Fin Si
						3:
							plazasDsiponibles3=plazasDsiponibles3+1
							valido= validarPlaza2(plazasDsiponibles3)
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								
								
							SiNo
								escribir "No hay plazas disponibles."
							Fin Si
						4:
							plazasDsiponibles4=plazasDsiponibles4+1
							valido= validarPlaza2(plazasDsiponibles4)
							Si valido = Verdadero Entonces
								escribir "Plaza disponible."
								
								
							SiNo
								escribir "No hay plazas disponibles."
							Fin Si
						De Otro Modo:
							escribir"opcion inexistente."
					Fin Segun
				Hasta Que opcionMenu1=1 o opcionMenu1=2 o opcionMenu1=3 o opcionMenu1=4
				
			"2":
				
			"3":
				
			"4":
				Repetir
					Escribir "a. Por número de asiento Ascendente"
					Escribir "b. Por número de asiento Descendente"
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
					Escribir "a. Cantidad de pasajes vendido por ruta aérea"
					Escribir "b. Porcentaje de ventas por ruta aérea"
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
	definir validacion Como Logico
	Si dato>0 y dato<121 Entonces
		validacion=Verdadero
	SiNo
		validacion=Falso
	Fin Si
FinFuncion

Funcion validacion <- validarPlaza2(dato)
	definir validacion Como Logico
	Si dato>0 y dato<81 Entonces
		validacion=Verdadero
	SiNo
		validacion=Falso
	Fin Si
FinFuncion


