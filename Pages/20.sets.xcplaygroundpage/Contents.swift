//: [Previous](@previous)

import Foundation

// sets(A set is a collection of unique data.)
var studentID : Set = [22, 55, 44, 76, 88]
print("Student ID: \(studentID)")


// another type of declaration
var studentID2: Set<Int> = [22, 55, 44, 76, 88]
print("Student ID: \(studentID2)")



// adding elements to a set(insert() )
var studentID3: Set<Int> = [22, 55, 44, 76, 88]
studentID3.insert(11)
print("Student ID: \(studentID3)")
studentID3.insert(22)
print(studentID3)



//remove element from a list
var studentID4: Set<Int> = [22, 55, 44, 76, 88]
studentID4.remove(44)
print("Student ID: \(studentID4)")


studentID4.sorted()
print(studentID4)


print(studentID4.count)

studentID4.forEach(){
    print($0)
}

print(studentID4.contains(77))

print(studentID4.randomElement())

//firstIndex() find the  idnex of an element
let animals = ["Dog", "Cat", "Bird"]
if let index = animals.firstIndex(of: "Cat") {
    print("Index of Cat: \(index)")
}


let organs = ["skin", "leg", "eye"]
if let organIndex = organs.firstIndex(of: "eye" ){
    print("the index of eye \(organIndex)")
}


// loop over a set
let fruits : Set = ["apple", "banana", "cherry"]
for fruit in fruits {
    print("\(fruit)")
}

let names :Set = ["ali", "z.k", "noor"]
for name in names {
    print("\(name)")
}

let sounds :Set = ["bark", "miawe", "toto"]
for sound in sounds {
    print(sound)
}


// set operation

// Union of tow set
var A : Set = [1, 2, 3, 4, 5]
var B : Set = [4, 5, 1, 2, 3]
print("Union : \(A.union(B))")


// intersection
var intersecionSet = A.intersection(B)
print("Intersection: \(intersecionSet)")


// difference between two set
var differenceSet = A.subtracting(B)
print("Difference: \(differenceSet)")

// symmetric difference
var symmetricDifference = A.symmetricDifference(B)
print("symmetricDifference :\(symmetricDifference)")

// checking the subset of another set
var AsubsetB = A.isSubset(of: B)
print("A is a subset of B: \(AsubsetB)")

var BsubsetA = B.isSubset(of: A)
print("B is a subset of A: \(BsubsetA)")


// equal set checking
if A == B {
    print("A is equal to B")
}
else {
    print("A is not equal to B")
}
