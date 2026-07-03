//: [Previous](@previous)

import Foundation

// switch statement
let today = 5

switch today {
case 1:
    print("Sunday")
    case 2:
    print("Monday")
case 3:
    print("Tuesday")
case 4:
    print("Wednesday")
case 5:
    print("Thursday")
case 6:
    print("Friday")
case 7:
    print("Saturday")
default:
    print("Plese enter valid day number (1...7")
}


//switch statement with fallthrough and range
let marks = 85

switch marks {
    
case 85...100 :
    print("Excellent Student")
    fallthrough
    
case 70..<85:
    print("Very Good Student")
    //fallthrough
    
case 50..<70:
    print("Good Student")
    fallthrough
    
default:
    print("Poor Student")
}


// touple in switch
let std_record = ("Aman", 23)

switch std_record {
    
case ("zahid", 22) :
    print("his gpa is 3.67")
    
case ("Aman", 23) :
    print("His gpa is 2.4")
    
case ("safwan", 25) :
    print("His gpa is 3.8")
    
default:
    print("Other student")
}

