//: [Previous](@previous)

import Foundation

// recursion
func coundown (number : Int) {
    print(number)
    if number == 0 {
        print("countdown stoped")
    }
    else{
        coundown(number: number - 1 )
    }
}
coundown(number: 5)


//factorial
func factorial (num : Int) -> Int {
    if num == 0 {
        return 1
    }
    else{
        return num * factorial(num: num - 1)
    }
}
var factResult = factorial(num: 5)
print("the factorial is : \(factResult)")
