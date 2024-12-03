import UIKit

//////////////////////// 1 ////////////////////////

// VARIABLES AND CONSTANTS

//var name = "Edu"
//name = "Kevin"
//name + " Husband"

//let city = "Berlin"
//print("\(name) lives in \(city)")

// OPERATIONS AND EXPRESSIONS

let a = 30
let b = 7
a - b
a != b
a > b
a < b

// STRINGS: CONCATENATION & INTERPOLATION


var country = "Brazil"
country.append("Brasil")

let greeting = "Hello " + country



var name = "Kevin"
let city = "Berlin"
print("\(name) lives in \(city)")

// CONDITIONALS STATEMENTS

let temperature = 32

if temperature > 28 {
    print("It's 🔥")
} else if temperature >= 12 {
    print("It's 👍🏽")
} else {
    print("It's 🥶")
}

// SWITCH STATEMENTS

let score = 10

switch score {
case 0..<5:
    print("fail")
case 5..<10:
    print("pass")
default:
    print("invalid")
}

// LOOPS

//for in
let movies = ["Alien", "Blade Runner", "Gladiator"]

for movie in movies {
    print(movie)
}

// while
var counter = 5

while counter > 0 {
   print("Countdown: \(counter)")
counter -= 1
}

var attempts = 0
let maxAttempts = 3

//repeat-while
repeat {
    print("Attempt \(attempts + 1)")
    attempts += 1
} while attempts < maxAttempts


//continue and break

for number in 1...10 {
    if number == 4 {
        continue
    }
    if number == 8 {
        break
    }
    print("Number: \(number)")
}

//FUNCTIONS

func greet(name: String, age: Int) -> String{
    return "Hello my dear husband \(name) wo is \(age) years old!"
}

greet(name: "Kevin", age: 30)


//CLOSURES

let multiply: (Int, Int) -> Int = { ($0 * $1)}
print(multiply(24,6))


//Trailing Closure

func performAction(action: () -> Void) {
    action()
}

performAction {
    print("perform Action caled...")
}

// Capturing values in Closures

func incrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    return {
        total += incrementAmount
        return total
    }
}

let incrementByTwo = incrementer(incrementAmount: 2)
print(incrementByTwo())
print(incrementByTwo())

//  NIL-COALESCING OPERATOR


var animal: String? 
print(animal ?? "cat")
