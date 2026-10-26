//revisar comprarEntrada

class Entrada {
    const banda
    const fecha
    const precioBase
    var impuestos

    method fecha() = fecha

    method impuestos(actualizar) {impuestos = actualizar}
    method precio() = precioBase + impuestos
    method nombreDeBanda() = banda.nombre()
    method esDelAñoPasado() = fecha.year() == 2026 - 1  
}


//ASISTENTES
class Asistente{
    const abono
    var historial = []
    var dinero


    method comprarEntrada(entrada){ if (dinero > 0) {dinero = dinero - precioConDescuento(entrada) , historial.add(entrada) }
     else {throw new Exception (message= "dinero insuficiente")}
    }
    
    method precioConDescuento(entrada) = entrada.precio() * abono.descuento()

    method historialAñoPasado() = historial.filter(entrada.esDelAñoPasado())

    method bandasVistas() = historial.bandasVistasConRepeticion().asset()
    method bandasVistasConRepeticion() = historial.map(entrada.nombreDeBanda()) 

    method dineroGastado() = historial.map(entrada.precio()).sum()
    method entradasCompradas() = historial.length()
}
object fan {
    method descuento() = 0
}
class Vip {
    var descuento
    method descuento () = 1 - descuento / 100
    method bonificacion() { descuento = descuento + 1 }
}



//BANDAS
class Banda {
    const nombre 
    
    method nombre() = nombre
    method canon() = 1000000
    method presupuesto() = self.canon() + self.gastoExtra()  
    method gastoExtra() = 0
    method popularidad() = 0
}

class BandaDeRock inherits Banda {
const solosDeGuitarra

override method gastoExtra() = 10000
override method popularidad () = solosDeGuitarra * 100
}
class BandaDeTrap inherits Banda {
    const tieneHielo 
    override method popularidad() = if ( tieneHielo) 1000 else super()
    override method canon() = self.popularidad() * super()
}
class BandaIndie inherits Banda {
    const cantidadDeInstrumentos
    override method popularidad() = 3.14 * nombre.length()  
    override method gastoExtra() = cantidadDeInstrumentos * 500
}


// PRODUCTORA

class Productora {
    var bandas = []
    var asistentes = []

    method gananciaTotal() =  self.gananciasDeEntradas() - self.gastosDeBandas()
    method gananciasDeEntradas() = asistentes.map(asistente.dineroGastado()).sum() 
    method gastosDeBandas() = bandas.map(banda.presupuesto()).sum()
    
    method entradasVendidas() = asistentes.map(asistente.entradasCompradas()).sum()
   
    method bandaMasPopular() = bandas.max(entradasVendidasPorBandas())
    method entradasVendidasporBandas() = asistentes.forEach(asistente.)
    
    method bonificarVip()= asistentes.forEach(asistente.bonificacion()) 
}
