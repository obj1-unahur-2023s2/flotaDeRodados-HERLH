class Dependencia {
	const flotaDeRodados = []
	var empleados
	
	method agregarAFlota(rodado) {
		flotaDeRodados.add(rodado)
	}
	
	method quitarDeFlota(rodado) {
		flotaDeRodados.remove(rodado)
	}
	
	method pesoTotalFlota() = flotaDeRodados.sum({rod => rod.peso()})
	method estaBienEquipada() = flotaDeRodados.size() >= 3 && 
								flotaDeRodados.all({rod => rod.velocidadMaxima() >= 100})
}