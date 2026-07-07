
import Foundation

var greeting = "Welcome to dataType of Swift"
//A datatype tells Swift what kind of value a variable or constant can hold.
// DataType of swift
var name : String = "ali"
print(name)

// character datatype(Varies (typically 9–24 bytes)    Stores a single Unicode character
var char : Character = "&"
let num : Character = "7"
print("\(char) , \(num)")

//string dataType
var welcome : String = "welcome to swift"
let animal : String = "dog"
let sound : String = "Music"
var Char : String = "A"

// Integer datatype (1 , 2, 4, 8)
var age : Int = 22
var year : Int = 2026
var ballPrice = 632

// float datatype 4 bytes
var pi_value = 3.1415
let e_value = 2.1715
print ("π: \(pi_value), e:\(e_value)")

//Double DataType(8 bytes)
var marks : Double = 45.6789
var merit : Double = 46.789
print("Marks:\(marks), Merit:\(merit)")

// Boolean datatype (1 bytes)
var checkPass : Bool = true
print("\(checkPass)")
var chenckFail : Bool = false
print("\(chenckFail)")


let smallNumber: Int8 = 120 //(1 bytes)   valid
//let tooBig: Int8 = 200             // error: out of range

let mediumNumber: Int16 = 30000// (2 bytes)valid
let largeNumber: Int64 = 9000000000000 // (8 bytes) valid

let onlyPositive: UInt = 42        // valid
//let negativeUInt: UInt = -5        // error: cannot be negative


