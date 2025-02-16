import UIKit

// how to use a for loop to repeat work
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)!")
}

for i in 1...10 {
    print("5 times \(i) is \(5 * i)")
}

for i in 1...10 {
    print("This is the \(i) times table")
    
    for j in 1...10 {
        print("\(i) times \(j) is \(i * j)")
    }
    print("")
}

for i in 1...5 {
    print("Counting from 1 to 5: \(i)")
}

for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}

for _ in 1...3 {
    print("Iterating without a variable")
}

let colors: [String] = ["red", "green", "blue"]

print(colors[1...]) // print all elements in array from the specific index

// how to use a while loop to repeat work
var countdowm = 10

while countdowm > 0 {
    print("\(countdowm)...")
    countdowm -= 1
}

print("Spaceship engine roaring!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var rollD20 = Int.random(in: 1...20)
var counter = 0

while rollD20 != 20 {
    rollD20 = Int.random(in: 1...20)
    print("You rolled a \(rollD20)")
    counter += 1
}

print("Critical hit! It took \(counter) rolls to get a 20!")

// how to skip loop items with break and continue
let filenames = ["forest.jpg", "text.txt", "photo3.jpg", "movie.mp4"]

for filename in filenames {
    if !filename.hasSuffix(".jpg") {
        continue
    }
    print("Found a picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            let attempt = [option1, option2, option3]
            
            if attempt == secretCombination {
                print("You found the combination! Combination: \(attempt)!")
                break outerLoop
            }
        }
    }
}

// ckeckpoint 3
for i in 1...100 {
    if i.isMultiple(of: 3) {
        if i.isMultiple(of: 5) {
            print("FizzBuzz")
        } else {
            print("Fizz")
        }
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
