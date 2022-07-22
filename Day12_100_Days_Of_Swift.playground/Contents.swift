import UIKit

//1. Handling missing data
// Tworzenie optional:
var age: Int? = nil
// Kiedy już znamy wiek, to możemy tego użyć:
age = 38


//2.Unwrapping Optionals
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}

//3.Unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
// guard kod skończy, ale my możemy używać unwrapped:
    print("Hello, \(unwrapped)!")
}

func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
// result getMeaningOfLife() będzie wyłącznie wydrukowany, jeśli zwrócimy Int, a nie nil
    if let name = getMeaningOfLife() {
        print(name)
    }
}

func printMeaningOfLife2() {
    guard let name = getMeaningOfLife() else {
        return
    }
    print(name)
}

//4.Force unwrapping
//String, który zawiera numer możemy przekonwertować na Int:
let str = "5"
let num = Int(str)
//To sprawia, że num jest optional
//Możesz force unwrap ten num:
let num2 = Int(str)!
//jeśli str to było coś, czego nie można skonwertować na Int, kod się wyłoży.

//5.Implicitly unwrapped optionals
let age2: Int! = nil

//6.Nil coalescing operator
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = scores["Crusher"] ?? 0
let crusherScore2 = scores["Crusher", default: 0]

//7.Optional Chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

//8.Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//używająć do catch:
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// Używając try?:
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

//Używając try! możemy zapisać to tak:
try! checkPassword("sekrit")
print("OK!")


//9.Failable Initializers
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

//10.Type casting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

// Tworzymy Array z tych class:
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

class Person2 {
    var name = "Anonymous"
}

class Customer: Person2 {
    var id = 12345
}

class Employee: Person2 {
    var salary = 50_000
}


let customer = Customer()
let employee = Employee()
let people = [customer, employee]


for person in people {
    if let customer = person as? Customer {
        print("I'm a customer, with id \(customer.id)")
    } else if let employee = person as? Employee {
        print("I'm an employee, earning $\(employee.salary)")
    }
}
