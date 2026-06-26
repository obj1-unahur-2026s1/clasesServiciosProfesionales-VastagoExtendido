import profesionales.*

class EmpresaDeServicios{
    
    const contratados
    const honorarioDeLaEmpresa
    const clientes = #{}

    method contratarAlProfesional(unProfesional){contratados.add(unProfesional)}
   
    method cantidadDeProfesionalesQueEstudiaronEn(unaFacultad) = contratados.count({c=>c.estudioEnLaFacultadDe() == unaFacultad})
    method profesionalesCaros() = contratados.filter({c=>c.honorariosPorHora() > honorarioDeLaEmpresa}).asSet() // DEVUELVE UN CONJUNTO
    method universidadesFormadoras() = contratados.map({c=>c.estudioEnLaFacultadDe()}).asSet() // DEVUELVE UN CONJUNTO
    method elProfesionalMasBarato() = contratados.min({c=>c.honorariosPorHora()}).
    method esDeGenteAcotada() = contratados.all({c => c.puedeTrabajarEnLasProvinciasDe().size() > 3 })

    // etapa 2

    method puedeSatisfacerAlSolicitante(unSolicitante) = contratados.any({c => unSolicitante.puedeSerAtendidoPorElProfesional(c)})

    // etapa 4

    method darServicioAlSolicitante(unSolicitante) {
        if( self.puedeSatisfacerAlSolicitante(unSolicitante)){
            unSolicitante.puedeSerAtendidoPor(contratados).forEach({c => c.consecuenciaDeCobro()})
            clientes.add(unSolicitante)
        }
        
    }

    method cantidadDeClientes() = clientes.size()

    method tieneComoClienteAlSolicitante(unSolicitante) =  clientes.contains(unSolicitante)



}

object asociacionLiteral {
    var dineroRecibido = 0

    method recibirDonacionDe(unMonto) {dineroRecibido += unMonto }

}