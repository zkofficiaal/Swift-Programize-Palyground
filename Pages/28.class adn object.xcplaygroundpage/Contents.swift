//: [Previous](@previous)

import Foundation
// class (A class is considered as a blueprint of objects.)

class bike {
    var name = "Default"
    var price : Int = 0
    
}


// object of class is called instance of a class
var bike1 = bike()
bike1.name = "honda"
bike1.price = 100000
print("the bike name is \(bike1.name) and its price is \(bike1.price)")


// multiple object of a class
var bike2 = bike()
var bike3 = bike()
bike2.name = "hero"
bike2.price = 150000
bike3.name = "yamaha"
bike3.price = 120000
print("Bike Name : \(bike2.name) and Price: \(bike2.price)")
print("Bike Name : \(bike3.name) and Price: \(bike3.price)")


// function inside a swift class
class employee {
    var empID = 0
    var empName : String = ""
    
    func display() {
        print("Employee ID is \(empID) and Employee Name is \(empName)")
    }
}
var employee1 = employee()
employee1.empID = 101
employee1.empName = "noor"
employee1.display()



// initializer
class employe {
    var eName = " "
    var eSalary : Int = 0
    
    init (name : String , salery : Int) {
        eName = name
        eSalary = salery
    }
}
var ali = employe (name : "ali", salery: 7777)
print("Name : \(ali.eName) salery : \(ali.eSalary)")
