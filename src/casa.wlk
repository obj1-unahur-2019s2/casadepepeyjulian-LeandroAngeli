import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method vienenDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 500
	}
	
	method queFaltaComprar(lista) {
		return lista.filter ({ quiero => not cosas.contains(quiero)})
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
