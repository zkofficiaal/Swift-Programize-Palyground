//: [Previous](@previous)

import Foundation

// operator
print(1 + 2)
print("1" + "2")

var a = 7
var b = 2

// addition
print (a + b)

// subtraction
print (a - b)

// multiplication
print (a * b)

//division
print(a / b)

// remainder
print(a % b)

// assigment operator
var x: Int = 10
var y = 20

x = y
print(x)
print(y)

x += y
print(x)

//comparison operator
var w: Int = 10
var z: Int = 20

print(w == z)
print(w != z)
print(w > z )
print(w < z )

// logical operator
var d = 7
var e = 20
var f = 10

print(d > e && f > e)// logical and
print(d > e || f > e)
print(!(d > e))



//bitwise operator(binary)
let aa = 6   // 110 in binary
let bb = 3   // 011 in binary
print(aa & bb)   // 2 , binary and
print(aa | bb)   // 7 , or
print(aa ^ bb)   // 5 , xor
print(~aa)      // -7 , compliment
print(aa << 1)  // 12
print(aa >> 1)  // 3


// ternary opertor
a > 5 ? print("a is greater than 5") : print("a is less than 5")
aa < 4 ? print("aa is less then 4") : print("greater than")


// nil coalescing operator
var num1 : Int?
var num2 = num1 ?? 34
print(num2)

// range operator
for i in 1...3{
    print(i)
}
