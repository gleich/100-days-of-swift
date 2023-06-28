import UIKit

// writing a function
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

// accepting parameters
print("Hello world!") // parameter is "Hello World!"
func square(number: Int) {
    print(number * number)
}
square(number: 8)

// returning values
func square2(number: Int) -> Int {
    return number * number
}
let result = square2(number: 8)
print(result)

// parameter labels
func sayHello(to name: String) { // interal param is name and external is to
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

// omitting parameter labels
func greet(_ person: String) {
    print("Hello \(person)!")
}
greet("Taylor")

// default params
func greet2(_ person: String, nicely: Bool = true) {
    if nicely {
        print("Hello \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet2("Taylor")
greet2("Taylor", nicely: false)

// variadic functions
print("Haters", "Gonna", "Hate")
func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square3(numbers: 1, 2, 3, 4, 5)

// writing throwing functions
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// running throwing functions
do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can't use that password.")
}

// inout parameters (mutable parameters)
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)
