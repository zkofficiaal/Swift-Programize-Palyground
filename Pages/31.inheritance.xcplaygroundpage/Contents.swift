//: [Previous](@previous)

import Foundation

//Inheritance allows us to create a new class from an existing class.The new class that is created is known as subclass (child or derived class) and the existing class from which the child class is derived is known as superclass (parent or base class).

class animal {
    var name = ""
    
    func eat(){
        print("i am eating")
    }
}

class dog : animal {
    var sound = ""
    
    func dispalay() {
        print(" Animal name is: \(name) and its sound is: \(sound)")
    }
}

var d1 = dog()
d1.name = "Poppy"
d1.sound = "Woof"
d1.dispalay()




//Method overriding means redefining a method of a parent class inside a child class.The child class provides its own implementation of the method.Declared using the override keyword.

// Parent class
class Vehicle {
    func startEngine() {
        print("Starting generic vehicle engine...")
    }
}

// Child class
class Car: Vehicle {
    override func startEngine() {
        print("Starting car engine with key ignition...")
    }
}

// Another Child class
class ElectricCar: Vehicle {
    override func startEngine() {
        print("Starting electric car silently...")
    }
}

// Usage
let v = Vehicle()
v.startEngine()

let c = Car()
c.startEngine()

let e = ElectricCar()
e.startEngine()

let f = Vehicle()
v.startEngine()


print()

// super keyword ( if we need to access the superclass method from the subclass, we use the super keyword)

// Parent class
class Vehiclee {
//    final func startEngine() {
    func startEngine() {
        print("Starting generic vehicle engine...")
    }
}

// Child class
class Carr: Vehiclee {
    override func startEngine() {
        super.startEngine()
        print("Starting car engine with key ignition...")
    }
}

let c1 = Carr()
c1.startEngine()




// prevent mathod overrriding (by final keyword )in above example



// overide computed property
class University {
  // computed property
    var cost: Int {
        return 5000
    }
}
class Fee: University {
 // override computed property
    override var cost: Int {
        return 10000
    }
}
var amount = Fee()
// access fee property
print("New Fee:", amount.cost)
