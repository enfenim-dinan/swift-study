import UIKit

// how to create and use protocols
protocol Vehicle {
    var name: String { get }
    var currentPassenger: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

protocol ElectricVehicle: Vehicle {
    func chargeBattery()
}

// adopting protocol or conforming from protocol
struct Car: Vehicle, ElectricVehicle {
    var name = "Car"
    var currentPassenger: Int
    
    func estimateTime(for distance: Int) -> Int {
        return distance / 60
    }
    
    func travel(distance: Int) {
        print("Let's travel by car, distance - \(distance)")
    }
    
    func chargeBattery() {
        print("Charging!")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    var name = "Bicycle"
    var currentPassenger: Int
    
    func estimateTime(for distance: Int) -> Int {
        return distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance) km")
    }
    
    
}

func commute(distance: Int, by vehicle: Vehicle) {
    let estimateTime = vehicle.estimateTime(for: distance)
    if estimateTime > 8 {
        print("If I'm going to use \(vehicle.name) for \(distance) it will take - \(estimateTime) hours. That's too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    vehicles.forEach {
        let estimate = $0.estimateTime(for: distance)
        print("\($0.name): \(estimate) hours to travel \(distance) km")
    }
}

let car = Car(currentPassenger: 3)
commute(distance: 100, by: car)

let bicycle = Bicycle(currentPassenger: 1)
commute(distance: 100, by: bicycle)

getTravelEstimates(using: [car, bicycle], distance: 150)

// how to use opaque return types
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

// how to create and use extensions
var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed)


extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

print("trimmed() example")
let newTrim = quote.trimmed()
print(quote)
print(newTrim)


extension String {
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

print("trim() example:")
print(quote)
quote.trim()
print(quote)

let lyrics = """
I'm your dream, make you real
I'm your eyes when you must steal
I'm your pain when you can't feel
Sad but true
I'm your dream, mind astray
I'm your eyes while you're away
I'm your pain while you repay
You know it's sad but true
Sad but true
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lort = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
let witcher = Book(title: "Witcher", pageCount: 659)

// how to create and use protocol extensions
extension Collection { // before was array
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Anna", "Peter", "Rebecca"]

if guests.isNotEmpty {
    print("Guests count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let engineer = Employee(name: "Tom")
engineer.sayHello()

// checkpoint 8
protocol Building {
    var type: String { get }
    var rooms: Int { get }
    var price: Int { get set }
    var agentName: String { get set }
    
    func printSummary()
}

extension Building {
    func printSummary() {
        print("This is a \(type) with \(rooms) room\(rooms > 1 ? "s" : "") is selling for $\(price) by \(agentName)")
    }
}

struct House: Building {
    let type = "house"
    var rooms: Int
    var price: Int
    var agentName: String
}

struct Office: Building {
    var type = "office"
    var rooms: Int
    var price: Int
    var agentName: String
}

var house = House(rooms: 3, price: 1_500_000, agentName: "Sara Vilston")
var office = Office(rooms: 10, price: 5_000_000, agentName: "Neil O'Hara")
house.printSummary()
office.printSummary()

protocol Fruit {
    var name: String { get }
}

class Apple: Fruit {
    let name = "apple"
}

class Orange: Fruit {
    let name = "orange"
}

var l: [Fruit] = [Apple]()
l.append(Orange())
l.append(Apple())

l.forEach {
    print($0.name)
}

let apple = Apple()

func take(fruit: Fruit) {
    print("I'm taking \(fruit.name)")
}

let takeCopy = take
takeCopy(apple)
