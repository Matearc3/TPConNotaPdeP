import asistentes.*
import entradas.*
import bandas.*
object productora {
    const property bandas = []
    const property asistentes = []
    var property impuestos = 0 

    method gananciaTotal() =  self.gananciasDeEntradas() - self.gastosDeBandas()
    method gananciasDeEntradas() = asistentes.map({asistente => asistente.dineroGastado()}).sum() 
    method gastosDeBandas() = bandas.map({banda => banda.presupuesto()}).sum()
    
    method entradasVendidas() = asistentes.map({asistente => asistente.entradasCompradas()}).sum()
   
    method bandaMasPopular() = bandas.max({banda=> self.entradasVendidasdeBanda(banda)})
    method entradasVendidasdeBanda(banda) = self.todasLasEntradasVendidas().count({entrada=> entrada.banda() == banda}) 
    method todasLasEntradasVendidas() = asistentes.flatMap({asistente=> asistente.historial()})

    method bonificarVip()= asistentes.forEach({asistente=> asistente.bonificacion()}) 
}