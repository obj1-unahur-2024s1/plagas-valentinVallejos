import plagas.*
class Hogar {
	var  nivelDeMugre
	var  nivelDeConfort
	
	method esBueno() = nivelDeMugre <= (nivelDeConfort/2)	
	
	method sufriAtaqueDe(plaga){
		plaga.atacar()
		nivelDeMugre += plaga.nivelDeDano()
	}
}

class Huerta {
	var produccionPorMes
	var nivel
	
	method esBueno() = produccionPorMes > nivel
	
	method sufriAtaqueDe(plaga){
		plaga.atacar()
		produccionPorMes -= (plaga.nivelDeDano() * 0.10) + if (plaga.transmiteEnfermedades()) 10 else 0
	}
}

class Mascota{
	var nivelDeSalud 
	
	method esBueno() = nivelDeSalud > 250
	
	
	method sufriAtaqueDe(plaga){
		plaga.atacar()
		nivelDeSalud -= if (plaga.transmiteEnfermedades()) plaga.nivelDeDano() else 0
	}
	
} 
