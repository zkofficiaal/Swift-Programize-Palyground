//: [Previous](@previous)

import Foundation

for i in 1...3 {
    print("Table of \(i)")
    for j in 1...3 {
    print("\(j) x \(i) = \(i * j)")
    }
    print()
}



// break inside a nested loop (break of inner loop only terminates the inner loop no the outer loop
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

print("break in outer loop")
for i in 1...3 {
    if i == 2 {
        break
    }else {
        for j in 1...5 {
        
            print("\(i) x \(j) = \(i * j)")
        }
    }
        
    print()
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




