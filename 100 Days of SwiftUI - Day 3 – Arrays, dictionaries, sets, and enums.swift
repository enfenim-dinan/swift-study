import UIKit

// how to store ordered data in arrays
var colors: [String] = ["red", "green", "blue"]
let numbers: [Int] = [1, 2, 3]
let temperatures: [Double] = [13.1, 3.5, -2.8]

print(colors[0])
print(numbers[1])
print(temperatures[2])


print("Adding yellow ...")
colors.append("yellow")
print(colors)

print("Adding purple and pink ...")
colors.append(contentsOf: ["purple", "pink"])
print(colors)

print("Adding orange at index 1 ...")
colors.insert("orange", at: 1)
print(colors)

print("Removing color at index 2 (\(colors[2])) ...")
colors.remove(at: 2)
print(colors)

var scores = Array<Int>()
scores.append(100)
scores.append(90)
scores.append(85)

print(scores[1])


var genresOfMusic: [String] = []
genresOfMusic.append("Rock")
genresOfMusic.append("Pop")
genresOfMusic.append("Classical")

print(genresOfMusic)


var characters = ["Arya", "Jon", "Daenerys", "Tyrion"]
print(characters.count)
print("Does array contain Daenerys? : \(characters.contains("Daenerys"))")

characters.remove(at: 3)
print(characters.count)
print("Once afain. Does array contain Daenerys? : \(characters.contains("Daenerys"))")

characters.removeAll()
print(characters.count)

let cities: [String] = ["New York", "San Francisco", "Los Angeles", "Chicago"]
print(cities.sorted())

print(cities.reversed())

// how to store and find data in dictionaries
let employee = [
    "name": "Mark Scout",
    "job": "Macrodata Refinement Chief",
    "location": "San Francisco"
]
// print(employee["name"])
// Expression implicitly coerced from 'String?' to 'Any'

print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

let hasGraduated = [
    "James": false,
    "Mary": true,
    "John": false
]

var olympics = [Int: String]()
olympics[2012] = "London"
olympics[2016] = "Rio de Janeiro"
olympics[2020] = "Tokyo"

print(olympics[2016, default: "Unknown"])

var colorForSeasons = [String: String]()
colorForSeasons["Spring"] = "Green"
colorForSeasons["Summer"] = "Yellow"
colorForSeasons["Autumn"] = "Orange"
colorForSeasons["Winter"] = "Blue"
print(colorForSeasons)
colorForSeasons["Autumn"] = "Red"
print(colorForSeasons)

// how to use sets for fast data lookup
var actors = Set(["Tom Cruise", "Nicolas Cage", "Dwayne Johnson"])
print(actors)

actors.insert("Brad Pitt")
print(actors)

actors.remove("Nicolas Cage")
print(actors)
print(actors.count)

actors.insert("Tom Cruise")
print(actors)
print(actors.count)

actors.insert("Samuel L Jackson")
print(actors)

// how to create and use enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var day = Weekday.monday
print(day)
day = Weekday.tuesday
print(day)
day = .sunday
print(day)

enum Direction {
    case north, south, east, west
}

print(Direction.north)
