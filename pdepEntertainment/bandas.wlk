
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