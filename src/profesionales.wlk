import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return universidad.povincia() }
	
	method honorariosPorHora() { return universidad.honorariosRecomendados() }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	const property provinciasdondePuedeTrabajar = #{}
	var property honorariosPorHora
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method asignarProvincias(listaDeProvincias) {
		provinciasdondePuedeTrabajar.addAll(listaDeProvincias)
	}
}
