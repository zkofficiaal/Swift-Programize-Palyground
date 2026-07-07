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
final class FileManager : Sendable {

    // create a singleton instance
    static let fileObj = FileManager()

    // private initializer prevents external instantiation
    private init() { }

    // method to request file access
    func checkFileAccess(user: String) {
        if user == "@programiz.com" {
            print("Access Granted")
        } else {
            print("Access Denied")
        }
    }
}

// usage
let userName = "@programiz.com"
let file = FileManager.fileObj   // access singleton instance
file.checkFileAccess(user: userName)
