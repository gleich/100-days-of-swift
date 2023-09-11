import UIKit

// Protocols (like abstract classes)
protocol Identifiable {
    var id: String { get set }
}
struct User: Identifiable {
    var id: String
}
func disaplayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

// Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}
protocol NeedsTraining {
    func study()
}
protocol HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTraining, HasVacation {}

// Extensions (adding methods onto classes)
extension Int {
    func squared() -> Int {
        return self * self
    }
    var isEven: Bool {
        return self % 2 == 0
    }
}
let number = 8
number.squared()

// Protocol extensions (implement protocol methods)
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()

// Protocol-oriented programming
protocol Identifiable2 {
    var id: String {get set}
    func identify()
}
extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}
struct User2: Identifiable2 {
    var id: String
}
let twostraws = User2(id: "twostraws")
twostraws.identify()
