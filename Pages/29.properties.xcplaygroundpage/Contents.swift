//: [Previous](@previous)

import Foundation

//Properties (A Swift variable or constant defined inside a class or struct are called properties.)


// Stored properites(it stores the actual value for each instance of the class or struct
class Person {
    var name : String = ""
    var age : Int = 0
}

var person1 = Person()
person1.name = "zahid"
person1.age = 88
print("Name : \(person1.name) - Age: \(person1.age)")




//computed property(a computed property calculates the value)
class culculator {
    var num1 : Int = 0
    var num2 : Int = 0
    
    var sum : Int {
        num1 + num2
    }
}

var summation = culculator()
summation.num1 = 10
summation.num2 = 5
print("Sum : \(summation.sum)")




// Getter and Setter for computed property
//getter - returns the computed value
//setter - changes the value
