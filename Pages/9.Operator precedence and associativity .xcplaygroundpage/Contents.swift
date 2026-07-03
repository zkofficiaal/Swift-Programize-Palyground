//: [Previous](@previous)

import Foundation

// ternary operator
var num1 = 28
var num2 = 76
var num3 = num1 > num2 ? "\(num1) is greater than \(num2)" : "\(num1) is less than \(num2)"
print(num3)


var marks = 69
var result = marks > 50 ? "Pass" : "Fail"
print(result)


var number = 10
if (number > 0){
    print("number is positive")
}else {
    print("number is negative")
}

var numberNature = number > 0 ? "positive" : "negative"
print(numberNature)


// nested ternery operator
let price = 12

var priceForMe = price == 0 ? "Free" : (price < 12 ? "Discounted Price" : "zero percent discuont")
print(priceForMe)

