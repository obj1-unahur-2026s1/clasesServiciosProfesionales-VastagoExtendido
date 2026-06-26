class Persona {

    const viveEnProvinciaDe 

    method puedeSerAtendidoPorElProfesional(unProfesional) = unProfesional.trabajaEnLasProvinciasDe().contains(viveEnProvinciaDe)
    
}

class Institucion{
    const universidades = []

    method agregarLaUniversidad(unaUniversidad) {universidades.add(unaUniversidad)}
    method puedeSerAtendidoPorElProfesional(unProfesional) = universidades.any({u => unProfesional.estudioEnLaFacultadDe(u)}) 
}

class club{
    const ubicacionesClub 

    method puedeSerAtendidoPorElProfesional(unProfesional) = ubicacionesClub.any({u =>unProfesional.trabajaEnLasProvinciasDe(u)})
}
