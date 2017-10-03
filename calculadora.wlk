
object calculadora{
	var resultado
	method cargar(numero){
		resultado = numero		
	}
	method sumar(numero){
		resultado = resultado + numero
	}
	method multiplicar (numero){
		resultado = resultado * numero
	}
	method restar(numero) {
		resultado= resultado - numero
	}
	method valorActual(){
		return resultado
	}
}