

class Pulga {
	var poblacion
	
	method poblacion() = poblacion
	
	method nivelDeDano() = poblacion *2
	
	method transmiteEnfermedades() = (poblacion > 10)
	
	method aumentarPoblacion() {poblacion += poblacion*0.10}
	
	method atacar() {
		self.aumentarPoblacion()
	}
}

class Garrapata inherits Pulga{
	
	override method aumentarPoblacion(){poblacion += poblacion*0.20}
}

class Cucaracha inherits Pulga{
	var pesoPromedio
	
	override method nivelDeDano() = poblacion /2
	
	override method transmiteEnfermedades() =  super() && (pesoPromedio >= 10)
	
	override method atacar() {
		super()
		pesoPromedio += 2
	}
}

class Mosquito inherits Pulga{
	
	override method nivelDeDano() = poblacion
	
	override method transmiteEnfermedades()=  super() && ( poblacion % 3 == 0 )
}

