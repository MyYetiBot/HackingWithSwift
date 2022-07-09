import UIKit

//1. Arithmetical Operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")

// 2. Operator Overloading - zastosowanie operatora zależy od danych, z którymi pracuje:
let meaningOfLife = 42 // dodawaj liczby
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna " // łącz Strings
let action = fakers + "fake"

let firstHalf = ["John", "Paul"] // łącz Arrays
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// 3. Compound assignment operators
var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// 4.Comparison operators
let firstScore2 = 6
let secondScore2 = 4

firstScore2 == secondScore2
firstScore2 != secondScore2

firstScore2 < secondScore2
firstScore2 >= secondScore2

"Taylor" <= "Swift"

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)

// 5. Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}


if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// 6. Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
} // false - jeden z nich nie jest 18

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

var isOwner = false
var isEditingEnabled = false
var isAdmin = true
if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}

//7. The ternary operator
let firstCard2 = 11
let secondCard2 = 10
print(firstCard2 == secondCard2 ? "Cards are the same" : "Cards are different")


// 8.Switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // jeślimy chcemy, żeby dalszy kod też działał
default:
    print("Enjoy your day!")
}

// 9. Range Operators
let wynik = 85
switch wynik {
case 0..<50: // Od 0 do 49
    print("Oblałeś!")
case 50..<85: // od 50 do 84
    print("Zdałeś na 3")
default:
    print("Jesteś fantastyczny!") // wynik: 85
}

let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[0]) // odczytaj imię na pozycji 0
print(names[1...3]) //zakres imion od 1 do 3 włącznie
print(names[1...]) //tak bezpieczniej - do końca array
