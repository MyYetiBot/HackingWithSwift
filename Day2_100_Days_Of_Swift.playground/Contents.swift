import UIKit

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1] // Arrays liczą pozycję od zera, dlatego to jest Paul McCartney

// Sets
let colors = Set(["red", "green", "blue"])

let colors2 = Set(["red", "green", "blue", "red", "blue"]) // jeśli damy duplikaty, to będą one ignorowane

//Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

var website = (name: "Apple", url: "www.apple.com") // Tuples są łatwiejsze do ogarnięcia w pewnych przypadkach
var website2 = ["Apple", "www.apple.com"] // To samo jako Array,
var person = (name: "Paul", age: 40, isMarried: true)

// Arrays vs Sets vs Tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville") // Tuples - precyzyjna pozycja i nazwa, niezmienne wartości
let set = Set(["aardvark", "astronaut", "azalea"]) // Set - kolekcja unikatowych wartości z szybkim dostępem
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"] // Array - kolekcja wartości, która zawiera duplikaty, i w której pozycja wartości ma znaczenie.

// Arrays są najbardziej popularne

// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

// Dictionary default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

// Creating Empty collections

var teams = [String: String]() // Empty Dictionary
teams["Paul"] = "Red" // Dodaj wpis do słownika

var results = [Int]() // Pusty Array

var words = Set<String>() // Puste sety
var numbers = Set<Int>()

var scores = Dictionary<String, Int>() // podobny syntax
var results2 = Array<Int>()

// Enumerations

enum Result {
    case success
    case failure
}

let result4 = Result.failure

// Enum associated values

enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity2 {
    case bored
    case running(destination: String) // dodatkowe detale
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity2.talking(topic: "football") // pozwalają na precyzję

enum Weather2 { // To jest elegancki kod!
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}

enum Weather3 { // To jest extremalnie nieprecyzyjne
    case sunny
    case lightBreeze
    case aBitWindy
    case quiteBlusteryNow
    case nowThatsAStrongWind
    case thisIsSeriousNow
    case itsAHurricane
}

// Enum Raw values
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2) // enum liczy od 0

enum Planet2: Int {
    case mercury = 1 // zmieniamy raw wartośc, resztę sam policzy
    case venus
    case earth
    case mars
}

let earth2 = Planet2(rawValue: 3) // teraz Ziemia jest 3 od Słońca!


