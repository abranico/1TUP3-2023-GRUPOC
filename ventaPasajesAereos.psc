Proceso ventaPasajesAereos
	Definir opcionMenu, opcionMenu4, opcionMenu5 Como Texto
	
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
