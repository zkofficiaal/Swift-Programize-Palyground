//: [Previous](@previous)

import Foundation

// protocol (A blueprint of methods and properties that conforming types must implement.
protocol greet {
    var name : String { get }
    
    func message()
}

class Employe : greet {
    var name: String = "zahid"
    
    func message() {
        print("goog morning", name)
    }
}
var employe1 = Employe()
employe1.message()




protocol Polygon {
    func getArea(lenght : Int, width : Int)
}

class Square : Polygon {
    func getArea(lenght: Int, width: Int) {
        print("area of square is \(lenght * width)")
    }
}

var s1 = Square()
s1.getArea(lenght: 4, width: 3)



// confirming multiple protocols
protocol sum {
    func sum (num1 : Int, num2 : Int)
}

protocol multiplication {
    func multiplication(num1 : Int, num2 : Int)
}

class math : sum, multiplication {
    func sum(num1 : Int, num2 : Int) {
        print("sum: \(num1 + num2)")
    }
    
    func multiplication(num1: Int, num2 : Int) {
        print("multiplication: \(num1 * num2)")
    }
}

var m = math()
m.sum(num1: 4, num2: 5)
m.multiplication(num1: 4, num2: 5)




// swift protocol inheritance
protocol Car {
    var colorOptions: Int { get }
}

// inherit Car protocol
protocol Brand: Car {
    var name: String { get }
}

class Mercedes: Brand {
    var name: String = ""
    var colorOptions: Int = 0
}

var car1 = Mercedes()
car1.name = "Mercedes AMG"
car1.colorOptions = 4

print("Name:", car1.name)
print("Color Options:", car1.colorOptions)




// protocol extension(Protocol extensions let you add default implementations to methods or properties defined in a protocol.This means conforming types don’t always need to implement everything themselves.
protocol Greet {
    var name : String {
        get
    }
    func greet()
}

extension Greet {
    func greet() {
        print("Hello, my name is \(name)")
    }
}

class student : Greet {
    var name : String = ""
}

var std = student()
std.name = "Aman"
print("Name : \(std.name)")
