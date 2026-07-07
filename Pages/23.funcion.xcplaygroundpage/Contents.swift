//: [Previous](@previous)

import Foundation
// declare a function (A function is a block of code that performs a specific task.It can take inputs (parameters), process them, and optionally return an output (result).
func greet() {
  print("Hello World!")
}

// call the function
greet()

print("Outside function")


func greeting (name : String) -> String {
    var anyName = name
    return anyName
}
var Name = greeting(name: "khan")
print(Name)



// function with parameter
func summation(num1: Int, num2: Int)  {
    print("Sum: \(num1 + num2)")
}
summation(num1: 7, num2: 8)


// with return type
func square (lenght : Int , wight : Int) -> Int {
    var result = lenght * wight
    return result
}
var areaOfSquare = square(lenght: 12, wight: 45)
print(areaOfSquare)


sqrt(5)
print(sqrt(6))

print(pow(5, 3))



// Function Parameters
//A function parameter is a value that is accepted by a function.
func addNumbers(a: Int, b: Int) {
  var sum = a + b
  print("Sum:", sum)
}

addNumbers(a: 2, b: 3)



//with defualt values
func addNumberss( a: Int = 7,  b: Int = 8) {
  var sum = a + b
  print("Sum:", sum)
}
addNumberss(a: 2, b: 3)
addNumberss(a: 2)
addNumberss()


//with argument label
func subtractio(of num1 : Int, from num2 : Int) {
    print(num2 - num1)
}
subtractio(of: 5, from: 10)



//without the parameter laberl or name
func subtraction(_ num1 : Int, _ num2 : Int) {
    print(num2 - num1)
}
subtraction(5, 10)



//Sometimes, we do not know in advance the number of arguments that will be passed into a function. To handle this kind of situation, we can use variadic parameters in Swift.
//Variadic parameters allow us to pass a varying number of values during a function call.
//We use the ... character after the parameter's type to denote the variadic parameters

func multiplication (number : Int...){
    
    var result = 1
    for num in number {
        result = result * num
    }
    print(result)
}

multiplication(number :1, 2, 3, 4)
multiplication(number : 3,4)









// inout (used for call by reference and & in call function
func changeName(name: inout String) {
  if name == "Ross" {
      name = "Joey"
  }
}

var userName = "Ross"
print("Before: ", userName)

changeName(name: &userName)

print("After: ", userName)



//returntype
func addNumbbers(a: Int, b: Int) -> Int {
  var sum = a + b
  return sum
}

let result = addNumbbers(a: 2, b: 3)

print("Sum:", result)


// return multiple values
func culculation (_ number : Int) -> (Int, Int, Int) {
    var square = number * number
    var qube = number * number * number
    return (number, square, qube)
}
var resultt = culculation(3)
print("number \(resultt.0)")
print("square \(resultt.1)")
print("qube \(resultt.2)")





// nested funcion
// outer function
func greetMessage() {
    print("outer funcion ")

    func displayName() {
    print("inner funcion, Good Morning Abraham!")
  }
  displayName()
}
greetMessage()


// outer function
func addNummbers(_ num1 : Int, _ num2 : Int) {
  print("outer function first")

    func display(num1: Int, num2: Int) {
        var res = num1 + num2
        print("inner funcion result: \(res)")
    }

  display(num1: 5, num2: 10)
    
    print("outer function addittion : \(num1 + num2)")
}
addNummbers(5, 6)





//nested funcion return type
func operate(symbol: String) -> (Int, Int) -> Int {

  func add(num1:Int, num2:Int) -> Int {
    return num1 + num2
  }

  func subtract(num1:Int, num2:Int) -> Int {
    return num1 - num2
  }

  let operation = (symbol == "+") ?  add : subtract
  return operation
}

let operation = operate(symbol: "+")
let resullt = operation(8, 3)
print("Result:", resullt)
