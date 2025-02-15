import UIKit

// how to use type annotations
let lastname: String = "Jackson"
var score: Double = 0

enum UIStylev {
    case light
    case dark
    case system
}

var style: UIStylev
// print(style) // Variable 'style' used before being initialized
style = .dark
print(style)

// checkpoint 2
let plantsInGarden: [String] = ["Rose", "Sunflower", "Lily", "Rose", "Sunflower", "Violet", "Orchide"]
print("Total plants: \(plantsInGarden.count), unique plants: \(Set(plantsInGarden).count)")
