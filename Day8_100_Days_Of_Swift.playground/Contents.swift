import UIKit

//1.Tworzenie własnych structs
//Tak określamy nasz nowy typ danych:
struct Sport {
    var name: String
}

//Teraz możemy stworzyć i używać instancje tego typu:
var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis" // tennis i name są zmiennymi, dlatego możemy je zmieniać.
print(tennis.name)

//2.Computed Property

struct Sport2 {
    var name: String //stored property
    var isOlympicSport: Bool //stored property

    var olympicStatus: String { //computed property
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//3. Property observers

struct Progress {
    var task: String
    var amount: Int {
        didSet { // dolaczamy property observer
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//4. Methods

struct City {
    var population: Int //ile ludzi w mieście

    func collectTaxes() -> Int { //potrzebna property population, żeby obliczyć podatki.
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes() // A tak wołamy tą metodę na instancji do której należy
print(london.collectTaxes())

//5. Mutating methods

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous() //musi być zmienną, żeby użyć tej method.

//6. Properties and methods of strings

//Nasz testowy String:
let string = "Do or do not, there is no try."

//Możemy odczytać ilość liter w String- count property:
print(string.count)

//hasPrefix() method - zwraca true, jeśli string zaczyna się tymi literami:
print(string.hasPrefix("Do"))

//uppercased() method - duże litery:
print(string.uppercased())

//Posortuj litery w Array.
print(string.sorted())


//7. Properties and Methods of Arrays

//Prosty Array na początek
var toys = ["Woody"]

//Odczytaj ilość rzeczy w Array:
print(toys.count)

//Dodaj nową rzecz:
toys.append("Buzz")

//Zlokalizuj na której pozycji jest dana rzecz:
toys.firstIndex(of: "Buzz")

//Posortuj alfabetycznie:
print(toys.sorted())

//Usuń rzecz:
toys.remove(at: 0)

