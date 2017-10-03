

object pepita{
	
	var energia  
	var bloque2 
	var bloque3 
	
	method comer(gr){
		energia = energia + 4*gr			
	}
	
	method cansadaSi(block){	
		bloque2= block
	}
	
	method estaCansada(){
		return bloque2.apply(energia)
	}
	
	method cuandoEstesCansadaHace(block){
		bloque3 = block
	}
	
	method estaCansadaHace(){
		bloque3.apply()
	}
	
	method volar(km){
		energia = energia -(10+km) 
	}
	method energia(){
		return energia
	}
	method estaDebil(){
		return energia<50
	}
	method estaFeliz(){
		return 500<energia && energia<1000
	}
	method cuantoQuiereVolar(){
		var distancia = energia/5
		if (energia > 300 && energia < 400){
			distancia = distancia +10
		}
		if (energia % 20 == 0) {
			distancia =distancia + 15
		}
		return distancia
	}
	
	method haceLoQueQuieras(){
		if (self.estaDebil()) {
			self.comer(20)
		}
		if (self.estaFeliz()){
			self.volar(self.cuantoQuiereVolar())
		}
	}
}


object entrenador{
	
	var bloque
	var ave
	var numero
	
	
		 
	method entrenar(pajaro){
//		ave = pajaro
		numero.times(
			if (pepita.estaCansada()){
				pepita.estaCansadaHace()
			}
			else bloque.apply(pajaro)
		)
	}
	 method rutina(block){
	 	bloque = block
	 }
	 
	 method repeticiones(num){
	 	numero = num
	 }
	 


	 
}



//  		error
// 	self.error("mensaje")

//test
// assert.thrownsExceptionWihthMessege("mensaje", {accion})

// numero.times(bloque)
//ejecuta numero veces el bloque


//map > 	 > lista
//filter > condicion > coleccion
//any > condicion > boll
//all > condicion > boll
//find > condcion > elemento
//max	> transformer > elemento
//main  > trandformer > elemento 

//foreach > comand (solo para enviar ordenes)