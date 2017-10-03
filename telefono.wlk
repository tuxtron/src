object sueldo{
	var neto = 0 
		
	method sueldoNeto(){
		return neto
	}
	
	method sueldo() {
		return (neto - situacionSindical.descuento() + presentismo.bono())
	}
	
	method categoria(categoria){
		if (categoria == 'gerente'){
			neto = 15000
		}
		if (categoria == 'cadete'){
			neto == 20000
		}
	}
	}
	
object situacionSindical{
		var descuento = 0
		
		method descuento(){
			return descuento
		}
		
		method Porcentual(){
			descuento = (sueldo.sueldoNeto() * 0.03)
		}
		
		method Comprometido(){
			descuento = (sueldo.sueldoNeto() * 0.01) + 1500
		}
		
		method NoSindicalizado(){
			descuento = 0
		}
						
	}
	


object presentismo{
	var bono = 0 
	
	method bono(){
		return bono
	}
	method normal(dias){
		if (dias == 0){
			bono = 2000
		}
		if (dias == 1){
			bono = 1000
		}
		if (dias < 1 ){
			bono = 0
		}
	}
	method ajuste(dias){
		if (dias == 0){
			bono = 10
		}
		} 
		
	method demagogico(){
		if (sueldo.sueldoNeto() < 18000){
			bono = 500
		}
		else {
			bono = 350
		}
	}
}