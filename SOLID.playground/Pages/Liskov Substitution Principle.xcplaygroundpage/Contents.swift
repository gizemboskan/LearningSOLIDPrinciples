//: [Previous](@previous)

import UIKit

protocol BirdProtocol {
    func walk()
}

protocol FlyingProtocol {
    func fly()
}

protocol FlyingBirdProtocol: BirdProtocol, FlyingProtocol {
    
}

class Eagle: FlyingBirdProtocol {
    func walk() {
        // ...
    }
    
    func fly() {
        // ..
    }
}

class Penguin: BirdProtocol {
    func walk() {
        // . .
    }
}

class Zoo {
    let birds: [FlyingBirdProtocol]
    
    init(birds: [FlyingBirdProtocol]) {
        self.birds = birds
    }
    
    func makeNoise() {
        for bird in birds {
            bird.fly()
        }
    }
}
