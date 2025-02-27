import UIKit

// how to create and use closures
func greetUset() {
    print("Hi, user!")
}
greetUset()

var greetCopy: () -> Void = greetUset
greetCopy()

let sayHello = {
    print("Hello!")
}
sayHello()

let sayHelloToUser = { (name: String) -> String in
    "Hello, \(name)!"
    
}

func getUserData(for id: Int) -> String {
    if id == 1 {
        return "Hello, Neo!"
    } else {
        return "User \(id)"
    }
}

let data: (Int) -> String = getUserData
let user = data(1)
print(user)

let team = ["Charlie", "David", "Eve", "Bob", "Alice", "Tim", "John", "Mary"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Tim" {
        return true
    } else if name2 == "Tim" {
        return false
    }
    
    return name1 < name2
}

let sortedTeamByCaptain = sortedTeam.sorted(by: captainFirstSorted)
print(sortedTeamByCaptain)

let caprainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Tim" {
        return true
    } else if name2 == "Tim" {
        return false
    }
    
    return name1 < name2
})

// how to use trailing closures and sharthand syntax
let caprainFirstTeamBetter = team.sorted(by: { name1, name2 in // it knows that we should pass string and return bool
    if name1 == "Tim" {
        return true
    } else if name2 == "Tim" {
        return false
    }
    
    return name1 < name2
})

let caprainFirstTeamEvenBetter = team.sorted {
    if $0 == "Tim" { // better to use $0 if they used only once
        return true
    } else if $1 == "Tim" {
        return false
    }
    
    return $0 < $1
}

let reversedSortedTeam = team.sorted { $0 > $1 }
print("reversedSortedTeam: \(reversedSortedTeam)")

let tOnly = team.filter {$0.hasPrefix("T")}
print("tOnly: \(tOnly)")

let upperCasedTeamSorted = team.map {$0.uppercased()}
print("upperCasedTeam: \(upperCasedTeamSorted.sorted())")

// how to accept functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        numbers.append(generator())
    }
    
    return numbers
}

func generator() -> Int {
    return Int.random(in: 0..<100)
}

let arrayOfNumbers = makeArray(size: 10, using: generator)
print("arrayOfNumbers: \(arrayOfNumbers)")

let arrayOfNumbers2 = makeArray(size: 10) { Int.random(in: 0..<100) }
print("arrayOfNumbers2: \(arrayOfNumbers2)")

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("First work:")
    first()
    
    print("Second work:")
    second()
    
    print("Third work:")
    third()
}

doImportantWork(
    first: { print("First task") },
    second: { print("Second task") },
    third: { print("Third task") }
)

// checkpoint 5
let luckyNumber = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
luckyNumber.filter{ !$0.isMultiple(of: 2) }.sorted{ $0 < $1 }.map{ "\($0) is a lucky number" }.forEach{ print($0) }
