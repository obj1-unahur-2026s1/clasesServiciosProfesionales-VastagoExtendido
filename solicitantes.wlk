class Persona {

    const viveEnProvinciaDe 

    method puedeSerAtendidoPorElProfesional(unProfesional) = unProfesional.trabajaEnLasProvinciasDe().contains(viveEnProvinciaDe)
    // method puedeSerAtendidoPor(profesionales) = profesionales.filter({p => p.provinciasDondePuedeTrabajar() == ubicacionEnProvincias})

}

class Institucion{
    const universidadesReconocidas 

    method puedeSerAtendidoPorElProfesional(unProfesional) = universidadesReconocidas.any({u => unProfesional.estudioEnLaFacultadDe(u)}) 
    // method puedeSerAtendidoPor(profesionales) =  profesionales.filter({p => p.universidadDondeEstudiaron() == universidadesReconocidas})

}

class Club{
    const ubicacionesClub 

    method puedeSerAtendidoPorElProfesional(unProfesional) = ubicacionesClub.any({u =>unProfesional.trabajaEnLasProvinciasDe(u)})
    //method puedeSerAtendidoPor(profesionales) = profesionales.filter({p => p.provinciasDondePuedeTrabajar() == ubicacionEnProvincias})

}
