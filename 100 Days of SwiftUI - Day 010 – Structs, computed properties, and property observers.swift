import UIKit

// how to create your own structs
struct Album {
    let title: String
    let artist: String
    let year: Int
    let coverImage: UIImage
    
    func printDetails() {
        print("(\(year)) \(title) by \(artist)")
    }
}

let thrillerAlbum = Album(title: "Thriller", artist: "Michael Jackson", year: 1982, coverImage: UIImage())
thrillerAlbum.printDetails()

let trashAlbum = Album(title: "Trash", artist: "Alice Cooper", year: 1989, coverImage: UIImage())
trashAlbum.printDetails()

print(trashAlbum.title)
print(trashAlbum.artist)

struct Employee {
    let name: String
    var vacationRemaining = 28
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining >= days {
            vacationRemaining -= days
            print("\(self.name) going on the \(days) day vacation")
            print("Days remaining: \(self.vacationRemaining)")
        } else {
            print("Not enough vacation days, \(self.name). You have \(self.vacationRemaining) days remaining.")
        }
    }
}

var john = Employee(name: "John")
john.takeVacation(days: 15)
john.takeVacation(days: 15)

var lana = Employee(name: "Lana", vacationRemaining: 14)
lana.takeVacation(days: 10)
lana.takeVacation(days: 10)

// how to compute property values dynamically
struct Worker {
    let name: String
    var vacationAllocated = 28
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var tim = Worker(name: "Tim")
print("Tim has \(tim.vacationAllocated) days allocated for vacation. ")
tim.vacationTaken += 4
tim.vacationRemaining = 5
print(tim.vacationAllocated)

// how to take action when a property changes
struct Game {
    var score: Int {
        didSet {
            print("Game score updated to \(score), previous one is \(oldValue)")
        }
    }
}

var newGame = Game(score: 0)
newGame.score += 10
newGame.score += 6
newGame.score += 2

struct ContactBook {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("The old list was: \(oldValue)")
        }
    }
}

var contactBook = ContactBook()
contactBook.contacts.append("Alice")
contactBook.contacts.append("Bob")

// how to create custom initializers
struct Player {
    let name: String
    let number: Int
    
    init(name: String = "Anonymous") {
        self.name = name
        number = Int.random(in: 1...99)
    }
    
    func printDetails() {
        print("Player \(name) by number \(number)")
    }
}

let player = Player(name: "Zack")
player.printDetails()
let anonymousPlayer = Player()
anonymousPlayer.printDetails()
