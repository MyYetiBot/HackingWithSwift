import UIKit

// 1.Creating basic closures

let driving = { //closure przechowuje kod w stałej driving
    print("I am driving in a car")
}

driving() //wywołujemy ją podobnie jak funkcje

// 2. Accepting parameters in a closure
let driving2 = { (place: String) in //parametr + in
    print("I'm going to \(place) in my car")
}
driving2("London") // nie trzeba nazwy parametru dla closures

//3. Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

let payment = { () -> Bool in //closure zwraca wartość, ale nie przyjmuje parametrów.
    print("Paying an anonymous person…")
    return true
}

// 4. Closures as parameters

// a. Zacznijmy od stworzenia closure:
let driving3 = {
    print("I'm driving in my car")
}
// Ta closure nie ma parametrów i nic nie zwraca:
// () -> Void

// b. Teraz stwórzmy funkcję, która przyjmie tę closure, jako parametr:

func travel(action: () -> Void) { // parametr o nazwie action przyjmuje closure, która nie ma parametrów, i która nic nie zwraca
    print("I'm getting ready to go.")
    action() //tutaj jest użyta ta closure, wołamy ją nazwą parametru i okrągłymi nawiasami.
    print("I arrived!")
}
// c. Teraz wywołujemy naszą funkcję travel:
travel(action: driving3)

// 5.Trailing Closure Syntax

travel(action: { // closure, jako parametr
        print("I'm driving in my car")
})

travel() { // trailing syntax
    travel() {
        print("I'm driving in my car")
    }
}

travel {
    print("I'm driving in my car") //pomiń nawiasy - funkcja nie ma innych parametrów)
}

// Inny przykłąd:
func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}

animate(duration: 3, animations: { // bez trailing closure
    print("Fade out the image")
})

animate(duration: 3) { // trailing closure
    print("Fade out the image")
}
