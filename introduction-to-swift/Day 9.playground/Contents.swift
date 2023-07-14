import UIKit

// initializers (constuctors)
struct User {
    var username: String
    init() {
        username = "Anonymous"
        print("Created a new user!")
    }
}
var user = User()
user.username = "twostraws"

// referencing the current instance
struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree() // isn't created until accessed
    
    init(name: String) {
        self.name = name
    }
}
var ed = Person2(name: "Ed")

// static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let eddy = Student(name: "Eddy")
let taylor = Student(name: "Taylor")
print(Student.classSize)

// access control
struct Person3 {
    private var social: String
    
    init(social: String) {
        self.social = social
    }
    
    func identify() -> String {
        return "My social security number is \(social)"
    }
}
let edison = Person3(social: "12345")
edison.identify()
