import UIKit

//1. Protocols
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

let myUser = User(id: "1233")
displayID(thing: myUser)

//2.Protocol Inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

//Tworzymy protokół Employee, który dziedziczy od tych wszystkich innych protokołów:
protocol Employee: Payable, NeedsTraining, HasVacation { }

//Teraz możemy tworzyć nowe typy, które adoptują ten pojedynczy Employee protokół, zamiast każdy z tych trzech osobno

//3. Extensions
//Możemy dodać extension do Int typu, tak że ma squared() method, która zwraca dany numer pomnożony przez siebie:
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

//4. Protocol Extansions
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

//5.Protocol Oriented Programming

// Nasz protokół
protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

// Rozszerzenie protokołu:
extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable2 {
    var id: String
}

// User dostaje method identity:
let twostraws = User2(id: "twostraws")
twostraws.identify()
