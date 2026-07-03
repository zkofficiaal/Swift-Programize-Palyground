//: [Previous](@previous)

import Foundation

// while loop
var i = 1
var n = 5
while(i<n){
    print(i)
    i += 1
}


var currentLevel = 1
var maxLevel = 5
var gameCompleted = true
while (currentLevel <= maxLevel){
    
    if gameCompleted {
        print("level \(currentLevel) cpleted")
        currentLevel += 1
    }
}
print("End of game level")




// repeat while loop
var num1 = 2
let N = 6

repeat {
    print(num1)
    num1 += num1
} while (num1 < N)
        


// infinite loop
while(true){
    print("hellow world!")
}


