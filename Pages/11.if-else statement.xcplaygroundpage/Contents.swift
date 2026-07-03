//: [Previous](@previous)

import Foundation

// if statement
var marks = 53
if (marks > 33) {
    print("the student is passed")
}

let age = 16
if age < 18 {
    print("Not Eligible for Moter Car License")
}


// if else
let Marks = 56
if Marks > 50 {
    print("pass")
}
else {
    print("Fail")
}


var pak_Id = false
if (pak_Id == true ) {
    print("you are a pakistani")
}
else {
    print("not pakistan9")
}

//swift if else if else statement
let std_Marks = 78
if std_Marks > 85 {
    print("A grade")
}
else if (std_Marks > 65){
    print("B grade")
}
else if (std_Marks > 50) {
    print("D grade")
}
else {
    print("F grade")
}



// nested if else statement
let num = 0
if num >= 0 {
    if num == 0 {
        print ("the number is \(num)")
    }
    else {
        print("\(num) is the positive number")
    }
}
else {
    print("\(num) is negative number")
}
