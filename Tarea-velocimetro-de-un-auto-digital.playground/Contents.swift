//: Playground - noun: a place where people can play
//@Autor: José Manuel Patiño Gutiérrez
//Descripción: Tarea Velocimetro de un automovil Digital

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50 , VelocidadAlta = 120
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad = Velocidades.Apagado
    
    init (){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        if velocidad.rawValue == 0{
            self.velocidad = Velocidades.VelocidadBaja
            return (0, "Apagado")
        }else if velocidad.rawValue == 20{
            self.velocidad = Velocidades.VelocidadMedia
            return (20, "Velocidad Baja" )
        }else if velocidad.rawValue == 50{
            self.velocidad = Velocidades.VelocidadAlta
            return (50, "Velocidad Media")
        }else if velocidad.rawValue == 120{
            self.velocidad = Velocidades.VelocidadMedia
            return (120, "Velocidad Alta")
        }else{
            return (0, "")
        }
    }
    
}

var auto = Auto()

for var i = 1 ; i <= 20 ; i++ {
    print("\(i): \(auto.cambioVelocidad())")
}









