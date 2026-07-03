//: [Previous](@previous)

import Foundation

//Swift dictionary is an unordered collection of items. It stores elements in key/value pairs. Here, keys are unique identifiers that are associated with each value.


// creat a dictionary
var inof = ["name" : "zahidKhan", "age": "twentyTwo"]

var info2 = [1: "one", 2: "two", 3: "three"]

var info3 = ["one": 1, "two": 2, "three": 3]

var info4 : [String : Float] = ["pi" : 3.14157, "e" : 2.17728]


// updating element ot a dictionary
info4 ["five"] = 5.0
print("addign five : \(info4)")

info4 ["pi"] = 3.14
print("Round of the pi value : \(info4)")

// access the element of dictionary
print("Accessed element : \(info4["pi"] ?? 0.0)")



// access all the values fromthe dictionary by using values property
var cities = ["Nepal":"Kathmandu", "China":"Beijing", "Japan":"Tokyo"]
print("Dictionary: \(cities)")

print("All the values from the dictionary : \(cities.values)")



// removeValue to remove the value
if let removedValued = cities.removeValue(forKey: "China") {
    print("after removin value: \(cities)")
    print(removedValued)
}

//loop over dictionary
var classification = ["Fruit": "Apple", "Vegetable": "Broccoli", "Beverage": "Milk"]

print("Keys: Values")

for (key,value) in classification {
  print("\(key): \(value)")
}




// counting number
print(classification.count)



// empty dictionary
var emptyDict: [String: String] = [:]
print("Empty Dictionary: \(emptyDict)")

var Emptydict = [String : Int]()
print(Emptydict)
