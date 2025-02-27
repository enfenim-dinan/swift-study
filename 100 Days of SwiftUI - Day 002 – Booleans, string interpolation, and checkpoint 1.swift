import UIKit

// how to store truth with booleans
let goodMood = true
let gameOver = false

let isMultipleOfThree = 120.isMultiple(of: 3)

var isAuthenticated: Bool = false
print(isAuthenticated)

isAuthenticated = !isAuthenticated
print(isAuthenticated)

isAuthenticated.toggle()
print(isAuthenticated)

// how to join string together
// string concatenation
let firstPart = "Hello"
let secondPart = " World!"
let greeting = firstPart + secondPart

print(greeting)

let stopWord = "Here we go"
let ending = "!"
let finalGreeting = stopWord + ending + ending + ending
print(finalGreeting)

let luggageCode = "1" + "2" + "3" + "4" + "5" //adding step by step 12, after 123, after 1234 and so on

// string interpolation
let name = "Virdia"
let age = 31
let message = "Hello, my name is \(name) and I am \(age) years old."
print(message)

let number = 11
let mussionMessage = "Appolo \(number) is landing"

print("5 x 5 is \(5 * 5)")

// checkpoint 1
let temperatureInCelsius: Double = 4
let temperatureInFahrenheit: Double = temperatureInCelsius * 9 / 5 + 32
print("\(temperatureInFahrenheit) degrees Fahrenheit is equal to \(temperatureInCelsius) degrees in Celsius")
