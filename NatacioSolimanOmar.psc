Algoritmo NatacioSolimanOmar
	// Omar Soliman Gil
	
	
	Escribir "Cuantos jueces hay?"
	Leer jueces
	
	// Acumuladores
	contadorpaisestotales = 1
	maspaises = Verdadero
	puntpais = 0
	MisDieses = 0
	puntodopais = 0
	Diez = Falso
	puntubool = Verdadero
	ganador = 0
	
	
	
	// Bucle paises
	Mientras maspaises Hacer
		
		Escribir "Cuál es el nombre del país?"
		Leer nompais
		
		// Bucle jueces
		Para i = 1 Hasta jueces
			Escribir "Qué puntuación da el juez?"
			Leer puntuacion
			puntpais = puntpais + puntuacion
			
			Si puntuacion >= 11 o puntuacion < 0
				puntubool = Falso
				Escribir "Puntuación invalida."
				puntpais = puntpais - puntuacion
			SiNo
				puntubool = Verdadero
			FinSi
			
			Si puntubool = Falso
				Escribir "Qué puntuación da el juez?"
				Leer puntuacion
				puntpais = puntpais + puntuacion
			FinSi
			
			Si puntuacion = 10
				Diez = Verdadero
				MisDieses = MisDieses + 1
				
			FinSi
			
			si puntmed > ganador
				ganador = puntmed
				nomganador = nompais
				
			FinSi
		FinPara
		
		// Resultados
		puntmed = puntpais / jueces
		puntodopais = puntodopais + puntmed
		Escribir "La puntuación de " nompais, " es ", puntmed
		Si Diez = Verdadero
			Escribir nompais, " ha recibido " MisDieses, " diez/dieces."
		FinSi
		
		// Continuar bucle o no
		Escribir "Quiere participar algun otro país?(s/n)"
		Leer continuar
		Si continuar = "n"
			maspaises = Falso
			Escribir "Han participado " contadorpaisestotales, " pais/es."
			puntodopaismed = puntodopais / contadorpaisestotales
			Escribir "La puntuación media de los " contadorpaisestotales, " paises es " puntodopaismed
			
			
			Escribir "El pais ganador es " nomganador, " con una nota de " ganador
		SiNo 
			
			contadorpaisestotales = contadorpaisestotales + 1
			maspaises = Verdadero
			puntpais = 0
			MisDieses = 0
			
		FinSi
		
		
	FinMientras
FinAlgoritmo
