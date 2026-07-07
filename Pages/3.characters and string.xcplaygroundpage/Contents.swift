//: [Previous](@previous)

import Foundation

var greeting = "Welocme to swift character and string"

//character type
var character : Character

var alphabet : Character = "a"
var symbol : Character = "!"
var number : Character = "1"
print("a: \(alphabet) , !: \(symbol) , 1: \(number)")



// string
var name : String
var country : String = "pakistan"
var message : String = "Swift is modern programming language"


// string operation
//1.string comparison
var str1 : String = "ahmed"
var str2: String = "pakistan"
var str3 : String = "ahmed "
print(str1==str2)
print(str1 == str3)

//2.join two string
var str4 : String = "hello"
var str5 : String = "world"
var str6 : String = str4 + " " + str5
print(str6)

//concetinate using + and +=
var firstName = "Zahid"
var lastName = "Khan"
let fullname = firstName + " " + lastName
print(fullname)
firstName += lastName
print(firstName)

//3. lenght of string
let str7 : String = "Swift is a programming language"
print(str7.count)

print(str7.isEmpty)

print(str7.capitalized)//first letter of each word will become capital

print(str7.lowercased())

print(str7.hasPrefix("S"))

print (str7.hasSuffix("g"))


//escap sequensce or string inside a string
var university : String = "university of science and \"technology\" bannu)"
print(university)
print("univerity of science and \"technolgy \0 bannu")

print("university of science and \"technology\t bannu)")
print("university of science and \"technolgy\n bannu")
print("univerity of science and \"technolgy \\ bannu")

// string interpolation
var firstName1 : String = "Zahid"
var lastName1 : String = "Khan"
var fullname1 : String = "\(firstName1) \(lastName1)"
print(fullname1)

var names = "zahid khan"
var age = 22
print("My name is \(names) and my age is \(age)")

//Multiline string
let my_Intro = """
my name is zahid khan , i a student of software engineering in the university of science and technology banuu. I have hand on experience in Swfit  , Swiftui , Xcode and rest apis.
"""

// string instance
var str = String()
print(str.isEmpty)
str = String("Hi! , Zahid")
print(str)

