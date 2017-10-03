


class Remiseria{
	
	var flota = #{}
	var viajes = #{}
	var precioKilometro
	var minimo
	
	method agregarAFlota(vehiculo){
		flota.add(vehiculo)
	}	

	method quitarDeFlota(vehiculo){
		flota.remove(vehiculo)
	}
	
	method pesoTotalFlota(){
		return  flota.sum({auto => auto.peso()})
	}

	method esRecomendable(){
		return flota.size() <=3 and flota.min({auto => auto.velocidadMaxima()} >= 100)
	}

	method capacidadTotalYendoA(velocidad){
		if( self.autoMasRapido().velocidadMaxima() >= velocidad){
			return flota.filter({auto => auto.velocidadMaxima() >= velocidad}).max({ auto => auto.capacidad()}).capacidad()	
		}
		else {
			self.error ("NO HAY AUTOS QUE MANEJEN A ESA VELOCIDAD")
		}
	}
	
	method autoMasRapido(){
		return flota.max({auto => auto.velocidadMaxima()})	
		
	}
	
	method colorDelAutoMasRapido(){
		return self.autoMasRapido().color()
	}
	
	method puedeHacerUnViaje(unViaje){
		return flota.any({auto => auto.puedeHacerElViaje(unViaje)})
	}
	
	method registrarViaje(viaje,auto){
		viaje.asignarAuto(auto)		
		viajes.add(viaje)
	}
	
	method cuantosViajesHizoElAuto(auto){
		return viajes.count({unViaje => unViaje.autoAsignado() == auto})
	}
	
	method cuantosViajesHizoDeMAsDeKM(kilometros){
		return viajes.count({unViaje => unViaje.kilometros() >= kilometros})
	}
	
	method lugaresLibres(){
		return viajes.sum({viaje => viaje.autoAsignado().capacidad() - viaje.cantidadPasajeros() })
	}
	
	method valorPorKilometro(precio){
		precioKilometro = precio
	}
	
	method valorPorKilometro() = precioKilometro
	
	method precioMinino() = minimo
	
	method precioMinimo(unPrecio){
		minimo = unPrecio
	}
	
	method cuantoPagar(auto){
		return viajes.sum({viaje =>
				if (viaje.autoAsignado() == auto){
				(viaje.kilometros() * self.valorPorKilometro()).max(30)
				}
				
		})
	}
}

class Corsa{
	
	var color
	
	method capacidad(){
		return 4
	}
	
	method velocidadMaxima(){
		return 150
	}
	
	method peso(){
		return 1300
	}
	
	method color(unColor){
		color = unColor
	}
	
	method color(){
		return color
	}
	
	method puedeHacerElViaje(unViaje){
		return 	unViaje.kilometros()/unViaje.tiempoMaximo() + 10 <= self.velocidadMaxima()
				and unViaje.cantidadPasajeros() <= self.capacidad()
				and not (unViaje.coloresIncompatibles()).contains(self.color())
	}
	
}

class Standar{
	
	var tanqueAdicional = false
	
	method tanqueAdicional(){
		return tanqueAdicional
	}
	
	method agregarTanque(){
		tanqueAdicional = true
	}
	
	method capacidad(){
		if (tanqueAdicional){
			return 3
		}
		else{
			 return 4
		}
	}
	
	method velocidadMaxima(){
		if (tanqueAdicional){
			return 120
		}
		else{
			 return 110
		}
	}
	
	method peso(){
		if (tanqueAdicional){
			return 1200 + 150
		}
		else{
			 return 1200
		}
	}
	
	method color(){
		return azul
	}
	
	method puedeHacerElViaje(unViaje){
		return unViaje.kilometros()/unViaje.tiempoMaximo() + 10 <= self.velocidadMaxima()
				and unViaje.cantidadPasajeros() <= self.capacidad()
				and not (unViaje.coloresIncompatibles()).contains(self.color())
	}
	
}


object trafic{
	
	var interior
	var motor
	
	method interior(unInterior){
		interior= unInterior
	}
	
	method motor(unMotor){
		motor = unMotor
	}
	
	method peso(){
		return 4000 + interior.peso() + motor.peso()
	}
	
	method color(){
		return blanco
	}
	
	method capacidad(){
		return interior.capacidad()
	}
	
	method velocidadMaxima(){
		return motor.velocidad()
	}
	
	method puedeHacerElViaje(unViaje){
		return unViaje.kilometros()/unViaje.tiempoMaximo() + 10 <= self.velocidadMaxima()
				and unViaje.cantidadPasajeros() <= self.capacidad()
				and not (unViaje.coloresIncompatibles()).contains(self.color())
	}
}


object interiorComodo{
	
	
	method capacidad(){
		return 5
	}
	
	method peso(){
		return 700
	}
	
}

object interiorPopular{
	
	method capacidad(){
		return 12
	}
	
	method peso(){
		return 1000
	}
}

object motorPulenta{
	
	method velocidad(){
		return 130
	}
	
	method peso(){
		return 800
	}
	
}

object motorBataton{
	
	method velocidad(){
		return 80
	}
	
	method peso(){
		return 500
	}
}


class AutosDistintos{
	
	var capacidad
	var velocidadMaxima
	var color
	var peso
	
	constructor(unPeso,unaVelocidad,unColor,unaCapacidad) {
		peso = unPeso
		velocidadMaxima = unaVelocidad
		color = unColor
		capacidad = unaCapacidad
		
	}
	
	method peso() = peso
	method capacidad() = capacidad
	method velocidadMaxima() = velocidadMaxima
	method color() = color
	
	method puedeHacerElViaje(unViaje){
		return  unViaje.kilometros()/unViaje.tiempoMaximo() + 10 <= self.velocidadMaxima()
				and unViaje.cantidadPasajeros() <= self.capacidad()
				and not (unViaje.coloresIncompatibles()).contains(self.color())
	}
}

class Viajes{
	
	var kilometros
	var tiempoMaximo
	var colores = #{}
	var pasajeros
	var auto	
	
	
	method kilometros(){
		return kilometros	
	}
	
	method kilometros(unKilometro){
		kilometros = unKilometro
	}
	
	method tiempoMaximo() = tiempoMaximo
	
	method tiempoMaximo(unTiempo){
		tiempoMaximo = unTiempo
	}
	
	method coloresIncompatibles() = colores
	
	method coloresIncompatibles(unColor){
		colores.add(unColor)
	}
	
	method cantidadPasajeros() = pasajeros
	
	method cantidadPasajeros(cantPasajero){
		pasajeros = cantPasajero
	}
	
	method autoAsignado() = auto
	
	method asignarAuto(unAuto) {
		auto = unAuto
	}
}

object azul{}

object blanco{}

object rojo{}

object negro{}

object beige{}
