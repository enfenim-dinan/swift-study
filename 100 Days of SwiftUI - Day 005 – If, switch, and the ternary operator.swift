import UIKit

// how to check a condition is true or false
let score = 85

if score > 80 {
    print("You passed the exam")
}

let speed = 88
if speed >= 88 {
    print("Where are you going so fast?")
}
let percentage = 85
if percentage < 85 {
    print("Sorry you failed")
}
let age = 18
if age >= 18 {
    print("You can vote")
}

let firstName = "Dave"
let secondName = "Arnold"

if firstName > secondName {
    print("It's \(secondName) vs \(firstName)")
}

if secondName > firstName {
    print("It's \(firstName) vs \(secondName)")
}

var numbers = [1, 2, 3]
print(numbers)
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

let country = "Canada"

if country ==  "Australia" {
    print("G'day!")
}

var username = "elfenim.dinan"

if username.isEmpty { //username.count == 0 instead of username.count == "" -> comparing string to string isn't best choise bc swift counts all characters individually, or even better - isEmpty == true
    username = "anonymous"
}

print("Welcome, \(username)")

// how to check multuple conditions
let jessAge = 16

if jessAge >= 18 {
    print("You can vote")
} else if jessAge >= 16 {
    print("You can vote in 2 years")
} else {
    print("You can't vote")
}

let temp = 25
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true
if age >= 18 || hasParentalConsent {
    print("You can but the game!")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

// how to use switch statements to check multiple conditions
enum Weather {
    case sun
    case rain
    case snow
    case wind
    case unknown
}

let forecast = Weather.sun

switch forecast {
case .rain:
    print("Take an umbrella with you")
case .snow:
    print("Build a snowman!")
case .wind:
    print("Dress warmly!")
case .unknown:
    print("Our weather forecast is not very accurate…")
default:
    print("Enjoy the weather!")
}

let place = "Paris"

switch place {
    case "Paris":
    print("Let's visit the Eiffel Tower!")
case "Rome":
    print("We can see the Colosseum!")
default:
    print("I'm sorry, I don't know where to go.")
}

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// how to use the ternary conditional operator for quick tests
let citizenAge = 18
let canVote = citizenAge >= 18 ? "Yes" : "No"
print("Can you vote? \(canVote)")

let hour = 23
print(hour < 12 ? "It's morning" : "It's evening")

let names = ["Alice", "Bob", "Charlie"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) crew members"
print(crewCount)

enum Theme {
    case light
    case dark
}

let theme: Theme = .dark

let backgroundColor = theme == .dark ? "black" : "white"
print("Background color: \(backgroundColor)")
