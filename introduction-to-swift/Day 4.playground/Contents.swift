import UIKit

// for loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}
print("Players gonna ")
for _ in 1...5 {
    print("play")
}

// while loops
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

// repeated loops (only checks the condition at the end of a single exec)
var number2 = 1
repeat {
    print(number2)
    number2 += 1
} while number2 <= 20
print("Ready or not, here I come!")

// exiting loops
var countDown = 10
while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}
print("Blast off!")

// exiting multiple loops
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) = \(product)")
    }
}
