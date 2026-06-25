import profesionales.*

class EmpresaDeServicios{
    const honorarios = 20
    const contratados = #{}

    method contratarAlProfesional(unProfesional){contratados.add(unProfesional)}
    method cantidadDeProfesionalesQueEstudiaronEn(unaFacultad) = contratados.count({c=>c.estudioEnLaFacultadDe() == unaFacultad})
    method profesionalesCaros() = contratados.filter({c=>c.honorariosPorHo() > honorarios}).asSet()
    method universidadesFormadoras() = contratados.map({c=>c.estudioEnLaFacultadDe()}).asSet() 
    method elProfesionalMasBarato() = contratados.min({c=>c.honorariosPorHora()}) 
    method esDeGenteAcotada() = contratados.all({c => c.puedeTrabajarEnLasProvinciasDe().size() > 3 })

}