object contador{
	var valor=0
	var ultimocomando="no insertaste nada"
	method reset() {
		valor=0
		ultimocomando="reseto"
	}
	method inc(){
		valor= valor+1
		ultimocomando= "incremento"
	}
	method dec(){
		valor=valor-1
		ultimocomando= "decremento"
	}
	method valorActual(){
		return valor
		
	}
	method valorActual(numero){
		valor=numero
		ultimocomando="actualizacion"
	}
	method ultimoComando(){
		return ultimocomando
	}
}