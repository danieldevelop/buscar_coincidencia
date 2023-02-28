// Parecido al juego adivina el número
Algoritmo buscar_coincidencia
	definir miArray como entero;
	definir encontrado como logico;
	definir i como entero; // uso global dentro del codigo
	definir num como entero;
	
	dimension miArray[5];
	encontrado <- falso;
	
	escribir("Lista de números: ");
	para i<-0 hasta 4 con paso 1 Hacer
		miArray[i] = azar(20) + 1; 
		// mostramos los números aleatorios
		escribir sin saltar(miArray[i]),(" ");
	FinPara
	escribir("");
	escribir("");
	
	escribir("Ingrese un número de la lista:");
	leer num;
	
	para i<-0 hasta 4 con paso 1 hacer
		si (num = miArray[i]) entonces
			escribir("El número esta en la posición ["),i,("]");
			encontrado = verdadero;
		FinSi
	FinPara
	
	// para que no me muestre el mensaje muchas veces
	// pregunto fuera de la iteración
	si (encontrado = falso) Entonces
		escribir("Ups! número no encontrado");
	FinSi
FinAlgoritmo
