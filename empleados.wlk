//1
object gimenez {
    var fondo = 300000
    method fondo() {
        return fondo
    }
    method pagarSueldo(empleado) {
        fondo = fondo - empleado.sueldo()
    }

}

object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0
    method sueldo() {
        return sueldo
    }
    method deuda() {
        return deuda
    }
    method dinero() {
        return dinero
    }
    method sueldo(nuevoSueldo) {
        sueldo = nuevoSueldo
    }
    method gastar(cantidad) {
        if (cantidad - dinero > 0) {  // si la cantidad de dinero que tiene que gastar menos el dinero disponible es mayor a 0
            deuda = cantidad - dinero + deuda // entonces la deuda va a ser ese dinero que falta mas la deuda que ya existia
            dinero = 0 // y el dinero queda en 0
        } else {
        dinero = dinero - cantidad // si no es asi entonces se le va a restar al dinero lo que se gasta
        }
    }
    method cobrar() {
        if ( self.sueldo() - deuda > 0) {
           dinero = self.sueldo() - deuda + dinero 
           deuda = 0
        } else {
            deuda = deuda - self.sueldo()
        }
    }
}
object baigorria {
    var empanadasVendidas = 0 //cantidad de empanadas vendidas
    const precio = 15 //precio de cada empanada
    var totalCobrado = 0
    method vender(cantidad) {
        empanadasVendidas = empanadasVendidas + cantidad
    }
    method sueldo() {
        return empanadasVendidas * precio
    }
    method totalCobrado() {
        return totalCobrado
    }
    method cobrar() {
        totalCobrado = totalCobrado + self.sueldo()
        empanadasVendidas = 0 
    }
}
