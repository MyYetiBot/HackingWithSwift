import UIKit

//1.Użycie closure jako parametr, kiedy ta closure przyjmuje parametr
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//2.Użycie closures jako parametr, kiedy zwracają wartość

func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
// Inny przykład:
//Funkcja, które zsumuje wszystkie wartości z Array
let numbers = [10, 20, 30] // nasz Array

//Ta funkcja ma dwa parametry:
//1. Array z numerami (Tu wrzucimy nasz numbers)
//2. Closure, która przyjmuje dwa parametry: liczby i zwraca parametr: liczbę
//3. Nasza funkcja, zwraca też liczbę, która jest wynikiem zsumowania wszystkich wartości w naszym Array.

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    var current = values[0] //1. Ustalmy pierwszą wartość w Array i nazwijmy ją current
    //  2. current = 10
    for value in values[1...] { // 3.Przechodzimy, przez wartości w naszym Array od drugiej pozycji do końca
        current = closure(current, value) // 4.wywołuje closure: (10, 20)
        // 6. Przy drugiej pętli closure = (30, 30) - nowa wartość zwrócona przez funkcję i trzecia wartość z Array.
    }
    
    return current
}

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next // 5. dodaje 10 + 20  i zwraca 30 - pojedyńcze wyrażenie to nie potrzebujemy pisać return.
        // 7. Teraz dodaje 30 + 30 i zwraca 60
}

print(sum) // Wyświetla 60

//3. Shorthand parameter name:
travel2 {
    "I'm going to \($0) in my car"
}

//4. Closures with multiple parameters
func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel3 {
    "I'm going to \($0) at \($1) miles per hour."
}

//5. Returning closures from functions - Zwracanie closures z funkcji

func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel4() //wołamy travel(), żeby dostać tą funkcję.

result("London") //teraz możemy zawołać tą closure, jako funkcję


//Dlaczego potrzebujemy zwracania closures z funkcji?
//Swift ma wbudowany generator losowych liczb:
print(Int.random(in: 1...10))

// Możemy napisać funkcję, która zwraca jedną losową liczbę od 1 do 10
func getRandomNumber()-> Int {
    Int.random(in: 1...10)
}
print(getRandomNumber()) //możemy jej użyć w ten sposób

//Możemy iść dalej i stworzyć funkcję, która zwraca cclosure - a ta, gdy wywołana: wygeneruje losowy numer od 1 do 10:
func makeRandomGenerator() -> () -> Int {
    let function = { Int.random(in: 1...10) }
    return function
}

//możemy ją zawołać w ten sposób:
let generator = makeRandomGenerator()
let random1 = generator()
print(random1)

//6. Capturing values

func travel5() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}


let result2 = travel5()
//za każdym wywołaniem counter + 1
result2("London")
result2("London")
result2("London")

// Generujemy liczbę za każdym razem inną:

func makeRandomNumberGenerator2() -> () -> Int {
    
    var previousNumber = 0 // wartość zewnętrzna do closure
    
    return { // zwraca naszą closure
        
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        
        } while newNumber == previousNumber // jeśli nowa liczba jest taka same repeat! Losuj znowu
        previousNumber = newNumber // teraz zmieniamy wartość naszej zewnętrznej wartości - tu zostaje uchwycona
        return newNumber // nasz nowy numer zwrócony
    }
}

let generator2 = makeRandomNumberGenerator2()
for _ in 1...10 {
   print(generator2())
}

