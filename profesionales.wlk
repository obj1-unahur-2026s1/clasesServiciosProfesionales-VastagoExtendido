import provincias.*

class ProfesionalUniversitarios{
  const property estudioEnLaFacultadDe // se le asigna una facultad
  const honorariosPorHora

  method puedeTrabajarEnLasProvinciasDe() = estudioEnLaFacultadDe.provincia()
  method honorariosPorHora() = honorariosPorHora

}

// ------------------------------ PROFESIONALES LITORALES -------------------------------------------

class ProfesionalLitoral{
  
  const property estudioEnLaFacultadDe

  method puedeTrabajarEnLasProvinciasDe() = #{entreRios, santaFe, corrientes}
  method honorariosPorHora() = 3000

}

// ------------------------------ PROFESIONALES LIBRES -------------------------------------------

class ProfesionalLibre{

  const property estudioEnLaFacultadDe
  const property honorariosPorHora
  const property puedeTrabajarEnLasProvinciasDe
}


// ------------------------------ UNIVERSIDAD -------------------------------------------



class Universidad{
  const property provincia
  const property honorariosPorHora
}