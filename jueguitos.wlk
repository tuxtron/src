import contador.*

object pepe{
	
	method jueguito(){
		contador.inc()
	}
	
	method pique(){
		record.grabar(contador.valorActual())
		contador.reset()
	}
	
	method acumulado(){
		return contador.valorActual()
	}
	
	method record(){
		return record.mayor()
	}
}

object record{
	var record = 0
	
	method grabar(cantidad){
		if ( cantidad > record){
			record = cantidad
	}
	}
method mayor(){
		return record
	}
}
