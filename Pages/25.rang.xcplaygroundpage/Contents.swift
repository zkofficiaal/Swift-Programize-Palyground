//: [Previous](@previous)

import Foundation

// range(a range is a series of values between two numeric intervals)

// 1...4 is close range
for numbers in 1...4 {
  print(numbers)
}

//half open range
for numbers in 1..<4 {
  print(numbers)
}


// one sided range
var range = 2...
print(range.contains(5))

var range1 = ...4
print(range1.contains(-1))

var range3 = ..<03
print(range3.contains(8))


// range with array
let name = ["ali", "zian", "safwan"]
for name in name[0...2]{
    print(name)
}
