import UIKit

// arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let beatles = [john, paul, george, ringo]
beatles[1]

// sets (random order and unique items)
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"]) // doesn't have two of "red" and two of "blue"

// tuples (can't add or remove items)
var name = (first: "Taylor", last: "Swift")
name.0 // "Taylor"
name.first // "Taylor"

// dictionaries (key and value system)
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
]
heights["Taylor Swift"]

// dictionary default values (what gets returned when key doesn't exist.
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"] // "Chocolate"
favoriteIceCream["Charlotte", default: "Unknown"] // "Unknown"

// empty collections
var teams = [String: String]() // empty dict
teams["paul"] = "Red"
var results = [Int]() // empty array
var words = Set<String>() // empty set

// enums
enum Result {
    case success
    case failure
}
let result = Result.failure

// enum associated value
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let currentActivity = Activity.running(destination: "Home")

// enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
// counts upward from 1, will assign 2 to venus and so on.
