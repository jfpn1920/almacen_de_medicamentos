Algoritmo almacen_de_medicamentos
	Definir opcion, totalMedicamentos Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir medicamento Como Caracter
	Definir laboratorio Como Caracter
	Definir categoria Como Caracter
	Definir cantidad Como Entero
	Definir precio Como Real
	Definir fechaVencimiento Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension medicamento[100]
	Dimension laboratorio[100]
	Dimension categoria[100]
	Dimension cantidad[100]
	Dimension precio[100]
	Dimension fechaVencimiento[100]
	Dimension estado[100]
	totalMedicamentos <- 0
	siguienteID <- 1
	//--------------------------------------------//
	//--|menu_principal_almacen_de_medicamentos|--//
	//--------------------------------------------//
	Repetir
		Escribir "menu principal almacen de medicamentos"
		Escribir "1) registrar medicamento"
		Escribir "2) editar medicamento"
		Escribir "3) eliminar medicamento"
		Escribir "4) buscar medicamento"
		Escribir "5) listar medicamentos"
		Escribir "6) ver detalles del medicamento"
		Escribir "7) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//---------------------------//
			//--|registrar_medicamento|--//
			//---------------------------//
			1:
				Escribir "registrar medicamento"
				id[totalMedicamentos + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalMedicamentos + 1]
				Escribir "ingrese el nombre del medicamento:"
				Leer medicamento[totalMedicamentos + 1]
				Escribir "ingrese el laboratorio:"
				Leer laboratorio[totalMedicamentos + 1]
				Escribir "ingrese la categoria:"
				Leer categoria[totalMedicamentos + 1]
				Escribir "ingrese la cantidad:"
				Leer cantidad[totalMedicamentos + 1]
				Escribir "ingrese el precio:"
				Leer precio[totalMedicamentos + 1]
				Escribir "ingrese la fecha de vencimiento:"
				Leer fechaVencimiento[totalMedicamentos + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalMedicamentos + 1]
				totalMedicamentos <- totalMedicamentos + 1				
				Escribir "medicamento registrado correctamente."
			//------------------------//
			//--|editar_medicamento|--//
			//------------------------//
			2:
				Escribir "editar medicamento"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalMedicamentos Hacer
						Escribir id[i], " | ", medicamento[i], " | ", laboratorio[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", fechaVencimiento[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del medicamento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMedicamentos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre del medicamento:"
							Leer medicamento[i]
							Escribir "ingrese el nuevo laboratorio:"
							Leer laboratorio[i]
							Escribir "ingrese la nueva categoria:"
							Leer categoria[i]
							Escribir "ingrese la nueva cantidad:"
							Leer cantidad[i]
							Escribir "ingrese el nuevo precio:"
							Leer precio[i]
							Escribir "ingrese la nueva fecha de vencimiento:"
							Leer fechaVencimiento[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "medicamento editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un medicamento con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|eliminar_medicamento|--//
			//--------------------------//
			3:
				Escribir "eliminar medicamento"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalMedicamentos Hacer
						Escribir id[i], " | ", medicamento[i], " | ", laboratorio[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", fechaVencimiento[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del medicamento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMedicamentos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalMedicamentos Entonces
								Para j <- i Hasta totalMedicamentos - 1 Hacer
									id[j] <- id[j+1]
									medicamento[j] <- medicamento[j+1]
									laboratorio[j] <- laboratorio[j+1]
									categoria[j] <- categoria[j+1]
									cantidad[j] <- cantidad[j+1]
									precio[j] <- precio[j+1]
									fechaVencimiento[j] <- fechaVencimiento[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalMedicamentos <- totalMedicamentos - 1
							Escribir "medicamento eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un medicamento con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|buscar_medicamento|--//
			//------------------------//
			4:
				Escribir "buscar medicamento"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "ingrese el id del medicamento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMedicamentos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", medicamento[i], " | ", laboratorio[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", fechaVencimiento[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un medicamento con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|listar_medicamentos|--//
			//-------------------------//
			5:
				Escribir "listar medicamentos"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalMedicamentos Hacer
						Escribir id[i], " | ", medicamento[i], " | ", laboratorio[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", fechaVencimiento[i], " | ", estado[i]
					FinPara
				FinSi
			//----------------------------------//
			//--|ver_detalles_del_medicamento|--//
			//----------------------------------//
			6:
				Escribir "ver detalles del medicamento"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "ingrese el id del medicamento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMedicamentos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del medicamento"
							Escribir "id: ", id[i]
							Escribir "medicamento: ", medicamento[i]
							Escribir "laboratorio: ", laboratorio[i]
							Escribir "categoria: ", categoria[i]
							Escribir "cantidad: ", cantidad[i]
							Escribir "precio: ", precio[i]
							Escribir "fecha de vencimiento: ", fechaVencimiento[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un medicamento con ese id."
					FinSi
				FinSi
				//------------------------------//
				//--|salir_del_menu_principal|--//
				//------------------------------//
			7:
				Escribir "gracias por utilizar el almacen de juguetes."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo