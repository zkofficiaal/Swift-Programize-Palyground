//: [Previous](@previous)

import Foundation

// inheritance (Inheritance allows us to create a new class from an existing class.The new class that is created is known as subclass (child or derived class) and the existing class from which the child class is derived is known as superclass (parent or base class).

class animal {
    var name : String = ""
    
    func eat () {
        print("i can eat")
    }
}

class dog : animal {
    var sound : String = ""
    
    func display () {
        print("i am a \(name) and my sound is \(sound)")
    }
}

let myDog = dog()
myDog.name = "Poppy"
myDog.sound = "Woof"
myDog.display()




// Mathod overriding in inheritance

