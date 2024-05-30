import elementos.*
import plagas.*
class Barrio {
	const elementos = []
	
	 
	method agregarElemento(elemento){elementos.add(elemento)}
		
	method esBueno(unElemento) = unElemento.esBueno()
	
	method cantDeMalos() = elementos.count({x=> not x.esBueno()})
	
	method cantDeBuenos() = elementos.count({x=>  x.esBueno()})
	
	method esCopado() = self.cantDeBuenos() > self.cantDeMalos()
	
	method nivelDeDano(unaPlaga) = unaPlaga.nivelDeDano()
	
	method transmiteEnfenrmedades(unaPlaga) = unaPlaga.transmiteEnfermedades()
	
	method sufriAtaqueDe(unaPlaga){elementos.forEach({x=>x.sufriAtaqueDe(unaPlaga)})}
}
