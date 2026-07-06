//: [Previous](@previous)

import Foundation

//struct a struct is used to store variables of different data types

struct Person {

// define two properties
 var name = ""
 var age = 0
}

// create instance of Person
var person1 = Person()

// access properties and assign new values
person1.age = 21
person1.name = "Rick"

print("Name: \(person1.name) and Age: \( person1.age) ")




// multipel instances of a struct
struct Student {

    var studentID = 0
}

var student1 = Student()
student1.studentID = 101
print("Student ID: \(student1.studentID)")

var student2 = Student()
student2.studentID = 102
print("Student ID: \(student2.studentID)")





// memberwise initializer
struct Personn {

    var name: String
    var age: Int
}

var person11 = Personn(name: "Kyle", age: 19)
print("Name: \(person11.name) and Age: \( person11.age)")




// Mathod inside a swift struct
struct Car {
    var gear = 0

    // method inside struct
    func applyBrake(){
        print("Applying Hydraulic Brakes")
    }
}

// create an instance
var car1 = Car()
car1.gear = 5
print("Gear Number: \(car1.gear)")
car1.applyBrake()




// singleton(A singleton is just a special class that allows only one object to be created.
//class FileManager {
//    // create one shared object
//    static let shared = FileManager()
//    
//    // stop others from making new objects
//    private init() { }
//    
//    // example method
//    func checkFileAccess(user: String) {
//        if user == "@programiz.com" {
//            print("Access Granted")
//        } else {
//            print("Access Denied")
//        }
//    }
//}
//
//// usage
//let file = FileManager.shared
//file.checkFileAccess(user: "@programiz.com")





class FileManager{

 // create a singleton
 static let fileObj = FileManager()

 // create a private initializer
private init() {
  
}

 // method to request file
func checkFileAccess(user: String) {

  // condition to check username
  if user == ("@programiz.com") {

    print("Access Granted")
  }

  else {
    print(" Access Denied")
  }
}
}

let userName = "@programiz.com"

// access method
let file = FileManager.fileObj

file.checkFileAccess(user: userName)
