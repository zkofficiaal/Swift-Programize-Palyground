//: [Previous](@previous)

import Foundation

//In Swift, a tuple is a group of different values. And, each value inside a tuple can be of different data types.
var info = ("A", 1, 3.14, "zahid")

//accessing
print(info.0)
print(info.2)

// modifing
info.0 = "B"
print("modified toupel:\(info)")
 

// give named to value of touple
var info2 = (name : "zahid", address : "bannu")
print(info2.name)


// nested touple
var info3 = (name : "zahid", address : "bannu", phone : (home : "017", work : "Piros soft") )
print(info3.2.1)

var location = (country : "pakistan", province : "kpk", division : (district : "bannu", district1 : "north waziristan"))
print("exact location: \(location.2.0)")



// add element
var company = ("Programiz","Apple")
company.1 = "Google"
print(company)



// dictionary inside a touple

var laptopLaunch = ("MacBook", 1299, ["Nepal": "10 PM", "England": "10 AM"])
print(laptopLaunch.2)

laptopLaunch.2["USA"] = "11 AM"

print(laptopLaunch.2)
