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




//computed property(A computed property is a property that doesn’t store a value    directly.Instead, it calculates its value when accessed, )
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


class culculatorr {
    var num1 = 0
    var num2 = 0
    
    var difference : Int {
        get {
            num1 - num2
        }
        
        set(modify) {
            num1 = modify + 100
            num2 = modify + 200
        }
    }
}
var culculateDiff = culculatorr()
culculateDiff.num1 = 20
culculateDiff.num2 = 10

print("diffrence bofore updation : \(culculateDiff.difference)")

culculateDiff.num1 = 5
print("Num1 : \(culculateDiff.num1)")

culculateDiff.difference = 50
print("difference after updation : \(culculateDiff.difference)")
print("num1 after updation the computed property:\(culculateDiff.num1)")

var num3 = culculateDiff.difference
print(num3)





// swift static property(the property that can be accessed and modified by using the struct or class name,A property that belongs to the class itself, not to any object.
class University {

 // static property
    static let name: String = ""

 // non-static property
    var founded: Int = 0
}

// create an object of University class
var obj = University()

// assign value to static property
print(University.name)

// assign value to non-static property
obj.founded = 1991
print(obj.founded)
