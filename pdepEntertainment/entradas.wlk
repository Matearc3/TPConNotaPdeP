import productora.*
import bandas.*

class Entrada {
    const banda
    const fecha
    const precioBase = 1000

    method banda() = banda
    method fecha() = fecha

    method precio() = precioBase + productora.impuestos()
    method nombreDeBanda() = banda.nombre()
    method esDelAnioPasado() = fecha.year() == new Date().year() - 1  
}

