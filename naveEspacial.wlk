object nave{
	var potencia = 50
	var coraza = 5
	var encontrePila = false
	var encontreEscudo = false
	var esBlanca= false
	
	const potenciaMaxima = 100
	
	method potencia(){
		return (potencia)
	}
	method coraza(){
		return (coraza)
	}
		
	method encontrarEscudo(){
		encontreEscudo = true

		}
	}
	
	method encontraPila(pila){
		encontrePila= true
		if (esBlanca = false) {
			potencia = (potencia + pila.potenciaQueOtorga()).min(potenciaMaxima)
		}
	}
	
	
	method recibirAtaque(puntos){
		if (coraza > puntos){
			coraza = coraza -puntos
		}
		else{
			coraza=0
			potencia = (puntos - coraza)
		}
	}	

	method seLaBlanca(){
		esBlanca= true
	}

	method diaDeSuerte(){
		return encontrePila && encontreEscudo
	}
	
	method recibirDobleAtaqui(puntosAtaque1,puntosAtaque2){
		self.recibirAtaque(puntosAtaque1)
		self.recibirAtaque(puntosAtaque2)
	}
	
	method encontrar(unaCosa){
		
	}

}

object escudo{
	var coraza = 10
	coraza += 10
	if (nave.coraza > 20 ){
		nave.coraza = 20
}

object pilaAtomica{
	method potenciaQueOtorga(){
		return 25
	}
}
object pilaDeDilithium{
	var brillo = 10
	
	method brillo(){
		return brillo
	}
	
	method potenciaQueOtroga(){
		return self.brillo()
	}
}