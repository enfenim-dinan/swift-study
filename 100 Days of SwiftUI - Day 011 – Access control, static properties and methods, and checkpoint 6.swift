import UIKit

// how to limit access to internal data using access control
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if amount > funds {
            return false
        }
        funds -= amount
        return true
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get money")
}

// account.funds -= 1000 // 'funds' is inaccessible due to 'private' protection level

// static properties and methods
struct School {
    nonisolated(unsafe) static var studentCount = 0
    
    static func enrollStudent(student: String) {
        print("\(student) enrolled")
        studentCount += 1
    }
}

School.enrollStudent(student: "Alice")
print(School.studentCount)

// self - the current value of a struct
// Self - the current type of struct

struct AppData {
    static let version: String = "1.0"
    static let savedFilename = "savedData.json"
    static let homeURL = "https://www.example.com"
}

struct Employee {
    let username: String
    let password: String
    
    static let example: Employee = .init(username: "alice", password: "password")
}

// checkpoint 6
enum GearError: Error {
    case invalidGear
}
struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int = 0 {
        didSet {
            print("Gear was changed to \(currentGear). Previous gear was \(oldValue).")
        }
    }
    
    mutating func changeGear(on gear: Int) throws {
        print("You are truing to change gear from \(currentGear) to \(gear)...")
        if gear == 0 {
            print("No change in gear since you alredy have neutral gear.")
        } else if gear < 1 || gear > 10 {
            throw GearError.invalidGear
        } else {
            currentGear = gear
        }
    }
}


var car = Car(model: "Toyota Corolla", numberOfSeats: 5)
do {
    try car.changeGear(on: 1)
    try car.changeGear(on: 11)
} catch {
    switch error {
    case GearError.invalidGear:
        print("Invalid gear. Choose gear from 1 to 10.")
    default:
        print("Unknown error: \(error)")
    }
}
