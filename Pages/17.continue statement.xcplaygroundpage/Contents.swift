//: [Previous](@previous)

import Foundation
// continue statement(We can use the continue statement with the for loop to skip the current iteration of the loop. Then the control of the program jumps to the next iteration.)

// contine statemnt in for loop
for i in 1...5 {
  
  if i == 3 {
    continue
  }
 
print(i)
    
}

// continue statement in while loop
print("odd number by using continue")
var num = 0

while num <= 10{
  num += 1

  if (num % 2) == 0 {
    continue
}

print("\(num)")
    
}


// using continue (
print("continue in inner loop")
for i in 1...3 {
    for j in 1...5 {
        
        if j == 3 {
            continue
        }
        else {
            print("\(i) x \(j) = \(i * j)")
        }
    }
    print()
}


// continue in outer loop
print("continue in outer loop")
for i in 1...3 {
    if i == 2 {
        continue
    }else {
        for j in 1...5 {
        
            print("\(i) x \(j) = \(i * j)")
        }
    }
        
    print()
}

// labeled statement
print("labeled break statement")
outerLoop: for i in 1...5 {
    innerLoop: for j in 1...5 {
        if j == 3{
            continue outerLoop
        }
        else {
            print("\(i) x \(j) = \(i * j)")
        }
    }
}

