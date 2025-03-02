import UIKit

// how to create your own classes
class Game {
    var score = 0 {
        didSet {
            print("Score updated to \(score)")
        }
    }
}

let game = Game()
game.score += 10
game.score += 20

let newGame = game
newGame.score += 100

print("Original score: \(game.score)")
print("New score: \(newGame.score)")

// how to make one class inherit from another
class Employee {
    let name: String
    var hours: Int
    
    init(name: String, hours: Int) {
        self.name = name
        self.hours = hours
    }
    
    func printSummary() {
        print("I'm working \(hours) hours a day.")
    }
}

final class Developer: Employee {
    var codeCommitted: Int = 0
    
    init(name: String, hours: Int, codeCommitted: Int) {
        self.codeCommitted = codeCommitted
        super.init(name: name, hours: hours)
    }
    
    override func printSummary() {
        print("I'm writing code \(hours) hours a day, but mostly I'm argue with my manager...")
    }
    
    func work() {
        print("Hi, I'm developer, my name \(name)")
        print("I'm working hard to commit code...")
        print("And I committed \(codeCommitted) lines of code.")
    }
}

final class Manager: Employee {
    var team: [Employee] = []
    
    func work() {
        print("Hi, I'm manager, my name is \(name)")
        print("I'm managing a team of \(team.count) employees.")
    }
}

let developer = Developer(name: "Robert", hours: 8, codeCommitted: 1208)
let manager = Manager(name: "Sansa", hours: 4)


print("******************************")
developer.work()
developer.printSummary()
print("******************************")
manager.team.append(developer)
manager.work()
manager.printSummary()
print("******************************")

// how to add initializers for classes
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let tesla = Car(isElectric: true, isConvertible: false)

// how to copy classes
class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
user2.username = "Nancy"

print(user1.username) 
print(user2.username)

var user3 = user1.copy()
user3.username = "Bob"

print(user1.username) 
print(user3.username)

// how to create a deinitializer for a class
class Color {
    let id: Int
    let color: String
    nonisolated(unsafe) private static var existingId = Set<Int>()

    init(color: String) {
        self.id = Color.generateId()
        self.color = color
        print("Color \(self.color) with id: \(id) is being initialized...")
    }
    
    deinit {
        print("Color \(color) with id: \(id) is being deinitialized...")
    }

    private static func generateId() -> Int {
        var number = Int.random(in: 1...1000)
        while existingId.contains(number) {
            number = Int.random(in: 1...1000)
        }
        existingId.insert(number)
        return number
    }
}

var black = Color(color: "black")
let white = Color(color: "white")
var copyBlack = black

black = white
copyBlack = white

var colors = [Color]()

for i in 1...3 {
    let color = Color(color: "color\(i)")
    colors.append(color)
}

colors.removeAll()

// how to work with variables inside classes
class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func greet() -> String {
        return "Hello, my name is \(name)."
    }
    
    deinit {
        print("\(name) is saying goodbye!")
    }
}

let dina = Person(name: "Dina")
print(dina.greet())
dina.name = "Dinaia"

print(dina.greet())

var nina = Person(name: "Nine")
nina = Person(name: "Ninia")

// checkpoint 7
class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    
    func speak() {
        print("Bark!")
    }
}

final class Husky: Dog {
    override func speak() {
        print("Woof!")
    }
}

final class Labrador: Dog {
    override func speak() {
        print("Arf!")
    }
}

class Cat: Animal {
    let isTamed: Bool
    
    init(isTamed: Bool) {
        self.isTamed = isTamed
        super.init(legs: 4)
    }
    
    func speak() {
        print("Meow!")
    }
}

class Siamese: Cat {
    init() {
        super.init(isTamed: true)
    }
    
    override func speak() {
        print("Purrr")
    }
}

class Lion: Cat {
    init() {
        super.init(isTamed: false)
    }
    
    override func speak() {
        print("ROAR!")
    }
}

let husky = Husky()
husky.speak()

let labrador = Labrador()
labrador.speak()

let siamese = Siamese()
siamese.speak()

let lion = Lion()
lion.speak()
