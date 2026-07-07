import Foundation

let names = ["zahid", "safwan", "rashid", "arif"]
for name in names {
    print ("\(name)")
}



// using of where  in for in loop
let oddNumbers = [ 1, 2, 3, 5, 7, 9, 11]

for number in oddNumbers where number != 2 {
    print("\(number) is an odd number")
}


// for loop with range
for value in 1...4 {
    print(value)
}

for i in 1..<4 {
    print("\(i)")
}

//stride funcion(each iteration increment by some fixed value9
for num in stride(from: 1, to: 30, by: 7) {
    print("\(num)")
}

