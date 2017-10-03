
object luisa {
	var personaje
	
	method personajeActivo(){
		return personaje
	}

	method aparece(unElemento){
		if (personaje != null){
			personaje.encontrar(unElemento)
			}
		else self.error("No Tengo Personaje")
//		else error!!!!!	

	}

	method asignarPersonaje(unPersonaje){
		personaje = unPersonaje
	}

	method abandonarPersonaje(){
		personaje = null
	}
}

object floki{
	
	var arma 
	
	method arma(){
		return arma
	}
	
	method arma(unArma){
		arma = unArma
	}
	
	method encontrar(unElemento) {
		if (arma.estaCargada()) {
		unElemento.recibirAtaque(arma.potencia())
		arma.registrarUso()
		}
	}
	
	
}

object mario{
	
	var valorRecolectado = 0
	var alturaElemento = 0
	
	method encontrar(unElemento) {
		valorRecolectado += unElemento.valorQueOtorga()
		unElemento.recibirTrabajo()
		alturaElemento = unElemento.altura()
		// ... acá hay que agregar una línea ...
	}
	
	method estaFeliz(){
		return valorRecolectado >= 50 or alturaElemento >= 10
	}
	
	method valorRecolectado(){
		return valorRecolectado
	}
}

object ballesta{

	var flechas = 10
	
	method potencia(){
		return 4
	}
	
	method registrarUso(){
		flechas -=1
	}
	
	method estaCargada(){
		return flechas < 0 
	}
	
	method cantidadDeFlechas(){
		return flechas
	}
	
	
	
}

object jabalina{
	
	var estaCargada= true
	
	method estaCargada(){
		return estaCargada
}

	method registrarUso(){
		estaCargada = false
	}

	method potencia(){
		return 30
	}

}
object castillo{
	
	var defensa = 150
	
	method altura(){
		return 20
	}
	
	method recibirAtaque(potencia){
		defensa -= potencia
	}
	
	method valorQueOtorga(){
		return defensa / 5
	}
	
	method recibirTrabajo(){
		200.min(defensa += 20) 
	}
	
	method defensa(){
		return defensa
	}
	
}

object aurora{

	var viva = true

	method altura(){
		return 1 
	}
	
	method recibirAtaque(potencia){
		if (potencia <= 10){
			viva = false
		} 
	}
	
	method estaViva(){
		return viva
	}
	
	method valorQueOtorga(){
		return 15
	}
	
	method recibirTrabajo(){}
	
}
 	
object tipa{
	var altura = 8 
	
	method altura(){
		return altura
	}
	
	method valorQueOtorga(){
		return altura*2
	}
	
	method recibirTrabajo(){
		altura += 1
	} 
	
	
}
