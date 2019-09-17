object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloMila {
	var property precio = 200
	
	/*var property sirve como getter y como setter.
	 * podes consultarlo como kiloMila.precio() y va a dar como resultado 200
	 podes settear nuevo precio poniendo kilo.Mila(320) y el precio va a cambiarse por 320
	 * la proxima vez que se quiere saber el precio
	 * kiloMila.preco() da como respuesta 320
	  */
}

object packComida {
	var plato
	
	method configurar(unPlato) {
		plato = unPlato
	}
	
	method precio() {
		return plato.precio()
	}
	
}
	 
