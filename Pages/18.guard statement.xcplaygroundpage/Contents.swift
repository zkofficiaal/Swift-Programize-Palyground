//: [Previous](@previous)

import Foundation

//In Swift, we use the guard statement to transfer program control out of scope when certain conditions are not met.



//guard statement
var i = 2

while (i <= 10) {
    
  // guard condition to check the even number
  guard i % 2 == 0 else {
   
     i = i + 1
    continue
  }

  print(i)
  i = i + 1
}



// guard statement inside a funcion
func checkOddEven() {
  var number = 23

  guard number % 2 == 0 else {
    
    print("Odd Number")
    return
  }

  print("Even Number")
}

checkOddEven()





//guard with multiple statement
func checkJobEligibility() {
    
  var age = 33

  guard age >= 18, age <= 40 else {
    print("Not Eligible for Job")
    return
  }
  print("You are eligible for this job")
}
checkJobEligibility()





// guard let statement(While working with Swift Optionals, the guard statement is used as the guard-let statement)

func checkAge(){
    var age : Int? = 22
    
    guard let myAge = age else {
        print("undefined age")
        return
    }
    print ("this the age of zahid")
}
checkAge()



// guard vs if
func voteEligibility() {
    
  var age = 42

  if age >= 18 {
  print("Eligible to vote")
  }
  else {
  print("Not eligible to vote")
  }

}

voteEligibility()





func VoteEligibility() {
    
  var age = 42

  guard age >= 18 else {
  print("Not Eligible to vote")
  return
  }

  print("Eligible to vote")
}

VoteEligibility()
