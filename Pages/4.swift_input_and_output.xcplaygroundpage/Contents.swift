//: [Previous](@previous)

import Foundation

var greeting = "Swift input and output"
print(greeting)


// swift output
var language = "Swift"
print(language)

// actual format
print("items" , separator: "" , terminator: "\n")

// item parameter
print("hellow i am zahid khan")
print("zahid" , "ali")
print("khan " , "2345", "$")

// saparator parameter
print("hi","how","are","you" , separator: " ")
print("welcome", "back", "to", "swift", separator: " ")
print("ali", "zain", separator: " & ")

//terminator parameter
print("hello", terminator: " ")
print("world")
print("swift", terminator: "\n")
print("is", "awesome")

print("12345", "67890", "98494784", terminator: "\n")
print("hi", "How its goining", terminator: "\t")
print("today")

//print() with variable and literal
let name = "ali"
let age = 57
print("my name is \(name) and my age is \(age)")

print(777)

// print concatenated string
print("Swift "+" is a modern programming language")
print("bannu"+"is a historical place")

//string interpolation
let moterPower = 5
let motername = "civic"
print("the \(motername) has a power of \(moterPower)hp")



// swift basic input
print("please enter your progressive language:")
let language1 = readLine()!
print("you entered: \(language1)")

