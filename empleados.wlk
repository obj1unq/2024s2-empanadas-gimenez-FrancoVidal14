
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

  method deuda(){
    return deuda 
  }

  method dinero() {
    return dinero
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
  var fondos = 300000
  
  method fondos() {
    return fondos
  }

  method pagarSueldoA(empleado) {
    fondos -= empleado.sueldo()
    empleado.cobrarMes()
  }
}

