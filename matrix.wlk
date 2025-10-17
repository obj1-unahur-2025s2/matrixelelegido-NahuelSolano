object neo{
    var energia = 100;

    method saltar() { energia = energia / 2; }
    method vitalidad() = energia/ 10 
    method esElElegido() = true;
}

object morfeo{
    var vitalidad = 8;
    var estaDescansado = true;
    
    method esElElegido() = false;

    method saltar() {
        vitalidad = vitalidad - 1;
        estaDescansado = !estaDescansado}
    
    method vitalidad() = vitalidad
}

object trinity{
    method vitalidad() = 0;
    method saltar() {}
    method esElElegido() = false  
}

object nave{
    var pasajeros = [];
    
    method añadirPasajero(nombre){
        pasajeros.add(nombre)
    }

    method pasajeroConMayorVitalidad(){
        return pasajeros.max({p=>p.vitalidad()})
    }

    method vitalidadEquilibrada(){
        return pasajeros.all({ p1 => pasajeros.all({ p2 => p1.vitalidad() <= p2.vitalidad() * 2})})
    }

    method elElegidoEstaEnLaNave(){
        return pasajeros.any({p=>p.esElElegido()})
    }

    method chocar(){
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }

    method acelerar() {
        pasajeros.forEach({p => if(!p.esElElegido())p.saltar()})
    }
}
