import UIKit

// creating basic closures
let driving = {
    print("I'm driving in my car")
}
driving()

// accepting parameters in a closure
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving2("London")

// returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
print(drivingWithReturn("London"))

// closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

// trailing closure syntax
travel() {
    print("I'm driving in my car")
}
