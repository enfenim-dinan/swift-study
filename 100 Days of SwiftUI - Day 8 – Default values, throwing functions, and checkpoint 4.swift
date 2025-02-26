import UIKit

// how to provide default values for parameters
func printTimesTable(for number: Int, end: Int = 10) {
    for i in 1...end {
        print("\(number) x \(i) = \(number * i)")
    }
}

printTimesTable(for: 4)
printTimesTable(for: 4, end: 12)

var colors = ["red", "green", "blue"]
print(colors.count)
colors.removeAll(keepingCapacity: true)
print(colors.count)

// how to handle errors in functions
enum PasswordError: Error {
    case weak
    case tooShort
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.tooShort
    }
    if password.hasPrefix("12345") {
        throw PasswordError.weak
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

do {
    let result = try checkPassword("123456789")
    print(result)
} catch {
    if let passwordError = error as? PasswordError {
        switch passwordError {
        case .tooShort:
            print("Password is too short.")
        case .weak:
            print("Password is weak. Try to use different combination.")
        }
    } else {
        print("Something went wrong.")
    }
}

// checkpoint 4
enum SquareRootError: Error {
    case outOfRange
    case noRoot
}

func findSquareRoot(_ number: Int) throws -> Int {
    var squareRoot = 0
    if number < 0 || number > 10_000 {
        throw SquareRootError.outOfRange
    }
    for i in 1...100 {
        if i * i == number {
            squareRoot = i
        }
    }
    
    if squareRoot == 0 {
        throw SquareRootError.noRoot
    }
    
    return squareRoot
}

let number = 16
do {
    let result = try findSquareRoot(number)
    print("Square root of \(number) is \(result)")
} catch {
    if let squareRootError = error as? SquareRootError {
        switch squareRootError {
        case .outOfRange:
            print("Number is out of range. Try to use number from 1 to 10_000.")
        case .noRoot:
            print("\(number) has no real square root.")
        }
    } else {
        print("Something went wrong.")
    }
}
