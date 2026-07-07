//: [Previous](@previous)

import Foundation

// error (An error (exception) is an unexpected event that occurs during program execution. )


// handling of error (by 4 steps)



//1. Create enum of Errors
enum DivisionError : Error {
    case dividedByZero
}

// thrown function
func division (num : Int, den : Int) throws {
    
    if den == 0 {
        throw DivisionError.dividedByZero
    }
    else {
        print("Division : \(num / den)")
    }
}

// call the throws function and handle the error
do {
    try division(num: 50, den: 10)
        print("Valid for division")
}
catch{
    print("Error : the denomination is zero,whick is invalid for division")
    print("erroe : \(error)")
}




// disable error handling(sometimes we can be confident that the throwing function won't throw an error at runtime.so we can write try! during the function call
enum DivisionErrorr: Error {
  
  case dividedByZeroo
}

func divisionn(numerator: Int, denominator: Int) throws {
  if denominator == 0 {
    throw DivisionErrorr.dividedByZeroo
  }
    
  else {
    let result = numerator / denominator
    print("Result:", result)
  }
}

// disable error handling
try! divisionn(numerator: 10, denominator: 9)







// genenrics(Generics allows us to create a single function and class (or any other types) that can be used with different data types.

// generic funcion(In Swift, we can create a function that can be used with any type of data. Such a function is known as a Generic Function.

// create a generic function
func displayData<T>(data: T) {
print("Generic Function data : \(data)")
}

// generic function working with String
displayData(data: "Swift")

// generic function working with Int
displayData(data: 5)




// genric classes(we can also create a class that can be used with any type of data.
// create a generic class
class Information<T> {

  // property of T type
  var data: T

  init (data: T) {
    self.data = data
  }

  // method that return T type variable
  func getData() -> T {
    return self.data
  }
}

// initialize generic class with Int data
var intObj = Information<Int>(data: 6)
print("Generic Class returns:", intObj.getData())

// initialize generic class with String data
var strObj = Information<String>(data: "Swift")
print("Generic Class returns:", strObj.getData())




// type constaints(if we want to use generics for some specific types (such as accepting data of number types) only, then we can use type constraints.
//create a generic function with type constraint
func addition<T: Numeric>(num1: T, num2: T) {

  print("Sum:", num1 + num2)
}

// pass Int value
addition(num1: 5, num2: 10)

// pass Double value
addition(num1: 5.5, num2: 10.8)







// swift extension (In Swift, we can add new functionality to existing types. We can achieve this using an extension.
// class definition
class Temperature {
  var celsius: Double = 0

  func setTemperature(celsius: Double) {
    self.celsius = celsius
    print("Celsius:", celsius)
  }
}

// declare an extension
extension Temperature {

  // add a new method to Temperature class
  func convert() {
    var fahrenheit = (celsius * 1.8) + 32
    print("Fahrenheit:", fahrenheit)
  }
}

// class initialization
let temp1 = Temperature()
temp1.setTemperature(celsius: 16)

// access extension method using class object
temp1.convert()



//computed property in extension is allowed only not stored property
class Circle {
    var radius: Double = 0
}

extension Circle {
  // define computed property
    var area: Double {
        return 3.14 * radius * radius
    }
}

let circle1 = Circle()
circle1.radius = 5
print("Area:", circle1.area)





// extension with protocol
// protocol definition
protocol Brake {
    func applyBrake()
}

// extend protocol
extension Brake {
    func applyBrake() {
        print("Brake Applied")
  }
}

// define class that conforms Brake
class Car: Brake {
    var speed: Int = 0
}

let car1 = Car()
car1.speed = 61
print("Speed:", car1.speed)

// access extended protocol
car1.applyBrake()










// access control (access controls are used to set the accessibility (visibility) of classes, structs, enums, properties, methods, initializers
//public Access Control
class Animal {

  // public property
  public var legCount: Int = 0

  // public method
  public func display() {
    print("I am an animal.");
    print("Total Legs:", legCount)
  }
}

// create an object
var obj = Animal()

// access and assign value to public property
obj.legCount = 4

// access the public method
obj.display()




// private access control
class Student {

  // private property
  private var name = "Tim Cook"

  // private method
  private func display() {
    print("Hello from Student class")
  }
}

var student1 = Student()
//print("Name:", student1.name)
//student1.display()



// fileprivate access control
class Studentt {

  // fileprivate property
  fileprivate var namee = "Tim Cook"

  // fileprivate method
  fileprivate func displayy() {
    print("Hello from Student class")
  }
}

var student11 = Studentt()
print("Name:", student11.namee)
student11.displayy()




//internal access control
class Studdent {

  // define internal property
  internal var namme = "Tim Cook"
}
var studdent1 = Studdent()
  
// access name property
print("Name:", studdent1.namme)






// typealias (A type alias allows you to provide a new name for an existing data type into your program. by using typealias keyword
//Typealias for built-in types
typealias stdName = String
var myName : stdName = "zahid khan"
print(myName)


//Typealias for user defined types
typealias forArray = [Int]
var stdMarks : forArray = [3,5,3,6]
print("student marks : \(stdMarks)")





// swift hashable (In Swift, a Hashable is a protocol that provides a hashValue to our object. The hashValue(long integr) is used to compare two instances.

// hashable protocol and hashvalue
// conform Employee to Hashable
struct Employee: Hashable {
    
    var name: String
    var salary: Int
}

// initialize two objects with different property values
let obj1 = Employee(name: "Sabby", salary: 40000)
let obj2 = Employee(name: "Cathy", salary: 30000)

print("Different hash value: ")
print(obj1.hashValue)
print(obj2.hashValue)

// initialize two objects with same property values
let obj3 = Employee(name: "Lanny", salary: 50000)
let obj4 = Employee(name: "Lanny", salary: 50000)

print("\nSame hash value: ")
print(obj3.hashValue)
print(obj4.hashValue)






// equatable (In Swift, an Equatable is a protocol that allows two objects to be compared using the == operator. The hashValue is used to compare two instances.
struct Emmployee: Hashable {
  var name: String
}

let obbj1 = Emmployee(name: "Sabby")
let obbj2 = Emmployee(name: "Smith")

// compare obj1 and obj2
if obbj1 == obbj2 {
    print("obbj1 and obj2 are equal")
}
else {
    print("obbj1 and obj2 are not equal")
}








