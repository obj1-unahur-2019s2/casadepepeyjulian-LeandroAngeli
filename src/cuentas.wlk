object cuentaCorriente {
	var dinero
	
	method depositar(importe){
		dinero += importe
	}
	
	method extraer(importe){
		dinero -= importe
	}
	
	method saldo() {
		return dinero
	}
	
}


object cuentaConGastos {
	var dinero
	
	method depositar(importe){
		dinero += importe - 20
	}
	
	method extraer(importe){
		dinero -= importe 
	}
	
	method saldo() {
		return dinero
	}
	
}	

object cuentaCombinada {
		var property cuentaPrimaria
		var property cuentaSecundaria
		var dinero 
	
	method depositar(importe){
		dinero += importe
	}
	
	method extraer(importe){
		dinero -= importe
	}
	
	method saldo() {
		return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
	}
	
}
	
	
	
	
}
