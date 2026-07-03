//: [Previous](@previous)

import Foundation

//In Swift, two or more functions may have the same name if they differ in parameters (different number of parameters, different types of parameters, or both).
//
//These functions are called overloaded functions and this feature is called function overloading


// funcion overloading by three types(type , number , or both , parameter label



// parameter difference by type
func displayValue(value: Int) {
    print("Integer value:", value)
}

func displayValue(value: String) {
    print("String value:", value)
}

displayValue(value: "Swift")

displayValue(value: 2)



// difference by number
func display(number1: Int, number2: Int) {
   print("1st Integer: \(number1) and 2nd Integer: \(number2)")
}

func display(number: Int) {
   print("Integer number: \(number)")
}

display(number: 5)
display(number1: 6, number2: 8)





// difference by argument label
func display(person1 age:Int) {
    print("Person1 Age:", age)
}

func display(person2 age:Int) {
    print("Person2 Age:", age)
}

display(person1: 25)
display(person2: 38)


