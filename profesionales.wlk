import provincias.*
import empresa.*

class ProfesionalUniversitarios{

  const property estudioEnLaFacultadDe // se le asigna una facultad
  const honorariosPorHora
   var importe

  method trabajaEnLasProvinciasDe() = estudioEnLaFacultadDe.provincia().asSet() // se agrego el ".asSet()"
  method honorariosPorHora() = honorariosPorHora

  // etapa 3----------------------

  method consecuenciaDeCobro(){
    estudioEnLaFacultadDe.recibirDonacion(importe / 2)
    importe = 0
  } 

}

// ------------------------------ PROFESIONALES LITORALES -------------------------------------------

class ProfesionalLitoral{
  
  const property estudioEnLaFacultadDe
  var importe

  method trabajaEnLasProvinciasDe() = #{entreRios, santaFe, corrientes}
  method honorariosPorHora() = 3000

  // etapa 3 ----------------------

  method consecuenciaDeCobro() {
    asociacionLiteral.recibirDonacionDe(importe)
    importe = 0
  }

}

// ------------------------------ PROFESIONALES LIBRES -------------------------------------------

class ProfesionalLibre{

  const property estudioEnLaFacultadDe
  const property trabajaEnLasProvinciasDe
  const property honorariosPorHora

  var importe // 500

  method consecuenciaDeCobro(){} // no tiene consecuencias

  method pasarMontoAlProfesional(unProfesionalLibre, unMonto) {
    if (unMonto <= importe) {
      unProfesionalLibre.recibirDonacionDe(unMonto)
      importe -= unMonto
    }
  }

  method recibirDonacionDe(unMonto) {importe += unMonto}

}


// ------------------------------ UNIVERSIDAD -------------------------------------------



class Universidad{
  const property provincia
  const property honorariosPorHora
  
  var importeDonado = 0

  method recibirDonacionDe(unMonto) {importeDonado += unMonto}

}