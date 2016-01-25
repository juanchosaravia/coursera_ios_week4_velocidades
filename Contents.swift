//: Playground - noun: a place where people can play

import UIKit

//: Playground - noun: a place where people can play


enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        var velText = "Velocidad Apagado"
        let velocidadPrevia = velocidad.rawValue
        switch (velocidad) {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
            velText = "Velocidad Apagado"
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velText = "Velocidad Baja"
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velText = "Velocidad Media"
        case Velocidades.VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            velText = "Velocidad Alta"
        }
        
        return (velocidadPrevia, "\(velText)")
    }
}

var auto = Auto()

for _ in 1...20 {
    auto.cambioDeVelocidad()
}
