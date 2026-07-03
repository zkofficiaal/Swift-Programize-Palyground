//: [Previous](@previous)

import Foundation

// closure (a closure is a special type of function without the function name.)

var greet = {
    print("hellow world!")
}
greet()


// closure with parameter
var name = { (name: String) in
    print("hello, \(name)")
}
name("zahid")



// with return type
var compute = { (num1 : Int, num2 : Int) -> Int  in
    return num1 * num2
}
var result = compute(5, 6)
print(result)



// closure as a funcion parameter
func sayHellow (action: () -> () ) {
    print("Hellow")
    action()
    print("Done")
}
sayHellow ( action : {
    print("zahid")
})


// trailing closure
func record (name: String, completion: (String) -> ()) {
    print("Recording \(name)")
    completion(name)
    print("ended")
}
record(name: "zahid") {
    print("the best video")
}
