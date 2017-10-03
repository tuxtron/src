object pepe {
	
	var sindicato = noSindicalizado
	var categoria = gerente
	var bono = bonoNormal
	var faltas = 0
	
	
	method sueldo() {
		return self.neto()
				- sindicato.descuento(self.neto())
				+ bono.bonificacion(self)
	}
	
	method neto() {
		return categoria.neto()
	}
	
 	method categoria(unaCategoria) {
		categoria = unaCategoria
	}
	
	method sindicato(unSindicato) {
		 sindicato = unSindicato
	}
	
	method bono(unBono) {
		bono = unBono		
	}
	
	method faltas(unasFaltas) {
		faltas = unasFaltas
	}
	method faltas() {
		return faltas
	}
}

object bonoNormal {
	
	method bonificacion(empleado) {
		return (2000 - empleado.faltas() * 1000).max(0)		
	}
}

object epocaDeAjuste {
	method bonificacion(empleado) {
		return if (empleado.faltas() == 0) 10 else 0
	}
}

object demagogico {
	method bonificacion(empleado) {
	 return if (empleado.neto()	< 18000) 500 else 350;
	}
}


object noSindicalizado {
	method descuento(neto) {
		return 0
	}
}

object comprometido {
	method descuento(neto) {
		return (neto * 0.01 + 1500)
	}
}
		

object porcentual {
	method descuento(neto) {
		return 0.03 * neto
	}
}


object gerente {
	method neto() {
		return 15000
	}
}

object cadete {
	method neto() {
		return 20000
	}
}


object roque{
	var sindicato = noSindicalizado
	
	
	method sueldo(){
		return self.neto()
				- sindicato.descuento(self.neto())
				+ 9500
	}
	
	method neto(){
		return 28000
	}

	method sindicato(unSindicato) {
		 sindicato = unSindicato
	}
	

}

object ernesto{
	var companiero = roque
	var bono = bonoNormal
	var faltas = 0
	
	
	
	method sueldo(){
		return self.neto()
			+ bono.bonificacion(self)
	}
	
	method neto(){
		return companiero.neto()	
	}
	
	method companero(companero){
		companiero = companero
	}
	
	method bono(unBono){
		bono= unBono
	}
	
	method faltas(unasFaltas) {
 		faltas = unasFaltas
	}
	method faltas() {
		return faltas
	}
	
}
