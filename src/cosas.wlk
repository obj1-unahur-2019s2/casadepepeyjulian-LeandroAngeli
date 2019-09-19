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
	var property precio = 260
	
	/*var property sirve como getter y como setter.
	 * podes consultarlo como kiloMila.precio() y va a dar como resultado 200
	 podes settear nuevo precio poniendo kilo.Mila(320) y el precio va a cambiarse por 320
	 * la proxima vez que se quiere saber el precio
	 * kiloMila.preco() da como respuesta 320
	  */
}

object botellaTomate {
	var property precio = 90 
}


object microondas {
	
	method precio() { return 4200 }
}


object kiloDeCebollas{
	
	method precio () {return 25}
}


object compu {
	var dolar
	
	method cotizacion(dolarActual) {
		dolar = dolarActual
	}
	method precio () {return 500 * dolar}
}

object packComida {
	var plato
	var aderezo

	
	method configurarAderezo(aderezoNuevo){
		aderezo = aderezoNuevo
	}
	
	method configurarPlato(unPlato) {
		plato = unPlato
	}
	
	method precio() {
		return plato.precio() +  aderezo.precio()
	}
	
}
	 

object packRegalo {
	var componentes = []
	
	method precio() {
		return componentes.sum({ com => com.precio() })*0.8
	}
	
	method esComida() {
		return componentes.all({cosa => cosa.esComida()})
	}
	
	method esElectrodomestico() {
		return componentes.any({cosa => cosa.esElectrodomestico()})
	}
	
	
}
	 
