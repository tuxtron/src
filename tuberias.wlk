
object tramoRectoLargo{
	var siguiente
	
	method siguiente(){
		return siguiente
	}
	
	method siguiente(elSiguiente){
		siguiente = elSiguiente
	}
	
	method longitud() {
		return 2000
	}
	
	method longitudMaximaHastaElFinal(){
		return siguiente.longitud()
	}
}

object tramoRectoCorto{
	var siguiente
	
	method siguiente(){
		return siguiente
	}

	method siguiente(elSiguiente){
		siguiente = elSiguiente
	}

	method longitud() {
		return 40
	}
	
	method longitudMaximaHastaElFinal(){
 		return siguiente.longitud()
	}

}

object codo{
	var siguiente
	
	method siguiente(){
		return siguiente
	}

	method siguiente(elSiguiente){
		siguiente = elSiguiente
	}

	method longitud() {
		return 70
	}

	method longitudMaximaHastaElFinal(){
		return siguiente.longitud()
	}


}

object difurcacion{
	var siguienteIzquierda
	var siguienteDerecha
	
	method siguienteIzquieda(){
		return siguienteIzquierda
	}
	
	method siguienteDerecha(){
		return siguienteDerecha
	}

	method siguienteIzquierda(elSiguienteIzquierda){
		siguienteIzquierda = elSiguienteIzquierda
	}
	
	method siguienteDerecha(elSiguienteDerecha){
		siguienteDerecha = elSiguienteDerecha
	}

	method longitud (){
		return 50
	}

}

object tramoDeSubida{
	var siguiente
	
	method siguiente(){
		return siguiente
	}

	method siguiente(elSiguiente){
		siguiente = elSiguiente
	}
	
	method longitud() {
		return 1000
	}
	
	method longitudMaximaHastaElFinal(){
		return siguiente.longitud()
	}

}


object tramoDeBajada{
	var siguiente
	
	method siguiente(){
		return siguiente
	}

	method siguiente(elSiguiente){
		siguiente = elSiguiente
	}

	method longitud(){
		return 2000
	}
	
	method longitudMaximaHastaElFinal(){
		return siguiente.longitud()
	}

}

object tope{

	method longitud(){
		return 0
	}
	
	
	method longitudMaximaHastaElFinal(){
		return 0
	}

}