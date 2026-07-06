//: [Previous](@previous)

import Foundation

class Hall {
    var lenght : Int = 0
    var width : Int = 0
    var height : Int = 0
    
    func culculateArea () -> Int {
        let area = lenght * width
        return area
    }
    
    func culculateVolume () -> Int {
        let volume = lenght * width * height
        return volume
    }
}

var hall1 = Hall()
hall1.lenght = 10
hall1.width = 5
hall1.height = 3

print("Area of hall1 having Lenght : \(hall1.lenght) and Width: \(hall1.width) is : \(hall1.culculateArea())")
print("Volume of hall1: \(hall1.culculateVolume())")



//A static method belongs to the class itself, not to any object.You don’t need to create an object to call it.It’s shared across all instances of the class.
class culculator {
    var num1 = 0
    var num2 = 0
    
    static func add (num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func multiplication (num1: Int, num2: Int) -> Int {
        return num1 * num2
    }
}

var culculatorObj = culculator()

culculator.add(num1: 10, num2: 20)
culculatorObj.multiplication(num1: 12, num2: 8)



// swift self property
class Marks {

    var marks = 33
    
    func isPassed(marks: Int ){
        if self.marks <= marks {
            print ("Student is passed")
        }else{
            print("the student failed")
        }
    }
}

var student1 = Marks()
student1.isPassed(marks: 34)


//Swift mutating Methods(In Swift, if we declare properties inside a class or struct, we cannot modify them inside the methods)

// in class we can mutate but in struct don't
class Marks1 {

    var marks = 0
    
    func roundOffFuncion(){
        if marks >= 28 {
            marks = 33
            print("marks updated to passed level")
        }else{
            print("Improve marks in the next session")
        }
    }
}

var student2 = Marks1()
student2.marks = 29
student2.roundOffFuncion()
print("the passed marks : \(student2.marks)")

//struct
struct Employee {
    
    var salary = 0.0
    
    mutating func salaryIncrement() {
        // Error Code
        salary = salary * 1.5
    }
}


struct Employee1 {
  var salary = 0
  
  // define mutating function
  mutating func salaryIncrement(increase: Int) {

  // modify salary property
  salary = salary + increase
  print("Increased Salary:",salary)
  }
}

var employee1 = Employee1()
employee1.salary = 20000
employee1.salaryIncrement(increase: 5000)





// swift initializer(An initializer is a special type of function that is used to create an object of a class or struct.we use the init() method to create an initializer.

class  Wall {
  var length: Double

  // initializer to initialize property
  init() {
    length = 5.5
    print("Creating a wall.")
    print("Length = ", length)
  }
}

var wall1 = Wall()




// parameterized initializer
class Walls {
    var length: Double
    var height: Double

    init(length: Double, height: Double) {
        self.length = length
        self.height = height
    }

    func calculateArea() -> Double {
        return length * height
    }
}

// create object and initialize data members
var wall3 = Walls(length: 10.5, height: 8.6)
var wall4 = Walls(length: 8.5, height: 6.3)

print("Area of Wall 1: ", wall3.calculateArea())
print("Area of Wall 2: ", wall4.calculateArea())




// initializer overloading same as funcion overloading
class Person {
    var age : Int
    
    init(){
        age = 29
    }
    
    init (age: Int) {
        self.age = age
    }
    func dispalayAge() -> Int {
        return age
    }
}

var p1 = Person()
var p2 = Person(age: 39)

print(p1.dispalayAge())
print(p2.dispalayAge())



// designated initializer(A designated initializer is the primary initializer of a class.It ensures that all properties of the class are initialized.
class Student {
    var name: String
    var marks: Int
    
    // designated initializer
    init(name: String, marks: Int) {
        self.name = name
        self.marks = marks
    }
}

let student5 = Student(name: "Zahid", marks: 90)
print("Name: \(student5.name), Marks: \(student5.marks)")



// convinience initalizer(A convenience initializer is a secondary initializer that provides an easier or shorter way to create an object.
class Student6 {
    var name: String
    var marks: Int
    
    // designated initializer
    init(name: String, marks: Int) {
        self.name = name
        self.marks = marks
    }
    
    // convenience initializer
    convenience init(name: String) {
        self.init(name: name, marks: 0)  // calls designated initializer
    }
}

let student6 = Student6(name: "Zahid", marks: 90)
let student7 = Student6(name:   "Ali")

print("Student1: \(student6.name), Marks: \(student6.marks)")
print("Student2: \(student7.name), Marks: \(student7.marks)")



class Empl {
    var name : String
    var salery : Int
    
    init (name : String, salery : Int){
        self.name = name
        self.salery = salery
    }
    
    convenience init (salery : Int){
        self.init(name: "", salery:68888)
    }
}
var empl1 = Empl(name: "noor", salery: 7878)
var empl2 = Empl(salery: 666666)

print(empl1.name, empl1.salery)
print(empl2.name, empl2.salery)







//In some cases initializers might or might not work, this is called a failable initializer.
class File {

  var folder: String

  // failable initializer
  init?(folder: String) {

    // check if empty
    if folder.isEmpty {
      print("Folder Not Found")
      return nil
    }
    self.folder = folder
  }
}

// create folder1 object
var file  = File(folder: "")
if (file != nil) {
  print("File Found Successfully")
}
else {
  print("Error Finding File") // 2nd output
}


// memberwise initializer
struct Personp {

    var name: String
    var age: Int
}

// object of Person with memberwise initializer values inside the parentheses () are automatically assigned to corresponding properties of the struct
var person1 = Personp(name: "anit", age: 43)

print("Name:", person1.name)
print("Age:", person1.age)


