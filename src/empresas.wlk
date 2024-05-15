import profesionales.*
import universidades.*

class Empresa {
	const profesionales = #{}
	var property honorarioDeReferencia
	
	method agregarProfesional(unProfesional) {
		profesionales.add(unProfesional)
	}
	method eliminarProfesional(unProfesional) {
		profesionales.remove(unProfesional)
	} 
	method cuantosEstudiaronEn(unaUniversidad) {
		return(profesionales.count({p => p.universidad() == unaUniversidad }))
	}
	method profesionalesCaros() {
		return(profesionales.filter({p=>p.honorariosPorHora() > honorarioDeReferencia}))
	}
	method universidadesFormadoras() {
		return(profesionales.map({p=>p.universidad()}).asSet())
	}
	method profesionalMasBarato() {
		return(profesionales.min({p=>p.honorariosPorHora()}))
	}
	method esDeGenteAcotada() {
		return(profesionales.all({p=>p.provinciaDondPuedeTrabajar().size() <= 3}))
	}
}