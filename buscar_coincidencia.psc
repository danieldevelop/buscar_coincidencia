// Parecido al juego adivina el n�mero
Algoritmo buscar_coincidencia
	definir miArray como entero;
	definir encontrado como logico;
	definir i como entero; // uso global dentro del codigo
	definir num como entero;
	
	dimension miArray[5];
	encontrado <- falso;
	
	escribir("Lista de n�meros: ");
	para i<-0 hasta 4 con paso 1 Hacer
		miArray[i] = azar(20) + 1; 
		// mostramos los n�meros aleatorios
		escribir sin saltar(miArray[i]),(" ");
	FinPara
	escribir("");
	escribir("");
	
	escribir("Ingrese un n�mero de la lista:");
	leer num;
	
	para i<-0 hasta 4 con paso 1 hacer
		si (num = miArray[i]) entonces
			escribir("El n�mero esta en la posici�n ["),i,("]");
			encontrado = verdadero;
		FinSi
	FinPara
	
	// para que no me muestre el mensaje muchas veces
	// pregunto fuera de la iteraci�n
	si (encontrado = falso) Entonces
		escribir("Ups! n�mero no encontrado");
	FinSi
FinAlgoritmo
