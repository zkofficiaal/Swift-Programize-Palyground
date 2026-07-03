//: [Previous](@previous)

import Foundation

// Arrays (An array is a collection of similar types of data , duplication is allowed)
// sets (it is a collection of similar types of data , wiht no duplication)
//Swift dictionary is an unordered collection of differnt dayatype but all key are of same type and also all value of the same datatype. It stores elements in key/value pairs. Here, keys are unique identifiers that are associated with each value.
//In Swift, a tuple is a group of different values. And, each value inside a tuple can be of different data types.




// an array of integer type
var numbers : [Int] = [2, 4, 6, 8]
print("Array: \(numbers)")




//creating an empty array
var value = [Int]()
print(value)


// access an array elements
var languages = ["Swift", "Java", "C++"]
print(languages[0])   // Swift
print(languages[2])   // C++


var numbbers = [2, 4, 6, 8]
print("Array: \(numbbers)")





// addign new element to the array( append():The append() method adds an element at the end of the array
var oddNumberss = [1,3,5,9]
print("array before adding: \(oddNumberss)")
oddNumberss.append(7)
print("array after adding: \(oddNumberss)")


var randomNumber = [1, 2, 3, 4, 5]
var evenNumber = [0, 2, 4, 6, 8]
randomNumber.append(contentsOf: evenNumber)
print("Both arrays element are added:\(randomNumber)")




// insert function(The insert() method is used to add elements at the specified position of an array)
var num = [23, 57, 7, 3, 8, 6, 9]
print("before inserting \(num)")
num.insert(5, at:2)
print("after inserting \(num)")



// modifiying the element of an array
var number1: [Int] = [1, 2, 3, 4, 5]
number1[2] = 100
print("Modified array: \(number1)")




// Remove an Element ( remove(at: 1) )
var Languages = ["Swift","Java","Python"]

print("Initial Array: \(Languages)")

let removedValue = Languages.remove(at: 1)

print("Updated Array: \(Languages)")
print("Removed value: \(removedValue)")

print("Remove first: \(Languages.removeFirst())")

print("remove last : \(Languages.removeLast())")



// array remaining funcion
var numbers5 = [5, 2, 9, 1]
numbers.sort()// sorted in ascending order
print(numbers5)


var items = ["A", "B", "C", "D"]
items.shuffle()
print(items)   // Randomise the order of the array


let names = ["Ali", "Sara", "Zahid"]
names.forEach { // cal the closure for each
    print($0)
}


// contains , checks that an element exists
let numbers6 = [1, 2, 3, 4, 5]
print(numbers6.contains(3))   // true
print(numbers6.contains(10))  // false


var letters = ["A", "B", "C", "D"]
letters.swapAt(0, 2)
print(letters)   // ["C", "B", "A", "D"]


var num2 = [1, 2, 3, 4, 5]
num2.reverse()
print(num2)



// applying all funcionality on string
var Names = ["ali", "zain", "noor"]
print(Names.count)

Names.append("safwan")
print(Names)

Names.insert("Wali", at: 0)
print(Names)

Names.remove(at: 2)
print(Names)

//Names.removeFirst()
//print(Names)

////Names.removeLast()
//print(Names)

Names.sort()
print(Names)

Names.shuffle()
print(Names)

Names.reverse()
print(Names)

Names.swapAt(1, 3)
print(Names)

print(Names.contains("ali"))

Names.forEach{
    print($0)
}

print(Names.isEmpty)



// looping through array
let fruits = ["Apple", "Peach", "Mango"]

for fruit in fruits {
  print(fruit)
}

//
if let index = fruits.firstIndex(of: "Mango") {
    print("the index of mango is \(index)")
}
let indexof = fruits.firstIndex(of: "Peach")
print("address : \(indexof)")

// array with mixed data types (by using Any DataType)
let info : [Any] = ["zahid", 22, 3.67]
print(info)
