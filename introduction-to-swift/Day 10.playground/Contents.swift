import UIKit

// Creating your own classes
class Dog {
    var name: String
    var breed: String
    
    // must have initializer
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

// Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// overriding methods
class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}
let poppy2 = Poodle2()
poppy2.makeNoise()

// Final classes
// No other class can inherit from this class
final class Dog3 {
}

// Copying objects (references original object
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)
// if Singer was a struct we would get Taylor Swift printed on line 50

// Deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mutability (variables can change, no need for mut keyword)
class Singer2 {
    var name = "Taylor Swift"
}
let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)
