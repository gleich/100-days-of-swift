import UIKit

// arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

// operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// compound assignment operator
var score = 95
score -= 5 // score is now 90
var quote = "The rain in Spain falls mainly on the "
quote += "Spainards"

// comparison operators
let firstScore2 = 6
let secondScore2 = 4
firstScore2 == secondScore
firstScore2 != secondScore
firstScore2 < secondScore
firstScore2 >= secondScore2
"Taylor" <= "Swift"

// conditions
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 21 {
    print("Blackjack!")
} else if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else {
    print("Regular cards")
}

// combining conditions
let age1 = 12
let age2 = 21
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

// ternary operator
let firstCard2 = 11
let secondCard2 = 10
print(firstCard2 == secondCard2 ? "Cards are the same" : "Cards are different")
if firstCard2 == secondCard2 {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// switch statement
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // runs the code for the next case
default:
    print("Enjoy your day!")
}

// range operator
let score2 = 85
switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
