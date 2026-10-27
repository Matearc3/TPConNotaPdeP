import entradas.*

class Asistente{
    var property abono
    const historial = []
    var dinero

    method historial()= historial

    method comprarEntrada(entrada){ 
        if (dinero > 0) {dinero = dinero - self.precioConDescuento(entrada) 
         historial.add(entrada) }
        else {throw new Exception (message= "dinero insuficiente")}
    }
    
    method precioConDescuento(entrada) = entrada.precio() * abono.descuento()

    method historialAnioPasado() = historial.filter({entrada=> entrada.esDelAnioPasado()})

    method bandasVistas() = self.bandasVistasConRepeticion().asSet()
    method bandasVistasConRepeticion() = historial.map({entrada => entrada.nombreDeBanda()}) 

    method dineroGastado() = historial.map({entrada=> entrada.precio()}).sum()
    method entradasCompradas() = historial.size()    
    
    method bonificacion() = abono.bonificacion()
}
object fan {
    method descuento() = 1
    method bonificacion(){}
}
class Vip {
    var descuento
    method descuento () = 1 - descuento / 100
    method bonificacion() { descuento = descuento + 1 }
}