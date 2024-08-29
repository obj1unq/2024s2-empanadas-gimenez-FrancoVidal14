
object galvan {
  var sueldo = 15000
  var dinero = 0
  var deuda  = 0
  
  method sueldo() = sueldo

  method sueldo(_sueldo) {
    sueldo = _sueldo 
  }

  method cobrarMes() {
    dinero += sueldo - self.deuda()
    deuda  = sueldo  - dinero - deuda
  }

  method gastar(cantidad){
    deuda  += cantidad 
  }

  method dinero() {
    return if (dinero >= 0) dinero else 0
  }

  method deuda() {
    return if (dinero < 0) dinero else 0
  }
}

object baigorria {
  var empanadasVendidas = 0
  var totalCobrado = 0

  method totalCobrado(){
    return totalCobrado
  }

  method cobrarMes(){
    totalCobrado += self.sueldo()
    empanadasVendidas = 0
  }

  method sueldo() = 15 * self.empanadasVendidas()
  
  method empanadasVendidas() = empanadasVendidas

  method venderEmpanadas(cantidad){
    empanadasVendidas += cantidad 
  } 
}

object gimenez {
  var fondo = 300000
  
  method fondo() {
    return fondo
  }

  method pagarSueldoA(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarMes()
  }
}

