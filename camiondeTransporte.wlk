
object camion {

	var tara = 1000000
	var cosas = []
	
	method pesoMaximo(){
		return 2500000
	}

	method cargar(cosa){
		cosas.add(cosa)
		
	}
	
	method tara(){
		return tara
	}
	
	method descargar(cosa){
		return not cosas.contains(cosa)
	}
	
	method pesoTotal(){
		 return self.tara() + cosas.sum({objeto => objeto.peso()})
		
	}
	
	method excedidoDePeso(){
		return self.pesoMaximo() <= self.pesoTotal()
		
	}
	
	method objetosPeligrosos(n){
		return cosas.all({objeto => objeto.nivelDePeligrosidad() > n})
	}
	
	method objetosMasPeligrososQue(cosa){
		return self.objetosPeligrosos(cosa.nivelDePeligrosidad())
	}
	
	method puedeCircularEnRuta(nivelMaximoDePeligrosidad){
		return cosas.max({objeto => objeto.nivelDePeligrosidad()}).peso() <= nivelMaximoDePeligrosidad
	}
		
}

object knightRider{
	method peso(){
		return 500
	}
	
	method nivelDePeligrosidad(){
		return 10
	}
}

object bumblebee{
	
	var transformer = true
	
	method peso(){
		return 800
	}
		
	method estaTransformado(){
		return transformer 
	}
	
	method transformar(){
		transformer = true
	}
	
	method convertirAuto(){
		transformer = false
	}
	
	method nivelDePeligrosidad(){
		if (self.estaTransformado()){
			return 30
		}
		else return 15
	}
	
}

object paqueteDeLadrillos{
		var cantidad = 0
		
		method cantidad(cant){
			cantidad = cant
		}
		
		method peso(){
			return 2 * cantidad
		}
		
		method nivelDePeligrosidad(){
			return 2
		}
		
}

object arenaAGranel{
	var peso = 0
	
	method peso(unPeso){
		peso= unPeso
	}	
	
	method peso(){
		return peso
	}
	
	method nivelDePeligrosidad(){
		return 1
	}

}

object bateriaAntiaerea{
	
	var tieneMisil = false
	
	method tieneMisil(){
		return tieneMisil
	}
	
	method colocarMisil(){
		tieneMisil = true
	}
	
	method sacarMisil(){
		tieneMisil = false
	}
	
	method peso(){
		if (self.tieneMisil()){
			return 300
		}
		else return 200
	}
	
	method nivelDePeligrosidad(){
		if (self.tieneMisil()){
			return 100
		}
		else return 0
	}
	
}

object contenedorPortuario{
	
	var cosas = []
	
	method agregar(unaCosa){
		cosas.add(unaCosa)
	}
	
	method peso(){
		//(if cosas =[]) return 100 
		//else
		return 100 + cosas.sum({elemento => elemento.peso()})
	}
	
	method nivelDePeligrosidad(){
		return cosas.max({elemento => elemento.nivelDePeligrosidad()})
	}
}
	
object residuosRadiactivos{

	var peso = 0
	
	method peso(){
		return peso
	}
	
	method peso(unPeso){
		peso= unPeso
	}	
	
	method nivelDePeligrosidad(){
		return 200
	}
}
	
object embalajeDePeligrosidad{
	var cosa
	

	method agregar(unaCosa){
		cosa =  unaCosa	
}

	method peso(){
		return cosa.peso()
	}
	
	method nivelDePeligrosidad(){
		return cosa.nivelDePeligrosidad() / 2
	}
}

	

