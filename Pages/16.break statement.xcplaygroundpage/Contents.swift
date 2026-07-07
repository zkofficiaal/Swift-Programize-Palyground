//: [Previous](@previous)

import Foundation

// break statement (The break statement is used to terminate the loop immediately when it is encountered.


for i in 1...5 {
  
  if i == 3 {
    break
  }
 
print(i)
    
}



// program to find first 5 multiples of 6
// break in while loop
var i = 1

while (i<=10) {
  print("6 * \(i) =",6 * i)

    if i >= 5 {
      break
   }
 
  i = i + 1
}



// break in nested for loop
for i in 1...3 {
    for j in 1...5 {
        if j == 3 {
            break
        }
        else {
            print("\(i) x \(j) = \(i * j)")
        }
    }
    print()
}


// labeled break
print("labeled break statement")
outerLoop: for i in 1...5 {
    innerLoop: for j in 1...5 {
        if j == 3{
            break outerLoop
        }
        else {
            print("\(i) x \(j) = \(i * j)")
        }
    }
}
