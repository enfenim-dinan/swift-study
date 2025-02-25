import UIKit

// how to reuse code with functions
let a = 4
let b = 5
let sum = a + b
print("Let sum of \(a) and \(b) is \(sum)")

func sumOfTwoNumbers() {
    let a = 4
    let b = 5
    let sum = a + b // will be destroyed after finishing the function
    print("Let sum of \(a) and \(b) is \(sum)")
}

sumOfTwoNumbers()

let roll = Int.random(in: 1...10)

func printTimesTable(for number: Int, end: Int) { // parameters // placeholder
    for i in 1...end {
        print("\(number) * \(i)")
    }
}

printTimesTable(for: 4, end: 9) // arguments // actual value

// how to return values from functions
let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func sameLettersRegardlessOrder(_ string1: String, _ string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

print(sameLettersRegardlessOrder("hello", "olleh"))
print(sameLettersRegardlessOrder("hello", "helo"))

func pythagonalTheorem(_ a: Double, _ b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagonalTheorem(3, 4)
print(c)

// how to return multiple values from functions
func getUserData() -> (name: String, age: Int) {
    ("John", 30)
}

let userData = getUserData()
print(userData)

let (name, age) = getUserData()
print(name)
print(age)

let userDataByIndex = getUserData()
print(userDataByIndex.0)
print(userDataByIndex.1)

let (firstName, _) = getUserData()
print(firstName)

// how to customize parameter labels
func rollDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 0..<count {
        rolls.append(Int.random(in: 1...sides))
    }
    
    return rolls
}

let rolls = rollDice(sides: 6, count: 5)
print(rolls)

func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

let lyric = "Love's the death of peace of mind"
print(lyric.hasPrefix("Love is"))
