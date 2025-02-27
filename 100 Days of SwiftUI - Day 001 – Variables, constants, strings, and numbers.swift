import UIKit

var greeting = "Hello, playground"

// how to create variables and constants
greeting = "Hello, Virdia"

var name = "Virdia"
print(name)

name = "Unknown"
print(name)

name = "Virdana"
print(name)

let pi = 3.14
// pi = 3.1415 // Cannot assign to value: 'pi' is a 'let' constant

let dogBreed = "Samoyed"
let meaningOfLife = 42

// how to create a string
let filename = "london.jpg"
let result = "⭐️ You win! ⭐️"
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let shakespearesPoem = """
Shall I compare thee to a summer’s day?
Thou art more lovely and more temperate:
Rough winds do shake the darling buds of May,
And summer’s lease hath all too short a date.
"""

print(filename.count)

let quoteLength = quote.count
print(quoteLength)

print(result.uppercased())

print(shakespearesPoem.hasPrefix("Shall"))
print(filename.hasSuffix("jpg"))

// how to store whole numbers
let score = 10
var reallyBigNumber = 1000000000
reallyBigNumber = 1_000_000_000 // swift ignores underscores 1_00____000_0__000 <- same

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
// compund assigment operators
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2
print(counter)

print(counter.isMultiple(of: 2))
print(10.isMultiple(of: 2))

// how to store decimal numbers
let number = 0.1 + 0.2
print(number) // 0.30000000000000004

let a = 1
let b = 2.0

// type safety
// let c = a + b // Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'

let c = Double(a) + b // or a + Int(b)
print(c)
