
object cuenta {

	method depositar(saldo,unaCantidadPesos){
		return saldo + unaCantidadPesos
	}
	
	method extraer(saldo,unaCantidadPesos){
		return saldo - unaCantidadPesos
	}


}

object pepe{
	var saldo = 0 
	
	method saldo(){
		return saldo
	}
	
	method depositar(unaCantidadPesos){
		saldo = cuenta.depositar(saldo, unaCantidadPesos)
	}
	
	method extraer(unaCantidadPesos){
		saldo = cuenta.extraer(saldo,unaCantidadPesos)
	}
}

object julian{
	
	var saldo = 0
	
	method saldo(){
		return saldo
	}
	
	method depositar(unaCantidadPesos){
		saldo = cuenta.depositar(saldo, 0.8 * unaCantidadPesos)
	}
	
	method extraer(unaCantidadPesos){
		if (saldo >= unaCantidadPesos+5){
				saldo = cuenta.extraer(saldo,unaCantidadPesos+5)
		}
	}
	
}

object papa{
	
	var precioDeCompra = 17
	var saldoEnDolares = 0
	var precioDeVenta = 17
	
	method saldo(){
		return saldoEnDolares * precioDeCompra
	}
	
	method precioDeCompra(){
		return precioDeCompra
	} 	
	method precioDeCompra(precio){
		precioDeCompra = precio
	}
	method precioDeVenta(precio){
		precioDeVenta = precio
	}
	
	method depositar(unaCantidadDePesos){
		saldoEnDolares = cuenta.depositar(saldoEnDolares,(unaCantidadDePesos/precioDeVenta))
	}
	
	method extraer(unaCantidadDePesos){
		saldoEnDolares= cuenta.extraer(saldoEnDolares,unaCantidadDePesos/precioDeCompra)
	}
}

object casa{
	
	var saldo 
	var cuentaAUsar
	//var compras = 0
	var tieneComida
	var cosasCompradas = []
	//var ultimaCosa
	
	method compraMayorValor(){
		return cosasCompradas.max({cosa => cosa.valor()})
	}
	
	method electrodomesticosComprados(){
		return cosasCompradas.filter({cosa => cosa.esElectrodomestico()})
	}
	
	method malaEpoca(){
		return cosasCompradas.all({cosas => cosas.esComida()})
	}
	
	method faltaComida() {
		return cosasCompradas.filter({ cosas => cosas.esComida()}).size() <= 2
	}
	
	method queFaltaComprar(listaDeCosas){
		return listaDeCosas.filter({ cosa =>
			not cosasCompradas.contains(cosa)
		})
		
	}
	
	method gastar(importe){
		//compras += importe
		
		cuentaAUsar.extraer(importe)
	}
	
	method comprar(cosa){
		//compras += cosa.valor()
		cosasCompradas.add(cosa)
		//	ultimaCosa = cosa
		cuentaAUsar.extraer(cosa.valor())
		//if (tieneComida = false){
		//	tieneComida = cosa.esComida()
		//	}
	}
	
	method compras(){
		return cosasCompradas
	}
	
	method saldo(){
		return cuentaAUsar.saldo()
	}
	
	method cuentaParaGastos(){
		return cuentaAUsar
	}
	method cuentaAUsar(cuenta){
		cuentaAUsar= cuenta
	}
	
	method esDerrochona(){
		return cosasCompradas.sum({cosas => cosas.valor()}) > 5000
		//return (compras > 5000)
	}
	method esBacan(){
		return (self.saldo() > 40000)
	}
	
	method tieneComida(){
		return cosasCompradas.last().esComida()
		//return tieneComida
	}
	
	method vieneDeEquiparse(){
		return cosasCompradas.last().valor() < 5000 || cosasCompradas.last().esElectrodomestico()
		//return ultimaCosa.valor()< 5000 || ultimaCosa.esElectrodomestico()
	}
	
	method puedeComprar(cosa){
		return self.saldo() >= cosa.valor()
		
	}
	
}

object combinada{
	
	var primaria
	var secundaria
	
	method pertenezco(nombre1,nombre2){
		primaria= nombre1
		secundaria= nombre2
	}
	
	method saldo(){
		return primaria.saldo() + secundaria.saldo()
	}
	
	method depositar(unaCantidadDePesos){
		if (secundaria.saldo()>1000){
			secundaria.depositar(1000)
		}
		else {
			primaria.depositar(1000)
			}
	} 
	
	method extraer(unaCantidadDePesos){
		var saldoRestante = 0
		if (primaria.saldo() <= unaCantidadDePesos){
			saldoRestante = primaria.saldo()
			primaria.extraer(primaria.saldo())
			secundaria.extraer(unaCantidadDePesos - saldoRestante)
		}
		else{
			primaria.extraer(unaCantidadDePesos)
		}
	}
			
}

object heladera{
	
	method valor(){
		return 2000
	}
		method esComida(){
		return false
	}
	
	method esElectrodomestico(){
		return true
	}
	
}

object cama{
	method valor(){
		return 8000
	}
	
	method esComida(){
		return false
	}
	
	method esElectrodomestico(){
		return false	
	}
}

object asado{
	method valor(){
		return 350
	}
		method esComida(){
		return true
	}
	
	method esElectrodomestico(){
		return false
	}
}

object fideos{
	method valor(){
		return 50
	}
		method esComida(){
		return true
	}
	
	method esElectrodomestico(){
		return false
	}
}
object plancha{
	method valor(){
		return 1200
	}
		method esComida(){
		return false
	}
	
	method esElectrodomestico(){
		return true
	}
}