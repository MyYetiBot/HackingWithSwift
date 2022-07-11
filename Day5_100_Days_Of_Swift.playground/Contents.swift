import UIKit

// 1. Writing functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

// 2. Accepting Parameters
func square(number: Int) {
    print(number * number)
}

square(number: 8) //wywołaj funkcję z parametrem

// 3. Returning Values
func square2(number: Int) -> Int {
    return number * number
}
let result = square2(number: 8)
print(result)

func doMath() -> Int {
    return 5 + 5
}

// nie potrzeba return przy jednym tylko wyrażeniuy
func doMoreMath() -> Int {
    5 + 5
}
// ternary operator też nie potrzebuje return ponieważ jest pojedyńczym wyrażeniem.
func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

// Funkcja, która zwraca kilka danych jako Array:
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print(user[0]) // wołamy funkcję, która zwraca pozycję 0 z Array.

// Funkcja, która zwraca wiele danych, jako Dictionary
func getUser2() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}

let user2 = getUser2()
print(user2["first"]) //powinniśmy unwrap odczytywaną wartość z Dictionary

// Tuples okazują się najlepsze do zwracania wielu wartości
func getUser3() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user3 = getUser3()
print(user3.first)


// 4. Parameter Labels
// używać możemy dwóch nazw dla naszego parametru:
func sayHello(to name: String) { //pierwsza nazwa parametru: to, a druga: name
    print("Hello, \(name)!") //"name" używamy w środku w funkcji
}

sayHello(to: "Taylor") // "to" używamy, kiedy funkcja jest uruchomiona.

// Dzięki zewnętrznym i węwnętrznym parametrom w Swift możemy odczytać ten kod prawie jak naturalny język
func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}
setAge(for: "Paul", to: 40)

// 5. Omitting Parameter Labels

func greet(_ person: String) { // użyj _ zamiast zewnętrznej nazwy parametru
    print("Hello, \(person)!")
}
greet("Taylor") // Teraz już nie trzeba używać tego parametru, kiedy uruchamiamy funkcję.

// 6. Default Parameters
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet2("Taylor")
greet2("Taylor", nicely: false)

// Krótki i prosty kod w większości przypadków, ale adaptowalność, kiedy zajdzie taka potrzeba
func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    // code here
}

findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)

// 7. Variadic Functions

func square(numbers: Int...) { // użyj ... ,żeby moć użyć wiele liczb
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)

// 8. Writing Throwing Functions
enum PasswordError: Error { //tworzymy error
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious //rzucza
    }

    return true
}

// 9.  Running Throwing Functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
// 10. Inout Parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)
print(myNum)
