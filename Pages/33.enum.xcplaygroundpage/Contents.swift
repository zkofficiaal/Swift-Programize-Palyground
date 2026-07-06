//: [Previous](@previous)

import Foundation

// enum: an enum (short for enumeration) is a user-defined data type that has a fixed set of related values.We use the enum keyword to create an enum.
enum season {
    case spring, summer, autumn, winter
}

var currentSeason: season = .spring
var CurrentSeaon = season.summer
print("currnt season : \(CurrentSeaon)")



// enum with switch statement
enum PizzaSize {
  case small, medium, large
}

var size = PizzaSize.medium

switch(size) {
  case .small:
    print("I ordered a small size pizza.")

  case .medium:
    print("I ordered a medium size pizza.")

   case .large:
     print("I ordered a large size pizza.");
}



// iterate over an enum(In Swift, we use the CaseIterable protocol to iterate over an enum
enum daysName : CaseIterable{
    case Mon, Tue, Wed, Thu, Fri, Sat, Sun
}
for day in daysName.allCases {
    print("")
}






// enum with raw values(assigning values to  the cases of enum
enum Size : Int {
  case small = 10
  case medium = 12
  case large = 14
}

// access raw value of python case
var result = Size.small.rawValue
print(result)






// associative value with raw types(attach additional information to an enum case.)

enum Laptop {

  // associate string value
  case name(String)

  // associate integer value
  case price (Int)
}

// pass string value to name
var brand = Laptop.name("Razer")
print(brand)

// pass integer value to price
var offer = Laptop.price(1599)
print(offer)





//enum with associated value (sometimes we may want to attach additional information to enum values. These additional information attached to enum values are called associated values.
enum Distance {
    case km(String)
    case miles(String)
}
var dis1 = Distance.km("in matric system")
print(dis1)
var dis2 = Distance.miles("in imperial system")
print(dis2)



// multiple associative values
enum Markks {

 // associate multiple Double values
case gpa(Double, Double, Double)

// associate multiple String values
case grade(String, String, String)
}

// pass three Double values to gpa
var markks1 = Markks.gpa(3.6, 2.9, 3.8)
print(markks1)

// pass three string values to grade
var markks2 = Markks.grade("A", "B", "C")// this associative values is also called touple
print(markks2)







// named associative values
enum Pizza {
    case small (inches : Int)
    case medium (inches: Int)
    case large (inches : Int)
}
var sizes = Pizza.small(inches: 7)
print("Size of small size pizza is : \(sizes)")





//enum Associated Values and Switch Statement
enum Mercedes {

 case sedan(height: Double)
 case suv(height: Double)
 case roadster(height: Double)
}

var choice = Mercedes.suv(height: 5.4)

switch(choice) {
 case let .sedan(height):
   print("Height:", height)

 case let .suv(height):
   print("Height:", height)

 case let .roadster(height):
   print("Height:", height)
}
