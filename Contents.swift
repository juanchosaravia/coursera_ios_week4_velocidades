//: Playground - noun: a place where people can play

import UIKit

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
        var velText = "Apagado"
        switch (velocidad) {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
            velText = "Velocidad Baja"
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velText = "Velocidad Media"
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velText = "Velocidad Alta"
        case Velocidades.VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            velText = "Velocidad Media"
        }
        
        return (velocidad.rawValue, "\(velText)")
    }
}

var auto = Auto()
auto.velocidad
auto.cambioDeVelocidad()
auto.cambioDeVelocidad()
auto.cambioDeVelocidad()
auto.cambioDeVelocidad()
auto.cambioDeVelocidad()
auto.cambioDeVelocidad()
auto.cambioDeVelocidad()
auto.cambioDeVelocidad()
auto.cambioDeVelocidad()

for _ in 1...20 {
    auto.cambioDeVelocidad()
}