import cosas.* 
import cuentas.*

object casaDePepeYJulian {
	const cosas = []
	var property cuentaEnUso
	
	
	method vienenDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 500
	}
	
	method comprar(cosa) {
    		cosas.add(cosa)
    		self.gastar(cosa.precio())
    }
    
    method cantidadDeCosasCompradas(){
    		return cosas.size()
    }
    
    method tieneComida(){
    		return cosas.all({ cos => cos.esComida() })
    }
    
	method  esDerrochona(){
			return cosas.sum({ pd => pd.precio() }) > 9000 
	}
    
	method  compraMasCara(){
		return cosas.max({ dp => dp.precio() })
	}
    
	method electrodomesticosComprados(){
		return 	cosas.filter({ th => th.esElectrodomestico() })
	}
    
	method malaEpoca() {
		return cosas.all({ co => co.esComida() })
	}
		
    
	method queFaltaComprar(lista) {
		return lista.filter({ quiero => not cosas.contains(quiero)})
	}
	
	method faltaComida(){
		return cosas.all({ os => os.esComida()} > 2) 
	}
		
	method comidaComprada() = cosas.filter({ ad => ad.esComida() })
	
	method gastoEnComida() {
		/*var comida
		comida = cosas.filter({ ad => ad.esComida() })*/
		
		return self.comidaComprada().sum({ da => da.precio() })
		
	}
	
	method hayElectrodomesticosBaratos() {
		
		return self.electrodomesticosComprados().any({ el => el.precio() < 3000 }) 
	}
	
	method preciosDeElectrodomesticos() {
		
		return self.electrodomesticosComprados().map({ dx => dx.precio() })
	}
	
	method nivelEnAumento() {
		
		return cosas.first().precio() >= cosas.last().precio()*2 
	}
	
	method primeraComidaComprada() {
		return self.comidaComprada().first()
	}
	
	
	method dineroDisponible(){
		return cuentaEnUso.saldo()	
	}
	
	
	method gastar(importe) {
		cuentaEnUso.extraer(importe)
			
	}
	
	
	
	
	
	
	
}
