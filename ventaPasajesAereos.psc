Proceso ventaPasajesAereos
	Definir opcionMenu, opcionMenu4, opcionMenu5 Como Texto
	definir opcionMenu1, plazasDsiponibles1, array Como Entero
	definir validacion, valido Como Logico
	plazasDsiponibles1=0
	
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
					Escribir "1: Buenos Aires - Bariloche. 2: Bueno Aires - Salta. 3: Rosario - Buenos Aires. 4: Mar Del Plata - Mendoza."
					leer opcionMenu1
					Segun opcionMenu1 Hacer
						1:
							plazasDsiponibles1=plazasDsiponibles1+1
							valido= validarPlaza(plazasDsiponibles1)
							Si validacion = Verdadero Entonces
								escribir "Plaza disponible."
								
							SiNo
								escribir "No hay plazas disponibles."
							Fin Si
						2:
							escribir""
						3:
							escribir""
						4:
							escribir""
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

Funcion valido <- validarPlaza(dato)
	definir validacion Como Logico
	Si dato>0 y dato<121 Entonces
		
		Escribir "Plaza disponible."
		validacion=Verdadero
	SiNo
		Escribir "No hay plazas disponibles."
		validacion=Falso
	Fin Si
	
FinFuncion
