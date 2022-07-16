import UIKit

//1. Tworzenie własnych classes

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) { //jeśli class ma properties to musisz zawsze użyć własny initializer.
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

//2.Class inheritance
class Dog2 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Nowa class na podstawie Dog. Odziedziczy te same properties i initializer jak Dog class.

class Poodle: Dog2 {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//3. Overriding methods
class Dog3 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle2: Dog3 {
//musisz użyć override, jeśli chcesz zmienić funkcję dziedziczoną od parent:
    override func makeNoise() {
        print("Yip!")
    }
}

//4. Final class

final class Dog4 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//5.Copying objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)


var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

//6. Deinitializers

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

//7.Mutability

class Singer2 {
    var name = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)
