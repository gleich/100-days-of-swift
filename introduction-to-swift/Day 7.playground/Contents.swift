import UIKit

// using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    print("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}


// using closures as parameters when they return values
func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// shorthand parameter names
travel2 { "I'm going to \($0) in my car" }


// closures with multiple parameters
func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel3 {
    "I'm going to \($0) at \($1) miles per hour."
}

// returning closures from functions
func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travel4()
result("London")

// capturing values
func travel5() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result2 = travel5()
result2("London")
result2("London")
result2("London")
