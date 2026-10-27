
Justificaciones:
- Utilizacion de una Superclase abstracta Banda y subclases para cada uno de los 3 tipos de banda para evitar la repeticion de codigo al programar los tipos de bandas.
- Uso de un objeto para el tipo de abono fan y una clase para el abono de vip, dado que todos los abonos de fans serian identicos al no tener un estado propio y cada vip tiene un porcentaje de descuento propio, el cual va cambiando con la bonificacion de la productora

Uso de Conceptos: 
1. Composicion: Como dije anteriormente utilice composicion a la hora de definir los abonos, y de esta forma un asistente podria en un futuro cambiar su abono de fan a vip.
2. Herencia: BandaDeRock, BandaIndie y BandaDeTrap heredan de Banda. Lo que permite que no se repita codigo innecesariamente.
3. Colecciones: se utilizan colecciones para el manejo de historial en Asistente, para guardar todas las entradas que vaya comprando y ya haya comprado, y tambien en productora, que contienen todas las Bandas que trabajan con la misma y los asistentes que compraron entradas.
4. Polimorfismo: los abonos vip y fan son polimorficos entre si para evitar tener que usar condicionales para tratar cada tipo de abono. 
5. Encapsulamiento: Use encapsulamiento en varias partes del codigo, un claro ejemplo es el descuento del abono vip, que solo se modifica con bonificacion() definida dentro de la misma clase. Tambien cuando el Asistente necesita saber si una entrada es del año pasado para conseguir el historial del año pasado, lo delegue en el metodo esDelAnioPasado() la confirmacion de si la entrada es de una fecha del año pasado, para evitar romper el encapsulamiento y luego la asistente filtra las entradas del historial que cumplen la condicion