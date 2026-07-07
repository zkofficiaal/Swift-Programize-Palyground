import Foundation

// optional(dataType, give us nill or the value that a variable have , appending ! or ? to the Type


// optional declaration
var name : String?

var age : Int!

var isStudent : Bool!

print(name)
print(age)
print(isStudent)




// assigning and accessing value from the optional
let price : Int? = 100
print(price)
print(price!)

// ecplicitly declaring an unwrap optional
let price1 : Int! = 200
print(price1)
print(price1!)







// optional handling
//by if-else statement
var  avalue : Int?
var anotherValue : Int! = 100

if avalue != nil {
    print("it  has a value \(avalue!)")
}
else {
    print("avalue has no value")
}

if anotherValue != nil {
    print("it  has a value \(anotherValue!)")
}
else {
    print("anotherValue has no value")
}



// optional binding(if let)
let num: Int! = 700
if let mynum = num {
    print(num)
}else {
    print("no vlaue")
}


// guard statement
func testFuncion(){
    let score : Int? = nil
    guard let scoreValue = score else{
        print("no value")
        return
    }
    print("the score is \(scoreValue)")
}




func showTemprature (_ temp: Int?){
    guard let curentTemp = temp else {
        print("temprature is not available")
        return
    }
    print("the current tempratue is \(curentTemp)")
}
showTemprature(nil)



func showResult (marks: Float?){
    guard let Mymarks = marks else {
        print("result in pendig")
        return
    }
    print("my result is \(Mymarks)")
}
showResult(marks: 3.67)



// nil coalescing operator(a??b means if a is nill then return b
let discountPrice : Int! = 56000
let defaulttprice = 60000
let myprice = discountPrice ?? defaulttprice
print("Prece for me ; \(discountPrice!)")

