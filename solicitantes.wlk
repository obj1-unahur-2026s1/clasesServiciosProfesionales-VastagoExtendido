class Persona {

    const viveEnProvinciaDe 

    method puedeSerAtendidoPor(profesionales) = profesionales.filter({p => p.provinciasDondePuedeTrabajar() == viveEnProvinciaDe})

}

class Institucion{
    const universidadesReconocidas 

    method puedeSerAtendidoPor(profesionales) =  profesionales.filter({p => p.universidadDondeEstudiaron() == universidadesReconocidas})

}

class Club{
    const ubicacionesClub 

    method puedeSerAtendidoPor(profesionales) = profesionales.filter({p => p.provinciasDondePuedeTrabajar() == ubicacionesClub})

}
